defmodule SandboxRegistry.MixProject do
  use Mix.Project

  def project do
    [
      app: :sandbox_registry,
      version: "0.1.0",
      elixir: "~> 1.10",
      description: "Registry to help create sandboxes for testing",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: docs(),
      package: package(),
      test_coverage: [tool: ExCoveralls],

      dialyzer: [
        plt_add_apps: [:ex_unit, :mix, :credo, :jason],
        list_unused_filters: true,
        plt_local_path: ".check",
        plt_core_path: ".check"
      ],

      preferred_cli_env: [
        dialyzer: :test,
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ]
    ]
  end

  defp package do
    [
      maintainers: ["Mika Kalathil"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/mikaak/sandbox_registry"},
      files: ~w(mix.exs README.md CHANGELOG.md LICENSE lib config)
    ]
  end

  defp docs do
    [
      main: "SandboxRegistry",
      source_url: "https://github.com/mikaak/sandbox_registry"
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
end