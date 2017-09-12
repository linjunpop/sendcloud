defmodule Sendcloud.Stat do
  alias Sendcloud.Client

  def list(:daily, attrs) do
    Client.request("statday/list", attrs)
  end
  def list(:hourly, attrs) do
    Client.request("stathour/list", attrs)
  end
  def list(:invalid, attrs) do
    Client.request("invalidstat/list", attrs)
  end
end
