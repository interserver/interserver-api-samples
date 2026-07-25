require "json"

module InterserverApiClient
  module Api
  class Vps::Invoices
    def initialize(@conn : Connection); end

    # List all billing invoices associated with this specific VPS Returns the billing history for one VPS — initial purchase invoice, monthly/period renewal invoices, addon invoices (extra IPs, additional disk space), and any prorated upgrade invoices for slice changes. Read-only. Backed by &#x60;Billing\\InvoicesList::go()&#x60;. Use to render a per-VPS billing-history view, to find an unpaid invoice id to pass to &#x60;initiatePayment&#x60;, or to confirm a recent charge. Sibling ops: &#x60;getVpsInfo&#x60;, &#x60;getBillingInvoice&#x60; (single invoice detail), &#x60;initiatePayment&#x60;, &#x60;addVps&#x60; (creates the first invoice).  **Path param:** - &#x60;id&#x60; (integer, required) — VPS id from &#x60;getVpsList.vps_id&#x60;.  **Body:** None.  **Returns:** &#x60;ChargeInvoiceRows&#x60; — array of invoice rows with &#x60;id&#x60;, &#x60;amount&#x60;, &#x60;paid&#x60;, &#x60;description&#x60;, &#x60;date&#x60;, &#x60;due_date&#x60;, &#x60;currency&#x60;, &#x60;module&#x3D;vps&#x60;, &#x60;service&#x3D;{id}&#x60;, and any addon-specific fields. Order is most-recent-first.  **Auth:** Session/API key. Ownership enforced via parent VPS.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid Service Passed&#x60; — &#x60;id&#x60; not owned by caller.  **Related calls:** - **Single invoice detail:** &#x60;getBillingInvoice&#x60;. - **Pay an unpaid invoice:** &#x60;initiatePayment&#x60; (&#x60;GET /billing/pay/{method}/{invoices}&#x60;). - **All invoices across account:** &#x60;getBillingInvoices&#x60;. 
    def list(id : Int32) : Response(InterserverApiClient::ChargeInvoiceRows)
      @conn.request(InterserverApiClient::ChargeInvoiceRows,
        method: :GET,
        path: "/vps/{id}/invoices".sub("{id}", InterserverApiClient.enc(id)),
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end
  end
  end

end
