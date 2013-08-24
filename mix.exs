defmodule Exrabbit.Mixfile do
  use Mix.Project

  def project do
    [ app: :exrabbit,
      version: "0.0.1",
      elixir: "~> 0.10.2-dev",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [mod: { Exrabbit, [] }]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, "~> 0.1", git: "https://github.com/elixir-lang/foobar.git" }
  defp deps do
    [
      { :amqp_client, ">0.0", github: "jbrisbin/amqp_client" },
      { :gitex, ">0.0", git: "git@git.maxbet.asia:gitex.git"}
    ]
  end
end