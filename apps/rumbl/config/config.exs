use Mix.Config

config :rumbl, ecto_repos: [Rumbl.Repo]

import_config "#{Mix.env}.exs"
