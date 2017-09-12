defmodule Sendcloud.Bounce do
  alias Sendcloud.Client

  def list(attrs) do
    Client.request("bounce/list", attrs)
  end

  def delete(attrs) do
    Client.request("bounce/delete", attrs)
  end

  def count(attrs) do
    Client.request("bounce/count", attrs)
  end
end
