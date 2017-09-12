defmodule Sendcloud.Unsubscribe do
  alias Sendcloud.Client

  def list(attrs) do
    Client.request("unsubscribe/list", attrs)
  end

  def add(attrs) do
    Client.request("unsubscribe/add", attrs)
  end

  def delete(attrs) do
    Client.request("unsubscribe/delete", attrs)
  end
end
