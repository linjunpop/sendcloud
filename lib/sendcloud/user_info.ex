defmodule Sendcloud.UserInfo do
  alias Sendcloud.Client

  def get(attrs) do
    Client.request("userinfo/get", attrs)
  end
end
