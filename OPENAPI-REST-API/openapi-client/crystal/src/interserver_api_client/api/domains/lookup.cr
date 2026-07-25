require "json"

module InterserverApiClient
  module Api
  class Domains::Lookup
    def initialize(@conn : Connection); end

    # Check availability, premium status, and pricing for a specific domain Looks up a single FQDN against OpenSRS: returns availability, premium-name flag, current new/renewal/transfer prices, per-TLD order field metadata, and multi-currency quotes. **Public** endpoint — no auth required (rate-limited via &#x60;domainlookup&#x60; cache). Repeated lookups within a short window may return cached results from the &#x60;domainlookup&#x60; table. Use as step 1 of an order: discover availability and pricing, then call &#x60;addDomain&#x60; to commit. Sibling ops: &#x60;getDomainSearch&#x60; (suggestions), &#x60;getNewDomain&#x60; (catalog), &#x60;addDomain&#x60;, &#x60;postDomainSearch&#x60;.  **Path param:** - &#x60;name&#x60; (string, required) — full FQDN (e.g. &#x60;example.com&#x60;).  **Returns** (schema &#x60;DomainLookupResponse&#x60;): - &#x60;available&#x60; (bool) — registerable now. - &#x60;premium&#x60; (bool) — premium-name pricing (often &gt; $100). - &#x60;website&#x60; (bool) — same hostname is already a webhosting service on this account. - &#x60;domain_service&#x60; (bool) — same hostname is already a domain on this account. - &#x60;service&#x60; (object) — &#x60;services_id&#x60;, &#x60;services_name&#x60;, &#x60;services_cost&#x60;, &#x60;services_field1&#x60; (TLD), &#x60;services_module&#x60;. - &#x60;whois_privacy&#x60; (bool) — privacy add-on available for this TLD. - &#x60;new&#x60;, &#x60;renewal&#x60;, &#x60;transfer&#x60; (float) — base USD prices (with profit markup). - &#x60;fields&#x60; (object) — per-TLD order form schema (labels, options, current account values). - &#x60;currencies&#x60; (object) — &#x60;{&lt;code&gt;: {services_cost, new, renewal, transfer}}&#x60; converted to each enabled currency.  **Auth:** Public (no auth required).  **Errors:** - &#x60;422 Invalid Domain&#x60; — &#x60;valid_domain()&#x60; rejected input.  **Related calls:** - **Brainstorm alternatives:** &#x60;getDomainSearch&#x60;. - **Place order:** &#x60;addDomain&#x60; with the resolved &#x60;service.services_id&#x60; and &#x60;fields&#x60;. - **TLD catalog:** &#x60;getNewDomain&#x60;. 
    def get(name : String) : Response(InterserverApiClient::DomainLookupResponse)
      @conn.request(InterserverApiClient::DomainLookupResponse,
        method: :GET,
        path: "/domains/lookup/{name}".sub("{name}", InterserverApiClient.enc(name)),
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end
  end
  end

end
