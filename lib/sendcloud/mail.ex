defmodule Sendcloud.Mail do
  alias Sendcloud.Client

  def send(attrs) do
    Client.request("mail/send", attrs)
  end

  def send_template(attrs) do
    Client.request("mail/sendtemplate", attrs)
  end

  def send_calendar(attrs) do
    Client.request("mail/sendcalendar", attrs)
  end

  def taskinfo(attrs) do
    Client.request("mail/taskinfo", attrs)
  end
end
