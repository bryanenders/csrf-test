defmodule CsrfTest.Mixfile do
  use Mix.Project

  def project do
    [app: :csrf_test,
     version: "0.0.1",
     elixir: "~> 1.0",
     elixirc_paths: elixirc_paths(:dev),
     compilers: [:phoenix] ++ Mix.compilers,
     deps: deps]
  end

  def application do
    [mod: {CsrfTest, []},
     applications: [:phoenix, :phoenix_html, :cowboy, :logger]]
  end

  defp elixirc_paths(_), do: ["lib", "web"]

  defp deps do
    [{:phoenix, "~> 1.1.4"},
     {:phoenix_html, "~> 2.4"},
     {:cowboy, "~> 1.0"}]
  end
end
