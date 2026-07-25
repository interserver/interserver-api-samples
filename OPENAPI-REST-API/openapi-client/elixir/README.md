# InterserverApi

# Overview  The InterServer Management API provides programmatic access to manage your InterServer services. Use this REST API to automate provisioning, configuration, and billing operations across your account.  The API covers the following service categories: - [Domains](https://www.interserver.net/domains/) — registration, transfers, and DNS management - [Web Hosting](https://www.interserver.net/hosting/) — shared and reseller hosting - [VPS Hosting](https://www.interserver.net/vps/) — virtual private servers - [Dedicated Servers](https://www.interserver.net/dedicated/) — bare metal and [Rapid Deploy Servers](https://www.interserver.net/dedicated/rapid-deploy.html) - [Backups](https://www.interserver.net/storage/) — storage and backup services - Licenses — control panel and software licenses - [Mail](https://www.mail.baby/) — mail delivery services - SSL — certificate provisioning - Billing — invoices, payment methods, and account management  For interactive testing, see the [API documentation](/api-docs/).  # Authentication  Most endpoints require authentication. Two methods are supported:  ## API Key (Preferred)  Generate an API key from the [Account Security](https://my.interserver.net/account_security) page on [my.interserver.net](https://my.interserver.net/). Pass it in the &#x60;X-API-KEY&#x60; request header:  &#x60;&#x60;&#x60; X-API-KEY: your-api-key-here &#x60;&#x60;&#x60;  ## Session-Based Authentication  Alternatively, authenticate by creating a session:  1. **Log in** — Send a &#x60;POST&#x60; request to &#x60;/login&#x60; with your account credentials. The response includes a session identifier. 2. **Pass the session ID** — Include the session identifier in the &#x60;sessionid&#x60; header on subsequent requests:  &#x60;&#x60;&#x60; sessionid: your-session-id-here &#x60;&#x60;&#x60;  API key authentication is recommended for most integrations as it does not expire and avoids the overhead of session management.  

## Building

To install the required dependencies and to build the elixir project, run:

```console
mix local.hex --force
mix do deps.get, compile
```

## Installation

If [available in Hex][], the package can be installed by adding `interserver_api` to
your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:interserver_api, "~> 1.0.0"}]
end
```

Documentation can be generated with [ExDoc][] and published on [HexDocs][]. Once published, the docs can be found at
[https://hexdocs.pm/interserver_api][docs].

## Configuration

You can override the URL of your server (e.g. if you have a separate development and production server in your
configuration files).

```elixir
config :interserver_api, base_url: "https://my.interserver.net/apiv2"
```

Multiple clients for the same API with different URLs can be created passing different `base_url`s when calling
`InterserverApi.Connection.new/1`:

```elixir
client = InterserverApi.Connection.new(base_url: "https://my.interserver.net/apiv2")
```

[exdoc]: https://github.com/elixir-lang/ex_doc
[hexdocs]: https://hexdocs.pm
[available in hex]: https://hex.pm/docs/publish
[docs]: https://hexdocs.pm/interserver_api
