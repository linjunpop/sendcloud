defmodule Sendcloud.Domain do
  alias Sendcloud.Client
  alias Sendcloud.Error

  @spec list(map) :: {:ok, map} | {:error, Error.t}
  def list(attrs) do
    Client.request("domain/list", attrs)
  end

  @spec add(map) :: {:ok, map} | {:error, Error.t}
  def add(attrs) do
    Client.request("domain/add", attrs)
  end

  @spec update(map) :: {:ok, map} | {:error, Error.t}
  def update(attrs) do
    Client.request("domain/update", attrs)
  end
end
