require "json"

module InterserverApiClient
  module Api
  class Home
    def initialize(@conn : Connection); end

    # Aggregate dashboard payload — service counts, recent activity, alerts Use to render the post-login client portal home/dashboard. No body, no params. Returns the structure produced by &#x60;getClientHomeData()&#x60; — counts of active services per module (vps, webhosting, domains, mail, ssl, licenses, backups, floating_ips, scrub_ips, quickservers, servers), recent invoices, payment due alerts, ticket activity summaries, abuse/maintenance announcements, and account-level banners. Designed for one-shot dashboard hydration so individual modules don&#39;t each issue list calls. Cached implementation lives in &#x60;function_requirements(&#39;client_home&#39;)&#x60; -&gt; &#x60;getClientHomeData()&#x60;. Errors: 401 if session is invalid or expired (unauthenticated). Sibling ops: &#x60;getSearch&#x60; (autocomplete), &#x60;getAccountInfo&#x60;, plus per-module list ops like &#x60;getVpsList&#x60;, &#x60;getDomainsList&#x60;, &#x60;getBillingInvoices&#x60;.
    def list() : Response(InterserverApiClient::Home)
      @conn.request(InterserverApiClient::Home,
        method: :GET,
        path: "/home",
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end
  end
  end

end
