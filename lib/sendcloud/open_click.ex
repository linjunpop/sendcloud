defmodule Sendcloud.OpenClick do
  alias Sendcloud.Client

  def list(attrs) do
    Client.request("openandclick/list", attrs)
  end
end
