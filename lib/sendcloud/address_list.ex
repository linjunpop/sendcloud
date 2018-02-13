defmodule Sendcloud.AddressList do
  alias Sendcloud.Client
  alias Sendcloud.Error

  @spec list(map) :: {:ok, map} | {:error, Error.t}
  def list(attrs) do
    Client.request("addresslist/list", attrs)
  end

  @spec add(map) :: {:ok, map} | {:error, Error.t}
  def add(attrs) do
    Client.request("addresslist/add", attrs)
  end

  @spec update(map) :: {:ok, map} | {:error, Error.t}
  def update(attrs) do
    Client.request("addresslist/update", attrs)
  end

  @spec delete(map) :: {:ok, map} | {:error, Error.t}
  def delete(attrs) do
    Client.request("addresslist/delete", attrs)
  end
end
