defmodule Randixir.MixProject do
  use Mix.Project

  def project do
    [
      app: :randixir,
      description:
        "Random generator for elixir based on Erlang/OTP, the recommended package for random",
      package: [
        licenses: ["MIT"],
        links: %{"GitHub" => "https://github.com/chazzka/randixir"}
      ],
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "Randixir",
      source_url: "https://github.com/chazzka/randixir",
      docs: [
        # The main page in the generated documentation
        main: "readme",
        format: "html",
        extras: ["README.md"]
      ]
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
      {:ex_doc, "~> 0.25", only: :dev, runtime: false}
    ]
  end
end
