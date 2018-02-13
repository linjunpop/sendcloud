defmodule Sendcloud.Error do
  defexception [:code, :message]

  @type t :: %__MODULE__{code: integer, message: String.t}
end
