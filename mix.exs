defmodule Growl.Mixfile do
  use Mix.Project

  @description File.read!("README.md")

  def project do
    [
      app:          :growl,
      version:      "0.0.3",
      elixir:       ">= 1.4.0",
      deps:         [],
      description:  "A simple wrapper to the command line interface for the [Growl OSX notification system](http://growl.info/)",
      package:      package(),
    ]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application, do: []

  defp package do
    [
      files:        [ "lib", "mix.exs", "README.md", "LICENSE.md" ],
      contributors: [ "Zac Hallett <zac.hallett@gmail.com>"],
      licenses:     [ "MIT. See LICENSE.md" ],
      links:        %{
                       "GitHub" => "https://github.com/zachallett/growl",
                    }
    ]
  end

end
