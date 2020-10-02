defmodule ExImap.MixProject do
  use Mix.Project

  def project do
    [
      name: "Elixir IMAP",
      app: :ex_imap,
      version: "0.1.0",
      elixir: "~> 1.10",
      description: "Elixir library for IMAP protocol.",
      package: package(),
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
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end

  defp package() do
    [
      maintainers: ["theMarinac"],
      licenses: ["GNU-GPL3"],
      links: %{"GitHub" => "https://github.com/theMarinac/ex_imap"},
      files:
        ~w(.formatter.exs mix.exs README.md CHANGELOG.md) ++
        ~w(integration_test/cases integration_test/support lib)
    ]
  end
end
