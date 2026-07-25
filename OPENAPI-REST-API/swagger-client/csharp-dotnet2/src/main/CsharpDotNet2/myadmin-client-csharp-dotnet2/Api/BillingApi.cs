using System;
using System.Collections.Generic;
using RestSharp;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace IO.Swagger.Api
{
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface IBillingApi
    {
        /// <summary>
        /// Store a credit card on the account — may return a verification flow Stores a new credit card on the account so it can later be selected via &#x60;updateBillingPaymentMethod&#x60; or used directly with &#x60;initiatePayment&#x60; (&#x60;method&#x3D;cc&#x60;). The card number has dashes stripped and is sanitized through &#x60;FILTER_SANITIZE_NUMBER_INT&#x60;; billing address fields are HTML-entity-escaped server-side; the CC number is encrypted at rest via &#x60;App::encrypt()&#x60;. The flow may return &#x60;action&#x3D;&#x27;verify&#x27;&#x60; indicating a two-step micro-charge verification is required before the card is usable — complete it with &#x60;patchBillingCreditCardVerify&#x60; then &#x60;postBillingCreditCardVerify&#x60;. Sibling ops: &#x60;updateBillingCreditCard&#x60;, &#x60;deleteBillingCreditCard&#x60;, &#x60;patchBillingCreditCardVerify&#x60;, &#x60;postBillingCreditCardVerify&#x60;, &#x60;updateBillingPaymentMethod&#x60;.  **Body fields (JSON or multipart, schema &#x60;BillingAddCcRequest&#x60;):** - &#x60;cc&#x60; (string, required) — card number; dashes stripped, non-digits filtered. - &#x60;name&#x60; (string, required) — cardholder name. - &#x60;cc_exp&#x60; (string, required) — &#x60;MM/YYYY&#x60;. - &#x60;address&#x60; (string, required), &#x60;city&#x60;, &#x60;state&#x60;, &#x60;country&#x60;, &#x60;zip&#x60; (strings) — billing address; HTML-entity-escaped.  **Returns:** - **Added directly:** &#x60;{success: true, text: \&quot;Card Added Successfully!\&quot;}&#x60;. - **Verification needed:** &#x60;{success: false, text: \&quot;Kindly verify your card by updating the amounts in the fields\&quot;, action: \&quot;verify\&quot;}&#x60; — proceed to &#x60;patchBillingCreditCardVerify&#x60;.  **Side effects:** - Inserts the encrypted card into the account&#x27;s &#x60;ccs&#x60; array (managed via &#x60;parse_ccs&#x60; / &#x60;add_cc&#x60;). - May trigger a small initial test charge (gateway-dependent). - First-card-on-account triggers MaxMind + FraudRecord risk-score recomputation.  **Auth:** Session/API key.  **Errors:** - &#x60;Card number, Full Name, Expiry date are required!&#x60; — required field missing/empty. - &#x60;401&#x60; — unauthenticated. - Gateway/AVS error text — declined, mismatch, etc.  **Related calls:** - **Verify (if &#x60;action&#x3D;&#x27;verify&#x27;&#x60;):** &#x60;patchBillingCreditCardVerify&#x60; (CVV + initiate micro-charge) → &#x60;postBillingCreditCardVerify&#x60; (submit amounts). - **Make it the default:** &#x60;updateBillingPaymentMethod&#x60; with &#x60;payment_method&#x3D;cc&lt;idx&gt;&#x60;. - **Pay an invoice with it:** &#x60;initiatePayment&#x60; (&#x60;method&#x3D;cc&#x60;). 
        /// </summary>
        /// <param name="body"></param>
        /// <returns>SuccessTextResponse</returns>
        SuccessTextResponse AddBillingCreditCard (BillingAddCcRequest body);
        /// <summary>
        /// Store a credit card on the account — may return a verification flow Stores a new credit card on the account so it can later be selected via &#x60;updateBillingPaymentMethod&#x60; or used directly with &#x60;initiatePayment&#x60; (&#x60;method&#x3D;cc&#x60;). The card number has dashes stripped and is sanitized through &#x60;FILTER_SANITIZE_NUMBER_INT&#x60;; billing address fields are HTML-entity-escaped server-side; the CC number is encrypted at rest via &#x60;App::encrypt()&#x60;. The flow may return &#x60;action&#x3D;&#x27;verify&#x27;&#x60; indicating a two-step micro-charge verification is required before the card is usable — complete it with &#x60;patchBillingCreditCardVerify&#x60; then &#x60;postBillingCreditCardVerify&#x60;. Sibling ops: &#x60;updateBillingCreditCard&#x60;, &#x60;deleteBillingCreditCard&#x60;, &#x60;patchBillingCreditCardVerify&#x60;, &#x60;postBillingCreditCardVerify&#x60;, &#x60;updateBillingPaymentMethod&#x60;.  **Body fields (JSON or multipart, schema &#x60;BillingAddCcRequest&#x60;):** - &#x60;cc&#x60; (string, required) — card number; dashes stripped, non-digits filtered. - &#x60;name&#x60; (string, required) — cardholder name. - &#x60;cc_exp&#x60; (string, required) — &#x60;MM/YYYY&#x60;. - &#x60;address&#x60; (string, required), &#x60;city&#x60;, &#x60;state&#x60;, &#x60;country&#x60;, &#x60;zip&#x60; (strings) — billing address; HTML-entity-escaped.  **Returns:** - **Added directly:** &#x60;{success: true, text: \&quot;Card Added Successfully!\&quot;}&#x60;. - **Verification needed:** &#x60;{success: false, text: \&quot;Kindly verify your card by updating the amounts in the fields\&quot;, action: \&quot;verify\&quot;}&#x60; — proceed to &#x60;patchBillingCreditCardVerify&#x60;.  **Side effects:** - Inserts the encrypted card into the account&#x27;s &#x60;ccs&#x60; array (managed via &#x60;parse_ccs&#x60; / &#x60;add_cc&#x60;). - May trigger a small initial test charge (gateway-dependent). - First-card-on-account triggers MaxMind + FraudRecord risk-score recomputation.  **Auth:** Session/API key.  **Errors:** - &#x60;Card number, Full Name, Expiry date are required!&#x60; — required field missing/empty. - &#x60;401&#x60; — unauthenticated. - Gateway/AVS error text — declined, mismatch, etc.  **Related calls:** - **Verify (if &#x60;action&#x3D;&#x27;verify&#x27;&#x60;):** &#x60;patchBillingCreditCardVerify&#x60; (CVV + initiate micro-charge) → &#x60;postBillingCreditCardVerify&#x60; (submit amounts). - **Make it the default:** &#x60;updateBillingPaymentMethod&#x60; with &#x60;payment_method&#x3D;cc&lt;idx&gt;&#x60;. - **Pay an invoice with it:** &#x60;initiatePayment&#x60; (&#x60;method&#x3D;cc&#x60;). 
        /// </summary>
        /// <param name="name"></param>
        /// <param name="address"></param>
        /// <param name="city"></param>
        /// <param name="state"></param>
        /// <param name="country"></param>
        /// <param name="zip"></param>
        /// <param name="cc"></param>
        /// <param name="ccExp"></param>
        /// <param name="ccCcv2"></param>
        /// <returns>SuccessTextResponse</returns>
        SuccessTextResponse AddBillingCreditCard (string name, string address, string city, string state, string country, string zip, string cc, string ccExp, string ccCcv2);
        /// <summary>
        /// Create a prepay deposit and return an invoice id to fund it Creates a prepay row (&#x60;prepays&#x60; table) at the requested amount and inserts a matching &#x60;invoices&#x60; row (&#x60;Prepay ID {pid} Invoice&#x60;) that the customer must pay through &#x60;initiatePayment&#x60; before the balance becomes usable. The prepay is added with &#x60;PREPAY_TYPE_ANY&#x60; / &#x60;PREPAY_SERVICE_ANY&#x60; defaults via &#x60;add_prepay()&#x60;. Use to seed an account balance the customer can later spend via &#x60;method&#x3D;prepay&#x60; at checkout. **Real money** — funding the returned invoice charges a real payment method. Sibling ops: &#x60;getBillingPrePays&#x60;, &#x60;deleteBillingPrepay&#x60;, &#x60;getBillingInvoice&#x60;, &#x60;initiatePayment&#x60;.  **Body fields (JSON or multipart, schema &#x60;BillingPrepayRequest&#x60;):** - &#x60;amount&#x60; (number, required) — deposit size in account currency. **Minimum $10**; smaller values are rejected. - &#x60;module&#x60; (string, required) — service module scope (&#x60;default&#x60; for any service, or specific like &#x60;vps&#x60;, &#x60;webhosting&#x60;). - &#x60;automatic_use&#x60; (bool, required) — when &#x60;true&#x60;, the balance auto-applies to future invoices in the scoped module.  **Returns:** &#x60;{text: \&quot;Thank you! Prepay created! Kindly pay the invoice to activate the prepay fund.\&quot;, invoice: &lt;integer&gt;}&#x60; — pass &#x60;invoice&#x60; to &#x60;initiatePayment&#x60; (use a real &#x60;method&#x60; like &#x60;cc&#x60; / &#x60;paypal&#x60;, not &#x60;prepay&#x60; — you can&#x27;t fund a prepay with a prepay).  **Side effects:** - Inserts &#x60;prepays&#x60; row. - Inserts &#x60;invoices&#x60; row (&#x60;invoices_description &#x3D; \&quot;Prepay ID {pid} Invoice\&quot;&#x60;, &#x60;invoices_paid&#x3D;0&#x60;, &#x60;invoices_module&#x3D;&#x27;default&#x27;&#x60;).  **Auth:** Session/API key.  **Errors:** - &#x60;Sorry! Minimum prepay amount is $10.00&#x60; — amount below floor. - &#x60;Something went wrong! Try again or contact our support team!&#x60; — invoice insert failed. - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Confirm invoice:** &#x60;getBillingInvoice&#x60; with the returned &#x60;invoice&#x60; id. - **Pay it:** &#x60;initiatePayment&#x60; (&#x60;method&#x3D;cc|paypal|...&#x60;, not &#x60;prepay&#x60;). - **Verify it&#x27;s now usable:** &#x60;getBillingPrePays&#x60; (look for &#x60;prepay_remaining &gt; 0&#x60;). - **Cancel before paying:** &#x60;deleteBillingPrepay&#x60;.  **Example happy path:** &#x60;&#x60;&#x60;text POST /apiv2/billing/prepays { \&quot;amount\&quot;: 100, \&quot;module\&quot;: \&quot;default\&quot;, \&quot;automatic_use\&quot;: true } -&gt; { \&quot;text\&quot;: \&quot;...\&quot;, \&quot;invoice\&quot;: 25296701 } GET /apiv2/billing/pay/cc/25296701 -&gt; { \&quot;type\&quot;: \&quot;single\&quot;, \&quot;text\&quot;: \&quot;Payment processed.\&quot; } GET /apiv2/billing/prepays -&gt; [{ \&quot;prepay_id\&quot;: 99, \&quot;prepay_remaining\&quot;: 100, ... }] &#x60;&#x60;&#x60; 
        /// </summary>
        /// <param name="body"></param>
        /// <returns>SuccessTextResponse</returns>
        SuccessTextResponse AddBillingPrepay (BillingPrepayRequest body);
        /// <summary>
        /// Create a prepay deposit and return an invoice id to fund it Creates a prepay row (&#x60;prepays&#x60; table) at the requested amount and inserts a matching &#x60;invoices&#x60; row (&#x60;Prepay ID {pid} Invoice&#x60;) that the customer must pay through &#x60;initiatePayment&#x60; before the balance becomes usable. The prepay is added with &#x60;PREPAY_TYPE_ANY&#x60; / &#x60;PREPAY_SERVICE_ANY&#x60; defaults via &#x60;add_prepay()&#x60;. Use to seed an account balance the customer can later spend via &#x60;method&#x3D;prepay&#x60; at checkout. **Real money** — funding the returned invoice charges a real payment method. Sibling ops: &#x60;getBillingPrePays&#x60;, &#x60;deleteBillingPrepay&#x60;, &#x60;getBillingInvoice&#x60;, &#x60;initiatePayment&#x60;.  **Body fields (JSON or multipart, schema &#x60;BillingPrepayRequest&#x60;):** - &#x60;amount&#x60; (number, required) — deposit size in account currency. **Minimum $10**; smaller values are rejected. - &#x60;module&#x60; (string, required) — service module scope (&#x60;default&#x60; for any service, or specific like &#x60;vps&#x60;, &#x60;webhosting&#x60;). - &#x60;automatic_use&#x60; (bool, required) — when &#x60;true&#x60;, the balance auto-applies to future invoices in the scoped module.  **Returns:** &#x60;{text: \&quot;Thank you! Prepay created! Kindly pay the invoice to activate the prepay fund.\&quot;, invoice: &lt;integer&gt;}&#x60; — pass &#x60;invoice&#x60; to &#x60;initiatePayment&#x60; (use a real &#x60;method&#x60; like &#x60;cc&#x60; / &#x60;paypal&#x60;, not &#x60;prepay&#x60; — you can&#x27;t fund a prepay with a prepay).  **Side effects:** - Inserts &#x60;prepays&#x60; row. - Inserts &#x60;invoices&#x60; row (&#x60;invoices_description &#x3D; \&quot;Prepay ID {pid} Invoice\&quot;&#x60;, &#x60;invoices_paid&#x3D;0&#x60;, &#x60;invoices_module&#x3D;&#x27;default&#x27;&#x60;).  **Auth:** Session/API key.  **Errors:** - &#x60;Sorry! Minimum prepay amount is $10.00&#x60; — amount below floor. - &#x60;Something went wrong! Try again or contact our support team!&#x60; — invoice insert failed. - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Confirm invoice:** &#x60;getBillingInvoice&#x60; with the returned &#x60;invoice&#x60; id. - **Pay it:** &#x60;initiatePayment&#x60; (&#x60;method&#x3D;cc|paypal|...&#x60;, not &#x60;prepay&#x60;). - **Verify it&#x27;s now usable:** &#x60;getBillingPrePays&#x60; (look for &#x60;prepay_remaining &gt; 0&#x60;). - **Cancel before paying:** &#x60;deleteBillingPrepay&#x60;.  **Example happy path:** &#x60;&#x60;&#x60;text POST /apiv2/billing/prepays { \&quot;amount\&quot;: 100, \&quot;module\&quot;: \&quot;default\&quot;, \&quot;automatic_use\&quot;: true } -&gt; { \&quot;text\&quot;: \&quot;...\&quot;, \&quot;invoice\&quot;: 25296701 } GET /apiv2/billing/pay/cc/25296701 -&gt; { \&quot;type\&quot;: \&quot;single\&quot;, \&quot;text\&quot;: \&quot;Payment processed.\&quot; } GET /apiv2/billing/prepays -&gt; [{ \&quot;prepay_id\&quot;: 99, \&quot;prepay_remaining\&quot;: 100, ... }] &#x60;&#x60;&#x60; 
        /// </summary>
        /// <param name="module"></param>
        /// <param name="amount"></param>
        /// <param name="automaticUse"></param>
        /// <returns>SuccessTextResponse</returns>
        SuccessTextResponse AddBillingPrepay (string module, decimal? amount, string automaticUse);
        /// <summary>
        /// Remove a stored credit card from the account Removes the indexed credit card from the account&#x27;s &#x60;ccs&#x60; collection. If the deleted card was also the account&#x27;s primary &#x60;cc&#x60;, the primary field is cleared — &#x60;initiatePayment&#x60; (&#x60;method&#x3D;cc&#x60;) will then return an error until a new default is designated via &#x60;updateBillingPaymentMethod&#x60;. **Irreversible** — to re-store the same card, re-run &#x60;addBillingCreditCard&#x60;. Sibling ops: &#x60;addBillingCreditCard&#x60;, &#x60;updateBillingCreditCard&#x60;, &#x60;updateBillingPaymentMethod&#x60;, &#x60;getBillingCreditCardVerify&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — credit card index from &#x60;parse_ccs&#x60;.  **Body:** None.  **Returns:** &#x60;Card removed successfully.&#x60;.  **Side effects:** - Removes the entry from the &#x60;ccs&#x60; array; re-serialized via &#x60;myadmin_stringify&#x60;. - When the deleted card was primary: clears account-level &#x60;cc&#x60;.  **Auth:** Session/API key. Card ownership enforced.  **Errors:** - &#x60;Invalid Credit Card Passed&#x60; — &#x60;id&#x60; not in &#x60;parse_ccs&#x60;. - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Set a new default:** &#x60;updateBillingPaymentMethod&#x60;. - **Add a replacement:** &#x60;addBillingCreditCard&#x60;. 
        /// </summary>
        /// <param name="id">The credit card ID to remove. Use IDs from &#x60;GET /billing/creditcards&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        SuccessTextResponse DeleteBillingCreditCard (int? id);
        /// <summary>
        /// Cancel a pending unpaid invoice — and its pending service or repeat invoice Cancels an unpaid invoice and cleans up the records it represents. Behavior depends on what the invoice funds: a **prepay** invoice is routed to &#x60;deleteBillingPrepay&#x60;; an **initial service charge** (where &#x60;repeat_invoices_id&#x60; matches the service&#x27;s &#x60;_invoice&#x60; field) deletes the &#x60;repeat_invoices&#x60; row, all child &#x60;invoices&#x60;, AND the pending service row from the module&#x27;s table; an **addon/recurring** invoice just deletes that one &#x60;invoices&#x60; row plus its &#x60;repeat_invoices&#x60; row. **Only invoices for services in &#x60;pending&#x60; status can be deleted** — once provisioned, the service must be cancelled via the per-service Cancel endpoint instead. **Irreversible**. Sibling ops: &#x60;getBillingInvoice&#x60;, &#x60;deleteBillingPrepay&#x60;, &#x60;VPSCancel&#x60; / &#x60;CancelDomain&#x60; / &#x60;mailCancel&#x60; / &#x60;webhostingCancel&#x60; / etc.  **Path param:** - &#x60;id&#x60; (integer, required) — invoice id (&#x60;invoices_type&#x3D;1&#x60;, ownership enforced via &#x60;invoices_custid&#x60;).  **Body:** None.  **Returns:** &#x60;Invoice Deleted&#x60; text.  **Side effects:** (depends on invoice type) - **Prepay invoice** (description matches &#x60;Prepay ID N Invoice&#x60;) — delegates to &#x60;deleteBillingPrepay($pid)&#x60;. - **Initial service invoice** (&#x60;repeat_invoices_id &#x3D;&#x3D; service._invoice&#x60;) — deletes:   - the &#x60;repeat_invoices&#x60; row,   - every &#x60;invoices&#x60; row for that service,   - the service row in &#x60;{settings[&#x27;TABLE&#x27;]}&#x60;. - **Addon/recurring invoice** — deletes only the matching &#x60;repeat_invoices&#x60; row and the single &#x60;invoices&#x60; row.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;Invalid invoice&#x60; — &#x60;id&#x60; not found or wrong owner. - &#x60;Invalid service&#x60; — invoice references a service that no longer exists. - &#x60;Can only delete invoices for pending services or prepays&#x60; — service is &#x60;active&#x60;/&#x60;suspended&#x60;/&#x60;cancelled&#x60;. - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **List candidates:** &#x60;getBillingInvoices&#x60;. - **Detail first:** &#x60;getBillingInvoice&#x60;. - **For active services:** &#x60;VPSCancel&#x60;, &#x60;CancelDomain&#x60;, &#x60;mailCancel&#x60;, &#x60;webhostingCancel&#x60;, &#x60;licensesCancel&#x60;, &#x60;sslCancel&#x60;, &#x60;cancelScrubIp&#x60;, &#x60;floating_ipsCancel&#x60;, &#x60;cancelBackup&#x60;, &#x60;quickserversCancel&#x60;, &#x60;serversCancel&#x60; — these use &#x60;Billing\\CancelService::go()&#x60;. - **For prepay invoices:** &#x60;deleteBillingPrepay&#x60; (delegated automatically). 
        /// </summary>
        /// <param name="id">The invoice ID to delete. Only unpaid invoices can be deleted.</param>
        /// <returns>SuccessTextResponse</returns>
        SuccessTextResponse DeleteBillingInvoice (int? id);
        /// <summary>
        /// Delete an unfunded prepay or strip its unpaid funding invoices Removes a prepay from the account, with one safety rule: a prepay that still has usable credit (&#x60;prepay_remaining &gt; $0.01&#x60;) cannot be deleted *unless* it also has unpaid funding invoices we can clean up — in which case those unpaid &#x60;invoices&#x60; rows are deleted and the prepay row stays. Use to back out a never-funded prepay, or to surface stuck unpaid funding invoices. **Irreversible** — funded credit is unrecoverable through this endpoint. Sibling ops: &#x60;getBillingPrePays&#x60;, &#x60;addBillingPrepay&#x60;, &#x60;deleteBillingInvoice&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — prepay id from &#x60;getBillingPrePays.prepay_id&#x60;.  **Body:** None.  **Returns:** - When unpaid funding invoices were stripped but prepay still has funds: &#x60;\&quot;PrePay {id} Unpaid Invoices Deleted\&quot;&#x60;. - When the prepay row was deleted: &#x60;\&quot;PrePay {id} deleted.\&quot;&#x60;.  **Side effects:** - Deletes any unpaid &#x60;invoices&#x60; rows matching &#x60;invoices_description &#x3D; \&quot;Prepay ID {id} Invoice\&quot;&#x60; and &#x60;invoices_paid&#x3D;0&#x60;. - Deletes the &#x60;prepays&#x60; row when remaining balance ≤ $0.01.  **Auth:** Session/API key.  **Errors:** - &#x60;Invalid Prepay&#x60; — &#x60;id&#x60; not found. - &#x60;That prepay still hands funds available on it&#x60; — funds remain AND no unpaid invoices to clean up. - &#x60;There was an error deleting the prepay, please contact support&#x60; — delete affected 0 rows. - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **List first:** &#x60;getBillingPrePays&#x60;. - **Re-add later:** &#x60;addBillingPrepay&#x60;. - **Cancel a specific funding invoice:** &#x60;deleteBillingInvoice&#x60; (routes prepay invoices here automatically). 
        /// </summary>
        /// <param name="id">The prepay balance ID to delete.</param>
        /// <returns>SuccessTextResponse</returns>
        SuccessTextResponse DeleteBillingPrepay (int? id);
        /// <summary>
        /// List affiliate banner image assets with filename and dimensions Returns the catalog of pre-built banner images affiliates can embed on partner sites — same catalog for every account (not per-affiliate). Use to render a creative-asset picker in the affiliate dashboard. Each row carries the image filename and dimensions so the client can build correctly-sized &#x60;&lt;img&gt;&#x60; tags. Read-only. Sibling ops: &#x60;getAffiliateRichReport&#x60;, &#x60;getAffiliateSalesGraph&#x60;, &#x60;getAffiliateTrafficGraph&#x60;, &#x60;getAffiliateWebTraffic&#x60;, &#x60;getAffiliateSignups&#x60;, &#x60;updateAffiliateDockSetup&#x60;.  **Path/Query/Body:** None.  **Returns:** Array of &#x60;AffiliateBannerRow&#x60;: - &#x60;image&#x60; (string) — filename (e.g. &#x60;12946798.gif&#x60;); served from the affiliate asset bucket. - &#x60;width&#x60; (string) — pixels. - &#x60;height&#x60; (string) — pixels.  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated. 
        /// </summary>
        /// <returns>List&lt;AffiliateBannerRow&gt;</returns>
        List<AffiliateBannerRow> GetAffiliateBanners ();
        /// <summary>
        /// Export the affiliate signup report as CSV, XLS, XLSX, or PDF file download Exports the affiliate signup report as a downloadable file in the requested format. Use for accounting, tax filings, or sharing reports outside the dashboard. **Response is a binary stream, not JSON** — the handler emits the file body with matching &#x60;Content-Type&#x60; + &#x60;Content-Disposition: attachment&#x60; headers and &#x60;exit()&#x60;s the request immediately. Consumers must read the raw response body. Sibling ops: &#x60;getAffiliateRichReport&#x60;, &#x60;getAffiliateSignups&#x60;, &#x60;getAffiliateSalesGraph&#x60;.  **Query params:** - &#x60;ex&#x60; (string, optional, enum &#x60;csv&#x60;/&#x60;xls&#x60;/&#x60;xlsx&#x60;/&#x60;pdf&#x60;, default &#x60;csv&#x60;) — export format. - &#x60;st&#x60; (string, optional, default &#x60;default&#x60;) — status filter (same as &#x60;getAffiliateSignups&#x60;). - &#x60;year&#x60; (integer, optional, default current year) — report scope.  **Returns:** File download with format-appropriate Content-Type: - &#x60;csv&#x60; → &#x60;text/csv&#x60;, filename &#x60;Interserver_Affiliates.csv&#x60;. - &#x60;xls&#x60; / &#x60;xlsx&#x60; → &#x60;application/vnd.openxmlformats-officedocument.spreadsheetml.sheet&#x60;, filename &#x60;Interserver_Affiliates.&lt;ext&gt;&#x60;. - &#x60;pdf&#x60; → &#x60;application/pdf&#x60;, filename &#x60;Interserver_Affiliates.pdf&#x60;.  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated. 
        /// </summary>
        /// <param name="st">Filter by status.</param>
        /// <param name="ex">Export format: csv, xls, xlsx, or pdf. Defaults to csv.</param>
        /// <param name="year">Year to filter the report. Defaults to the current year.</param>
        /// <returns></returns>
        void GetAffiliateDownload (string st, string ex, int? year);
        /// <summary>
        /// Read a combined affiliate performance summary (HTML payload) Returns a server-rendered HTML/text summary report combining commission totals, conversion rates, and traffic in one round-trip — useful for embedding in a dashboard panel. The payload is **not structured JSON** — for chart-friendly data use &#x60;getAffiliateSalesGraph&#x60; and &#x60;getAffiliateTrafficGraph&#x60; instead. Backed by &#x60;affiliate_summary_report()&#x60;. Sibling ops: &#x60;getAffiliateSalesGraph&#x60;, &#x60;getAffiliateTrafficGraph&#x60;, &#x60;getAffiliateSignups&#x60;, &#x60;getAffiliateDownload&#x60;, &#x60;getAffiliateWebTraffic&#x60;.  **Path/Query/Body:** None.  **Returns:** &#x60;{text: \&quot;&lt;html-or-plain-text-report&gt;\&quot;}&#x60;.  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Structured time series:** &#x60;getAffiliateSalesGraph&#x60;, &#x60;getAffiliateTrafficGraph&#x60;. - **Per-signup detail:** &#x60;getAffiliateSignups&#x60;. - **CSV/XLSX export:** &#x60;getAffiliateDownload&#x60;. 
        /// </summary>
        /// <returns>TextResponse</returns>
        TextResponse GetAffiliateRichReport ();
        /// <summary>
        /// Read aggregated affiliate sales time-series (monthly buckets) for chart rendering Returns aggregated sales time-series data — monthly buckets with sale counts/totals — for the requested look-back window. Use to render a sales trend chart in the affiliate dashboard. Bucket granularity is fixed at monthly by &#x60;sales_graph_lte_data&#x60;; increasing &#x60;days&#x60; extends the window, it does not change bucket size. Sibling ops: &#x60;getAffiliateTrafficGraph&#x60; (clicks), &#x60;getAffiliateRichReport&#x60; (combined summary), &#x60;getAffiliateSignups&#x60;, &#x60;getAffiliateDownload&#x60;.  **Query params:** - &#x60;days&#x60; (integer, optional, default &#x60;365&#x60;) — look-back window in days.  **Returns:** &#x60;StatusMonthlyBreakdown&#x60; — buckets keyed by month with aggregated sale counts and amounts.  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated. 
        /// </summary>
        /// <param name="days">Number of days of sales history to include in the graph data. Determines the time window for the returned data points.</param>
        /// <returns>StatusMonthlyBreakdown</returns>
        StatusMonthlyBreakdown GetAffiliateSalesGraph (int? days);
        /// <summary>
        /// Read affiliate signup stats and per-customer conversion data Returns referred-customer signup statistics with optional status filtering — counts, conversion data, and per-customer detail produced by &#x60;affiliates_clientside()&#x60;. The inner &#x60;data&#x60; shape varies by status filter; pass &#x60;default&#x60; for the full dataset. Sibling ops: &#x60;getAffiliateRichReport&#x60;, &#x60;getAffiliateSalesGraph&#x60;, &#x60;getAffiliateTrafficGraph&#x60;, &#x60;getAffiliateDownload&#x60;.  **Query params:** - &#x60;st&#x60; (string, optional, default &#x60;default&#x60;) — status filter. &#x60;default&#x60; returns all; other values narrow the results to that status.  **Returns:** &#x60;{data: &lt;object&gt;}&#x60; — signup counts, conversions, per-customer detail (shape depends on &#x60;st&#x60;).  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated. 
        /// </summary>
        /// <param name="st">Filter signups by status. Use &#x60;default&#x60; to show all or pass a specific status value to narrow results.</param>
        /// <returns>InlineResponse2001</returns>
        InlineResponse2001 GetAffiliateSignups (string st);
        /// <summary>
        /// Read aggregated affiliate referral click/visit time-series for chart rendering Returns aggregated click/visit time-series data from the &#x60;affiliate_traffic&#x60; table — monthly buckets with visit counts — for the requested look-back window. Pair with &#x60;getAffiliateSalesGraph&#x60; to compute click-to-sale conversion ratios client-side. Sibling ops: &#x60;getAffiliateSalesGraph&#x60; (sales), &#x60;getAffiliateWebTraffic&#x60; (raw per-visit log entries), &#x60;getAffiliateRichReport&#x60;.  **Query params:** - &#x60;days&#x60; (integer, optional, default &#x60;180&#x60;) — look-back window in days.  **Returns:** &#x60;MonthlyCounts&#x60; — buckets keyed by month with aggregated visit counts.  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated. 
        /// </summary>
        /// <param name="days">Number of days of traffic history to include in the graph data. Determines the time window for the returned data points.</param>
        /// <returns>MonthlyCounts</returns>
        MonthlyCounts GetAffiliateTrafficGraph (int? days);
        /// <summary>
        /// List the 20 most recent affiliate referral visits with IP, referrer, timestamp Returns the 20 most recent raw referral visits from the &#x60;affiliate_traffic&#x60; table — visitor IP, full referral URL, and timestamp per row. Use to audit traffic sources, identify top referrers, or investigate suspicious click patterns. Hard-coded limit 20 (no pagination); for longer-term analysis use &#x60;getAffiliateTrafficGraph&#x60; or export via &#x60;getAffiliateDownload&#x60;. Sibling ops: &#x60;getAffiliateTrafficGraph&#x60;, &#x60;getAffiliateSignups&#x60;, &#x60;getAffiliateRichReport&#x60;, &#x60;getAffiliateDownload&#x60;.  **Path/Query/Body:** None.  **Returns:** Array of &#x60;AffiliateTrafficRow&#x60;: - &#x60;traffic_id&#x60; (string) — row id (most-recent-first). - &#x60;traffic_ip&#x60; (string) — visitor IP (IPv4 or IPv6). - &#x60;traffic_url&#x60; (string) — referral landing URL. - &#x60;traffic_affiliate&#x60; (string) — affiliate (&#x3D; session &#x60;account_id&#x60;). - &#x60;traffic_referrer&#x60; (string) — HTTP Referer (may be empty). - &#x60;traffic_timestamp&#x60; (string) — &#x60;YYYY-MM-DD HH:MM:SS&#x60; in account timezone.  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated. 
        /// </summary>
        /// <returns>List&lt;AffiliateTrafficRow&gt;</returns>
        List<AffiliateTrafficRow> GetAffiliateWebTraffic ();
        /// <summary>
        /// Read the current shopping cart contents, totals, and available payment methods Returns the customer&#x27;s checkout state — every pending/unpaid invoice on the account aggregated as a cart, plus available payment methods, currency totals, and checkout metadata. Use to render a checkout page or, in agent flows, as a pre-payment confirmation step before calling &#x60;initiatePayment&#x60;. Backed by the &#x60;cart&#x60; helper module; &#x60;modules_json&#x60; and &#x60;csrf_token&#x60; are stripped from the response. Read-only. Sibling ops: &#x60;getBillingInvoices&#x60; (raw list), &#x60;getBillingInvoice&#x60; (one invoice in detail), &#x60;initiatePayment&#x60; (pay), &#x60;getBillingPrePays&#x60; (check prepay balance first).  **Path/Query/Body:** None.  **Returns:** A cart object with: - Line items aggregated from unpaid &#x60;invoices&#x60; rows for the session account. - Currency-normalized subtotal / total. - Available payment methods (filtered by feature flags, account country, and which gateways are enabled): &#x60;cc&#x60;, &#x60;paypal&#x60;, &#x60;btcpay&#x60;, &#x60;coinbase&#x60;, &#x60;payu&#x60;, &#x60;ccavenue&#x60;, &#x60;cashfree&#x60;, &#x60;payssion&#x60;, &#x60;prepay&#x60;. - Per-invoice description, module, service-id, amount.  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **List unpaid invoices directly:** &#x60;getBillingInvoices&#x60;. - **Drill into one invoice:** &#x60;getBillingInvoice&#x60;. - **Pay:** &#x60;initiatePayment&#x60; (use the cart&#x27;s invoice ids or the &#x60;SERVICEvpsN&#x60; / &#x60;INVvpsN&#x60; tag forms). - **Top up prepay first:** &#x60;getBillingPrePays&#x60;, &#x60;addBillingPrepay&#x60;. 
        /// </summary>
        /// <returns>Object</returns>
        Object GetBillingCart ();
        /// <summary>
        /// Probe whether a stored card still needs micro-charge verification Status probe for the credit-card verification flow. Read-only — current implementation returns a placeholder string indicating verification is pending; the actual two-step verification happens via &#x60;patchBillingCreditCardVerify&#x60; (initiate dual micro-charge with CVV) followed by &#x60;postBillingCreditCardVerify&#x60; (submit the charged amounts). Use to drive the UI&#x27;s \&quot;verify card\&quot; form rendering. Sibling ops: &#x60;patchBillingCreditCardVerify&#x60;, &#x60;postBillingCreditCardVerify&#x60;, &#x60;addBillingCreditCard&#x60;, &#x60;updateBillingPaymentMethod&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — credit card index from &#x60;parse_ccs&#x60;.  **Body:** None.  **Returns:** &#x60;Verification requirements&#x60; (placeholder text — reserved for future structured response with &#x60;requires_cvv&#x60; / &#x60;requires_amounts&#x60; flags).  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Step 1 of verify flow:** &#x60;patchBillingCreditCardVerify&#x60;. - **Step 2 of verify flow:** &#x60;postBillingCreditCardVerify&#x60;. - **Add a new card:** &#x60;addBillingCreditCard&#x60;. 
        /// </summary>
        /// <param name="id">The credit card ID to verify. Use the ID returned from &#x60;POST /billing/creditcards&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        SuccessTextResponse GetBillingCreditCardVerify (int? id);
        /// <summary>
        /// Read full invoice detail — line items, totals, paid status, customer info Returns the full rendered invoice payload for a single invoice — backed by &#x60;get_invoice_data()&#x60;, the same helper that builds the email-style invoice document. Use to confirm the exact balance due and the invoice description before calling &#x60;initiatePayment&#x60;, or to render an invoice viewer page. Read-only. The response is an email-style/HTML payload (not a structured line-item array) — for a structured cart-style summary use &#x60;getBillingCart&#x60;. The response includes a Link to &#x60;deleteBillingInvoice&#x60; for unpaid pending-service invoices. Sibling ops: &#x60;getBillingInvoices&#x60;, &#x60;deleteBillingInvoice&#x60;, &#x60;initiatePayment&#x60;, &#x60;getBillingCart&#x60;, per-service &#x60;getVpsInvoices&#x60; / &#x60;getMailInvoices&#x60; / etc.  **Path param:** - &#x60;id&#x60; (integer, required) — invoice id from &#x60;getBillingInvoices.rows[].id&#x60;, from an order endpoint&#x27;s response (e.g. &#x60;addVps.iid&#x60;), or from a per-service invoice list.  **Body:** None.  **Returns:** &#x60;BillingInvoiceDetail&#x60; — full rendered invoice payload (email body) with line items, totals, customer/billing info, and paid status. The exact shape mirrors what gets sent to the customer.  **Auth:** Session/API key. Ownership enforced through the invoice&#x27;s &#x60;invoices_custid&#x60;.  **Errors:** - &#x60;Invalid Invoice&#x60; — &#x60;id&#x60; not found or owned by another account. - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Pay it:** &#x60;initiatePayment&#x60; (&#x60;/billing/pay/{method}/{id}&#x60;). - **Delete if pending/unpaid:** &#x60;deleteBillingInvoice&#x60;. - **List all:** &#x60;getBillingInvoices&#x60;. - **Cart-style summary across all unpaid:** &#x60;getBillingCart&#x60;. 
        /// </summary>
        /// <param name="id">The invoice ID. Use IDs from &#x60;GET /billing/invoices&#x60; or from order responses.</param>
        /// <returns>BillingInvoiceDetail</returns>
        BillingInvoiceDetail GetBillingInvoice (int? id);
        /// <summary>
        /// List every invoice on the account with summary totals and paid/unpaid status Returns the customer&#x27;s complete invoice ledger — every charge, paid or unpaid, across every service module. Use to render a billing-history page, find an unpaid invoice id to pass to &#x60;initiatePayment&#x60;, or audit recent activity. Server-side strips the first synthetic header row from &#x60;get_view_invoices()&#x60; and reindexes the array. Read-only. The response includes a Link to &#x60;getBillingInvoice&#x60; for drilling into any row. Sibling ops: &#x60;getBillingInvoice&#x60;, &#x60;deleteBillingInvoice&#x60;, &#x60;initiatePayment&#x60;, &#x60;getBillingCart&#x60;, &#x60;getBillingPrePays&#x60;.  **Path/Query/Body:** None.  **Returns:** &#x60;BillingInvoiceList&#x60; — object containing: - &#x60;rows&#x60; (array) — per-invoice summaries: &#x60;id&#x60;, &#x60;amount&#x60;, &#x60;paid&#x60;, &#x60;description&#x60;, &#x60;date&#x60;, &#x60;due_date&#x60;, &#x60;module&#x60;, &#x60;service&#x60; (service-id within the module), &#x60;currency&#x60;. - Aggregate totals across the array (totals object: &#x60;total&#x60;, &#x60;paid_total&#x60;, &#x60;unpaid_total&#x60;).  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Drill into one invoice:** &#x60;getBillingInvoice&#x60;. - **Pay an unpaid invoice:** &#x60;initiatePayment&#x60;. - **Cancel an unpaid pending-service invoice:** &#x60;deleteBillingInvoice&#x60; (only works on pending services / unpaid prepays). - **Per-service invoices instead:** &#x60;getVpsInvoices&#x60;, &#x60;getDomainInvoices&#x60;, &#x60;getMailInvoices&#x60;, &#x60;getBackupInvoices&#x60;, etc. 
        /// </summary>
        /// <returns>BillingInvoiceList</returns>
        BillingInvoiceList GetBillingInvoices ();
        /// <summary>
        /// List prepay deposits on the account — remaining balance and auto-use flags Returns every prepay deposit on the account — funded or pending — with remaining balances, modules they&#x27;re scoped to, and the &#x60;automatic_use&#x60; flag controlling whether the balance auto-applies to future invoices. Use to gate &#x60;method&#x3D;prepay&#x60; at checkout (a prepay must be funded to count toward payment) or to render a prepays management page. Read-only. &#x60;csrf_token&#x60; is stripped from the helper output. Sibling ops: &#x60;addBillingPrepay&#x60; (top up), &#x60;deleteBillingPrepay&#x60; (remove), &#x60;initiatePayment&#x60; (&#x60;method&#x3D;prepay&#x60;), &#x60;getBillingCart&#x60;.  **Path/Query/Body:** None.  **Returns:** Object with per-prepay rows: - &#x60;prepay_id&#x60; (integer). - &#x60;prepay_module&#x60; (string) — service module the prepay is scoped to (or &#x60;default&#x60; for any). - &#x60;prepay_amount&#x60; (decimal) — original deposit amount. - &#x60;prepay_remaining&#x60; (decimal) — funds left. - &#x60;prepay_automatic_use&#x60; (bool) — auto-apply to invoices. - &#x60;prepay_paid&#x60; (bool) — whether the funding invoice has been paid (unpaid prepays are listed but unusable).  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Top up:** &#x60;addBillingPrepay&#x60; (returns an invoice id you then pay via &#x60;initiatePayment&#x60;). - **Pay with prepay:** &#x60;initiatePayment&#x60; with &#x60;method&#x3D;prepay&#x60;. - **Remove an unfunded prepay:** &#x60;deleteBillingPrepay&#x60;. - **Cart view:** &#x60;getBillingCart&#x60; (includes prepay summary). 
        /// </summary>
        /// <returns>Object</returns>
        Object GetBillingPrePays ();
        /// <summary>
        /// Pay invoices through the chosen gateway — returns the next-step action Universal payment trigger — the final step in every order/checkout flow. Use after any order endpoint (&#x60;addVps&#x60;, &#x60;addQs&#x60;, &#x60;addBackup&#x60;, &#x60;addMail&#x60;, &#x60;addBillingPrepay&#x60;) returns an invoice id, or after &#x60;getBillingInvoices&#x60; surfaces unpaid invoices. Resolves the chosen gateway class under &#x60;include/Api/Billing/Pay/&#x60;, populates it with the invoices, and returns one of three response shapes the client must act on: &#x60;redirect&#x60; (send the user to the gateway URL), &#x60;submit&#x60; (POST a form with the supplied items), or &#x60;single&#x60; (processed synchronously). Sibling ops: &#x60;getBillingCart&#x60;, &#x60;getBillingInvoices&#x60;, &#x60;getBillingInvoice&#x60;, &#x60;addBillingPrepay&#x60;, &#x60;updateBillingPaymentMethod&#x60;, &#x60;addBillingCreditCard&#x60;.  **Path params:** - &#x60;method&#x60; (string enum, required) — one of &#x60;cc&#x60;, &#x60;paypal&#x60;, &#x60;prepay&#x60;, &#x60;payssion&#x60;, &#x60;payu&#x60;, &#x60;ccavenue&#x60;, &#x60;cashfree&#x60;, &#x60;coinbase&#x60;, &#x60;btcpay&#x60;. Rejected with 400 otherwise. - &#x60;invoices&#x60; (string, required) — comma-separated identifiers. Each identifier may be:   - a bare integer invoice id (e.g. &#x60;25296600&#x60;);   - &#x60;INV&lt;module&gt;&lt;iid&gt;&#x60; (e.g. &#x60;INVvps25296600&#x60;) — strict invoice lookup;   - &#x60;SERVICE&lt;module&gt;&lt;id&gt;&#x60; (e.g. &#x60;SERVICEvps12345&#x60;) — picks the most recent unpaid invoice for that service;   - &#x60;RINV&lt;module&gt;&lt;rid&gt;&#x60; (e.g. &#x60;RINVvps78901&#x60;) — picks the most recent unpaid invoice for that repeat-invoice row;   - &#x60;PREPAYID&lt;pid&gt;INV&lt;iid&gt;&#x60; — explicit prepay-funding invoice.  **Query params:** - &#x60;redirectUrl&#x60; (string, optional) — override the gateway return-URL. Defaults to &#x60;https://my.interserver.net/pay/&#x60;.  **Returns** (one of three shapes — branch on &#x60;type&#x60;): - **type&#x3D;&#x60;redirect&#x60;:** &#x60;{type: \&quot;redirect\&quot;, redirect: \&quot;&lt;gateway-url&gt;\&quot;, text: \&quot;...\&quot;}&#x60; — send the user to &#x60;redirect&#x60;. - **type&#x3D;&#x60;submit&#x60;:** &#x60;{type: \&quot;submit\&quot;, action: \&quot;&lt;url&gt;\&quot;, method: \&quot;POST\&quot;, items: {field: value, ...}}&#x60; — render a form with those fields, POST to &#x60;action&#x60;. - **type&#x3D;&#x60;single&#x60;:** &#x60;{type: \&quot;single\&quot;, text: \&quot;...\&quot;}&#x60; — payment already processed; surface &#x60;text&#x60; to the customer.  **Side effects:** - Creates a &#x60;payment_requests&#x60; row tracking the attempt (via &#x60;addPaymentRequest&#x60;). - On &#x60;single&#x60;-mode success (&#x60;cc&#x60;, &#x60;prepay&#x60;): marks the underlying &#x60;invoices.invoices_paid&#x3D;1&#x60;, triggers &#x60;queue_process_payment($iid)&#x60; → service activation. - On &#x60;redirect&#x60;/&#x60;submit&#x60;-mode: nothing is paid yet; the gateway IPN/callback handler in &#x60;confirm()&#x60; (in each &#x60;Pay/_*.php&#x60; subclass) runs &#x60;queue_process_payment&#x60; after the gateway notifies us of success.  **Auth:** Session/API key. Ownership of every referenced invoice is enforced through the &#x60;setInvoices()&#x60; lookup (filters by session &#x60;account_id&#x60;).  **Errors:** - &#x60;400 Invalid payment method&#x60; — unrecognized &#x60;method&#x60;. - &#x60;402&#x60; / gateway-specific text — card declined, balance insufficient, etc. Returned as &#x60;{error: \&quot;&lt;text&gt;\&quot;}&#x60;. - &#x60;422 Invalid Invoice Tag&#x60; — identifier format not recognized. - &#x60;401&#x60; — unauthenticated. - Method-specific:   - &#x60;cc&#x60;: card not verified (use &#x60;addBillingCreditCard&#x60; → &#x60;patchBillingCreditCardVerify&#x60; → &#x60;postBillingCreditCardVerify&#x60; first; verify via &#x60;updateBillingPaymentMethod&#x60;).   - &#x60;prepay&#x60;: insufficient prepay balance (use &#x60;addBillingPrepay&#x60; to top up first).  **Related calls:** - **Get an invoice id to pass:** &#x60;addVps&#x60; / &#x60;addQs&#x60; / &#x60;addBackup&#x60; / &#x60;addMail&#x60; / &#x60;addBillingPrepay&#x60; / &#x60;getBillingInvoices&#x60;. - **Confirm invoice detail first:** &#x60;getBillingInvoice&#x60;. - **Set up payment methods:** &#x60;addBillingCreditCard&#x60;, &#x60;patchBillingCreditCardVerify&#x60;, &#x60;postBillingCreditCardVerify&#x60;, &#x60;updateBillingPaymentMethod&#x60;. - **After payment:** poll the originating service endpoint (e.g. &#x60;getVpsInfo&#x60; for VPS) until status flips to &#x60;active&#x60;.  **Example happy-path (VPS):** &#x60;&#x60;&#x60;text # 1) Order created — POST /vps/order returned {serviceid: 12345, real_iids: [\&quot;25296600\&quot;]} # 2) Pay with stored credit card: GET /apiv2/billing/pay/cc/25296600 # 3) Response: {\&quot;type\&quot;: \&quot;single\&quot;, \&quot;text\&quot;: \&quot;Payment processed.\&quot;} # 4) Poll service: GET /apiv2/vps/12345  -&gt; {\&quot;vps_status\&quot;: \&quot;active\&quot;, ...} &#x60;&#x60;&#x60; **Example PayPal flow:** &#x60;&#x60;&#x60;text GET /apiv2/billing/pay/paypal/25296600 {\&quot;type\&quot;: \&quot;redirect\&quot;, \&quot;redirect\&quot;: \&quot;https://www.paypal.com/...\&quot;, \&quot;text\&quot;: \&quot;...\&quot;} # Client redirects user; PayPal IPN later marks invoice paid and activates service. &#x60;&#x60;&#x60; 
        /// </summary>
        /// <param name="method">The payment method to use. Valid values: &#x60;cc&#x60; (credit card), &#x60;paypal&#x60;, &#x60;prepay&#x60;, &#x60;payssion&#x60;, &#x60;payu&#x60;, &#x60;ccavenue&#x60;, &#x60;cashfree&#x60;, &#x60;coinbase&#x60;, &#x60;btcpay&#x60;.</param>
        /// <param name="invoices">A comma-separated list of invoice IDs or invoice Tags to pay. These IDs are returned by order endpoints (e.g. &#x60;/backups/order&#x60;, &#x60;/vps/order&#x60;) and by &#x60;/billing/invoices&#x60;. Invoice tags accepted are SERVICE&lt;module&gt;&lt;id&gt;, RINV&lt;module&gt;&lt;repeat invoice id&gt;, INV&lt;module&gt;&lt;invoice id&gt;, PREPAY&lt;prepay id&gt;&lt;invoice id&gt;, and &lt;invoice id&gt;.</param>
        /// <returns>InlineResponse20010</returns>
        InlineResponse20010 InitiatePayment (string method, string invoices);
        /// <summary>
        /// Place two micro-charges on the card to start CVV verification (step 1 of 2) Step 1 of the two-step card-verification flow. After &#x60;addBillingCreditCard&#x60; returns &#x60;action&#x3D;&#x27;verify&#x27;&#x60;, call this with the card&#x27;s CVV to place two small charges (cents-scale) on the card. The customer must then look up the exact amounts in their bank statement and submit them via &#x60;postBillingCreditCardVerify&#x60; to finalize verification. **After 3 failed CVV attempts** (&#x60;cc_fails_&lt;cc&gt;&#x60; counter on the account) the card is locked from further verification attempts — contact support. Sibling ops: &#x60;getBillingCreditCardVerify&#x60;, &#x60;postBillingCreditCardVerify&#x60;, &#x60;addBillingCreditCard&#x60;, &#x60;updateBillingPaymentMethod&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — credit card index from &#x60;parse_ccs&#x60;.  **Body fields:** - &#x60;cc_ccv2&#x60; (string, required) — the 3- or 4-digit CVV/CVC code from the back (or front, for Amex) of the card.  **Returns:** &#x60;Your card is charged. Please enter the amounts charged up!&#x60; — surface to the UI to prompt for the two amounts.  **Side effects:** - Places two test charges via &#x60;verify_cc_charge()&#x60; (gateway-side). - On failure: increments &#x60;cc_fails_&lt;cc&gt;&#x60; on the account.  **Auth:** Session/API key. Card ownership enforced.  **Errors:** - &#x60;Invalid Credit Card Passed&#x60; — &#x60;id&#x60; not in &#x60;parse_ccs&#x60;. - &#x60;Reached the max number of tries to authenticate this card&#x60; — &#x60;cc_fails_&lt;cc&gt; &gt; 3&#x60;. - &#x60;Missing or blank CVV&#x60; — &#x60;cc_ccv2&#x60; absent or empty. - Gateway error text — charge attempt failed. - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Prerequisite:** &#x60;addBillingCreditCard&#x60; (must have returned &#x60;action&#x3D;&#x27;verify&#x27;&#x60;). - **Next (step 2):** &#x60;postBillingCreditCardVerify&#x60; (submit &#x60;cc_amount1&#x60; + &#x60;cc_amount2&#x60;). - **After verification:** &#x60;updateBillingPaymentMethod&#x60; to make it the default. 
        /// </summary>
        /// <param name="body"></param>
        /// <param name="id">The credit card ID to verify. Use the ID returned from &#x60;POST /billing/creditcards&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        SuccessTextResponse PatchBillingCreditCardVerify (IdVerifyBody body, int? id);
        /// <summary>
        /// Place two micro-charges on the card to start CVV verification (step 1 of 2) Step 1 of the two-step card-verification flow. After &#x60;addBillingCreditCard&#x60; returns &#x60;action&#x3D;&#x27;verify&#x27;&#x60;, call this with the card&#x27;s CVV to place two small charges (cents-scale) on the card. The customer must then look up the exact amounts in their bank statement and submit them via &#x60;postBillingCreditCardVerify&#x60; to finalize verification. **After 3 failed CVV attempts** (&#x60;cc_fails_&lt;cc&gt;&#x60; counter on the account) the card is locked from further verification attempts — contact support. Sibling ops: &#x60;getBillingCreditCardVerify&#x60;, &#x60;postBillingCreditCardVerify&#x60;, &#x60;addBillingCreditCard&#x60;, &#x60;updateBillingPaymentMethod&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — credit card index from &#x60;parse_ccs&#x60;.  **Body fields:** - &#x60;cc_ccv2&#x60; (string, required) — the 3- or 4-digit CVV/CVC code from the back (or front, for Amex) of the card.  **Returns:** &#x60;Your card is charged. Please enter the amounts charged up!&#x60; — surface to the UI to prompt for the two amounts.  **Side effects:** - Places two test charges via &#x60;verify_cc_charge()&#x60; (gateway-side). - On failure: increments &#x60;cc_fails_&lt;cc&gt;&#x60; on the account.  **Auth:** Session/API key. Card ownership enforced.  **Errors:** - &#x60;Invalid Credit Card Passed&#x60; — &#x60;id&#x60; not in &#x60;parse_ccs&#x60;. - &#x60;Reached the max number of tries to authenticate this card&#x60; — &#x60;cc_fails_&lt;cc&gt; &gt; 3&#x60;. - &#x60;Missing or blank CVV&#x60; — &#x60;cc_ccv2&#x60; absent or empty. - Gateway error text — charge attempt failed. - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Prerequisite:** &#x60;addBillingCreditCard&#x60; (must have returned &#x60;action&#x3D;&#x27;verify&#x27;&#x60;). - **Next (step 2):** &#x60;postBillingCreditCardVerify&#x60; (submit &#x60;cc_amount1&#x60; + &#x60;cc_amount2&#x60;). - **After verification:** &#x60;updateBillingPaymentMethod&#x60; to make it the default. 
        /// </summary>
        /// <param name="ccCcv2"></param>
        /// <param name="id">The credit card ID to verify. Use the ID returned from &#x60;POST /billing/creditcards&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        SuccessTextResponse PatchBillingCreditCardVerify (string ccCcv2, int? id);
        /// <summary>
        /// Submit two micro-charge amounts to finalize card verification (step 2 of 2) Step 2 of the two-step card-verification flow. Submits the two exact micro-charge amounts the customer saw on their statement (placed by &#x60;patchBillingCreditCardVerify&#x60;) so the gateway can confirm the customer controls the card. On success, the card is marked verified and can be selected via &#x60;updateBillingPaymentMethod&#x60; (&#x60;payment_method&#x3D;cc&lt;idx&gt;&#x60;) or used directly with &#x60;initiatePayment&#x60; (&#x60;method&#x3D;cc&#x60;). After 3 failed attempts (&#x60;cc_fails_&lt;cc&gt; &gt; 3&#x60;) the card is locked. Sibling ops: &#x60;getBillingCreditCardVerify&#x60;, &#x60;patchBillingCreditCardVerify&#x60;, &#x60;addBillingCreditCard&#x60;, &#x60;updateBillingPaymentMethod&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — credit card index from &#x60;parse_ccs&#x60;.  **Body fields (schema &#x60;BillingVerifyCcRequest&#x60;):** - &#x60;cc_amount1&#x60; (number, required) — first micro-charge amount (in dollars, decimal). - &#x60;cc_amount2&#x60; (number, required) — second micro-charge amount.  **Returns:** Verification success text (gateway-returned).  **Side effects:** - Marks the card as verified when amounts match. - On failure: increments &#x60;cc_fails_&lt;cc&gt;&#x60; on the account.  **Auth:** Session/API key. Card ownership enforced.  **Errors:** - &#x60;Invalid Credit Card Passed&#x60; — &#x60;id&#x60; not in &#x60;parse_ccs&#x60;. - &#x60;Reached the max number of tries to authenticate this card&#x60; — &#x60;cc_fails_&lt;cc&gt; &gt; 3&#x60;. - &#x60;Missing charge amounts&#x60; — &#x60;cc_amount1&#x60; or &#x60;cc_amount2&#x60; absent. - Verification failure text (status &#x60;failed&#x60; / &#x60;error&#x60; / &#x60;warning&#x60;) — amounts don&#x27;t match. - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Prerequisite (step 1):** &#x60;patchBillingCreditCardVerify&#x60;. - **Next:** &#x60;updateBillingPaymentMethod&#x60; to make the verified card default, or &#x60;initiatePayment&#x60; (&#x60;method&#x3D;cc&#x60;) to pay immediately. 
        /// </summary>
        /// <param name="body"></param>
        /// <param name="id">The credit card ID to verify. Use the ID returned from &#x60;POST /billing/creditcards&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        SuccessTextResponse PostBillingCreditCardVerify (BillingVerifyCcRequest body, int? id);
        /// <summary>
        /// Submit two micro-charge amounts to finalize card verification (step 2 of 2) Step 2 of the two-step card-verification flow. Submits the two exact micro-charge amounts the customer saw on their statement (placed by &#x60;patchBillingCreditCardVerify&#x60;) so the gateway can confirm the customer controls the card. On success, the card is marked verified and can be selected via &#x60;updateBillingPaymentMethod&#x60; (&#x60;payment_method&#x3D;cc&lt;idx&gt;&#x60;) or used directly with &#x60;initiatePayment&#x60; (&#x60;method&#x3D;cc&#x60;). After 3 failed attempts (&#x60;cc_fails_&lt;cc&gt; &gt; 3&#x60;) the card is locked. Sibling ops: &#x60;getBillingCreditCardVerify&#x60;, &#x60;patchBillingCreditCardVerify&#x60;, &#x60;addBillingCreditCard&#x60;, &#x60;updateBillingPaymentMethod&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — credit card index from &#x60;parse_ccs&#x60;.  **Body fields (schema &#x60;BillingVerifyCcRequest&#x60;):** - &#x60;cc_amount1&#x60; (number, required) — first micro-charge amount (in dollars, decimal). - &#x60;cc_amount2&#x60; (number, required) — second micro-charge amount.  **Returns:** Verification success text (gateway-returned).  **Side effects:** - Marks the card as verified when amounts match. - On failure: increments &#x60;cc_fails_&lt;cc&gt;&#x60; on the account.  **Auth:** Session/API key. Card ownership enforced.  **Errors:** - &#x60;Invalid Credit Card Passed&#x60; — &#x60;id&#x60; not in &#x60;parse_ccs&#x60;. - &#x60;Reached the max number of tries to authenticate this card&#x60; — &#x60;cc_fails_&lt;cc&gt; &gt; 3&#x60;. - &#x60;Missing charge amounts&#x60; — &#x60;cc_amount1&#x60; or &#x60;cc_amount2&#x60; absent. - Verification failure text (status &#x60;failed&#x60; / &#x60;error&#x60; / &#x60;warning&#x60;) — amounts don&#x27;t match. - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Prerequisite (step 1):** &#x60;patchBillingCreditCardVerify&#x60;. - **Next:** &#x60;updateBillingPaymentMethod&#x60; to make the verified card default, or &#x60;initiatePayment&#x60; (&#x60;method&#x3D;cc&#x60;) to pay immediately. 
        /// </summary>
        /// <param name="idx"></param>
        /// <param name="ccCcv2"></param>
        /// <param name="ccAmount1"></param>
        /// <param name="ccAmount2"></param>
        /// <param name="terms"></param>
        /// <param name="id">The credit card ID to verify. Use the ID returned from &#x60;POST /billing/creditcards&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        SuccessTextResponse PostBillingCreditCardVerify (int? idx, string ccCcv2, string ccAmount1, string ccAmount2, bool? terms, int? id);
        /// <summary>
        /// Configure the affiliate landing dock title, description, and referrer coupon Customizes the branded landing-dock page shown to visitors arriving via the affiliate&#x27;s referral link, and reserves a unique referrer coupon code that&#x27;s automatically created across all affiliate-eligible modules. Title/description allow a limited HTML allowlist (&#x60;&lt;b&gt;&#x60;, &#x60;&lt;br&gt;&#x60;, &#x60;&lt;strong&gt;&#x60;, &#x60;&lt;hr&gt;&#x60;); everything else is entity-escaped. Coupon changes propagate to **all** affiliate modules atomically. Sibling ops: &#x60;updateAffiliatePaymentSetup&#x60;, &#x60;getAffiliateSignups&#x60;.  **Body fields (multipart or JSON, schema &#x60;AffiliateDockSetup&#x60;):** - &#x60;affiliate_dock_title&#x60; (string, optional) — landing-page title. HTML allowlist: &#x60;&lt;b&gt;&#x60;, &#x60;&lt;br&gt;&#x60;, &#x60;&lt;strong&gt;&#x60;, &#x60;&lt;hr&gt;&#x60;. - &#x60;affiliate_dock_description&#x60; (string, optional) — landing-page body. Same allowlist. - &#x60;referrer_coupon&#x60; (string, optional) — coupon code reservation. Requirements:   - ≥ 6 chars.   - &#x60;^[a-zA-Z0-9]+$&#x60; (alphanumeric only).   - Must NOT contain &#x60;facebook&#x60;, &#x60;test&#x60;, or &#x60;interserver&#x60; (substring check, case-insensitive).   - Must NOT exactly match a reserved word.   - Must NOT already exist as a coupon in any affiliate module (&#x60;webhosting&#x60;, &#x60;vps&#x60;, &#x60;quickservers&#x60;, &#x60;servers&#x60;, &#x60;backups&#x60;).  **Returns:** &#x60;{text: \&quot;&lt;status message&gt;\&quot;}&#x60;.  **Side effects:** - First time setting &#x60;referrer_coupon&#x60;: inserts a &#x60;coupons&#x60; row in each affiliate module (&#x60;type&#x3D;3&#x60;, &#x60;amount&#x3D;0.01&#x60;, &#x60;onetime&#x3D;1&#x60;, &#x60;customer&#x3D;-1&#x60;, &#x60;usable&#x3D;1&#x60;, &#x60;applies&#x3D;-1&#x60;). - Changing &#x60;referrer_coupon&#x60;: renames the coupon across all affiliate modules in one transaction. - Updates the account&#x27;s &#x60;affiliate_dock_title&#x60;, &#x60;affiliate_dock_description&#x60;, &#x60;referrer_coupon&#x60; fields.  **Auth:** Session/API key.  **Errors:** - &#x60;422 The name must be at least 6 characters long&#x60;. - &#x60;422 Invalid Characters, use only standard english letters and numbers&#x60;. - &#x60;422 That is a reserved word that cannot be used here&#x60;. - &#x60;422 &lt;position&gt; is a reserved word that cannot be used here&#x60; (substring match against &#x60;facebook&#x60;/&#x60;test&#x60;/&#x60;interserver&#x60;). - &#x60;409 That name is already taken&#x60; — coupon exists in another account&#x27;s module. - &#x60;401&#x60; — unauthenticated. 
        /// </summary>
        /// <param name="affiliateDockTitle"></param>
        /// <param name="affiliateDockDescription"></param>
        /// <param name="referrerCoupon"></param>
        /// <returns>TextResponse</returns>
        TextResponse UpdateAffiliateDockSetup (string affiliateDockTitle, string affiliateDockDescription, string referrerCoupon);
        /// <summary>
        /// Configure the affiliate landing dock title, description, and referrer coupon Customizes the branded landing-dock page shown to visitors arriving via the affiliate&#x27;s referral link, and reserves a unique referrer coupon code that&#x27;s automatically created across all affiliate-eligible modules. Title/description allow a limited HTML allowlist (&#x60;&lt;b&gt;&#x60;, &#x60;&lt;br&gt;&#x60;, &#x60;&lt;strong&gt;&#x60;, &#x60;&lt;hr&gt;&#x60;); everything else is entity-escaped. Coupon changes propagate to **all** affiliate modules atomically. Sibling ops: &#x60;updateAffiliatePaymentSetup&#x60;, &#x60;getAffiliateSignups&#x60;.  **Body fields (multipart or JSON, schema &#x60;AffiliateDockSetup&#x60;):** - &#x60;affiliate_dock_title&#x60; (string, optional) — landing-page title. HTML allowlist: &#x60;&lt;b&gt;&#x60;, &#x60;&lt;br&gt;&#x60;, &#x60;&lt;strong&gt;&#x60;, &#x60;&lt;hr&gt;&#x60;. - &#x60;affiliate_dock_description&#x60; (string, optional) — landing-page body. Same allowlist. - &#x60;referrer_coupon&#x60; (string, optional) — coupon code reservation. Requirements:   - ≥ 6 chars.   - &#x60;^[a-zA-Z0-9]+$&#x60; (alphanumeric only).   - Must NOT contain &#x60;facebook&#x60;, &#x60;test&#x60;, or &#x60;interserver&#x60; (substring check, case-insensitive).   - Must NOT exactly match a reserved word.   - Must NOT already exist as a coupon in any affiliate module (&#x60;webhosting&#x60;, &#x60;vps&#x60;, &#x60;quickservers&#x60;, &#x60;servers&#x60;, &#x60;backups&#x60;).  **Returns:** &#x60;{text: \&quot;&lt;status message&gt;\&quot;}&#x60;.  **Side effects:** - First time setting &#x60;referrer_coupon&#x60;: inserts a &#x60;coupons&#x60; row in each affiliate module (&#x60;type&#x3D;3&#x60;, &#x60;amount&#x3D;0.01&#x60;, &#x60;onetime&#x3D;1&#x60;, &#x60;customer&#x3D;-1&#x60;, &#x60;usable&#x3D;1&#x60;, &#x60;applies&#x3D;-1&#x60;). - Changing &#x60;referrer_coupon&#x60;: renames the coupon across all affiliate modules in one transaction. - Updates the account&#x27;s &#x60;affiliate_dock_title&#x60;, &#x60;affiliate_dock_description&#x60;, &#x60;referrer_coupon&#x60; fields.  **Auth:** Session/API key.  **Errors:** - &#x60;422 The name must be at least 6 characters long&#x60;. - &#x60;422 Invalid Characters, use only standard english letters and numbers&#x60;. - &#x60;422 That is a reserved word that cannot be used here&#x60;. - &#x60;422 &lt;position&gt; is a reserved word that cannot be used here&#x60; (substring match against &#x60;facebook&#x60;/&#x60;test&#x60;/&#x60;interserver&#x60;). - &#x60;409 That name is already taken&#x60; — coupon exists in another account&#x27;s module. - &#x60;401&#x60; — unauthenticated. 
        /// </summary>
        /// <param name="body"></param>
        /// <returns>TextResponse</returns>
        TextResponse UpdateAffiliateDockSetup (AffiliateDockSetup body);
        /// <summary>
        /// Configure how affiliate commissions get paid out (PayPal or internal prepay) Sets the disbursement preferences for affiliate commission payouts. Choose between PayPal payout (provide an email — validated) or internal prepay credit (auto-applied to future invoices via &#x60;method&#x3D;prepay&#x60;). Selecting &#x60;not set&#x60; suspends payouts. Sibling ops: &#x60;updateAffiliateDockSetup&#x60;, &#x60;getAffiliateRichReport&#x60;, &#x60;getAffiliateDownload&#x60;.  **Body fields (multipart or JSON, schema &#x60;AffiliatePaymentSetup&#x60;):** - &#x60;affiliate_payment_method&#x60; (string, optional) — one of &#x60;paypal&#x60; / &#x60;prepay&#x60; / &#x60;not set&#x60;. - &#x60;affiliate_paypal&#x60; (string, optional, required when method&#x3D;&#x60;paypal&#x60;) — email validated by &#x60;valid_email()&#x60;.  **Returns:** &#x60;{text: \&quot;Ok\&quot;}&#x60;.  **Side effects:** - Updates the account&#x27;s &#x60;affiliate_payment_method&#x60; and/or &#x60;affiliate_paypal&#x60; fields.  **Auth:** Session/API key.  **Errors:** - &#x60;422 Invalid Email&#x60; — &#x60;affiliate_paypal&#x60; fails &#x60;valid_email()&#x60;. - &#x60;422 Invalid Payment Method&#x60; — value not in &#x60;{paypal, prepay, not set}&#x60;. - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Read current commissions:** &#x60;getAffiliateRichReport&#x60;, &#x60;getAffiliateSalesGraph&#x60;. - **Export commission report:** &#x60;getAffiliateDownload&#x60;. 
        /// </summary>
        /// <param name="affiliatePaypal"></param>
        /// <param name="affiliatePaymentMethod"></param>
        /// <returns>TextResponse</returns>
        TextResponse UpdateAffiliatePaymentSetup (string affiliatePaypal, string affiliatePaymentMethod);
        /// <summary>
        /// Configure how affiliate commissions get paid out (PayPal or internal prepay) Sets the disbursement preferences for affiliate commission payouts. Choose between PayPal payout (provide an email — validated) or internal prepay credit (auto-applied to future invoices via &#x60;method&#x3D;prepay&#x60;). Selecting &#x60;not set&#x60; suspends payouts. Sibling ops: &#x60;updateAffiliateDockSetup&#x60;, &#x60;getAffiliateRichReport&#x60;, &#x60;getAffiliateDownload&#x60;.  **Body fields (multipart or JSON, schema &#x60;AffiliatePaymentSetup&#x60;):** - &#x60;affiliate_payment_method&#x60; (string, optional) — one of &#x60;paypal&#x60; / &#x60;prepay&#x60; / &#x60;not set&#x60;. - &#x60;affiliate_paypal&#x60; (string, optional, required when method&#x3D;&#x60;paypal&#x60;) — email validated by &#x60;valid_email()&#x60;.  **Returns:** &#x60;{text: \&quot;Ok\&quot;}&#x60;.  **Side effects:** - Updates the account&#x27;s &#x60;affiliate_payment_method&#x60; and/or &#x60;affiliate_paypal&#x60; fields.  **Auth:** Session/API key.  **Errors:** - &#x60;422 Invalid Email&#x60; — &#x60;affiliate_paypal&#x60; fails &#x60;valid_email()&#x60;. - &#x60;422 Invalid Payment Method&#x60; — value not in &#x60;{paypal, prepay, not set}&#x60;. - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Read current commissions:** &#x60;getAffiliateRichReport&#x60;, &#x60;getAffiliateSalesGraph&#x60;. - **Export commission report:** &#x60;getAffiliateDownload&#x60;. 
        /// </summary>
        /// <param name="body"></param>
        /// <returns>TextResponse</returns>
        TextResponse UpdateAffiliatePaymentSetup (AffiliatePaymentSetup body);
        /// <summary>
        /// Refresh stored card expiration and re-trigger MaxMind fraud scoring Updates the expiration date on a stored credit card and re-encrypts the card record. If the updated card matches the account&#x27;s primary &#x60;cc&#x60;, the account-level &#x60;cc_exp&#x60; is also refreshed. If no MaxMind risk score exists yet for the card, &#x60;update_maxmind()&#x60; is called to compute one. Use to fix an upcoming expiration before recurring charges fail. Sibling ops: &#x60;addBillingCreditCard&#x60;, &#x60;deleteBillingCreditCard&#x60;, &#x60;getBillingCreditCardVerify&#x60;, &#x60;postBillingCreditCardVerify&#x60;, &#x60;updateBillingPaymentMethod&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — credit card index (the key in the account&#x27;s &#x60;ccs&#x60; array, returned by &#x60;parse_ccs&#x60; and surfaced as &#x60;cc&lt;idx&gt;&#x60; in &#x60;updateBillingPaymentMethod&#x60;).  **Body fields:** - &#x60;cc_exp&#x60; (string, required) — new expiration in &#x60;MM/YYYY&#x60; format.  **Returns:** &#x60;Card updated successfully.&#x60;.  **Side effects:** - Updates the &#x60;ccs&#x60; array (re-serialized via &#x60;myadmin_stringify&#x60;) on the account. - When the card &#x3D;&#x3D; primary &#x60;cc&#x60;, the account-level &#x60;cc_exp&#x60; is also written. - Triggers &#x60;update_maxmind($custid, false, $cc_idx)&#x60; if no risk score exists.  **Auth:** Session/API key. Card ownership enforced via &#x60;parse_ccs&#x60;.  **Errors:** - &#x60;Invalid Credit Card Passed&#x60; — &#x60;id&#x60; not in &#x60;parse_ccs&#x60;. - &#x60;Please enter valid card expiry date&#x60; — &#x60;cc_exp&#x60; body field missing. - &#x60;Invalid expiration date. It must be in the form of MM/YYYY&#x60; — wrong format. - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Verify a freshly added card:** &#x60;patchBillingCreditCardVerify&#x60; → &#x60;postBillingCreditCardVerify&#x60;. - **Remove the card:** &#x60;deleteBillingCreditCard&#x60;. - **Make it default:** &#x60;updateBillingPaymentMethod&#x60; with &#x60;payment_method&#x3D;cc&lt;idx&gt;&#x60;. 
        /// </summary>
        /// <param name="id">The credit card ID. Use IDs from &#x60;GET /billing/creditcards&#x60; or the response from &#x60;POST /billing/creditcards&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        SuccessTextResponse UpdateBillingCreditCard (int? id);
        /// <summary>
        /// Set the account&#x27;s default payment method for recurring/auto charges Sets the account&#x27;s preferred payment method for recurring/automatic charges and (when applicable) promotes a specific stored credit card to be the primary &#x60;cc&#x60; on the account. Use after &#x60;addBillingCreditCard&#x60; + verification to select the new card, or when switching between PayPal and credit-card billing. First-time payment-method assignment triggers &#x60;update_maxmind()&#x60; and &#x60;update_fraudrecord()&#x60; risk-score generation. Sibling ops: &#x60;addBillingCreditCard&#x60;, &#x60;postBillingCreditCardVerify&#x60;, &#x60;deleteBillingCreditCard&#x60;, &#x60;initiatePayment&#x60;.  **Body fields (JSON or multipart, schema &#x60;BillingPaymentMethodRequest&#x60;):** - &#x60;payment_method&#x60; (string, required) — one of:   - &#x60;cc&#x60; — use the existing primary credit card.   - &#x60;cc&lt;idx&gt;&#x60; (e.g. &#x60;cc2&#x60;) — promote the card at index &#x60;idx&#x60; (from &#x60;parse_ccs&#x60;) to primary. Must be verified.   - &#x60;paypal&#x60; — switch to PayPal. - &#x60;cc_auto&#x60; (string &#x60;0&#x60;/&#x60;1&#x60;, optional) — auto-charge flag. Implicitly set to &#x60;1&#x60; when selecting &#x60;cc&#x60;/&#x60;cc&lt;idx&gt;&#x60;, &#x60;0&#x60; for &#x60;paypal&#x60;.  **Returns:** &#x60;{text: \&quot;Payment Method Updated\&quot;}&#x60;.  **Side effects:** - When &#x60;payment_method&#x3D;cc&lt;idx&gt;&#x60;: copies the indexed card&#x27;s encrypted &#x60;cc&#x60; and &#x60;cc_exp&#x60; onto the account&#x27;s primary fields. - First time a payment method is set: runs MaxMind risk score, then FraudRecord score.  **Auth:** Session/API key.  **Errors:** - &#x60;Invalid Credit Card Specified&#x60; — &#x60;cc&lt;idx&gt;&#x60; is malformed or &#x60;idx&#x60; not found in &#x60;parse_ccs&#x60;. - &#x60;This CC has not been verified.&#x60; — the chosen card hasn&#x27;t completed &#x60;postBillingCreditCardVerify&#x60;. - &#x60;Invalid Payment Method Specified&#x60; — value not in &#x60;{cc, paypal, cc&lt;idx&gt;}&#x60;. - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Prerequisite for &#x60;cc&lt;idx&gt;&#x60;:** &#x60;addBillingCreditCard&#x60; → &#x60;patchBillingCreditCardVerify&#x60; → &#x60;postBillingCreditCardVerify&#x60;. - **Now pay an invoice:** &#x60;initiatePayment&#x60; (&#x60;method&#x3D;cc&#x60; will use the default; &#x60;method&#x3D;paypal&#x60; if you switched). - **Audit current methods:** &#x60;getAccountInfo&#x60; (account profile shows cards as masked). 
        /// </summary>
        /// <param name="body"></param>
        /// <returns>SuccessTextResponse</returns>
        SuccessTextResponse UpdateBillingPaymentMethod (BillingPaymentMethodRequest body);
        /// <summary>
        /// Set the account&#x27;s default payment method for recurring/auto charges Sets the account&#x27;s preferred payment method for recurring/automatic charges and (when applicable) promotes a specific stored credit card to be the primary &#x60;cc&#x60; on the account. Use after &#x60;addBillingCreditCard&#x60; + verification to select the new card, or when switching between PayPal and credit-card billing. First-time payment-method assignment triggers &#x60;update_maxmind()&#x60; and &#x60;update_fraudrecord()&#x60; risk-score generation. Sibling ops: &#x60;addBillingCreditCard&#x60;, &#x60;postBillingCreditCardVerify&#x60;, &#x60;deleteBillingCreditCard&#x60;, &#x60;initiatePayment&#x60;.  **Body fields (JSON or multipart, schema &#x60;BillingPaymentMethodRequest&#x60;):** - &#x60;payment_method&#x60; (string, required) — one of:   - &#x60;cc&#x60; — use the existing primary credit card.   - &#x60;cc&lt;idx&gt;&#x60; (e.g. &#x60;cc2&#x60;) — promote the card at index &#x60;idx&#x60; (from &#x60;parse_ccs&#x60;) to primary. Must be verified.   - &#x60;paypal&#x60; — switch to PayPal. - &#x60;cc_auto&#x60; (string &#x60;0&#x60;/&#x60;1&#x60;, optional) — auto-charge flag. Implicitly set to &#x60;1&#x60; when selecting &#x60;cc&#x60;/&#x60;cc&lt;idx&gt;&#x60;, &#x60;0&#x60; for &#x60;paypal&#x60;.  **Returns:** &#x60;{text: \&quot;Payment Method Updated\&quot;}&#x60;.  **Side effects:** - When &#x60;payment_method&#x3D;cc&lt;idx&gt;&#x60;: copies the indexed card&#x27;s encrypted &#x60;cc&#x60; and &#x60;cc_exp&#x60; onto the account&#x27;s primary fields. - First time a payment method is set: runs MaxMind risk score, then FraudRecord score.  **Auth:** Session/API key.  **Errors:** - &#x60;Invalid Credit Card Specified&#x60; — &#x60;cc&lt;idx&gt;&#x60; is malformed or &#x60;idx&#x60; not found in &#x60;parse_ccs&#x60;. - &#x60;This CC has not been verified.&#x60; — the chosen card hasn&#x27;t completed &#x60;postBillingCreditCardVerify&#x60;. - &#x60;Invalid Payment Method Specified&#x60; — value not in &#x60;{cc, paypal, cc&lt;idx&gt;}&#x60;. - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Prerequisite for &#x60;cc&lt;idx&gt;&#x60;:** &#x60;addBillingCreditCard&#x60; → &#x60;patchBillingCreditCardVerify&#x60; → &#x60;postBillingCreditCardVerify&#x60;. - **Now pay an invoice:** &#x60;initiatePayment&#x60; (&#x60;method&#x3D;cc&#x60; will use the default; &#x60;method&#x3D;paypal&#x60; if you switched). - **Audit current methods:** &#x60;getAccountInfo&#x60; (account profile shows cards as masked). 
        /// </summary>
        /// <param name="paymentMethod"></param>
        /// <param name="ccAuto"></param>
        /// <returns>SuccessTextResponse</returns>
        SuccessTextResponse UpdateBillingPaymentMethod (string paymentMethod, string ccAuto);
    }
  
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class BillingApi : IBillingApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="BillingApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public BillingApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient; 
            else
                this.ApiClient = apiClient;
        }
    
        /// <summary>
        /// Initializes a new instance of the <see cref="BillingApi"/> class.
        /// </summary>
        /// <returns></returns>
        public BillingApi(String basePath)
        {
            this.ApiClient = new ApiClient(basePath);
        }
    
        /// <summary>
        /// Sets the base path of the API client.
        /// </summary>
        /// <param name="basePath">The base path</param>
        /// <value>The base path</value>
        public void SetBasePath(String basePath)
        {
            this.ApiClient.BasePath = basePath;
        }
    
        /// <summary>
        /// Gets the base path of the API client.
        /// </summary>
        /// <param name="basePath">The base path</param>
        /// <value>The base path</value>
        public String GetBasePath(String basePath)
        {
            return this.ApiClient.BasePath;
        }
    
        /// <summary>
        /// Gets or sets the API client.
        /// </summary>
        /// <value>An instance of the ApiClient</value>
        public ApiClient ApiClient {get; set;}
    
        /// <summary>
        /// Store a credit card on the account — may return a verification flow Stores a new credit card on the account so it can later be selected via &#x60;updateBillingPaymentMethod&#x60; or used directly with &#x60;initiatePayment&#x60; (&#x60;method&#x3D;cc&#x60;). The card number has dashes stripped and is sanitized through &#x60;FILTER_SANITIZE_NUMBER_INT&#x60;; billing address fields are HTML-entity-escaped server-side; the CC number is encrypted at rest via &#x60;App::encrypt()&#x60;. The flow may return &#x60;action&#x3D;&#x27;verify&#x27;&#x60; indicating a two-step micro-charge verification is required before the card is usable — complete it with &#x60;patchBillingCreditCardVerify&#x60; then &#x60;postBillingCreditCardVerify&#x60;. Sibling ops: &#x60;updateBillingCreditCard&#x60;, &#x60;deleteBillingCreditCard&#x60;, &#x60;patchBillingCreditCardVerify&#x60;, &#x60;postBillingCreditCardVerify&#x60;, &#x60;updateBillingPaymentMethod&#x60;.  **Body fields (JSON or multipart, schema &#x60;BillingAddCcRequest&#x60;):** - &#x60;cc&#x60; (string, required) — card number; dashes stripped, non-digits filtered. - &#x60;name&#x60; (string, required) — cardholder name. - &#x60;cc_exp&#x60; (string, required) — &#x60;MM/YYYY&#x60;. - &#x60;address&#x60; (string, required), &#x60;city&#x60;, &#x60;state&#x60;, &#x60;country&#x60;, &#x60;zip&#x60; (strings) — billing address; HTML-entity-escaped.  **Returns:** - **Added directly:** &#x60;{success: true, text: \&quot;Card Added Successfully!\&quot;}&#x60;. - **Verification needed:** &#x60;{success: false, text: \&quot;Kindly verify your card by updating the amounts in the fields\&quot;, action: \&quot;verify\&quot;}&#x60; — proceed to &#x60;patchBillingCreditCardVerify&#x60;.  **Side effects:** - Inserts the encrypted card into the account&#x27;s &#x60;ccs&#x60; array (managed via &#x60;parse_ccs&#x60; / &#x60;add_cc&#x60;). - May trigger a small initial test charge (gateway-dependent). - First-card-on-account triggers MaxMind + FraudRecord risk-score recomputation.  **Auth:** Session/API key.  **Errors:** - &#x60;Card number, Full Name, Expiry date are required!&#x60; — required field missing/empty. - &#x60;401&#x60; — unauthenticated. - Gateway/AVS error text — declined, mismatch, etc.  **Related calls:** - **Verify (if &#x60;action&#x3D;&#x27;verify&#x27;&#x60;):** &#x60;patchBillingCreditCardVerify&#x60; (CVV + initiate micro-charge) → &#x60;postBillingCreditCardVerify&#x60; (submit amounts). - **Make it the default:** &#x60;updateBillingPaymentMethod&#x60; with &#x60;payment_method&#x3D;cc&lt;idx&gt;&#x60;. - **Pay an invoice with it:** &#x60;initiatePayment&#x60; (&#x60;method&#x3D;cc&#x60;). 
        /// </summary>
        /// <param name="body"></param>
        /// <returns>SuccessTextResponse</returns>
        public SuccessTextResponse AddBillingCreditCard (BillingAddCcRequest body)
        {
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling AddBillingCreditCard");
    
            var path = "/billing/creditcards";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    postBody = ApiClient.Serialize(body); // http body (model) parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling AddBillingCreditCard: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling AddBillingCreditCard: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SuccessTextResponse) ApiClient.Deserialize(response.Content, typeof(SuccessTextResponse), response.Headers);
        }
    
        /// <summary>
        /// Store a credit card on the account — may return a verification flow Stores a new credit card on the account so it can later be selected via &#x60;updateBillingPaymentMethod&#x60; or used directly with &#x60;initiatePayment&#x60; (&#x60;method&#x3D;cc&#x60;). The card number has dashes stripped and is sanitized through &#x60;FILTER_SANITIZE_NUMBER_INT&#x60;; billing address fields are HTML-entity-escaped server-side; the CC number is encrypted at rest via &#x60;App::encrypt()&#x60;. The flow may return &#x60;action&#x3D;&#x27;verify&#x27;&#x60; indicating a two-step micro-charge verification is required before the card is usable — complete it with &#x60;patchBillingCreditCardVerify&#x60; then &#x60;postBillingCreditCardVerify&#x60;. Sibling ops: &#x60;updateBillingCreditCard&#x60;, &#x60;deleteBillingCreditCard&#x60;, &#x60;patchBillingCreditCardVerify&#x60;, &#x60;postBillingCreditCardVerify&#x60;, &#x60;updateBillingPaymentMethod&#x60;.  **Body fields (JSON or multipart, schema &#x60;BillingAddCcRequest&#x60;):** - &#x60;cc&#x60; (string, required) — card number; dashes stripped, non-digits filtered. - &#x60;name&#x60; (string, required) — cardholder name. - &#x60;cc_exp&#x60; (string, required) — &#x60;MM/YYYY&#x60;. - &#x60;address&#x60; (string, required), &#x60;city&#x60;, &#x60;state&#x60;, &#x60;country&#x60;, &#x60;zip&#x60; (strings) — billing address; HTML-entity-escaped.  **Returns:** - **Added directly:** &#x60;{success: true, text: \&quot;Card Added Successfully!\&quot;}&#x60;. - **Verification needed:** &#x60;{success: false, text: \&quot;Kindly verify your card by updating the amounts in the fields\&quot;, action: \&quot;verify\&quot;}&#x60; — proceed to &#x60;patchBillingCreditCardVerify&#x60;.  **Side effects:** - Inserts the encrypted card into the account&#x27;s &#x60;ccs&#x60; array (managed via &#x60;parse_ccs&#x60; / &#x60;add_cc&#x60;). - May trigger a small initial test charge (gateway-dependent). - First-card-on-account triggers MaxMind + FraudRecord risk-score recomputation.  **Auth:** Session/API key.  **Errors:** - &#x60;Card number, Full Name, Expiry date are required!&#x60; — required field missing/empty. - &#x60;401&#x60; — unauthenticated. - Gateway/AVS error text — declined, mismatch, etc.  **Related calls:** - **Verify (if &#x60;action&#x3D;&#x27;verify&#x27;&#x60;):** &#x60;patchBillingCreditCardVerify&#x60; (CVV + initiate micro-charge) → &#x60;postBillingCreditCardVerify&#x60; (submit amounts). - **Make it the default:** &#x60;updateBillingPaymentMethod&#x60; with &#x60;payment_method&#x3D;cc&lt;idx&gt;&#x60;. - **Pay an invoice with it:** &#x60;initiatePayment&#x60; (&#x60;method&#x3D;cc&#x60;). 
        /// </summary>
        /// <param name="name"></param>
        /// <param name="address"></param>
        /// <param name="city"></param>
        /// <param name="state"></param>
        /// <param name="country"></param>
        /// <param name="zip"></param>
        /// <param name="cc"></param>
        /// <param name="ccExp"></param>
        /// <param name="ccCcv2"></param>
        /// <returns>SuccessTextResponse</returns>
        public SuccessTextResponse AddBillingCreditCard (string name, string address, string city, string state, string country, string zip, string cc, string ccExp, string ccCcv2)
        {
            // verify the required parameter 'name' is set
            if (name == null) throw new ApiException(400, "Missing required parameter 'name' when calling AddBillingCreditCard");
            // verify the required parameter 'address' is set
            if (address == null) throw new ApiException(400, "Missing required parameter 'address' when calling AddBillingCreditCard");
            // verify the required parameter 'city' is set
            if (city == null) throw new ApiException(400, "Missing required parameter 'city' when calling AddBillingCreditCard");
            // verify the required parameter 'state' is set
            if (state == null) throw new ApiException(400, "Missing required parameter 'state' when calling AddBillingCreditCard");
            // verify the required parameter 'country' is set
            if (country == null) throw new ApiException(400, "Missing required parameter 'country' when calling AddBillingCreditCard");
            // verify the required parameter 'zip' is set
            if (zip == null) throw new ApiException(400, "Missing required parameter 'zip' when calling AddBillingCreditCard");
            // verify the required parameter 'cc' is set
            if (cc == null) throw new ApiException(400, "Missing required parameter 'cc' when calling AddBillingCreditCard");
            // verify the required parameter 'ccExp' is set
            if (ccExp == null) throw new ApiException(400, "Missing required parameter 'ccExp' when calling AddBillingCreditCard");
            // verify the required parameter 'ccCcv2' is set
            if (ccCcv2 == null) throw new ApiException(400, "Missing required parameter 'ccCcv2' when calling AddBillingCreditCard");
    
            var path = "/billing/creditcards";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    if (name != null) formParams.Add("name", ApiClient.ParameterToString(name)); // form parameter
if (address != null) formParams.Add("address", ApiClient.ParameterToString(address)); // form parameter
if (city != null) formParams.Add("city", ApiClient.ParameterToString(city)); // form parameter
if (state != null) formParams.Add("state", ApiClient.ParameterToString(state)); // form parameter
if (country != null) formParams.Add("country", ApiClient.ParameterToString(country)); // form parameter
if (zip != null) formParams.Add("zip", ApiClient.ParameterToString(zip)); // form parameter
if (cc != null) formParams.Add("cc", ApiClient.ParameterToString(cc)); // form parameter
if (ccExp != null) formParams.Add("cc_exp", ApiClient.ParameterToString(ccExp)); // form parameter
if (ccCcv2 != null) formParams.Add("cc_ccv2", ApiClient.ParameterToString(ccCcv2)); // form parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling AddBillingCreditCard: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling AddBillingCreditCard: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SuccessTextResponse) ApiClient.Deserialize(response.Content, typeof(SuccessTextResponse), response.Headers);
        }
    
        /// <summary>
        /// Create a prepay deposit and return an invoice id to fund it Creates a prepay row (&#x60;prepays&#x60; table) at the requested amount and inserts a matching &#x60;invoices&#x60; row (&#x60;Prepay ID {pid} Invoice&#x60;) that the customer must pay through &#x60;initiatePayment&#x60; before the balance becomes usable. The prepay is added with &#x60;PREPAY_TYPE_ANY&#x60; / &#x60;PREPAY_SERVICE_ANY&#x60; defaults via &#x60;add_prepay()&#x60;. Use to seed an account balance the customer can later spend via &#x60;method&#x3D;prepay&#x60; at checkout. **Real money** — funding the returned invoice charges a real payment method. Sibling ops: &#x60;getBillingPrePays&#x60;, &#x60;deleteBillingPrepay&#x60;, &#x60;getBillingInvoice&#x60;, &#x60;initiatePayment&#x60;.  **Body fields (JSON or multipart, schema &#x60;BillingPrepayRequest&#x60;):** - &#x60;amount&#x60; (number, required) — deposit size in account currency. **Minimum $10**; smaller values are rejected. - &#x60;module&#x60; (string, required) — service module scope (&#x60;default&#x60; for any service, or specific like &#x60;vps&#x60;, &#x60;webhosting&#x60;). - &#x60;automatic_use&#x60; (bool, required) — when &#x60;true&#x60;, the balance auto-applies to future invoices in the scoped module.  **Returns:** &#x60;{text: \&quot;Thank you! Prepay created! Kindly pay the invoice to activate the prepay fund.\&quot;, invoice: &lt;integer&gt;}&#x60; — pass &#x60;invoice&#x60; to &#x60;initiatePayment&#x60; (use a real &#x60;method&#x60; like &#x60;cc&#x60; / &#x60;paypal&#x60;, not &#x60;prepay&#x60; — you can&#x27;t fund a prepay with a prepay).  **Side effects:** - Inserts &#x60;prepays&#x60; row. - Inserts &#x60;invoices&#x60; row (&#x60;invoices_description &#x3D; \&quot;Prepay ID {pid} Invoice\&quot;&#x60;, &#x60;invoices_paid&#x3D;0&#x60;, &#x60;invoices_module&#x3D;&#x27;default&#x27;&#x60;).  **Auth:** Session/API key.  **Errors:** - &#x60;Sorry! Minimum prepay amount is $10.00&#x60; — amount below floor. - &#x60;Something went wrong! Try again or contact our support team!&#x60; — invoice insert failed. - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Confirm invoice:** &#x60;getBillingInvoice&#x60; with the returned &#x60;invoice&#x60; id. - **Pay it:** &#x60;initiatePayment&#x60; (&#x60;method&#x3D;cc|paypal|...&#x60;, not &#x60;prepay&#x60;). - **Verify it&#x27;s now usable:** &#x60;getBillingPrePays&#x60; (look for &#x60;prepay_remaining &gt; 0&#x60;). - **Cancel before paying:** &#x60;deleteBillingPrepay&#x60;.  **Example happy path:** &#x60;&#x60;&#x60;text POST /apiv2/billing/prepays { \&quot;amount\&quot;: 100, \&quot;module\&quot;: \&quot;default\&quot;, \&quot;automatic_use\&quot;: true } -&gt; { \&quot;text\&quot;: \&quot;...\&quot;, \&quot;invoice\&quot;: 25296701 } GET /apiv2/billing/pay/cc/25296701 -&gt; { \&quot;type\&quot;: \&quot;single\&quot;, \&quot;text\&quot;: \&quot;Payment processed.\&quot; } GET /apiv2/billing/prepays -&gt; [{ \&quot;prepay_id\&quot;: 99, \&quot;prepay_remaining\&quot;: 100, ... }] &#x60;&#x60;&#x60; 
        /// </summary>
        /// <param name="body"></param>
        /// <returns>SuccessTextResponse</returns>
        public SuccessTextResponse AddBillingPrepay (BillingPrepayRequest body)
        {
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling AddBillingPrepay");
    
            var path = "/billing/prepays";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    postBody = ApiClient.Serialize(body); // http body (model) parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling AddBillingPrepay: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling AddBillingPrepay: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SuccessTextResponse) ApiClient.Deserialize(response.Content, typeof(SuccessTextResponse), response.Headers);
        }
    
        /// <summary>
        /// Create a prepay deposit and return an invoice id to fund it Creates a prepay row (&#x60;prepays&#x60; table) at the requested amount and inserts a matching &#x60;invoices&#x60; row (&#x60;Prepay ID {pid} Invoice&#x60;) that the customer must pay through &#x60;initiatePayment&#x60; before the balance becomes usable. The prepay is added with &#x60;PREPAY_TYPE_ANY&#x60; / &#x60;PREPAY_SERVICE_ANY&#x60; defaults via &#x60;add_prepay()&#x60;. Use to seed an account balance the customer can later spend via &#x60;method&#x3D;prepay&#x60; at checkout. **Real money** — funding the returned invoice charges a real payment method. Sibling ops: &#x60;getBillingPrePays&#x60;, &#x60;deleteBillingPrepay&#x60;, &#x60;getBillingInvoice&#x60;, &#x60;initiatePayment&#x60;.  **Body fields (JSON or multipart, schema &#x60;BillingPrepayRequest&#x60;):** - &#x60;amount&#x60; (number, required) — deposit size in account currency. **Minimum $10**; smaller values are rejected. - &#x60;module&#x60; (string, required) — service module scope (&#x60;default&#x60; for any service, or specific like &#x60;vps&#x60;, &#x60;webhosting&#x60;). - &#x60;automatic_use&#x60; (bool, required) — when &#x60;true&#x60;, the balance auto-applies to future invoices in the scoped module.  **Returns:** &#x60;{text: \&quot;Thank you! Prepay created! Kindly pay the invoice to activate the prepay fund.\&quot;, invoice: &lt;integer&gt;}&#x60; — pass &#x60;invoice&#x60; to &#x60;initiatePayment&#x60; (use a real &#x60;method&#x60; like &#x60;cc&#x60; / &#x60;paypal&#x60;, not &#x60;prepay&#x60; — you can&#x27;t fund a prepay with a prepay).  **Side effects:** - Inserts &#x60;prepays&#x60; row. - Inserts &#x60;invoices&#x60; row (&#x60;invoices_description &#x3D; \&quot;Prepay ID {pid} Invoice\&quot;&#x60;, &#x60;invoices_paid&#x3D;0&#x60;, &#x60;invoices_module&#x3D;&#x27;default&#x27;&#x60;).  **Auth:** Session/API key.  **Errors:** - &#x60;Sorry! Minimum prepay amount is $10.00&#x60; — amount below floor. - &#x60;Something went wrong! Try again or contact our support team!&#x60; — invoice insert failed. - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Confirm invoice:** &#x60;getBillingInvoice&#x60; with the returned &#x60;invoice&#x60; id. - **Pay it:** &#x60;initiatePayment&#x60; (&#x60;method&#x3D;cc|paypal|...&#x60;, not &#x60;prepay&#x60;). - **Verify it&#x27;s now usable:** &#x60;getBillingPrePays&#x60; (look for &#x60;prepay_remaining &gt; 0&#x60;). - **Cancel before paying:** &#x60;deleteBillingPrepay&#x60;.  **Example happy path:** &#x60;&#x60;&#x60;text POST /apiv2/billing/prepays { \&quot;amount\&quot;: 100, \&quot;module\&quot;: \&quot;default\&quot;, \&quot;automatic_use\&quot;: true } -&gt; { \&quot;text\&quot;: \&quot;...\&quot;, \&quot;invoice\&quot;: 25296701 } GET /apiv2/billing/pay/cc/25296701 -&gt; { \&quot;type\&quot;: \&quot;single\&quot;, \&quot;text\&quot;: \&quot;Payment processed.\&quot; } GET /apiv2/billing/prepays -&gt; [{ \&quot;prepay_id\&quot;: 99, \&quot;prepay_remaining\&quot;: 100, ... }] &#x60;&#x60;&#x60; 
        /// </summary>
        /// <param name="module"></param>
        /// <param name="amount"></param>
        /// <param name="automaticUse"></param>
        /// <returns>SuccessTextResponse</returns>
        public SuccessTextResponse AddBillingPrepay (string module, decimal? amount, string automaticUse)
        {
            // verify the required parameter 'module' is set
            if (module == null) throw new ApiException(400, "Missing required parameter 'module' when calling AddBillingPrepay");
            // verify the required parameter 'amount' is set
            if (amount == null) throw new ApiException(400, "Missing required parameter 'amount' when calling AddBillingPrepay");
            // verify the required parameter 'automaticUse' is set
            if (automaticUse == null) throw new ApiException(400, "Missing required parameter 'automaticUse' when calling AddBillingPrepay");
    
            var path = "/billing/prepays";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    if (module != null) formParams.Add("module", ApiClient.ParameterToString(module)); // form parameter
if (amount != null) formParams.Add("amount", ApiClient.ParameterToString(amount)); // form parameter
if (automaticUse != null) formParams.Add("automatic_use", ApiClient.ParameterToString(automaticUse)); // form parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling AddBillingPrepay: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling AddBillingPrepay: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SuccessTextResponse) ApiClient.Deserialize(response.Content, typeof(SuccessTextResponse), response.Headers);
        }
    
        /// <summary>
        /// Remove a stored credit card from the account Removes the indexed credit card from the account&#x27;s &#x60;ccs&#x60; collection. If the deleted card was also the account&#x27;s primary &#x60;cc&#x60;, the primary field is cleared — &#x60;initiatePayment&#x60; (&#x60;method&#x3D;cc&#x60;) will then return an error until a new default is designated via &#x60;updateBillingPaymentMethod&#x60;. **Irreversible** — to re-store the same card, re-run &#x60;addBillingCreditCard&#x60;. Sibling ops: &#x60;addBillingCreditCard&#x60;, &#x60;updateBillingCreditCard&#x60;, &#x60;updateBillingPaymentMethod&#x60;, &#x60;getBillingCreditCardVerify&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — credit card index from &#x60;parse_ccs&#x60;.  **Body:** None.  **Returns:** &#x60;Card removed successfully.&#x60;.  **Side effects:** - Removes the entry from the &#x60;ccs&#x60; array; re-serialized via &#x60;myadmin_stringify&#x60;. - When the deleted card was primary: clears account-level &#x60;cc&#x60;.  **Auth:** Session/API key. Card ownership enforced.  **Errors:** - &#x60;Invalid Credit Card Passed&#x60; — &#x60;id&#x60; not in &#x60;parse_ccs&#x60;. - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Set a new default:** &#x60;updateBillingPaymentMethod&#x60;. - **Add a replacement:** &#x60;addBillingCreditCard&#x60;. 
        /// </summary>
        /// <param name="id">The credit card ID to remove. Use IDs from &#x60;GET /billing/creditcards&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        public SuccessTextResponse DeleteBillingCreditCard (int? id)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling DeleteBillingCreditCard");
    
            var path = "/billing/creditcards/{id}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.DELETE, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling DeleteBillingCreditCard: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling DeleteBillingCreditCard: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SuccessTextResponse) ApiClient.Deserialize(response.Content, typeof(SuccessTextResponse), response.Headers);
        }
    
        /// <summary>
        /// Cancel a pending unpaid invoice — and its pending service or repeat invoice Cancels an unpaid invoice and cleans up the records it represents. Behavior depends on what the invoice funds: a **prepay** invoice is routed to &#x60;deleteBillingPrepay&#x60;; an **initial service charge** (where &#x60;repeat_invoices_id&#x60; matches the service&#x27;s &#x60;_invoice&#x60; field) deletes the &#x60;repeat_invoices&#x60; row, all child &#x60;invoices&#x60;, AND the pending service row from the module&#x27;s table; an **addon/recurring** invoice just deletes that one &#x60;invoices&#x60; row plus its &#x60;repeat_invoices&#x60; row. **Only invoices for services in &#x60;pending&#x60; status can be deleted** — once provisioned, the service must be cancelled via the per-service Cancel endpoint instead. **Irreversible**. Sibling ops: &#x60;getBillingInvoice&#x60;, &#x60;deleteBillingPrepay&#x60;, &#x60;VPSCancel&#x60; / &#x60;CancelDomain&#x60; / &#x60;mailCancel&#x60; / &#x60;webhostingCancel&#x60; / etc.  **Path param:** - &#x60;id&#x60; (integer, required) — invoice id (&#x60;invoices_type&#x3D;1&#x60;, ownership enforced via &#x60;invoices_custid&#x60;).  **Body:** None.  **Returns:** &#x60;Invoice Deleted&#x60; text.  **Side effects:** (depends on invoice type) - **Prepay invoice** (description matches &#x60;Prepay ID N Invoice&#x60;) — delegates to &#x60;deleteBillingPrepay($pid)&#x60;. - **Initial service invoice** (&#x60;repeat_invoices_id &#x3D;&#x3D; service._invoice&#x60;) — deletes:   - the &#x60;repeat_invoices&#x60; row,   - every &#x60;invoices&#x60; row for that service,   - the service row in &#x60;{settings[&#x27;TABLE&#x27;]}&#x60;. - **Addon/recurring invoice** — deletes only the matching &#x60;repeat_invoices&#x60; row and the single &#x60;invoices&#x60; row.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;Invalid invoice&#x60; — &#x60;id&#x60; not found or wrong owner. - &#x60;Invalid service&#x60; — invoice references a service that no longer exists. - &#x60;Can only delete invoices for pending services or prepays&#x60; — service is &#x60;active&#x60;/&#x60;suspended&#x60;/&#x60;cancelled&#x60;. - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **List candidates:** &#x60;getBillingInvoices&#x60;. - **Detail first:** &#x60;getBillingInvoice&#x60;. - **For active services:** &#x60;VPSCancel&#x60;, &#x60;CancelDomain&#x60;, &#x60;mailCancel&#x60;, &#x60;webhostingCancel&#x60;, &#x60;licensesCancel&#x60;, &#x60;sslCancel&#x60;, &#x60;cancelScrubIp&#x60;, &#x60;floating_ipsCancel&#x60;, &#x60;cancelBackup&#x60;, &#x60;quickserversCancel&#x60;, &#x60;serversCancel&#x60; — these use &#x60;Billing\\CancelService::go()&#x60;. - **For prepay invoices:** &#x60;deleteBillingPrepay&#x60; (delegated automatically). 
        /// </summary>
        /// <param name="id">The invoice ID to delete. Only unpaid invoices can be deleted.</param>
        /// <returns>SuccessTextResponse</returns>
        public SuccessTextResponse DeleteBillingInvoice (int? id)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling DeleteBillingInvoice");
    
            var path = "/billing/invoices/{id}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.DELETE, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling DeleteBillingInvoice: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling DeleteBillingInvoice: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SuccessTextResponse) ApiClient.Deserialize(response.Content, typeof(SuccessTextResponse), response.Headers);
        }
    
        /// <summary>
        /// Delete an unfunded prepay or strip its unpaid funding invoices Removes a prepay from the account, with one safety rule: a prepay that still has usable credit (&#x60;prepay_remaining &gt; $0.01&#x60;) cannot be deleted *unless* it also has unpaid funding invoices we can clean up — in which case those unpaid &#x60;invoices&#x60; rows are deleted and the prepay row stays. Use to back out a never-funded prepay, or to surface stuck unpaid funding invoices. **Irreversible** — funded credit is unrecoverable through this endpoint. Sibling ops: &#x60;getBillingPrePays&#x60;, &#x60;addBillingPrepay&#x60;, &#x60;deleteBillingInvoice&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — prepay id from &#x60;getBillingPrePays.prepay_id&#x60;.  **Body:** None.  **Returns:** - When unpaid funding invoices were stripped but prepay still has funds: &#x60;\&quot;PrePay {id} Unpaid Invoices Deleted\&quot;&#x60;. - When the prepay row was deleted: &#x60;\&quot;PrePay {id} deleted.\&quot;&#x60;.  **Side effects:** - Deletes any unpaid &#x60;invoices&#x60; rows matching &#x60;invoices_description &#x3D; \&quot;Prepay ID {id} Invoice\&quot;&#x60; and &#x60;invoices_paid&#x3D;0&#x60;. - Deletes the &#x60;prepays&#x60; row when remaining balance ≤ $0.01.  **Auth:** Session/API key.  **Errors:** - &#x60;Invalid Prepay&#x60; — &#x60;id&#x60; not found. - &#x60;That prepay still hands funds available on it&#x60; — funds remain AND no unpaid invoices to clean up. - &#x60;There was an error deleting the prepay, please contact support&#x60; — delete affected 0 rows. - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **List first:** &#x60;getBillingPrePays&#x60;. - **Re-add later:** &#x60;addBillingPrepay&#x60;. - **Cancel a specific funding invoice:** &#x60;deleteBillingInvoice&#x60; (routes prepay invoices here automatically). 
        /// </summary>
        /// <param name="id">The prepay balance ID to delete.</param>
        /// <returns>SuccessTextResponse</returns>
        public SuccessTextResponse DeleteBillingPrepay (int? id)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling DeleteBillingPrepay");
    
            var path = "/billing/prepays/{id}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.DELETE, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling DeleteBillingPrepay: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling DeleteBillingPrepay: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SuccessTextResponse) ApiClient.Deserialize(response.Content, typeof(SuccessTextResponse), response.Headers);
        }
    
        /// <summary>
        /// List affiliate banner image assets with filename and dimensions Returns the catalog of pre-built banner images affiliates can embed on partner sites — same catalog for every account (not per-affiliate). Use to render a creative-asset picker in the affiliate dashboard. Each row carries the image filename and dimensions so the client can build correctly-sized &#x60;&lt;img&gt;&#x60; tags. Read-only. Sibling ops: &#x60;getAffiliateRichReport&#x60;, &#x60;getAffiliateSalesGraph&#x60;, &#x60;getAffiliateTrafficGraph&#x60;, &#x60;getAffiliateWebTraffic&#x60;, &#x60;getAffiliateSignups&#x60;, &#x60;updateAffiliateDockSetup&#x60;.  **Path/Query/Body:** None.  **Returns:** Array of &#x60;AffiliateBannerRow&#x60;: - &#x60;image&#x60; (string) — filename (e.g. &#x60;12946798.gif&#x60;); served from the affiliate asset bucket. - &#x60;width&#x60; (string) — pixels. - &#x60;height&#x60; (string) — pixels.  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated. 
        /// </summary>
        /// <returns>List&lt;AffiliateBannerRow&gt;</returns>
        public List<AffiliateBannerRow> GetAffiliateBanners ()
        {
    
            var path = "/affiliate/banners";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetAffiliateBanners: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetAffiliateBanners: " + response.ErrorMessage, response.ErrorMessage);
    
            return (List<AffiliateBannerRow>) ApiClient.Deserialize(response.Content, typeof(List<AffiliateBannerRow>), response.Headers);
        }
    
        /// <summary>
        /// Export the affiliate signup report as CSV, XLS, XLSX, or PDF file download Exports the affiliate signup report as a downloadable file in the requested format. Use for accounting, tax filings, or sharing reports outside the dashboard. **Response is a binary stream, not JSON** — the handler emits the file body with matching &#x60;Content-Type&#x60; + &#x60;Content-Disposition: attachment&#x60; headers and &#x60;exit()&#x60;s the request immediately. Consumers must read the raw response body. Sibling ops: &#x60;getAffiliateRichReport&#x60;, &#x60;getAffiliateSignups&#x60;, &#x60;getAffiliateSalesGraph&#x60;.  **Query params:** - &#x60;ex&#x60; (string, optional, enum &#x60;csv&#x60;/&#x60;xls&#x60;/&#x60;xlsx&#x60;/&#x60;pdf&#x60;, default &#x60;csv&#x60;) — export format. - &#x60;st&#x60; (string, optional, default &#x60;default&#x60;) — status filter (same as &#x60;getAffiliateSignups&#x60;). - &#x60;year&#x60; (integer, optional, default current year) — report scope.  **Returns:** File download with format-appropriate Content-Type: - &#x60;csv&#x60; → &#x60;text/csv&#x60;, filename &#x60;Interserver_Affiliates.csv&#x60;. - &#x60;xls&#x60; / &#x60;xlsx&#x60; → &#x60;application/vnd.openxmlformats-officedocument.spreadsheetml.sheet&#x60;, filename &#x60;Interserver_Affiliates.&lt;ext&gt;&#x60;. - &#x60;pdf&#x60; → &#x60;application/pdf&#x60;, filename &#x60;Interserver_Affiliates.pdf&#x60;.  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated. 
        /// </summary>
        /// <param name="st">Filter by status.</param>
        /// <param name="ex">Export format: csv, xls, xlsx, or pdf. Defaults to csv.</param>
        /// <param name="year">Year to filter the report. Defaults to the current year.</param>
        /// <returns></returns>
        public void GetAffiliateDownload (string st, string ex, int? year)
        {
    
            var path = "/affiliate/download";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (st != null) queryParams.Add("st", ApiClient.ParameterToString(st)); // query parameter
 if (ex != null) queryParams.Add("ex", ApiClient.ParameterToString(ex)); // query parameter
 if (year != null) queryParams.Add("year", ApiClient.ParameterToString(year)); // query parameter
                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetAffiliateDownload: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetAffiliateDownload: " + response.ErrorMessage, response.ErrorMessage);
    
            return;
        }
    
        /// <summary>
        /// Read a combined affiliate performance summary (HTML payload) Returns a server-rendered HTML/text summary report combining commission totals, conversion rates, and traffic in one round-trip — useful for embedding in a dashboard panel. The payload is **not structured JSON** — for chart-friendly data use &#x60;getAffiliateSalesGraph&#x60; and &#x60;getAffiliateTrafficGraph&#x60; instead. Backed by &#x60;affiliate_summary_report()&#x60;. Sibling ops: &#x60;getAffiliateSalesGraph&#x60;, &#x60;getAffiliateTrafficGraph&#x60;, &#x60;getAffiliateSignups&#x60;, &#x60;getAffiliateDownload&#x60;, &#x60;getAffiliateWebTraffic&#x60;.  **Path/Query/Body:** None.  **Returns:** &#x60;{text: \&quot;&lt;html-or-plain-text-report&gt;\&quot;}&#x60;.  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Structured time series:** &#x60;getAffiliateSalesGraph&#x60;, &#x60;getAffiliateTrafficGraph&#x60;. - **Per-signup detail:** &#x60;getAffiliateSignups&#x60;. - **CSV/XLSX export:** &#x60;getAffiliateDownload&#x60;. 
        /// </summary>
        /// <returns>TextResponse</returns>
        public TextResponse GetAffiliateRichReport ()
        {
    
            var path = "/affiliate/rich_report";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetAffiliateRichReport: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetAffiliateRichReport: " + response.ErrorMessage, response.ErrorMessage);
    
            return (TextResponse) ApiClient.Deserialize(response.Content, typeof(TextResponse), response.Headers);
        }
    
        /// <summary>
        /// Read aggregated affiliate sales time-series (monthly buckets) for chart rendering Returns aggregated sales time-series data — monthly buckets with sale counts/totals — for the requested look-back window. Use to render a sales trend chart in the affiliate dashboard. Bucket granularity is fixed at monthly by &#x60;sales_graph_lte_data&#x60;; increasing &#x60;days&#x60; extends the window, it does not change bucket size. Sibling ops: &#x60;getAffiliateTrafficGraph&#x60; (clicks), &#x60;getAffiliateRichReport&#x60; (combined summary), &#x60;getAffiliateSignups&#x60;, &#x60;getAffiliateDownload&#x60;.  **Query params:** - &#x60;days&#x60; (integer, optional, default &#x60;365&#x60;) — look-back window in days.  **Returns:** &#x60;StatusMonthlyBreakdown&#x60; — buckets keyed by month with aggregated sale counts and amounts.  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated. 
        /// </summary>
        /// <param name="days">Number of days of sales history to include in the graph data. Determines the time window for the returned data points.</param>
        /// <returns>StatusMonthlyBreakdown</returns>
        public StatusMonthlyBreakdown GetAffiliateSalesGraph (int? days)
        {
    
            var path = "/affiliate/sales_graph";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (days != null) queryParams.Add("days", ApiClient.ParameterToString(days)); // query parameter
                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetAffiliateSalesGraph: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetAffiliateSalesGraph: " + response.ErrorMessage, response.ErrorMessage);
    
            return (StatusMonthlyBreakdown) ApiClient.Deserialize(response.Content, typeof(StatusMonthlyBreakdown), response.Headers);
        }
    
        /// <summary>
        /// Read affiliate signup stats and per-customer conversion data Returns referred-customer signup statistics with optional status filtering — counts, conversion data, and per-customer detail produced by &#x60;affiliates_clientside()&#x60;. The inner &#x60;data&#x60; shape varies by status filter; pass &#x60;default&#x60; for the full dataset. Sibling ops: &#x60;getAffiliateRichReport&#x60;, &#x60;getAffiliateSalesGraph&#x60;, &#x60;getAffiliateTrafficGraph&#x60;, &#x60;getAffiliateDownload&#x60;.  **Query params:** - &#x60;st&#x60; (string, optional, default &#x60;default&#x60;) — status filter. &#x60;default&#x60; returns all; other values narrow the results to that status.  **Returns:** &#x60;{data: &lt;object&gt;}&#x60; — signup counts, conversions, per-customer detail (shape depends on &#x60;st&#x60;).  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated. 
        /// </summary>
        /// <param name="st">Filter signups by status. Use &#x60;default&#x60; to show all or pass a specific status value to narrow results.</param>
        /// <returns>InlineResponse2001</returns>
        public InlineResponse2001 GetAffiliateSignups (string st)
        {
    
            var path = "/affiliate/signups";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (st != null) queryParams.Add("st", ApiClient.ParameterToString(st)); // query parameter
                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetAffiliateSignups: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetAffiliateSignups: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse2001) ApiClient.Deserialize(response.Content, typeof(InlineResponse2001), response.Headers);
        }
    
        /// <summary>
        /// Read aggregated affiliate referral click/visit time-series for chart rendering Returns aggregated click/visit time-series data from the &#x60;affiliate_traffic&#x60; table — monthly buckets with visit counts — for the requested look-back window. Pair with &#x60;getAffiliateSalesGraph&#x60; to compute click-to-sale conversion ratios client-side. Sibling ops: &#x60;getAffiliateSalesGraph&#x60; (sales), &#x60;getAffiliateWebTraffic&#x60; (raw per-visit log entries), &#x60;getAffiliateRichReport&#x60;.  **Query params:** - &#x60;days&#x60; (integer, optional, default &#x60;180&#x60;) — look-back window in days.  **Returns:** &#x60;MonthlyCounts&#x60; — buckets keyed by month with aggregated visit counts.  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated. 
        /// </summary>
        /// <param name="days">Number of days of traffic history to include in the graph data. Determines the time window for the returned data points.</param>
        /// <returns>MonthlyCounts</returns>
        public MonthlyCounts GetAffiliateTrafficGraph (int? days)
        {
    
            var path = "/affiliate/traffic_graph";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (days != null) queryParams.Add("days", ApiClient.ParameterToString(days)); // query parameter
                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetAffiliateTrafficGraph: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetAffiliateTrafficGraph: " + response.ErrorMessage, response.ErrorMessage);
    
            return (MonthlyCounts) ApiClient.Deserialize(response.Content, typeof(MonthlyCounts), response.Headers);
        }
    
        /// <summary>
        /// List the 20 most recent affiliate referral visits with IP, referrer, timestamp Returns the 20 most recent raw referral visits from the &#x60;affiliate_traffic&#x60; table — visitor IP, full referral URL, and timestamp per row. Use to audit traffic sources, identify top referrers, or investigate suspicious click patterns. Hard-coded limit 20 (no pagination); for longer-term analysis use &#x60;getAffiliateTrafficGraph&#x60; or export via &#x60;getAffiliateDownload&#x60;. Sibling ops: &#x60;getAffiliateTrafficGraph&#x60;, &#x60;getAffiliateSignups&#x60;, &#x60;getAffiliateRichReport&#x60;, &#x60;getAffiliateDownload&#x60;.  **Path/Query/Body:** None.  **Returns:** Array of &#x60;AffiliateTrafficRow&#x60;: - &#x60;traffic_id&#x60; (string) — row id (most-recent-first). - &#x60;traffic_ip&#x60; (string) — visitor IP (IPv4 or IPv6). - &#x60;traffic_url&#x60; (string) — referral landing URL. - &#x60;traffic_affiliate&#x60; (string) — affiliate (&#x3D; session &#x60;account_id&#x60;). - &#x60;traffic_referrer&#x60; (string) — HTTP Referer (may be empty). - &#x60;traffic_timestamp&#x60; (string) — &#x60;YYYY-MM-DD HH:MM:SS&#x60; in account timezone.  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated. 
        /// </summary>
        /// <returns>List&lt;AffiliateTrafficRow&gt;</returns>
        public List<AffiliateTrafficRow> GetAffiliateWebTraffic ()
        {
    
            var path = "/affiliate/web_traffic";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetAffiliateWebTraffic: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetAffiliateWebTraffic: " + response.ErrorMessage, response.ErrorMessage);
    
            return (List<AffiliateTrafficRow>) ApiClient.Deserialize(response.Content, typeof(List<AffiliateTrafficRow>), response.Headers);
        }
    
        /// <summary>
        /// Read the current shopping cart contents, totals, and available payment methods Returns the customer&#x27;s checkout state — every pending/unpaid invoice on the account aggregated as a cart, plus available payment methods, currency totals, and checkout metadata. Use to render a checkout page or, in agent flows, as a pre-payment confirmation step before calling &#x60;initiatePayment&#x60;. Backed by the &#x60;cart&#x60; helper module; &#x60;modules_json&#x60; and &#x60;csrf_token&#x60; are stripped from the response. Read-only. Sibling ops: &#x60;getBillingInvoices&#x60; (raw list), &#x60;getBillingInvoice&#x60; (one invoice in detail), &#x60;initiatePayment&#x60; (pay), &#x60;getBillingPrePays&#x60; (check prepay balance first).  **Path/Query/Body:** None.  **Returns:** A cart object with: - Line items aggregated from unpaid &#x60;invoices&#x60; rows for the session account. - Currency-normalized subtotal / total. - Available payment methods (filtered by feature flags, account country, and which gateways are enabled): &#x60;cc&#x60;, &#x60;paypal&#x60;, &#x60;btcpay&#x60;, &#x60;coinbase&#x60;, &#x60;payu&#x60;, &#x60;ccavenue&#x60;, &#x60;cashfree&#x60;, &#x60;payssion&#x60;, &#x60;prepay&#x60;. - Per-invoice description, module, service-id, amount.  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **List unpaid invoices directly:** &#x60;getBillingInvoices&#x60;. - **Drill into one invoice:** &#x60;getBillingInvoice&#x60;. - **Pay:** &#x60;initiatePayment&#x60; (use the cart&#x27;s invoice ids or the &#x60;SERVICEvpsN&#x60; / &#x60;INVvpsN&#x60; tag forms). - **Top up prepay first:** &#x60;getBillingPrePays&#x60;, &#x60;addBillingPrepay&#x60;. 
        /// </summary>
        /// <returns>Object</returns>
        public Object GetBillingCart ()
        {
    
            var path = "/billing/cart";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetBillingCart: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetBillingCart: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Probe whether a stored card still needs micro-charge verification Status probe for the credit-card verification flow. Read-only — current implementation returns a placeholder string indicating verification is pending; the actual two-step verification happens via &#x60;patchBillingCreditCardVerify&#x60; (initiate dual micro-charge with CVV) followed by &#x60;postBillingCreditCardVerify&#x60; (submit the charged amounts). Use to drive the UI&#x27;s \&quot;verify card\&quot; form rendering. Sibling ops: &#x60;patchBillingCreditCardVerify&#x60;, &#x60;postBillingCreditCardVerify&#x60;, &#x60;addBillingCreditCard&#x60;, &#x60;updateBillingPaymentMethod&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — credit card index from &#x60;parse_ccs&#x60;.  **Body:** None.  **Returns:** &#x60;Verification requirements&#x60; (placeholder text — reserved for future structured response with &#x60;requires_cvv&#x60; / &#x60;requires_amounts&#x60; flags).  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Step 1 of verify flow:** &#x60;patchBillingCreditCardVerify&#x60;. - **Step 2 of verify flow:** &#x60;postBillingCreditCardVerify&#x60;. - **Add a new card:** &#x60;addBillingCreditCard&#x60;. 
        /// </summary>
        /// <param name="id">The credit card ID to verify. Use the ID returned from &#x60;POST /billing/creditcards&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        public SuccessTextResponse GetBillingCreditCardVerify (int? id)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetBillingCreditCardVerify");
    
            var path = "/billing/creditcards/{id}/verify";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetBillingCreditCardVerify: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetBillingCreditCardVerify: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SuccessTextResponse) ApiClient.Deserialize(response.Content, typeof(SuccessTextResponse), response.Headers);
        }
    
        /// <summary>
        /// Read full invoice detail — line items, totals, paid status, customer info Returns the full rendered invoice payload for a single invoice — backed by &#x60;get_invoice_data()&#x60;, the same helper that builds the email-style invoice document. Use to confirm the exact balance due and the invoice description before calling &#x60;initiatePayment&#x60;, or to render an invoice viewer page. Read-only. The response is an email-style/HTML payload (not a structured line-item array) — for a structured cart-style summary use &#x60;getBillingCart&#x60;. The response includes a Link to &#x60;deleteBillingInvoice&#x60; for unpaid pending-service invoices. Sibling ops: &#x60;getBillingInvoices&#x60;, &#x60;deleteBillingInvoice&#x60;, &#x60;initiatePayment&#x60;, &#x60;getBillingCart&#x60;, per-service &#x60;getVpsInvoices&#x60; / &#x60;getMailInvoices&#x60; / etc.  **Path param:** - &#x60;id&#x60; (integer, required) — invoice id from &#x60;getBillingInvoices.rows[].id&#x60;, from an order endpoint&#x27;s response (e.g. &#x60;addVps.iid&#x60;), or from a per-service invoice list.  **Body:** None.  **Returns:** &#x60;BillingInvoiceDetail&#x60; — full rendered invoice payload (email body) with line items, totals, customer/billing info, and paid status. The exact shape mirrors what gets sent to the customer.  **Auth:** Session/API key. Ownership enforced through the invoice&#x27;s &#x60;invoices_custid&#x60;.  **Errors:** - &#x60;Invalid Invoice&#x60; — &#x60;id&#x60; not found or owned by another account. - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Pay it:** &#x60;initiatePayment&#x60; (&#x60;/billing/pay/{method}/{id}&#x60;). - **Delete if pending/unpaid:** &#x60;deleteBillingInvoice&#x60;. - **List all:** &#x60;getBillingInvoices&#x60;. - **Cart-style summary across all unpaid:** &#x60;getBillingCart&#x60;. 
        /// </summary>
        /// <param name="id">The invoice ID. Use IDs from &#x60;GET /billing/invoices&#x60; or from order responses.</param>
        /// <returns>BillingInvoiceDetail</returns>
        public BillingInvoiceDetail GetBillingInvoice (int? id)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetBillingInvoice");
    
            var path = "/billing/invoices/{id}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetBillingInvoice: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetBillingInvoice: " + response.ErrorMessage, response.ErrorMessage);
    
            return (BillingInvoiceDetail) ApiClient.Deserialize(response.Content, typeof(BillingInvoiceDetail), response.Headers);
        }
    
        /// <summary>
        /// List every invoice on the account with summary totals and paid/unpaid status Returns the customer&#x27;s complete invoice ledger — every charge, paid or unpaid, across every service module. Use to render a billing-history page, find an unpaid invoice id to pass to &#x60;initiatePayment&#x60;, or audit recent activity. Server-side strips the first synthetic header row from &#x60;get_view_invoices()&#x60; and reindexes the array. Read-only. The response includes a Link to &#x60;getBillingInvoice&#x60; for drilling into any row. Sibling ops: &#x60;getBillingInvoice&#x60;, &#x60;deleteBillingInvoice&#x60;, &#x60;initiatePayment&#x60;, &#x60;getBillingCart&#x60;, &#x60;getBillingPrePays&#x60;.  **Path/Query/Body:** None.  **Returns:** &#x60;BillingInvoiceList&#x60; — object containing: - &#x60;rows&#x60; (array) — per-invoice summaries: &#x60;id&#x60;, &#x60;amount&#x60;, &#x60;paid&#x60;, &#x60;description&#x60;, &#x60;date&#x60;, &#x60;due_date&#x60;, &#x60;module&#x60;, &#x60;service&#x60; (service-id within the module), &#x60;currency&#x60;. - Aggregate totals across the array (totals object: &#x60;total&#x60;, &#x60;paid_total&#x60;, &#x60;unpaid_total&#x60;).  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Drill into one invoice:** &#x60;getBillingInvoice&#x60;. - **Pay an unpaid invoice:** &#x60;initiatePayment&#x60;. - **Cancel an unpaid pending-service invoice:** &#x60;deleteBillingInvoice&#x60; (only works on pending services / unpaid prepays). - **Per-service invoices instead:** &#x60;getVpsInvoices&#x60;, &#x60;getDomainInvoices&#x60;, &#x60;getMailInvoices&#x60;, &#x60;getBackupInvoices&#x60;, etc. 
        /// </summary>
        /// <returns>BillingInvoiceList</returns>
        public BillingInvoiceList GetBillingInvoices ()
        {
    
            var path = "/billing/invoices";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetBillingInvoices: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetBillingInvoices: " + response.ErrorMessage, response.ErrorMessage);
    
            return (BillingInvoiceList) ApiClient.Deserialize(response.Content, typeof(BillingInvoiceList), response.Headers);
        }
    
        /// <summary>
        /// List prepay deposits on the account — remaining balance and auto-use flags Returns every prepay deposit on the account — funded or pending — with remaining balances, modules they&#x27;re scoped to, and the &#x60;automatic_use&#x60; flag controlling whether the balance auto-applies to future invoices. Use to gate &#x60;method&#x3D;prepay&#x60; at checkout (a prepay must be funded to count toward payment) or to render a prepays management page. Read-only. &#x60;csrf_token&#x60; is stripped from the helper output. Sibling ops: &#x60;addBillingPrepay&#x60; (top up), &#x60;deleteBillingPrepay&#x60; (remove), &#x60;initiatePayment&#x60; (&#x60;method&#x3D;prepay&#x60;), &#x60;getBillingCart&#x60;.  **Path/Query/Body:** None.  **Returns:** Object with per-prepay rows: - &#x60;prepay_id&#x60; (integer). - &#x60;prepay_module&#x60; (string) — service module the prepay is scoped to (or &#x60;default&#x60; for any). - &#x60;prepay_amount&#x60; (decimal) — original deposit amount. - &#x60;prepay_remaining&#x60; (decimal) — funds left. - &#x60;prepay_automatic_use&#x60; (bool) — auto-apply to invoices. - &#x60;prepay_paid&#x60; (bool) — whether the funding invoice has been paid (unpaid prepays are listed but unusable).  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Top up:** &#x60;addBillingPrepay&#x60; (returns an invoice id you then pay via &#x60;initiatePayment&#x60;). - **Pay with prepay:** &#x60;initiatePayment&#x60; with &#x60;method&#x3D;prepay&#x60;. - **Remove an unfunded prepay:** &#x60;deleteBillingPrepay&#x60;. - **Cart view:** &#x60;getBillingCart&#x60; (includes prepay summary). 
        /// </summary>
        /// <returns>Object</returns>
        public Object GetBillingPrePays ()
        {
    
            var path = "/billing/prepays";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetBillingPrePays: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetBillingPrePays: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Pay invoices through the chosen gateway — returns the next-step action Universal payment trigger — the final step in every order/checkout flow. Use after any order endpoint (&#x60;addVps&#x60;, &#x60;addQs&#x60;, &#x60;addBackup&#x60;, &#x60;addMail&#x60;, &#x60;addBillingPrepay&#x60;) returns an invoice id, or after &#x60;getBillingInvoices&#x60; surfaces unpaid invoices. Resolves the chosen gateway class under &#x60;include/Api/Billing/Pay/&#x60;, populates it with the invoices, and returns one of three response shapes the client must act on: &#x60;redirect&#x60; (send the user to the gateway URL), &#x60;submit&#x60; (POST a form with the supplied items), or &#x60;single&#x60; (processed synchronously). Sibling ops: &#x60;getBillingCart&#x60;, &#x60;getBillingInvoices&#x60;, &#x60;getBillingInvoice&#x60;, &#x60;addBillingPrepay&#x60;, &#x60;updateBillingPaymentMethod&#x60;, &#x60;addBillingCreditCard&#x60;.  **Path params:** - &#x60;method&#x60; (string enum, required) — one of &#x60;cc&#x60;, &#x60;paypal&#x60;, &#x60;prepay&#x60;, &#x60;payssion&#x60;, &#x60;payu&#x60;, &#x60;ccavenue&#x60;, &#x60;cashfree&#x60;, &#x60;coinbase&#x60;, &#x60;btcpay&#x60;. Rejected with 400 otherwise. - &#x60;invoices&#x60; (string, required) — comma-separated identifiers. Each identifier may be:   - a bare integer invoice id (e.g. &#x60;25296600&#x60;);   - &#x60;INV&lt;module&gt;&lt;iid&gt;&#x60; (e.g. &#x60;INVvps25296600&#x60;) — strict invoice lookup;   - &#x60;SERVICE&lt;module&gt;&lt;id&gt;&#x60; (e.g. &#x60;SERVICEvps12345&#x60;) — picks the most recent unpaid invoice for that service;   - &#x60;RINV&lt;module&gt;&lt;rid&gt;&#x60; (e.g. &#x60;RINVvps78901&#x60;) — picks the most recent unpaid invoice for that repeat-invoice row;   - &#x60;PREPAYID&lt;pid&gt;INV&lt;iid&gt;&#x60; — explicit prepay-funding invoice.  **Query params:** - &#x60;redirectUrl&#x60; (string, optional) — override the gateway return-URL. Defaults to &#x60;https://my.interserver.net/pay/&#x60;.  **Returns** (one of three shapes — branch on &#x60;type&#x60;): - **type&#x3D;&#x60;redirect&#x60;:** &#x60;{type: \&quot;redirect\&quot;, redirect: \&quot;&lt;gateway-url&gt;\&quot;, text: \&quot;...\&quot;}&#x60; — send the user to &#x60;redirect&#x60;. - **type&#x3D;&#x60;submit&#x60;:** &#x60;{type: \&quot;submit\&quot;, action: \&quot;&lt;url&gt;\&quot;, method: \&quot;POST\&quot;, items: {field: value, ...}}&#x60; — render a form with those fields, POST to &#x60;action&#x60;. - **type&#x3D;&#x60;single&#x60;:** &#x60;{type: \&quot;single\&quot;, text: \&quot;...\&quot;}&#x60; — payment already processed; surface &#x60;text&#x60; to the customer.  **Side effects:** - Creates a &#x60;payment_requests&#x60; row tracking the attempt (via &#x60;addPaymentRequest&#x60;). - On &#x60;single&#x60;-mode success (&#x60;cc&#x60;, &#x60;prepay&#x60;): marks the underlying &#x60;invoices.invoices_paid&#x3D;1&#x60;, triggers &#x60;queue_process_payment($iid)&#x60; → service activation. - On &#x60;redirect&#x60;/&#x60;submit&#x60;-mode: nothing is paid yet; the gateway IPN/callback handler in &#x60;confirm()&#x60; (in each &#x60;Pay/_*.php&#x60; subclass) runs &#x60;queue_process_payment&#x60; after the gateway notifies us of success.  **Auth:** Session/API key. Ownership of every referenced invoice is enforced through the &#x60;setInvoices()&#x60; lookup (filters by session &#x60;account_id&#x60;).  **Errors:** - &#x60;400 Invalid payment method&#x60; — unrecognized &#x60;method&#x60;. - &#x60;402&#x60; / gateway-specific text — card declined, balance insufficient, etc. Returned as &#x60;{error: \&quot;&lt;text&gt;\&quot;}&#x60;. - &#x60;422 Invalid Invoice Tag&#x60; — identifier format not recognized. - &#x60;401&#x60; — unauthenticated. - Method-specific:   - &#x60;cc&#x60;: card not verified (use &#x60;addBillingCreditCard&#x60; → &#x60;patchBillingCreditCardVerify&#x60; → &#x60;postBillingCreditCardVerify&#x60; first; verify via &#x60;updateBillingPaymentMethod&#x60;).   - &#x60;prepay&#x60;: insufficient prepay balance (use &#x60;addBillingPrepay&#x60; to top up first).  **Related calls:** - **Get an invoice id to pass:** &#x60;addVps&#x60; / &#x60;addQs&#x60; / &#x60;addBackup&#x60; / &#x60;addMail&#x60; / &#x60;addBillingPrepay&#x60; / &#x60;getBillingInvoices&#x60;. - **Confirm invoice detail first:** &#x60;getBillingInvoice&#x60;. - **Set up payment methods:** &#x60;addBillingCreditCard&#x60;, &#x60;patchBillingCreditCardVerify&#x60;, &#x60;postBillingCreditCardVerify&#x60;, &#x60;updateBillingPaymentMethod&#x60;. - **After payment:** poll the originating service endpoint (e.g. &#x60;getVpsInfo&#x60; for VPS) until status flips to &#x60;active&#x60;.  **Example happy-path (VPS):** &#x60;&#x60;&#x60;text # 1) Order created — POST /vps/order returned {serviceid: 12345, real_iids: [\&quot;25296600\&quot;]} # 2) Pay with stored credit card: GET /apiv2/billing/pay/cc/25296600 # 3) Response: {\&quot;type\&quot;: \&quot;single\&quot;, \&quot;text\&quot;: \&quot;Payment processed.\&quot;} # 4) Poll service: GET /apiv2/vps/12345  -&gt; {\&quot;vps_status\&quot;: \&quot;active\&quot;, ...} &#x60;&#x60;&#x60; **Example PayPal flow:** &#x60;&#x60;&#x60;text GET /apiv2/billing/pay/paypal/25296600 {\&quot;type\&quot;: \&quot;redirect\&quot;, \&quot;redirect\&quot;: \&quot;https://www.paypal.com/...\&quot;, \&quot;text\&quot;: \&quot;...\&quot;} # Client redirects user; PayPal IPN later marks invoice paid and activates service. &#x60;&#x60;&#x60; 
        /// </summary>
        /// <param name="method">The payment method to use. Valid values: &#x60;cc&#x60; (credit card), &#x60;paypal&#x60;, &#x60;prepay&#x60;, &#x60;payssion&#x60;, &#x60;payu&#x60;, &#x60;ccavenue&#x60;, &#x60;cashfree&#x60;, &#x60;coinbase&#x60;, &#x60;btcpay&#x60;.</param>
        /// <param name="invoices">A comma-separated list of invoice IDs or invoice Tags to pay. These IDs are returned by order endpoints (e.g. &#x60;/backups/order&#x60;, &#x60;/vps/order&#x60;) and by &#x60;/billing/invoices&#x60;. Invoice tags accepted are SERVICE&lt;module&gt;&lt;id&gt;, RINV&lt;module&gt;&lt;repeat invoice id&gt;, INV&lt;module&gt;&lt;invoice id&gt;, PREPAY&lt;prepay id&gt;&lt;invoice id&gt;, and &lt;invoice id&gt;.</param>
        /// <returns>InlineResponse20010</returns>
        public InlineResponse20010 InitiatePayment (string method, string invoices)
        {
            // verify the required parameter 'method' is set
            if (method == null) throw new ApiException(400, "Missing required parameter 'method' when calling InitiatePayment");
            // verify the required parameter 'invoices' is set
            if (invoices == null) throw new ApiException(400, "Missing required parameter 'invoices' when calling InitiatePayment");
    
            var path = "/billing/pay/{method}/{invoices}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "method" + "}", ApiClient.ParameterToString(method));
path = path.Replace("{" + "invoices" + "}", ApiClient.ParameterToString(invoices));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling InitiatePayment: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling InitiatePayment: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse20010) ApiClient.Deserialize(response.Content, typeof(InlineResponse20010), response.Headers);
        }
    
        /// <summary>
        /// Place two micro-charges on the card to start CVV verification (step 1 of 2) Step 1 of the two-step card-verification flow. After &#x60;addBillingCreditCard&#x60; returns &#x60;action&#x3D;&#x27;verify&#x27;&#x60;, call this with the card&#x27;s CVV to place two small charges (cents-scale) on the card. The customer must then look up the exact amounts in their bank statement and submit them via &#x60;postBillingCreditCardVerify&#x60; to finalize verification. **After 3 failed CVV attempts** (&#x60;cc_fails_&lt;cc&gt;&#x60; counter on the account) the card is locked from further verification attempts — contact support. Sibling ops: &#x60;getBillingCreditCardVerify&#x60;, &#x60;postBillingCreditCardVerify&#x60;, &#x60;addBillingCreditCard&#x60;, &#x60;updateBillingPaymentMethod&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — credit card index from &#x60;parse_ccs&#x60;.  **Body fields:** - &#x60;cc_ccv2&#x60; (string, required) — the 3- or 4-digit CVV/CVC code from the back (or front, for Amex) of the card.  **Returns:** &#x60;Your card is charged. Please enter the amounts charged up!&#x60; — surface to the UI to prompt for the two amounts.  **Side effects:** - Places two test charges via &#x60;verify_cc_charge()&#x60; (gateway-side). - On failure: increments &#x60;cc_fails_&lt;cc&gt;&#x60; on the account.  **Auth:** Session/API key. Card ownership enforced.  **Errors:** - &#x60;Invalid Credit Card Passed&#x60; — &#x60;id&#x60; not in &#x60;parse_ccs&#x60;. - &#x60;Reached the max number of tries to authenticate this card&#x60; — &#x60;cc_fails_&lt;cc&gt; &gt; 3&#x60;. - &#x60;Missing or blank CVV&#x60; — &#x60;cc_ccv2&#x60; absent or empty. - Gateway error text — charge attempt failed. - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Prerequisite:** &#x60;addBillingCreditCard&#x60; (must have returned &#x60;action&#x3D;&#x27;verify&#x27;&#x60;). - **Next (step 2):** &#x60;postBillingCreditCardVerify&#x60; (submit &#x60;cc_amount1&#x60; + &#x60;cc_amount2&#x60;). - **After verification:** &#x60;updateBillingPaymentMethod&#x60; to make it the default. 
        /// </summary>
        /// <param name="body"></param>
        /// <param name="id">The credit card ID to verify. Use the ID returned from &#x60;POST /billing/creditcards&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        public SuccessTextResponse PatchBillingCreditCardVerify (IdVerifyBody body, int? id)
        {
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling PatchBillingCreditCardVerify");
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling PatchBillingCreditCardVerify");
    
            var path = "/billing/creditcards/{id}/verify";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    postBody = ApiClient.Serialize(body); // http body (model) parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.PATCH, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling PatchBillingCreditCardVerify: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PatchBillingCreditCardVerify: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SuccessTextResponse) ApiClient.Deserialize(response.Content, typeof(SuccessTextResponse), response.Headers);
        }
    
        /// <summary>
        /// Place two micro-charges on the card to start CVV verification (step 1 of 2) Step 1 of the two-step card-verification flow. After &#x60;addBillingCreditCard&#x60; returns &#x60;action&#x3D;&#x27;verify&#x27;&#x60;, call this with the card&#x27;s CVV to place two small charges (cents-scale) on the card. The customer must then look up the exact amounts in their bank statement and submit them via &#x60;postBillingCreditCardVerify&#x60; to finalize verification. **After 3 failed CVV attempts** (&#x60;cc_fails_&lt;cc&gt;&#x60; counter on the account) the card is locked from further verification attempts — contact support. Sibling ops: &#x60;getBillingCreditCardVerify&#x60;, &#x60;postBillingCreditCardVerify&#x60;, &#x60;addBillingCreditCard&#x60;, &#x60;updateBillingPaymentMethod&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — credit card index from &#x60;parse_ccs&#x60;.  **Body fields:** - &#x60;cc_ccv2&#x60; (string, required) — the 3- or 4-digit CVV/CVC code from the back (or front, for Amex) of the card.  **Returns:** &#x60;Your card is charged. Please enter the amounts charged up!&#x60; — surface to the UI to prompt for the two amounts.  **Side effects:** - Places two test charges via &#x60;verify_cc_charge()&#x60; (gateway-side). - On failure: increments &#x60;cc_fails_&lt;cc&gt;&#x60; on the account.  **Auth:** Session/API key. Card ownership enforced.  **Errors:** - &#x60;Invalid Credit Card Passed&#x60; — &#x60;id&#x60; not in &#x60;parse_ccs&#x60;. - &#x60;Reached the max number of tries to authenticate this card&#x60; — &#x60;cc_fails_&lt;cc&gt; &gt; 3&#x60;. - &#x60;Missing or blank CVV&#x60; — &#x60;cc_ccv2&#x60; absent or empty. - Gateway error text — charge attempt failed. - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Prerequisite:** &#x60;addBillingCreditCard&#x60; (must have returned &#x60;action&#x3D;&#x27;verify&#x27;&#x60;). - **Next (step 2):** &#x60;postBillingCreditCardVerify&#x60; (submit &#x60;cc_amount1&#x60; + &#x60;cc_amount2&#x60;). - **After verification:** &#x60;updateBillingPaymentMethod&#x60; to make it the default. 
        /// </summary>
        /// <param name="ccCcv2"></param>
        /// <param name="id">The credit card ID to verify. Use the ID returned from &#x60;POST /billing/creditcards&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        public SuccessTextResponse PatchBillingCreditCardVerify (string ccCcv2, int? id)
        {
            // verify the required parameter 'ccCcv2' is set
            if (ccCcv2 == null) throw new ApiException(400, "Missing required parameter 'ccCcv2' when calling PatchBillingCreditCardVerify");
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling PatchBillingCreditCardVerify");
    
            var path = "/billing/creditcards/{id}/verify";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    if (ccCcv2 != null) formParams.Add("cc_ccv2", ApiClient.ParameterToString(ccCcv2)); // form parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.PATCH, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling PatchBillingCreditCardVerify: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PatchBillingCreditCardVerify: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SuccessTextResponse) ApiClient.Deserialize(response.Content, typeof(SuccessTextResponse), response.Headers);
        }
    
        /// <summary>
        /// Submit two micro-charge amounts to finalize card verification (step 2 of 2) Step 2 of the two-step card-verification flow. Submits the two exact micro-charge amounts the customer saw on their statement (placed by &#x60;patchBillingCreditCardVerify&#x60;) so the gateway can confirm the customer controls the card. On success, the card is marked verified and can be selected via &#x60;updateBillingPaymentMethod&#x60; (&#x60;payment_method&#x3D;cc&lt;idx&gt;&#x60;) or used directly with &#x60;initiatePayment&#x60; (&#x60;method&#x3D;cc&#x60;). After 3 failed attempts (&#x60;cc_fails_&lt;cc&gt; &gt; 3&#x60;) the card is locked. Sibling ops: &#x60;getBillingCreditCardVerify&#x60;, &#x60;patchBillingCreditCardVerify&#x60;, &#x60;addBillingCreditCard&#x60;, &#x60;updateBillingPaymentMethod&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — credit card index from &#x60;parse_ccs&#x60;.  **Body fields (schema &#x60;BillingVerifyCcRequest&#x60;):** - &#x60;cc_amount1&#x60; (number, required) — first micro-charge amount (in dollars, decimal). - &#x60;cc_amount2&#x60; (number, required) — second micro-charge amount.  **Returns:** Verification success text (gateway-returned).  **Side effects:** - Marks the card as verified when amounts match. - On failure: increments &#x60;cc_fails_&lt;cc&gt;&#x60; on the account.  **Auth:** Session/API key. Card ownership enforced.  **Errors:** - &#x60;Invalid Credit Card Passed&#x60; — &#x60;id&#x60; not in &#x60;parse_ccs&#x60;. - &#x60;Reached the max number of tries to authenticate this card&#x60; — &#x60;cc_fails_&lt;cc&gt; &gt; 3&#x60;. - &#x60;Missing charge amounts&#x60; — &#x60;cc_amount1&#x60; or &#x60;cc_amount2&#x60; absent. - Verification failure text (status &#x60;failed&#x60; / &#x60;error&#x60; / &#x60;warning&#x60;) — amounts don&#x27;t match. - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Prerequisite (step 1):** &#x60;patchBillingCreditCardVerify&#x60;. - **Next:** &#x60;updateBillingPaymentMethod&#x60; to make the verified card default, or &#x60;initiatePayment&#x60; (&#x60;method&#x3D;cc&#x60;) to pay immediately. 
        /// </summary>
        /// <param name="body"></param>
        /// <param name="id">The credit card ID to verify. Use the ID returned from &#x60;POST /billing/creditcards&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        public SuccessTextResponse PostBillingCreditCardVerify (BillingVerifyCcRequest body, int? id)
        {
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling PostBillingCreditCardVerify");
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling PostBillingCreditCardVerify");
    
            var path = "/billing/creditcards/{id}/verify";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    postBody = ApiClient.Serialize(body); // http body (model) parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling PostBillingCreditCardVerify: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PostBillingCreditCardVerify: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SuccessTextResponse) ApiClient.Deserialize(response.Content, typeof(SuccessTextResponse), response.Headers);
        }
    
        /// <summary>
        /// Submit two micro-charge amounts to finalize card verification (step 2 of 2) Step 2 of the two-step card-verification flow. Submits the two exact micro-charge amounts the customer saw on their statement (placed by &#x60;patchBillingCreditCardVerify&#x60;) so the gateway can confirm the customer controls the card. On success, the card is marked verified and can be selected via &#x60;updateBillingPaymentMethod&#x60; (&#x60;payment_method&#x3D;cc&lt;idx&gt;&#x60;) or used directly with &#x60;initiatePayment&#x60; (&#x60;method&#x3D;cc&#x60;). After 3 failed attempts (&#x60;cc_fails_&lt;cc&gt; &gt; 3&#x60;) the card is locked. Sibling ops: &#x60;getBillingCreditCardVerify&#x60;, &#x60;patchBillingCreditCardVerify&#x60;, &#x60;addBillingCreditCard&#x60;, &#x60;updateBillingPaymentMethod&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — credit card index from &#x60;parse_ccs&#x60;.  **Body fields (schema &#x60;BillingVerifyCcRequest&#x60;):** - &#x60;cc_amount1&#x60; (number, required) — first micro-charge amount (in dollars, decimal). - &#x60;cc_amount2&#x60; (number, required) — second micro-charge amount.  **Returns:** Verification success text (gateway-returned).  **Side effects:** - Marks the card as verified when amounts match. - On failure: increments &#x60;cc_fails_&lt;cc&gt;&#x60; on the account.  **Auth:** Session/API key. Card ownership enforced.  **Errors:** - &#x60;Invalid Credit Card Passed&#x60; — &#x60;id&#x60; not in &#x60;parse_ccs&#x60;. - &#x60;Reached the max number of tries to authenticate this card&#x60; — &#x60;cc_fails_&lt;cc&gt; &gt; 3&#x60;. - &#x60;Missing charge amounts&#x60; — &#x60;cc_amount1&#x60; or &#x60;cc_amount2&#x60; absent. - Verification failure text (status &#x60;failed&#x60; / &#x60;error&#x60; / &#x60;warning&#x60;) — amounts don&#x27;t match. - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Prerequisite (step 1):** &#x60;patchBillingCreditCardVerify&#x60;. - **Next:** &#x60;updateBillingPaymentMethod&#x60; to make the verified card default, or &#x60;initiatePayment&#x60; (&#x60;method&#x3D;cc&#x60;) to pay immediately. 
        /// </summary>
        /// <param name="idx"></param>
        /// <param name="ccCcv2"></param>
        /// <param name="ccAmount1"></param>
        /// <param name="ccAmount2"></param>
        /// <param name="terms"></param>
        /// <param name="id">The credit card ID to verify. Use the ID returned from &#x60;POST /billing/creditcards&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        public SuccessTextResponse PostBillingCreditCardVerify (int? idx, string ccCcv2, string ccAmount1, string ccAmount2, bool? terms, int? id)
        {
            // verify the required parameter 'idx' is set
            if (idx == null) throw new ApiException(400, "Missing required parameter 'idx' when calling PostBillingCreditCardVerify");
            // verify the required parameter 'ccCcv2' is set
            if (ccCcv2 == null) throw new ApiException(400, "Missing required parameter 'ccCcv2' when calling PostBillingCreditCardVerify");
            // verify the required parameter 'ccAmount1' is set
            if (ccAmount1 == null) throw new ApiException(400, "Missing required parameter 'ccAmount1' when calling PostBillingCreditCardVerify");
            // verify the required parameter 'ccAmount2' is set
            if (ccAmount2 == null) throw new ApiException(400, "Missing required parameter 'ccAmount2' when calling PostBillingCreditCardVerify");
            // verify the required parameter 'terms' is set
            if (terms == null) throw new ApiException(400, "Missing required parameter 'terms' when calling PostBillingCreditCardVerify");
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling PostBillingCreditCardVerify");
    
            var path = "/billing/creditcards/{id}/verify";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    if (idx != null) formParams.Add("idx", ApiClient.ParameterToString(idx)); // form parameter
if (ccCcv2 != null) formParams.Add("cc_ccv2", ApiClient.ParameterToString(ccCcv2)); // form parameter
if (ccAmount1 != null) formParams.Add("cc_amount1", ApiClient.ParameterToString(ccAmount1)); // form parameter
if (ccAmount2 != null) formParams.Add("cc_amount2", ApiClient.ParameterToString(ccAmount2)); // form parameter
if (terms != null) formParams.Add("terms", ApiClient.ParameterToString(terms)); // form parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling PostBillingCreditCardVerify: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PostBillingCreditCardVerify: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SuccessTextResponse) ApiClient.Deserialize(response.Content, typeof(SuccessTextResponse), response.Headers);
        }
    
        /// <summary>
        /// Configure the affiliate landing dock title, description, and referrer coupon Customizes the branded landing-dock page shown to visitors arriving via the affiliate&#x27;s referral link, and reserves a unique referrer coupon code that&#x27;s automatically created across all affiliate-eligible modules. Title/description allow a limited HTML allowlist (&#x60;&lt;b&gt;&#x60;, &#x60;&lt;br&gt;&#x60;, &#x60;&lt;strong&gt;&#x60;, &#x60;&lt;hr&gt;&#x60;); everything else is entity-escaped. Coupon changes propagate to **all** affiliate modules atomically. Sibling ops: &#x60;updateAffiliatePaymentSetup&#x60;, &#x60;getAffiliateSignups&#x60;.  **Body fields (multipart or JSON, schema &#x60;AffiliateDockSetup&#x60;):** - &#x60;affiliate_dock_title&#x60; (string, optional) — landing-page title. HTML allowlist: &#x60;&lt;b&gt;&#x60;, &#x60;&lt;br&gt;&#x60;, &#x60;&lt;strong&gt;&#x60;, &#x60;&lt;hr&gt;&#x60;. - &#x60;affiliate_dock_description&#x60; (string, optional) — landing-page body. Same allowlist. - &#x60;referrer_coupon&#x60; (string, optional) — coupon code reservation. Requirements:   - ≥ 6 chars.   - &#x60;^[a-zA-Z0-9]+$&#x60; (alphanumeric only).   - Must NOT contain &#x60;facebook&#x60;, &#x60;test&#x60;, or &#x60;interserver&#x60; (substring check, case-insensitive).   - Must NOT exactly match a reserved word.   - Must NOT already exist as a coupon in any affiliate module (&#x60;webhosting&#x60;, &#x60;vps&#x60;, &#x60;quickservers&#x60;, &#x60;servers&#x60;, &#x60;backups&#x60;).  **Returns:** &#x60;{text: \&quot;&lt;status message&gt;\&quot;}&#x60;.  **Side effects:** - First time setting &#x60;referrer_coupon&#x60;: inserts a &#x60;coupons&#x60; row in each affiliate module (&#x60;type&#x3D;3&#x60;, &#x60;amount&#x3D;0.01&#x60;, &#x60;onetime&#x3D;1&#x60;, &#x60;customer&#x3D;-1&#x60;, &#x60;usable&#x3D;1&#x60;, &#x60;applies&#x3D;-1&#x60;). - Changing &#x60;referrer_coupon&#x60;: renames the coupon across all affiliate modules in one transaction. - Updates the account&#x27;s &#x60;affiliate_dock_title&#x60;, &#x60;affiliate_dock_description&#x60;, &#x60;referrer_coupon&#x60; fields.  **Auth:** Session/API key.  **Errors:** - &#x60;422 The name must be at least 6 characters long&#x60;. - &#x60;422 Invalid Characters, use only standard english letters and numbers&#x60;. - &#x60;422 That is a reserved word that cannot be used here&#x60;. - &#x60;422 &lt;position&gt; is a reserved word that cannot be used here&#x60; (substring match against &#x60;facebook&#x60;/&#x60;test&#x60;/&#x60;interserver&#x60;). - &#x60;409 That name is already taken&#x60; — coupon exists in another account&#x27;s module. - &#x60;401&#x60; — unauthenticated. 
        /// </summary>
        /// <param name="affiliateDockTitle"></param>
        /// <param name="affiliateDockDescription"></param>
        /// <param name="referrerCoupon"></param>
        /// <returns>TextResponse</returns>
        public TextResponse UpdateAffiliateDockSetup (string affiliateDockTitle, string affiliateDockDescription, string referrerCoupon)
        {
            // verify the required parameter 'affiliateDockTitle' is set
            if (affiliateDockTitle == null) throw new ApiException(400, "Missing required parameter 'affiliateDockTitle' when calling UpdateAffiliateDockSetup");
            // verify the required parameter 'affiliateDockDescription' is set
            if (affiliateDockDescription == null) throw new ApiException(400, "Missing required parameter 'affiliateDockDescription' when calling UpdateAffiliateDockSetup");
            // verify the required parameter 'referrerCoupon' is set
            if (referrerCoupon == null) throw new ApiException(400, "Missing required parameter 'referrerCoupon' when calling UpdateAffiliateDockSetup");
    
            var path = "/affiliate/dock_setup";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    if (affiliateDockTitle != null) formParams.Add("affiliate_dock_title", ApiClient.ParameterToString(affiliateDockTitle)); // form parameter
if (affiliateDockDescription != null) formParams.Add("affiliate_dock_description", ApiClient.ParameterToString(affiliateDockDescription)); // form parameter
if (referrerCoupon != null) formParams.Add("referrer_coupon", ApiClient.ParameterToString(referrerCoupon)); // form parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateAffiliateDockSetup: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateAffiliateDockSetup: " + response.ErrorMessage, response.ErrorMessage);
    
            return (TextResponse) ApiClient.Deserialize(response.Content, typeof(TextResponse), response.Headers);
        }
    
        /// <summary>
        /// Configure the affiliate landing dock title, description, and referrer coupon Customizes the branded landing-dock page shown to visitors arriving via the affiliate&#x27;s referral link, and reserves a unique referrer coupon code that&#x27;s automatically created across all affiliate-eligible modules. Title/description allow a limited HTML allowlist (&#x60;&lt;b&gt;&#x60;, &#x60;&lt;br&gt;&#x60;, &#x60;&lt;strong&gt;&#x60;, &#x60;&lt;hr&gt;&#x60;); everything else is entity-escaped. Coupon changes propagate to **all** affiliate modules atomically. Sibling ops: &#x60;updateAffiliatePaymentSetup&#x60;, &#x60;getAffiliateSignups&#x60;.  **Body fields (multipart or JSON, schema &#x60;AffiliateDockSetup&#x60;):** - &#x60;affiliate_dock_title&#x60; (string, optional) — landing-page title. HTML allowlist: &#x60;&lt;b&gt;&#x60;, &#x60;&lt;br&gt;&#x60;, &#x60;&lt;strong&gt;&#x60;, &#x60;&lt;hr&gt;&#x60;. - &#x60;affiliate_dock_description&#x60; (string, optional) — landing-page body. Same allowlist. - &#x60;referrer_coupon&#x60; (string, optional) — coupon code reservation. Requirements:   - ≥ 6 chars.   - &#x60;^[a-zA-Z0-9]+$&#x60; (alphanumeric only).   - Must NOT contain &#x60;facebook&#x60;, &#x60;test&#x60;, or &#x60;interserver&#x60; (substring check, case-insensitive).   - Must NOT exactly match a reserved word.   - Must NOT already exist as a coupon in any affiliate module (&#x60;webhosting&#x60;, &#x60;vps&#x60;, &#x60;quickservers&#x60;, &#x60;servers&#x60;, &#x60;backups&#x60;).  **Returns:** &#x60;{text: \&quot;&lt;status message&gt;\&quot;}&#x60;.  **Side effects:** - First time setting &#x60;referrer_coupon&#x60;: inserts a &#x60;coupons&#x60; row in each affiliate module (&#x60;type&#x3D;3&#x60;, &#x60;amount&#x3D;0.01&#x60;, &#x60;onetime&#x3D;1&#x60;, &#x60;customer&#x3D;-1&#x60;, &#x60;usable&#x3D;1&#x60;, &#x60;applies&#x3D;-1&#x60;). - Changing &#x60;referrer_coupon&#x60;: renames the coupon across all affiliate modules in one transaction. - Updates the account&#x27;s &#x60;affiliate_dock_title&#x60;, &#x60;affiliate_dock_description&#x60;, &#x60;referrer_coupon&#x60; fields.  **Auth:** Session/API key.  **Errors:** - &#x60;422 The name must be at least 6 characters long&#x60;. - &#x60;422 Invalid Characters, use only standard english letters and numbers&#x60;. - &#x60;422 That is a reserved word that cannot be used here&#x60;. - &#x60;422 &lt;position&gt; is a reserved word that cannot be used here&#x60; (substring match against &#x60;facebook&#x60;/&#x60;test&#x60;/&#x60;interserver&#x60;). - &#x60;409 That name is already taken&#x60; — coupon exists in another account&#x27;s module. - &#x60;401&#x60; — unauthenticated. 
        /// </summary>
        /// <param name="body"></param>
        /// <returns>TextResponse</returns>
        public TextResponse UpdateAffiliateDockSetup (AffiliateDockSetup body)
        {
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling UpdateAffiliateDockSetup");
    
            var path = "/affiliate/dock_setup";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    postBody = ApiClient.Serialize(body); // http body (model) parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateAffiliateDockSetup: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateAffiliateDockSetup: " + response.ErrorMessage, response.ErrorMessage);
    
            return (TextResponse) ApiClient.Deserialize(response.Content, typeof(TextResponse), response.Headers);
        }
    
        /// <summary>
        /// Configure how affiliate commissions get paid out (PayPal or internal prepay) Sets the disbursement preferences for affiliate commission payouts. Choose between PayPal payout (provide an email — validated) or internal prepay credit (auto-applied to future invoices via &#x60;method&#x3D;prepay&#x60;). Selecting &#x60;not set&#x60; suspends payouts. Sibling ops: &#x60;updateAffiliateDockSetup&#x60;, &#x60;getAffiliateRichReport&#x60;, &#x60;getAffiliateDownload&#x60;.  **Body fields (multipart or JSON, schema &#x60;AffiliatePaymentSetup&#x60;):** - &#x60;affiliate_payment_method&#x60; (string, optional) — one of &#x60;paypal&#x60; / &#x60;prepay&#x60; / &#x60;not set&#x60;. - &#x60;affiliate_paypal&#x60; (string, optional, required when method&#x3D;&#x60;paypal&#x60;) — email validated by &#x60;valid_email()&#x60;.  **Returns:** &#x60;{text: \&quot;Ok\&quot;}&#x60;.  **Side effects:** - Updates the account&#x27;s &#x60;affiliate_payment_method&#x60; and/or &#x60;affiliate_paypal&#x60; fields.  **Auth:** Session/API key.  **Errors:** - &#x60;422 Invalid Email&#x60; — &#x60;affiliate_paypal&#x60; fails &#x60;valid_email()&#x60;. - &#x60;422 Invalid Payment Method&#x60; — value not in &#x60;{paypal, prepay, not set}&#x60;. - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Read current commissions:** &#x60;getAffiliateRichReport&#x60;, &#x60;getAffiliateSalesGraph&#x60;. - **Export commission report:** &#x60;getAffiliateDownload&#x60;. 
        /// </summary>
        /// <param name="affiliatePaypal"></param>
        /// <param name="affiliatePaymentMethod"></param>
        /// <returns>TextResponse</returns>
        public TextResponse UpdateAffiliatePaymentSetup (string affiliatePaypal, string affiliatePaymentMethod)
        {
            // verify the required parameter 'affiliatePaypal' is set
            if (affiliatePaypal == null) throw new ApiException(400, "Missing required parameter 'affiliatePaypal' when calling UpdateAffiliatePaymentSetup");
            // verify the required parameter 'affiliatePaymentMethod' is set
            if (affiliatePaymentMethod == null) throw new ApiException(400, "Missing required parameter 'affiliatePaymentMethod' when calling UpdateAffiliatePaymentSetup");
    
            var path = "/affiliate/payment_setup";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    if (affiliatePaypal != null) formParams.Add("affiliate_paypal", ApiClient.ParameterToString(affiliatePaypal)); // form parameter
if (affiliatePaymentMethod != null) formParams.Add("affiliate_payment_method", ApiClient.ParameterToString(affiliatePaymentMethod)); // form parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateAffiliatePaymentSetup: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateAffiliatePaymentSetup: " + response.ErrorMessage, response.ErrorMessage);
    
            return (TextResponse) ApiClient.Deserialize(response.Content, typeof(TextResponse), response.Headers);
        }
    
        /// <summary>
        /// Configure how affiliate commissions get paid out (PayPal or internal prepay) Sets the disbursement preferences for affiliate commission payouts. Choose between PayPal payout (provide an email — validated) or internal prepay credit (auto-applied to future invoices via &#x60;method&#x3D;prepay&#x60;). Selecting &#x60;not set&#x60; suspends payouts. Sibling ops: &#x60;updateAffiliateDockSetup&#x60;, &#x60;getAffiliateRichReport&#x60;, &#x60;getAffiliateDownload&#x60;.  **Body fields (multipart or JSON, schema &#x60;AffiliatePaymentSetup&#x60;):** - &#x60;affiliate_payment_method&#x60; (string, optional) — one of &#x60;paypal&#x60; / &#x60;prepay&#x60; / &#x60;not set&#x60;. - &#x60;affiliate_paypal&#x60; (string, optional, required when method&#x3D;&#x60;paypal&#x60;) — email validated by &#x60;valid_email()&#x60;.  **Returns:** &#x60;{text: \&quot;Ok\&quot;}&#x60;.  **Side effects:** - Updates the account&#x27;s &#x60;affiliate_payment_method&#x60; and/or &#x60;affiliate_paypal&#x60; fields.  **Auth:** Session/API key.  **Errors:** - &#x60;422 Invalid Email&#x60; — &#x60;affiliate_paypal&#x60; fails &#x60;valid_email()&#x60;. - &#x60;422 Invalid Payment Method&#x60; — value not in &#x60;{paypal, prepay, not set}&#x60;. - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Read current commissions:** &#x60;getAffiliateRichReport&#x60;, &#x60;getAffiliateSalesGraph&#x60;. - **Export commission report:** &#x60;getAffiliateDownload&#x60;. 
        /// </summary>
        /// <param name="body"></param>
        /// <returns>TextResponse</returns>
        public TextResponse UpdateAffiliatePaymentSetup (AffiliatePaymentSetup body)
        {
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling UpdateAffiliatePaymentSetup");
    
            var path = "/affiliate/payment_setup";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    postBody = ApiClient.Serialize(body); // http body (model) parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateAffiliatePaymentSetup: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateAffiliatePaymentSetup: " + response.ErrorMessage, response.ErrorMessage);
    
            return (TextResponse) ApiClient.Deserialize(response.Content, typeof(TextResponse), response.Headers);
        }
    
        /// <summary>
        /// Refresh stored card expiration and re-trigger MaxMind fraud scoring Updates the expiration date on a stored credit card and re-encrypts the card record. If the updated card matches the account&#x27;s primary &#x60;cc&#x60;, the account-level &#x60;cc_exp&#x60; is also refreshed. If no MaxMind risk score exists yet for the card, &#x60;update_maxmind()&#x60; is called to compute one. Use to fix an upcoming expiration before recurring charges fail. Sibling ops: &#x60;addBillingCreditCard&#x60;, &#x60;deleteBillingCreditCard&#x60;, &#x60;getBillingCreditCardVerify&#x60;, &#x60;postBillingCreditCardVerify&#x60;, &#x60;updateBillingPaymentMethod&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — credit card index (the key in the account&#x27;s &#x60;ccs&#x60; array, returned by &#x60;parse_ccs&#x60; and surfaced as &#x60;cc&lt;idx&gt;&#x60; in &#x60;updateBillingPaymentMethod&#x60;).  **Body fields:** - &#x60;cc_exp&#x60; (string, required) — new expiration in &#x60;MM/YYYY&#x60; format.  **Returns:** &#x60;Card updated successfully.&#x60;.  **Side effects:** - Updates the &#x60;ccs&#x60; array (re-serialized via &#x60;myadmin_stringify&#x60;) on the account. - When the card &#x3D;&#x3D; primary &#x60;cc&#x60;, the account-level &#x60;cc_exp&#x60; is also written. - Triggers &#x60;update_maxmind($custid, false, $cc_idx)&#x60; if no risk score exists.  **Auth:** Session/API key. Card ownership enforced via &#x60;parse_ccs&#x60;.  **Errors:** - &#x60;Invalid Credit Card Passed&#x60; — &#x60;id&#x60; not in &#x60;parse_ccs&#x60;. - &#x60;Please enter valid card expiry date&#x60; — &#x60;cc_exp&#x60; body field missing. - &#x60;Invalid expiration date. It must be in the form of MM/YYYY&#x60; — wrong format. - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Verify a freshly added card:** &#x60;patchBillingCreditCardVerify&#x60; → &#x60;postBillingCreditCardVerify&#x60;. - **Remove the card:** &#x60;deleteBillingCreditCard&#x60;. - **Make it default:** &#x60;updateBillingPaymentMethod&#x60; with &#x60;payment_method&#x3D;cc&lt;idx&gt;&#x60;. 
        /// </summary>
        /// <param name="id">The credit card ID. Use IDs from &#x60;GET /billing/creditcards&#x60; or the response from &#x60;POST /billing/creditcards&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        public SuccessTextResponse UpdateBillingCreditCard (int? id)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling UpdateBillingCreditCard");
    
            var path = "/billing/creditcards/{id}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateBillingCreditCard: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateBillingCreditCard: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SuccessTextResponse) ApiClient.Deserialize(response.Content, typeof(SuccessTextResponse), response.Headers);
        }
    
        /// <summary>
        /// Set the account&#x27;s default payment method for recurring/auto charges Sets the account&#x27;s preferred payment method for recurring/automatic charges and (when applicable) promotes a specific stored credit card to be the primary &#x60;cc&#x60; on the account. Use after &#x60;addBillingCreditCard&#x60; + verification to select the new card, or when switching between PayPal and credit-card billing. First-time payment-method assignment triggers &#x60;update_maxmind()&#x60; and &#x60;update_fraudrecord()&#x60; risk-score generation. Sibling ops: &#x60;addBillingCreditCard&#x60;, &#x60;postBillingCreditCardVerify&#x60;, &#x60;deleteBillingCreditCard&#x60;, &#x60;initiatePayment&#x60;.  **Body fields (JSON or multipart, schema &#x60;BillingPaymentMethodRequest&#x60;):** - &#x60;payment_method&#x60; (string, required) — one of:   - &#x60;cc&#x60; — use the existing primary credit card.   - &#x60;cc&lt;idx&gt;&#x60; (e.g. &#x60;cc2&#x60;) — promote the card at index &#x60;idx&#x60; (from &#x60;parse_ccs&#x60;) to primary. Must be verified.   - &#x60;paypal&#x60; — switch to PayPal. - &#x60;cc_auto&#x60; (string &#x60;0&#x60;/&#x60;1&#x60;, optional) — auto-charge flag. Implicitly set to &#x60;1&#x60; when selecting &#x60;cc&#x60;/&#x60;cc&lt;idx&gt;&#x60;, &#x60;0&#x60; for &#x60;paypal&#x60;.  **Returns:** &#x60;{text: \&quot;Payment Method Updated\&quot;}&#x60;.  **Side effects:** - When &#x60;payment_method&#x3D;cc&lt;idx&gt;&#x60;: copies the indexed card&#x27;s encrypted &#x60;cc&#x60; and &#x60;cc_exp&#x60; onto the account&#x27;s primary fields. - First time a payment method is set: runs MaxMind risk score, then FraudRecord score.  **Auth:** Session/API key.  **Errors:** - &#x60;Invalid Credit Card Specified&#x60; — &#x60;cc&lt;idx&gt;&#x60; is malformed or &#x60;idx&#x60; not found in &#x60;parse_ccs&#x60;. - &#x60;This CC has not been verified.&#x60; — the chosen card hasn&#x27;t completed &#x60;postBillingCreditCardVerify&#x60;. - &#x60;Invalid Payment Method Specified&#x60; — value not in &#x60;{cc, paypal, cc&lt;idx&gt;}&#x60;. - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Prerequisite for &#x60;cc&lt;idx&gt;&#x60;:** &#x60;addBillingCreditCard&#x60; → &#x60;patchBillingCreditCardVerify&#x60; → &#x60;postBillingCreditCardVerify&#x60;. - **Now pay an invoice:** &#x60;initiatePayment&#x60; (&#x60;method&#x3D;cc&#x60; will use the default; &#x60;method&#x3D;paypal&#x60; if you switched). - **Audit current methods:** &#x60;getAccountInfo&#x60; (account profile shows cards as masked). 
        /// </summary>
        /// <param name="body"></param>
        /// <returns>SuccessTextResponse</returns>
        public SuccessTextResponse UpdateBillingPaymentMethod (BillingPaymentMethodRequest body)
        {
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling UpdateBillingPaymentMethod");
    
            var path = "/billing/payment_method";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    postBody = ApiClient.Serialize(body); // http body (model) parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateBillingPaymentMethod: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateBillingPaymentMethod: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SuccessTextResponse) ApiClient.Deserialize(response.Content, typeof(SuccessTextResponse), response.Headers);
        }
    
        /// <summary>
        /// Set the account&#x27;s default payment method for recurring/auto charges Sets the account&#x27;s preferred payment method for recurring/automatic charges and (when applicable) promotes a specific stored credit card to be the primary &#x60;cc&#x60; on the account. Use after &#x60;addBillingCreditCard&#x60; + verification to select the new card, or when switching between PayPal and credit-card billing. First-time payment-method assignment triggers &#x60;update_maxmind()&#x60; and &#x60;update_fraudrecord()&#x60; risk-score generation. Sibling ops: &#x60;addBillingCreditCard&#x60;, &#x60;postBillingCreditCardVerify&#x60;, &#x60;deleteBillingCreditCard&#x60;, &#x60;initiatePayment&#x60;.  **Body fields (JSON or multipart, schema &#x60;BillingPaymentMethodRequest&#x60;):** - &#x60;payment_method&#x60; (string, required) — one of:   - &#x60;cc&#x60; — use the existing primary credit card.   - &#x60;cc&lt;idx&gt;&#x60; (e.g. &#x60;cc2&#x60;) — promote the card at index &#x60;idx&#x60; (from &#x60;parse_ccs&#x60;) to primary. Must be verified.   - &#x60;paypal&#x60; — switch to PayPal. - &#x60;cc_auto&#x60; (string &#x60;0&#x60;/&#x60;1&#x60;, optional) — auto-charge flag. Implicitly set to &#x60;1&#x60; when selecting &#x60;cc&#x60;/&#x60;cc&lt;idx&gt;&#x60;, &#x60;0&#x60; for &#x60;paypal&#x60;.  **Returns:** &#x60;{text: \&quot;Payment Method Updated\&quot;}&#x60;.  **Side effects:** - When &#x60;payment_method&#x3D;cc&lt;idx&gt;&#x60;: copies the indexed card&#x27;s encrypted &#x60;cc&#x60; and &#x60;cc_exp&#x60; onto the account&#x27;s primary fields. - First time a payment method is set: runs MaxMind risk score, then FraudRecord score.  **Auth:** Session/API key.  **Errors:** - &#x60;Invalid Credit Card Specified&#x60; — &#x60;cc&lt;idx&gt;&#x60; is malformed or &#x60;idx&#x60; not found in &#x60;parse_ccs&#x60;. - &#x60;This CC has not been verified.&#x60; — the chosen card hasn&#x27;t completed &#x60;postBillingCreditCardVerify&#x60;. - &#x60;Invalid Payment Method Specified&#x60; — value not in &#x60;{cc, paypal, cc&lt;idx&gt;}&#x60;. - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Prerequisite for &#x60;cc&lt;idx&gt;&#x60;:** &#x60;addBillingCreditCard&#x60; → &#x60;patchBillingCreditCardVerify&#x60; → &#x60;postBillingCreditCardVerify&#x60;. - **Now pay an invoice:** &#x60;initiatePayment&#x60; (&#x60;method&#x3D;cc&#x60; will use the default; &#x60;method&#x3D;paypal&#x60; if you switched). - **Audit current methods:** &#x60;getAccountInfo&#x60; (account profile shows cards as masked). 
        /// </summary>
        /// <param name="paymentMethod"></param>
        /// <param name="ccAuto"></param>
        /// <returns>SuccessTextResponse</returns>
        public SuccessTextResponse UpdateBillingPaymentMethod (string paymentMethod, string ccAuto)
        {
            // verify the required parameter 'paymentMethod' is set
            if (paymentMethod == null) throw new ApiException(400, "Missing required parameter 'paymentMethod' when calling UpdateBillingPaymentMethod");
            // verify the required parameter 'ccAuto' is set
            if (ccAuto == null) throw new ApiException(400, "Missing required parameter 'ccAuto' when calling UpdateBillingPaymentMethod");
    
            var path = "/billing/payment_method";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    if (paymentMethod != null) formParams.Add("payment_method", ApiClient.ParameterToString(paymentMethod)); // form parameter
if (ccAuto != null) formParams.Add("cc_auto", ApiClient.ParameterToString(ccAuto)); // form parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateBillingPaymentMethod: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateBillingPaymentMethod: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SuccessTextResponse) ApiClient.Deserialize(response.Content, typeof(SuccessTextResponse), response.Headers);
        }
    
    }
}
