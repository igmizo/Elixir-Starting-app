# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :flickr,
  ecto_repos: [Flickr.Repo]

# Configures the endpoint
config :flickr, Flickr.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6U3kUAsNL+LFI7PXRXb+F7lOqvuGvGs0rjNG5Vs/pvXOonpiSP7lpW2c1QJ4H6PE",
  render_errors: [view: Flickr.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Flickr.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
