defmodule Sendcloud.Template do
  alias Sendcloud.Client

  def list(attrs) do
    Client.request("template/list", attrs)
  end

  def get(attrs) do
    Client.request("template/get", attrs)
  end

  def add(attrs) do
    Client.request("template/add", attrs)
  end

  def update(attrs) do
    Client.request("template/update", attrs)
  end

  def delete(attrs) do
    Client.request("template/delete", attrs)
  end
end
