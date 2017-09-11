defmodule Sendcloud.Client do
  @api_endpoint "http://api.sendcloud.net/apiv2/"
  @api_user ""
  @api_key ""

  alias Sendcloud.Error

  def request(path, attrs, opts \\ []) when is_map(attrs) do
    url =
      @api_endpoint
      |> URI.merge(path)
      |> URI.to_string()
      |> String.to_charlist()

    headers = [
      {'Accept', 'application/json'}
    ]

    body =
      attrs
      |> Map.put_new("apiUser", @api_user)
      |> Map.put_new("apiKey", @api_key)
      |> URI.encode_query

    :httpc.request(:post, {url, headers, 'application/x-www-form-urlencoded', body}, opts, body_format: :binary)
    |> normalize_response()
  end

  defp normalize_response(response) do
    case response do
      {:ok, {{_httpvs, 200, _status_phrase}, json_body}} ->
        json_body
        |> parse_response_body()
      {:ok, {{_httpvs, 200, _status_phrase}, _headers, json_body}} ->
        json_body
        |> parse_response_body()
      {:ok, {{_httpvs, status, _status_phrase}, json_body}} ->
        {:error, status, json_body}
      {:ok, {{_httpvs, status, _status_phrase}, _headers, json_body}} ->
        {:error, status, json_body}
      {:error, reason} -> {:error, :bad_fetch, reason}
    end
  end

  defp parse_response_body(json_body) do
    json_body
    |> Poison.decode!
    |> handle_result
  end

  defp handle_result(%{"result" => true, "message" => 200, "info" => info}) do
    {:ok, info}
  end
  defp handle_result(%{"result" => false, "statusCode" => code, "message" => message}) do
    {
      :error,
      %Error{
        code: code,
        message: message
      }
    }
  end
end
