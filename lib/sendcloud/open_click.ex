defmodule Sendcloud.OpenClick do
  alias Sendcloud.Client
  alias Sendcloud.Error

  @spec list(map) :: {:ok, map} | {:error, Error.t}
  def list(attrs) do
    Client.request("openandclick/list", attrs)
  end
end
