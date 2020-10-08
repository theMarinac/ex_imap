defmodule Imap.Conn do
  @moduledoc """
  IMAP connection module for sending and recieving data.
  """
  alias Imap.Socket

  def init(host, port) when is_bitstring(host) and is_integer(port) do
    :ok = Socket.start()
    {:ok, socket} = Socket.connect(host |> to_charlist, port)
    {:ok, msg} = init_recv(socket)
    {socket, msg}
  end

  def init(host, port, opts) when is_bitstring(host) and is_integer(port) and is_list(opts) do
    :ok = Socket.start()
    {:ok, socket} = Socket.connect(host |> to_charlist, port, opts)
    {:ok, msg} = init_recv(socket)
    {socket, msg}
  end

  def send(socket, data) when is_tuple(socket) and is_bitstring(data),
    do: socket |> Socket.send(data) |> handle_send()

  def handle_send(:ok), do: :ok
  def handle_send({:error, :closed}), do: {:error, "Connection is closed"}
  def handle_send(any), do: {:error, any}

  def init_recv(socket) when is_tuple(socket),
    do: Socket.recv_t(socket, 0)

  # Recieve data from socket
  def recv(socket, tag) when is_tuple(socket), do: recv(socket, "", tag)

  defp recv(socket, data, tag) do
    {:ok, new} = Socket.recv_t(socket)

    if Regex.match?(~r/^.*#{tag}\s.*\r\n$/s, new),
      do: data <> new,
      else: recv(socket, data <> new, tag)
  end
end
