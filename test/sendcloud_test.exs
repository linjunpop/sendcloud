defmodule SendcloudTest do
  use ExUnit.Case
  doctest Sendcloud

  test "greets the world" do
    assert Sendcloud.hello() == :world
  end
end
