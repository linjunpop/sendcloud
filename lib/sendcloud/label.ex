defmodule Sendcloud.Label do
  alias Sendcloud.Client

  def list(attrs) do
    Client.request("label/list", attrs)
  end

  def get(attrs) do
    Client.request("label/get", attrs)
  end

  def add(attrs) do
    Client.request("label/add", attrs)
  end

  def update(attrs) do
    Client.request("label/update", attrs)
  end

  def delete(attrs) do
    Client.request("label/delete", attrs)
  end
end
