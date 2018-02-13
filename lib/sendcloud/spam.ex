defmodule Sendcloud.Spam do
  alias Sendcloud.Client
  alias Sendcloud.Error

  @spec list(map) :: {:ok, map} | {:error, Error.t}
  def list(attrs) do
    Client.request("spamreported/list", attrs)
  end
end
