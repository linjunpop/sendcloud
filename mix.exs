defmodule Sendcloud.Mixfile do
  use Mix.Project

  def project do
    [
      app: :sendcloud,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:poison, "~> 3.0"},
      {:dialyxir, "~> 0.5", only: :dev},
      {:credo, "~> 0.7", only: [:dev, :test]},
      {:ex_doc, "~> 0.15", only: [:dev, :docs]}
    ]
  end
end
