defmodule Sendcloud.AddressMember do
  alias Sendcloud.Client
  alias Sendcloud.Error

  @spec list(map) :: {:ok, map} | {:error, Error.t}
  def list(attrs) do
    Client.request("addressmember/list", attrs)
  end

  @spec get(map) :: {:ok, map} | {:error, Error.t}
  def get(attrs) do
    Client.request("addressmember/list", attrs)
  end

  @spec add(map) :: {:ok, map} | {:error, Error.t}
  def add(attrs) do
    Client.request("addressmember/add", attrs)
  end

  @spec update(map) :: {:ok, map} | {:error, Error.t}
  def update(attrs) do
    Client.request("addressmember/update", attrs)
  end

  @spec delete(map) :: {:ok, map} | {:error, Error.t}
  def delete(attrs) do
    Client.request("addressmember/delete", attrs)
  end
end
