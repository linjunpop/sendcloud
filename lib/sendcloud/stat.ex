defmodule Sendcloud.Stat do
  alias Sendcloud.Client
  alias Sendcloud.Error

  @spec list(:daily | :hourly | :invalid, map) :: {:ok, map} | {:error, Error.t}
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
