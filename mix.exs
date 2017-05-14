defmodule NeonMob.Mixfile do
  use Mix.Project

  def project do
    [app: :neonmob,
     version: "0.0.0-dev0",
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps(),
     name: "NeonMob",
     source_url: "https://github.com/sgerrand/neonmob.ex"
   ]
  end

  def application do
    [ applications: [ :httpoison, :exjsx ] ]
  end

  defp deps do
    [ {:httpoison, "~> 0.8"},
      {:exjsx, "~> 3.2"},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp description do
    """
    An API client for NeonMob.com
    """
  end

  defp package do
    [
      name: :neonmob,
      files: ["mix.exs", "README.md"],
      maintainers: ["Sasha Gerrand"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/sgerrand/neonmob.ex"}
    ]
  end
end
