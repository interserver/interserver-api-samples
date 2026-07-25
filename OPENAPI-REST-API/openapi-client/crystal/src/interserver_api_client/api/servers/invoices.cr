require "json"

module InterserverApiClient
  module Api
  class Servers::Invoices
    def initialize(@conn : Connection); end

    # List billing invoices (charges + payments) tied to one dedicated server Use to retrieve the invoice history for a single dedicated server — e.g. before a cancel, refund, or to show outstanding balances. Path param: &#x60;id&#x60; (integer server_id from &#x60;getServerList&#x60;). No body. Inherits from &#x60;MyAdmin\\Api\\Billing\\InvoicesList&#x60; with module&#x3D;servers. Returns: &#x60;ChargeInvoiceRows&#x60; array — invoice rows with id, date, amount, status, currency, line items. Errors: 404 if &#x60;id&#x60; not owned by the caller; 401 unauth. Sibling ops: &#x60;getServerInfo&#x60; (current service state), &#x60;serversCancel&#x60; (cancel), &#x60;getBillingInvoice&#x60; (single invoice by invoice id), &#x60;getVpsInvoices&#x60;/&#x60;getDomainInvoices&#x60; for other modules, &#x60;getServersWelcomeEmail&#x60; to resend setup info.
    def list(id : Int32) : Response(InterserverApiClient::ChargeInvoiceRows)
      @conn.request(InterserverApiClient::ChargeInvoiceRows,
        method: :GET,
        path: "/servers/{id}/invoices".sub("{id}", InterserverApiClient.enc(id)),
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end
  end
  end

end
