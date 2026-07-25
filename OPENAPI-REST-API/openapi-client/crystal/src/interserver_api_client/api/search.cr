require "json"

module InterserverApiClient
  module Api
  class Search
    def initialize(@conn : Connection); end

    # Global autocomplete across the caller&#39;s services, domains, and records Use to power the global search box in the client portal — typeahead across services, domains, hostnames, IPs, and ticket subjects scoped to the current account (cross-account leakage is impossible). No body, no path params. Query string is conventionally &#x60;q&#x3D;&#x60; though the underlying &#x60;getSearchAutoComplete($custid)&#x60; may match against multiple fields. Returns a &#x60;SearchAutocompleteResponse&#x60; object grouping hits by category (vps, domains, websites, mail, tickets, invoices, etc.) so the UI can render section headers. Optimized for low latency — does NOT replace per-module list ops for paginated browsing. Errors: 401 unauthenticated. Sibling ops: &#x60;getHome&#x60;, &#x60;getAccountInfo&#x60;, plus per-module list ops (&#x60;getVpsList&#x60;, &#x60;getDomainsList&#x60;, &#x60;getMailList&#x60;, &#x60;getTicketsList&#x60;).
    def list() : Response(InterserverApiClient::SearchAutocompleteResponse)
      @conn.request(InterserverApiClient::SearchAutocompleteResponse,
        method: :GET,
        path: "/search",
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end
  end
  end

end
