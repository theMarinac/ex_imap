defmodule ExImapTest do
  use ExUnit.Case
  doctest ExImap

  test "greets the world" do
    assert ExImap.hello() == :world
  end
end
