require "json"

module InterserverApiClient
  module Api
  class Domains::Invoices
    def initialize(@conn : Connection); end

    # List all billing invoices scoped to one domain order Returns the billing history for one domain — initial registration/transfer invoice, recurring renewal invoices, Whois privacy add-on invoices. Extends &#x60;Billing\\InvoicesList::go()&#x60; with &#x60;module&#x3D;&#39;domains&#39;&#x60;. Use to render a per-domain billing-history view or find an unpaid renewal/privacy invoice to pass to &#x60;initiatePayment&#x60;. Sibling ops: &#x60;getDomainInfo&#x60;, &#x60;postDomainRenewal&#x60;, &#x60;updateDomainWhoisPrivacy&#x60;, &#x60;initiatePayment&#x60;, &#x60;getBillingInvoice&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.  **Returns:** &#x60;ChargeInvoiceRows&#x60; — array of &#x60;{id, amount, paid, description, date, due_date, currency, module: \&quot;domains\&quot;, service: &lt;id&gt;}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid Service&#x60; — &#x60;id&#x60; not owned by caller.  **Related calls:** - **Pay an unpaid invoice:** &#x60;initiatePayment&#x60;. - **Renew:** &#x60;postDomainRenewal&#x60;. - **Account-wide history:** &#x60;getBillingInvoices&#x60;. 
    def list(id : Int32) : Response(InterserverApiClient::ChargeInvoiceRows)
      @conn.request(InterserverApiClient::ChargeInvoiceRows,
        method: :GET,
        path: "/domains/{id}/invoices".sub("{id}", InterserverApiClient.enc(id)),
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end
  end
  end

end
