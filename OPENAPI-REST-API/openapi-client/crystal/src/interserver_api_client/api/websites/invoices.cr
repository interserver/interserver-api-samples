require "json"

module InterserverApiClient
  module Api
  class Websites::Invoices
    def initialize(@conn : Connection); end

    # List all billing invoices and recurring charges scoped to one website Returns the billing history for one webhosting service — initial purchase invoice, recurring monthly/period invoices, and any IP-addon invoices created via &#x60;postWebsiteBuyIp&#x60;. Backed by &#x60;Billing\\InvoicesList::go()&#x60; with &#x60;module&#x3D;&#39;webhosting&#39;&#x60; (same handler pattern as VPS/Mail/etc. per-service invoice endpoints). Use to render a per-website billing-history view or find an unpaid invoice id to pass to &#x60;initiatePayment&#x60;. Sibling ops: &#x60;getBillingInvoice&#x60;, &#x60;initiatePayment&#x60;, sibling cross-module: &#x60;getVpsInvoices&#x60;, &#x60;getDomainInvoices&#x60;, &#x60;getMailInvoices&#x60;. For account-wide history use top-level &#x60;getBillingInvoices&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Body:** None.  **Returns:** &#x60;ChargeInvoiceRows&#x60; — array of invoice rows: &#x60;id&#x60;, &#x60;amount&#x60;, &#x60;paid&#x60;, &#x60;description&#x60;, &#x60;date&#x60;, &#x60;due_date&#x60;, &#x60;currency&#x60;, &#x60;module&#x3D;webhosting&#x60;, &#x60;service&#x3D;{id}&#x60;.  **Auth:** Session/API key. Ownership enforced via parent website.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;400 Invalid Service&#x60; — &#x60;id&#x60; not owned by caller.  **Related calls:** - **Single invoice detail:** &#x60;getBillingInvoice&#x60;. - **Pay an unpaid invoice:** &#x60;initiatePayment&#x60;. - **Account-wide history:** &#x60;getBillingInvoices&#x60;. 
    def list(id : Int32) : Response(InterserverApiClient::ChargeInvoiceRows)
      @conn.request(InterserverApiClient::ChargeInvoiceRows,
        method: :GET,
        path: "/websites/{id}/invoices".sub("{id}", InterserverApiClient.enc(id)),
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end
  end
  end

end
