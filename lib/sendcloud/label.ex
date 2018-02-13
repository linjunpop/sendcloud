defmodule Sendcloud.Label do
  alias Sendcloud.Client
  alias Sendcloud.Error

  @spec list(map) :: {:ok, map} | {:error, Error.t}
  def list(attrs) do
    Client.request("label/list", attrs)
  end

  @spec get(map) :: {:ok, map} | {:error, Error.t}
  def get(attrs) do
    Client.request("label/get", attrs)
  end

  @spec add(map) :: {:ok, map} | {:error, Error.t}
  def add(attrs) do
    Client.request("label/add", attrs)
  end

  @spec update(map) :: {:ok, map} | {:error, Error.t}
  def update(attrs) do
    Client.request("label/update", attrs)
  end

  @spec delete(map) :: {:ok, map} | {:error, Error.t}
  def delete(attrs) do
    Client.request("label/delete", attrs)
  end
end
