defmodule Sendcloud.Unsubscribe do
  alias Sendcloud.Client
  alias Sendcloud.Error

  @spec list(map) :: {:ok, map} | {:error, Error.t}
  def list(attrs) do
    Client.request("unsubscribe/list", attrs)
  end

  @spec add(map) :: {:ok, map} | {:error, Error.t}
  def add(attrs) do
    Client.request("unsubscribe/add", attrs)
  end

  @spec delete(map) :: {:ok, map} | {:error, Error.t}
  def delete(attrs) do
    Client.request("unsubscribe/delete", attrs)
  end
end
