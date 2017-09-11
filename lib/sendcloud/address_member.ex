defmodule Sendcloud.AddressMember do
  alias Sendcloud.Client

  def list(attrs) do
    Client.request("addressmember/list", attrs)
  end

  def get(attrs) do
    Client.request("addressmember/list", attrs)
  end

  def add(attrs) do
    Client.request("addressmember/add", attrs)
  end

  def update(attrs) do
    Client.request("addressmember/update", attrs)
  end

  def delete(attrs) do
    Client.request("addressmember/delete", attrs)
  end
end
