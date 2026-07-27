defmodule InterserverApi.Mixfile do
  use Mix.Project

  def project do
    [
      app: :interserver_api,
      version: "1.0.0",
      elixir: "~> 1.18",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      package: package(),
      description: """
      # Overview  The InterServer Management API provides programmatic access to manage your InterServer services. Use this REST API to automate provisioning, configuration, and billing operations across your account.  The API covers the following service categories: - [Domains](https://www.interserver.net/domains/) — registration, transfers, and DNS management - [Web Hosting](https://www.interserver.net/hosting/) — shared and reseller hosting - [VPS Hosting](https://www.interserver.net/vps/) — virtual private servers - [Dedicated Servers](https://www.interserver.net/dedicated/) — bare metal and [Rapid Deploy Servers](https://www.interserver.net/dedicated/rapid-deploy.html) - [Backups](https://www.interserver.net/storage/) — storage and backup services - Licenses — control panel and software licenses - [Mail](https://www.mail.baby/) — mail delivery services - SSL — certificate provisioning - Billing — invoices, payment methods, and account management  For interactive testing, see the [API documentation](/api-docs/).  # Authentication  Most endpoints require authentication. Two methods are supported:  ## API Key (Preferred)  Generate an API key from the [Account Security](https://my.interserver.net/account_security) page on [my.interserver.net](https://my.interserver.net/). Pass it in the &#x60;X-API-KEY&#x60; request header:  &#x60;&#x60;&#x60; X-API-KEY: your-api-key-here &#x60;&#x60;&#x60;  ## Session-Based Authentication  Alternatively, authenticate by creating a session:  1. **Log in** — Send a &#x60;POST&#x60; request to &#x60;/login&#x60; with your account credentials. The response includes a session identifier. 2. **Pass the session ID** — Include the session identifier in the &#x60;sessionid&#x60; header on subsequent requests:  &#x60;&#x60;&#x60; sessionid: your-session-id-here &#x60;&#x60;&#x60;  API key authentication is recommended for most integrations as it does not expire and avoids the overhead of session management.  
      """,
      deps: deps()
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.3.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:tesla, "~> 1.18.3"},
      {:ex_doc, "~> 0.37.3", only: :dev, runtime: false},
      {:dialyxir, "~> 1.4", only: [:dev, :test], runtime: false}
    ]
  end

   defp package do
      [
        name: "interserver_api",
        files: ~w(.formatter.exs config lib mix.exs README* LICENSE*),
      ]
  end
end
