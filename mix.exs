defmodule QuickChat.MixProject do
  use Mix.Project

  def project do
    [
      app: :quick_chat,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {QuickChat.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:cowboy, "~> 1.1.2 "},
      {:httpoison, "~> 1.0"},
      {:plug, "~> 1.5.0-rc.1"}
    ]
  end
end
