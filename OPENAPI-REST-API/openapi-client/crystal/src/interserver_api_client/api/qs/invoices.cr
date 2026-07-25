require "json"

module InterserverApiClient
  module Api
  class Qs::Invoices
    def initialize(@conn : Connection); end

    # List billing invoices charged for one QuickServer service Returns invoices charged for this QuickServer (initial setup + recurring). Path param: &#x60;id&#x60; (integer). Returns: &#x60;ChargeInvoiceRows&#x60; — each row has invoice ID, amount, status (paid/unpaid), date. Use the invoice ID with &#x60;getBillingInvoice&#x60; for full detail or &#x60;initiatePayment&#x60; to settle. Errors: 401 if unauthenticated, 404 if not owned by caller. Siblings: &#x60;getQsInfo&#x60;, &#x60;getVpsInvoices&#x60;, &#x60;getBillingInvoice&#x60;, &#x60;quickserversCancel&#x60; (check next-invoice date before canceling).
    def list(id : Int32) : Response(InterserverApiClient::ChargeInvoiceRows)
      @conn.request(InterserverApiClient::ChargeInvoiceRows,
        method: :GET,
        path: "/qs/{id}/invoices".sub("{id}", InterserverApiClient.enc(id)),
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end
  end
  end

end
