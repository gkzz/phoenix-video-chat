# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :littlechat,
  ecto_repos: [Littlechat.Repo]

# Configures the endpoint
config :littlechat, LittlechatWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5owdvJO5Ul0XS36lisiooFQUwIcsmjC4Oen4MSKy+QVOYDWNaH8851KhW05v6d5E",
  render_errors: [view: LittlechatWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Littlechat.PubSub,
  live_view: [signing_salt: "fwxjQEPC"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
