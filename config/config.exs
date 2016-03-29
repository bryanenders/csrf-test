use Mix.Config

config :csrf_test, CsrfTest.Endpoint,
  secret_key_base: "6uRxeXFLtfcUXT/ZjTJDD7a/bPgmcVNHrXpTV0CpOq0LqlCw/eWB3P46yBpJ7OIF",
  http: [port: 4000],
  debug_errors: true,
  check_origin: false

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :stacktrace_depth, 20
