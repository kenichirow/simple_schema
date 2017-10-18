defmodule SimpleSchema.Mixfile do
  use Mix.Project

  def project do
    [
      app: :simple_schema,
      version: "1.0.0",
      elixir: "~> 1.5",
      elixirc_paths: elixirc_paths(Mix.env),
      description: "Validate JSON and store to a specified schema",
      package: [
        maintainers: ["melpon"],
        licenses: ["Apache 2.0"],
        links: %{"GitHub" => "https://github.com/gumi/simple_schema"},
      ],
      docs: [main: "SimpleSchema"],
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]

  defp deps do
    [
      {:ex_json_schema, "~> 0.5.5"},
      {:ex_doc, "~> 0.18.1", only: :dev, runtime: false},
      {:memoize, "~> 1.2"},
    ]
  end
end
