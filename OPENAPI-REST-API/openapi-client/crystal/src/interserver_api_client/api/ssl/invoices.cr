require "json"

module InterserverApiClient
  module Api
  class Ssl::Invoices
    def initialize(@conn : Connection); end

    # List all billing invoices and charges tied to one SSL certificate by id Use to retrieve the full invoice history for a single SSL cert - initial order, renewals, and any addon charges. Path param id (integer, required) is the ssl_id; ownership is enforced via get_service so cross-account ids return an Invalid Service error. Returns ChargeInvoiceRows: success bool plus invoices array of charge/invoice rows with iid, date, cost, status (paid/unpaid/refunded), and description. Returns 401 unauthenticated, 400 if the id resolves to no service. Useful for auditing renewals before sslCancel, reconciling payment failures, or showing the customer their billing history.  Sibling ops: &#x60;getSslInfo&#x60;, &#x60;sslCancel&#x60;, &#x60;getSslWelcomeEmail&#x60;, &#x60;getBillingInvoice&#x60; (per-invoice detail), &#x60;initiatePayment&#x60; (settle unpaid).
    def list(id : Int32) : Response(InterserverApiClient::ChargeInvoiceRows)
      @conn.request(InterserverApiClient::ChargeInvoiceRows,
        method: :GET,
        path: "/ssl/{id}/invoices".sub("{id}", InterserverApiClient.enc(id)),
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end
  end
  end

end
