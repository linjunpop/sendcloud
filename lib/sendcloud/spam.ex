defmodule Sendcloud.Spam do
  alias Sendcloud.Client

  def list(attrs) do
    Client.request("spamreported/list", attrs)
  end
end
