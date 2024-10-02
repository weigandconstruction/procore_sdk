defmodule Procore.Mixfile do
  use Mix.Project

  def project do
    [
      app: :procore_sdk,
      version: "0.2.0",
      elixir: "~> 1.15",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      package: package(),
      description: "Unofficial Procore API SDK for Elixir",
      deps: deps(),
      docs: docs()
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.3.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:tesla, "~> 1.7"},
      {:jason, "~> 1.4"},
      {:ex_doc, "~> 0.30", only: :dev, runtime: false},
      {:dialyxir, "~> 1.3", only: [:dev, :test], runtime: false}
    ]
  end

  defp package do
    [
      name: "procore_sdk",
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/weigandconstruction/procore_sdk"
      },
      maintainers: ["ntodd"],
      files: ~w(.formatter.exs config lib mix.exs README* LICENSE*)
    ]
  end

  defp docs do
    [
      name: "Procore SDK",
      main: "readme",
      extras: ["README.md"],
      nest_modules_by_prefix: [Procore.Api, Procore.Model]
    ]
  end
end
