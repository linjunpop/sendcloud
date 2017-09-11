defmodule Sendcloud.Domain do
  alias Sendcloud.Client

  def list(attrs) do
    Client.request("domain/list", attrs)
  end

  def add(attrs) do
    Client.request("domain/add", attrs)
  end

  def update(attrs) do
    Client.request("domain/update", attrs)
  end
end
