require "json"

module InterserverApiClient
  module Api
  class Domains::Search
    def initialize(@conn : Connection); end

    # Get the full order form data for a hostname in one round-trip (search → order preview) Returns the complete order-form payload — pricing, service catalog entry, per-TLD order fields — for the hostname in a single POST. Equivalent to calling &#x60;getDomainLookup&#x60; + &#x60;getNewDomain&#x60; + &#x60;putDomains&#x60; and merging the results, but with one round-trip. The path &#x60;name&#x60; is moved server-side into &#x60;$_POST[&#39;hostname&#39;]&#x60; and passed to &#x60;getOrderDomainData(true)&#x60;. Sibling ops: &#x60;getDomainSearch&#x60;, &#x60;getDomainLookup&#x60;, &#x60;getNewDomain&#x60;, &#x60;addDomain&#x60;.  **Path param:** - &#x60;name&#x60; (string, required) — hostname (e.g. &#x60;example.com&#x60;).  **Body:** None.  **Returns:** Combined order-data response — pricing, service catalog entry, form fields ready to populate for &#x60;addDomain&#x60;.  **Auth:** Session/API key (path is &#x60;client_api&#x60;, but called publicly).  **Errors:** - &#x60;4xx&#x60; — hostname cannot be resolved to a TLD service.  **Related calls:** - **Place order:** &#x60;addDomain&#x60; with the returned fields. 
    def create(name : String) : Response(Nil)
      @conn.request(Nil,
        method: :POST,
        path: "/domains/search/{name}".sub("{name}", InterserverApiClient.enc(name)),
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end

    # Get registrar-suggested domain alternatives and bulk availability for a search term Returns registrar-suggested alternatives plus bulk availability data from OpenSRS for the supplied search term. Useful when a customer is brainstorming names. Pair with &#x60;getDomainLookup&#x60; to get full pricing and per-TLD order fields for any specific chosen result. Sibling ops: &#x60;postDomainSearch&#x60;, &#x60;getDomainLookup&#x60;, &#x60;getNewDomain&#x60;, &#x60;addDomain&#x60;.  **Path param:** - &#x60;name&#x60; (string, required) — search term (e.g. &#x60;example&#x60; or &#x60;example.com&#x60;).  **Returns** (schema &#x60;DomainSearchResponse&#x60;): - &#x60;success&#x60; (bool) — registrar call succeeded. - &#x60;response_text&#x60; (string) — registrar response message. - &#x60;response_time&#x60; (float) — registrar latency (seconds). - &#x60;lookup&#x60; (array) — exact-match availability across the searched TLD set. - &#x60;suggest&#x60; (array) — registrar&#39;s recommended alternative names with availability. - &#x60;tlds&#x60; (array) — TLDs queried.  **Auth:** Public.  **Errors:** - &#x60;422 Invalid Search Response!&#x60; — registrar returned no usable results.  **Related calls:** - **Single-domain detail:** &#x60;getDomainLookup&#x60;. - **One-shot order preview from a search term:** &#x60;postDomainSearch&#x60;. 
    def get(name : String) : Response(InterserverApiClient::DomainSearchResponse)
      @conn.request(InterserverApiClient::DomainSearchResponse,
        method: :GET,
        path: "/domains/search/{name}".sub("{name}", InterserverApiClient.enc(name)),
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end
  end
  end

end
