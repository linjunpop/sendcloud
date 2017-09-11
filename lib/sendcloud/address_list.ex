defmodule Sendcloud.AddressList do
  alias Sendcloud.Client

  def list(attrs) do
    Client.request("addresslist/list", attrs)
  end

  def add(attrs) do
    Client.request("addresslist/add", attrs)
  end

  def update(attrs) do
    Client.request("addresslist/update", attrs)
  end

  def delete(attrs) do
    Client.request("addresslist/delete", attrs)
  end
end
