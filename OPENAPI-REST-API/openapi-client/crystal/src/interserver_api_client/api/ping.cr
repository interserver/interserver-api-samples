require "json"

module InterserverApiClient
  module Api
  class Ping
    def initialize(@conn : Connection); end

    # Liveness check — returns the JSON string \&quot;pong\&quot; to confirm API is up Trivial GET that returns the JSON string &#x60;\&quot;pong\&quot;&#x60; so AI agents and monitors can verify the API endpoint is reachable. Public — no auth required, no params, no body. Does not exercise the database, queue, or any plugin modules. Sibling ops: &#x60;getInfo&#x60; (richer probe that touches MySQL).  **Path/Query/Body:** None.  **Returns:** JSON-encoded string &#x60;\&quot;pong\&quot;&#x60; with HTTP 200.  **Auth:** None (public endpoint).  **Errors:** No documented error path under normal operation — a non-200 or absent response indicates the API is down, the host is unreachable, or upstream routing is broken.  **Use when:** - Bootstrapping a new client and want to confirm the API is reachable. - Smoke-testing in CI/health-check pipelines. - Diagnosing connectivity issues before higher-cost calls.  **Related calls:** - **Deeper health probe:** &#x60;getInfo&#x60; (exercises the DB layer). 
    def server() : Response(String)
      @conn.request(String,
        method: :GET,
        path: "/ping",
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end
  end
  end

end
