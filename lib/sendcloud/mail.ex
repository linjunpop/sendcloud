defmodule Sendcloud.Mail do
  alias Sendcloud.Client
  alias Sendcloud.Error

  @spec send(map) :: {:ok, map} | {:error, Error.t}
  def send(attrs) do
    Client.request("mail/send", attrs)
  end

  @spec send_template(map) :: {:ok, map} | {:error, Error.t}
  def send_template(attrs) do
    Client.request("mail/sendtemplate", attrs)
  end

  @spec send_calendar(map) :: {:ok, map} | {:error, Error.t}
  def send_calendar(attrs) do
    Client.request("mail/sendcalendar", attrs)
  end

  @spec taskinfo(map) :: {:ok, map} | {:error, Error.t}
  def taskinfo(attrs) do
    Client.request("mail/taskinfo", attrs)
  end
end
