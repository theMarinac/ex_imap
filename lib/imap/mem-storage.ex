defmodule Imap.MemStorage do
  @moduledoc """
  MemStorage is an ETS storage used to store IMAP sessions.
  The purpose of this is to enable multiple IMAP sessions.
  """

  @table_name :imap_sessions
  @table_opts [
    :set,
    :protected,
    :named_table,
    read_concurrency: true,
    write_concurrency: true,
    decentralized_counters: true
  ]

  def create(), do: @table_name |> :ets.whereis() |> handle_create

  defp handle_create(:undefined), do: :ets.new(@table_name, @table_opts)
  defp handle_create(ref), do: ref

  def write(key, value), do: @table_name |> :ets.whereis() |> handle_write(key, value)

  defp handle_write(:undefined, k, v) do
    create()
    write(k, v)
  end

  defp handle_write(_, k, v), do: :ets.insert(@table_name, {k, v})

  def read(key), do: @table_name |> :ets.lookup(key) |> handle_read()

  defp handle_read([]), do: {:error, "Doesn't exist"}
  defp handle_read([{_, socket}]), do: {:ok, socket}
end
