defmodule Sendcloud.Bounce do
  alias Sendcloud.Client
  alias Sendcloud.Error

  @spec list(map) :: {:ok, map} | {:error, Error.t}
  def list(attrs) do
    Client.request("bounce/list", attrs)
  end

  @spec delete(map) :: {:ok, map} | {:error, Error.t}
  def delete(attrs) do
    Client.request("bounce/delete", attrs)
  end

  @spec count(map) :: {:ok, map} | {:error, Error.t}
  def count(attrs) do
    Client.request("bounce/count", attrs)
  end
end
