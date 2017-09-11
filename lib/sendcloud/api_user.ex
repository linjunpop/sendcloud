defmodule Sendcloud.APIUser do
  alias Sendcloud.Client

  def list(attrs) do
    Client.request("apiuser/list", attrs)
  end

  def add(attrs) do
    Client.request("apiuser/add", attrs)
  end
end
