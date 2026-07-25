require "json"

module InterserverApiClient
  module Api
  class Billing
    def initialize(@conn : Connection); end

    # Read the current shopping cart contents, totals, and available payment methods Returns the customer&#39;s checkout state — every pending/unpaid invoice on the account aggregated as a cart, plus available payment methods, currency totals, and checkout metadata. Use to render a checkout page or, in agent flows, as a pre-payment confirmation step before calling &#x60;initiatePayment&#x60;. Backed by the &#x60;cart&#x60; helper module; &#x60;modules_json&#x60; and &#x60;csrf_token&#x60; are stripped from the response. Read-only. Sibling ops: &#x60;getBillingInvoices&#x60; (raw list), &#x60;getBillingInvoice&#x60; (one invoice in detail), &#x60;initiatePayment&#x60; (pay), &#x60;getBillingPrePays&#x60; (check prepay balance first).  **Path/Query/Body:** None.  **Returns:** A cart object with: - Line items aggregated from unpaid &#x60;invoices&#x60; rows for the session account. - Currency-normalized subtotal / total. - Available payment methods (filtered by feature flags, account country, and which gateways are enabled): &#x60;cc&#x60;, &#x60;paypal&#x60;, &#x60;btcpay&#x60;, &#x60;coinbase&#x60;, &#x60;payu&#x60;, &#x60;ccavenue&#x60;, &#x60;cashfree&#x60;, &#x60;payssion&#x60;, &#x60;prepay&#x60;. - Per-invoice description, module, service-id, amount.  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **List unpaid invoices directly:** &#x60;getBillingInvoices&#x60;. - **Drill into one invoice:** &#x60;getBillingInvoice&#x60;. - **Pay:** &#x60;initiatePayment&#x60; (use the cart&#39;s invoice ids or the &#x60;SERVICEvpsN&#x60; / &#x60;INVvpsN&#x60; tag forms). - **Top up prepay first:** &#x60;getBillingPrePays&#x60;, &#x60;addBillingPrepay&#x60;. 
    def cart() : Response(JSON::Any)
      @conn.request(JSON::Any,
        method: :GET,
        path: "/billing/cart",
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end

    # Set the account&#39;s default payment method for recurring/auto charges Sets the account&#39;s preferred payment method for recurring/automatic charges and (when applicable) promotes a specific stored credit card to be the primary &#x60;cc&#x60; on the account. Use after &#x60;addBillingCreditCard&#x60; + verification to select the new card, or when switching between PayPal and credit-card billing. First-time payment-method assignment triggers &#x60;update_maxmind()&#x60; and &#x60;update_fraudrecord()&#x60; risk-score generation. Sibling ops: &#x60;addBillingCreditCard&#x60;, &#x60;postBillingCreditCardVerify&#x60;, &#x60;deleteBillingCreditCard&#x60;, &#x60;initiatePayment&#x60;.  **Body fields (JSON or multipart, schema &#x60;BillingPaymentMethodRequest&#x60;):** - &#x60;payment_method&#x60; (string, required) — one of:   - &#x60;cc&#x60; — use the existing primary credit card.   - &#x60;cc&lt;idx&gt;&#x60; (e.g. &#x60;cc2&#x60;) — promote the card at index &#x60;idx&#x60; (from &#x60;parse_ccs&#x60;) to primary. Must be verified.   - &#x60;paypal&#x60; — switch to PayPal. - &#x60;cc_auto&#x60; (string &#x60;0&#x60;/&#x60;1&#x60;, optional) — auto-charge flag. Implicitly set to &#x60;1&#x60; when selecting &#x60;cc&#x60;/&#x60;cc&lt;idx&gt;&#x60;, &#x60;0&#x60; for &#x60;paypal&#x60;.  **Returns:** &#x60;{text: \&quot;Payment Method Updated\&quot;}&#x60;.  **Side effects:** - When &#x60;payment_method&#x3D;cc&lt;idx&gt;&#x60;: copies the indexed card&#39;s encrypted &#x60;cc&#x60; and &#x60;cc_exp&#x60; onto the account&#39;s primary fields. - First time a payment method is set: runs MaxMind risk score, then FraudRecord score.  **Auth:** Session/API key.  **Errors:** - &#x60;Invalid Credit Card Specified&#x60; — &#x60;cc&lt;idx&gt;&#x60; is malformed or &#x60;idx&#x60; not found in &#x60;parse_ccs&#x60;. - &#x60;This CC has not been verified.&#x60; — the chosen card hasn&#39;t completed &#x60;postBillingCreditCardVerify&#x60;. - &#x60;Invalid Payment Method Specified&#x60; — value not in &#x60;{cc, paypal, cc&lt;idx&gt;}&#x60;. - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Prerequisite for &#x60;cc&lt;idx&gt;&#x60;:** &#x60;addBillingCreditCard&#x60; → &#x60;patchBillingCreditCardVerify&#x60; → &#x60;postBillingCreditCardVerify&#x60;. - **Now pay an invoice:** &#x60;initiatePayment&#x60; (&#x60;method&#x3D;cc&#x60; will use the default; &#x60;method&#x3D;paypal&#x60; if you switched). - **Audit current methods:** &#x60;getAccountInfo&#x60; (account profile shows cards as masked). 
    def payment_method(billing_payment_method_request : InterserverApiClient::BillingPaymentMethodRequest) : Response(InterserverApiClient::SuccessTextResponse)
      @conn.request(InterserverApiClient::SuccessTextResponse,
        method: :POST,
        path: "/billing/payment_method",
        body: billing_payment_method_request,
        accept: %w[application/json],
        content_type: %w[application/json multipart/form-data],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end
  end
  end

end
