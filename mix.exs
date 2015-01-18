defmodule FdEvents.Mixfile do
  use Mix.Project

  def project do
    [app: :fd_events,
     version: "0.0.1",
     elixir: "~> 1.0",
     elixirc_paths: ["lib", "web"],
     compilers: [:phoenix] ++ Mix.compilers,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [mod: {FdEvents, []},
     applications: [:phoenix, :cowboy, :logger, :postgrex, :ecto]]
  end

  # Specifies your project dependencies
  #
  # Type `mix help deps` for examples and options
  defp deps do
    [{:phoenix, "~> 0.7.2"},
     {:cowboy, "~> 1.0"},
    {:postgrex, "~> 0.6.0"},
    {:ecto, "~> 0.2.5"}]
  end
end
