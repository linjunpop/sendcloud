defmodule Sendcloud.UserInfo do
  alias Sendcloud.Client
  alias Sendcloud.Error

  @spec get(map) :: {:ok, map} | {:error, Error.t}
  def get(attrs) do
    Client.request("userinfo/get", attrs)
  end
end
