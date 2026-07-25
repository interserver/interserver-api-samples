# BillingApi

All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_billing_credit_card**](BillingApi.md#add_billing_credit_card) | **POST** /billing/creditcards | Store a credit card on the account — may return a verification flow
[**add_billing_prepay**](BillingApi.md#add_billing_prepay) | **POST** /billing/prepays | Create a prepay deposit and return an invoice id to fund it
[**delete_billing_credit_card**](BillingApi.md#delete_billing_credit_card) | **DELETE** /billing/creditcards/{id} | Remove a stored credit card from the account
[**delete_billing_invoice**](BillingApi.md#delete_billing_invoice) | **DELETE** /billing/invoices/{id} | Cancel a pending unpaid invoice — and its pending service or repeat invoice
[**delete_billing_prepay**](BillingApi.md#delete_billing_prepay) | **DELETE** /billing/prepays/{id} | Delete an unfunded prepay or strip its unpaid funding invoices
[**get_affiliate_banners**](BillingApi.md#get_affiliate_banners) | **GET** /affiliate/banners | List affiliate banner image assets with filename and dimensions
[**get_affiliate_download**](BillingApi.md#get_affiliate_download) | **GET** /affiliate/download | Export the affiliate signup report as CSV, XLS, XLSX, or PDF file download
[**get_affiliate_rich_report**](BillingApi.md#get_affiliate_rich_report) | **GET** /affiliate/rich_report | Read a combined affiliate performance summary (HTML payload)
[**get_affiliate_sales_graph**](BillingApi.md#get_affiliate_sales_graph) | **GET** /affiliate/sales_graph | Read aggregated affiliate sales time-series (monthly buckets) for chart rendering
[**get_affiliate_signups**](BillingApi.md#get_affiliate_signups) | **GET** /affiliate/signups | Read affiliate signup stats and per-customer conversion data
[**get_affiliate_traffic_graph**](BillingApi.md#get_affiliate_traffic_graph) | **GET** /affiliate/traffic_graph | Read aggregated affiliate referral click/visit time-series for chart rendering
[**get_affiliate_web_traffic**](BillingApi.md#get_affiliate_web_traffic) | **GET** /affiliate/web_traffic | List the 20 most recent affiliate referral visits with IP, referrer, timestamp
[**get_billing_cart**](BillingApi.md#get_billing_cart) | **GET** /billing/cart | Read the current shopping cart contents, totals, and available payment methods
[**get_billing_credit_card_verify**](BillingApi.md#get_billing_credit_card_verify) | **GET** /billing/creditcards/{id}/verify | Probe whether a stored card still needs micro-charge verification
[**get_billing_invoice**](BillingApi.md#get_billing_invoice) | **GET** /billing/invoices/{id} | Read full invoice detail — line items, totals, paid status, customer info
[**get_billing_invoices**](BillingApi.md#get_billing_invoices) | **GET** /billing/invoices | List every invoice on the account with summary totals and paid/unpaid status
[**get_billing_pre_pays**](BillingApi.md#get_billing_pre_pays) | **GET** /billing/prepays | List prepay deposits on the account — remaining balance and auto-use flags
[**initiate_payment**](BillingApi.md#initiate_payment) | **GET** /billing/pay/{method}/{invoices} | Pay invoices through the chosen gateway — returns the next-step action
[**patch_billing_credit_card_verify**](BillingApi.md#patch_billing_credit_card_verify) | **PATCH** /billing/creditcards/{id}/verify | Place two micro-charges on the card to start CVV verification (step 1 of 2)
[**post_billing_credit_card_verify**](BillingApi.md#post_billing_credit_card_verify) | **POST** /billing/creditcards/{id}/verify | Submit two micro-charge amounts to finalize card verification (step 2 of 2)
[**update_affiliate_dock_setup**](BillingApi.md#update_affiliate_dock_setup) | **POST** /affiliate/dock_setup | Configure the affiliate landing dock title, description, and referrer coupon
[**update_affiliate_payment_setup**](BillingApi.md#update_affiliate_payment_setup) | **POST** /affiliate/payment_setup | Configure how affiliate commissions get paid out (PayPal or internal prepay)
[**update_billing_credit_card**](BillingApi.md#update_billing_credit_card) | **POST** /billing/creditcards/{id} | Refresh stored card expiration and re-trigger MaxMind fraud scoring
[**update_billing_payment_method**](BillingApi.md#update_billing_payment_method) | **POST** /billing/payment_method | Set the account&#39;s default payment method for recurring/auto charges


# **add_billing_credit_card**
> `add_billing_credit_card`(_api::`BillingApi`, `billing_add_cc_request`::`BillingAddCcRequest`; _mediaType=nothing) -> `SuccessTextResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `add_billing_credit_card`(_api::`BillingApi`, response_stream::`Channel`, `billing_add_cc_request`::`BillingAddCcRequest`; _mediaType=nothing) -> `Channel`{ `SuccessTextResponse` }, `OpenAPI.Clients.ApiResponse`

Store a credit card on the account — may return a verification flow

Stores a new credit card on the account so it can later be selected via `updateBillingPaymentMethod` or used directly with `initiatePayment` (`method=cc`). The card number has dashes stripped and is sanitized through `FILTER_SANITIZE_NUMBER_INT`; billing address fields are HTML-entity-escaped server-side; the CC number is encrypted at rest via `App::encrypt()`. The flow may return `action='verify'` indicating a two-step micro-charge verification is required before the card is usable — complete it with `patchBillingCreditCardVerify` then `postBillingCreditCardVerify`. Sibling ops: `updateBillingCreditCard`, `deleteBillingCreditCard`, `patchBillingCreditCardVerify`, `postBillingCreditCardVerify`, `updateBillingPaymentMethod`.  **Body fields (JSON or multipart, schema `BillingAddCcRequest`):** - `cc` (string, required) — card number; dashes stripped, non-digits filtered. - `name` (string, required) — cardholder name. - `cc_exp` (string, required) — `MM/YYYY`. - `address` (string, required), `city`, `state`, `country`, `zip` (strings) — billing address; HTML-entity-escaped.  **Returns:** - **Added directly:** `{success: true, text: \"Card Added Successfully!\"}`. - **Verification needed:** `{success: false, text: \"Kindly verify your card by updating the amounts in the fields\", action: \"verify\"}` — proceed to `patchBillingCreditCardVerify`.  **Side effects:** - Inserts the encrypted card into the account's `ccs` array (managed via `parse_ccs` / `add_cc`). - May trigger a small initial test charge (gateway-dependent). - First-card-on-account triggers MaxMind + FraudRecord risk-score recomputation.  **Auth:** Session/API key.  **Errors:** - `Card number, Full Name, Expiry date are required!` — required field missing/empty. - `401` — unauthenticated. - Gateway/AVS error text — declined, mismatch, etc.  **Related calls:** - **Verify (if `action='verify'`):** `patchBillingCreditCardVerify` (CVV + initiate micro-charge) → `postBillingCreditCardVerify` (submit amounts). - **Make it the default:** `updateBillingPaymentMethod` with `payment_method=cc<idx>`. - **Pay an invoice with it:** `initiatePayment` (`method=cc`). 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BillingApi`** | API context | 
**`billing_add_cc_request`** | [**`BillingAddCcRequest`**](BillingAddCcRequest.md) |  |

### Return type

[**`SuccessTextResponse`**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **add_billing_prepay**
> `add_billing_prepay`(_api::`BillingApi`, `billing_prepay_request`::`BillingPrepayRequest`; _mediaType=nothing) -> `SuccessTextResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `add_billing_prepay`(_api::`BillingApi`, response_stream::`Channel`, `billing_prepay_request`::`BillingPrepayRequest`; _mediaType=nothing) -> `Channel`{ `SuccessTextResponse` }, `OpenAPI.Clients.ApiResponse`

Create a prepay deposit and return an invoice id to fund it

Creates a prepay row (`prepays` table) at the requested amount and inserts a matching `invoices` row (`Prepay ID {pid} Invoice`) that the customer must pay through `initiatePayment` before the balance becomes usable. The prepay is added with `PREPAY_TYPE_ANY` / `PREPAY_SERVICE_ANY` defaults via `add_prepay()`. Use to seed an account balance the customer can later spend via `method=prepay` at checkout. **Real money** — funding the returned invoice charges a real payment method. Sibling ops: `getBillingPrePays`, `deleteBillingPrepay`, `getBillingInvoice`, `initiatePayment`.  **Body fields (JSON or multipart, schema `BillingPrepayRequest`):** - `amount` (number, required) — deposit size in account currency. **Minimum $10**; smaller values are rejected. - `module` (string, required) — service module scope (`default` for any service, or specific like `vps`, `webhosting`). - `automatic_use` (bool, required) — when `true`, the balance auto-applies to future invoices in the scoped module.  **Returns:** `{text: \"Thank you! Prepay created! Kindly pay the invoice to activate the prepay fund.\", invoice: <integer>}` — pass `invoice` to `initiatePayment` (use a real `method` like `cc` / `paypal`, not `prepay` — you can't fund a prepay with a prepay).  **Side effects:** - Inserts `prepays` row. - Inserts `invoices` row (`invoices_description = \"Prepay ID {pid} Invoice\"`, `invoices_paid=0`, `invoices_module='default'`).  **Auth:** Session/API key.  **Errors:** - `Sorry! Minimum prepay amount is $10.00` — amount below floor. - `Something went wrong! Try again or contact our support team!` — invoice insert failed. - `401` — unauthenticated.  **Related calls:** - **Confirm invoice:** `getBillingInvoice` with the returned `invoice` id. - **Pay it:** `initiatePayment` (`method=cc|paypal|...`, not `prepay`). - **Verify it's now usable:** `getBillingPrePays` (look for `prepay_remaining > 0`). - **Cancel before paying:** `deleteBillingPrepay`.  **Example happy path:** ```text POST /apiv2/billing/prepays { \"amount\": 100, \"module\": \"default\", \"automatic_use\": true } -> { \"text\": \"...\", \"invoice\": 25296701 } GET /apiv2/billing/pay/cc/25296701 -> { \"type\": \"single\", \"text\": \"Payment processed.\" } GET /apiv2/billing/prepays -> [{ \"prepay_id\": 99, \"prepay_remaining\": 100, ... }] ``` 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BillingApi`** | API context | 
**`billing_prepay_request`** | [**`BillingPrepayRequest`**](BillingPrepayRequest.md) |  |

### Return type

[**`SuccessTextResponse`**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **delete_billing_credit_card**
> `delete_billing_credit_card`(_api::`BillingApi`, `id`::`Int64`; _mediaType=nothing) -> `SuccessTextResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `delete_billing_credit_card`(_api::`BillingApi`, response_stream::`Channel`, `id`::`Int64`; _mediaType=nothing) -> `Channel`{ `SuccessTextResponse` }, `OpenAPI.Clients.ApiResponse`

Remove a stored credit card from the account

Removes the indexed credit card from the account's `ccs` collection. If the deleted card was also the account's primary `cc`, the primary field is cleared — `initiatePayment` (`method=cc`) will then return an error until a new default is designated via `updateBillingPaymentMethod`. **Irreversible** — to re-store the same card, re-run `addBillingCreditCard`. Sibling ops: `addBillingCreditCard`, `updateBillingCreditCard`, `updateBillingPaymentMethod`, `getBillingCreditCardVerify`.  **Path param:** - `id` (integer, required) — credit card index from `parse_ccs`.  **Body:** None.  **Returns:** `Card removed successfully.`.  **Side effects:** - Removes the entry from the `ccs` array; re-serialized via `myadmin_stringify`. - When the deleted card was primary: clears account-level `cc`.  **Auth:** Session/API key. Card ownership enforced.  **Errors:** - `Invalid Credit Card Passed` — `id` not in `parse_ccs`. - `401` — unauthenticated.  **Related calls:** - **Set a new default:** `updateBillingPaymentMethod`. - **Add a replacement:** `addBillingCreditCard`. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BillingApi`** | API context | 
**`id`** | **`Int64`** | The credit card ID to remove. Use IDs from &#x60;GET /billing/creditcards&#x60;. |

### Return type

[**`SuccessTextResponse`**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **delete_billing_invoice**
> `delete_billing_invoice`(_api::`BillingApi`, `id`::`Int64`; _mediaType=nothing) -> `SuccessTextResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `delete_billing_invoice`(_api::`BillingApi`, response_stream::`Channel`, `id`::`Int64`; _mediaType=nothing) -> `Channel`{ `SuccessTextResponse` }, `OpenAPI.Clients.ApiResponse`

Cancel a pending unpaid invoice — and its pending service or repeat invoice

Cancels an unpaid invoice and cleans up the records it represents. Behavior depends on what the invoice funds: a **prepay** invoice is routed to `deleteBillingPrepay`; an **initial service charge** (where `repeat_invoices_id` matches the service's `_invoice` field) deletes the `repeat_invoices` row, all child `invoices`, AND the pending service row from the module's table; an **addon/recurring** invoice just deletes that one `invoices` row plus its `repeat_invoices` row. **Only invoices for services in `pending` status can be deleted** — once provisioned, the service must be cancelled via the per-service Cancel endpoint instead. **Irreversible**. Sibling ops: `getBillingInvoice`, `deleteBillingPrepay`, `VPSCancel` / `CancelDomain` / `mailCancel` / `webhostingCancel` / etc.  **Path param:** - `id` (integer, required) — invoice id (`invoices_type=1`, ownership enforced via `invoices_custid`).  **Body:** None.  **Returns:** `Invoice Deleted` text.  **Side effects:** (depends on invoice type) - **Prepay invoice** (description matches `Prepay ID N Invoice`) — delegates to `deleteBillingPrepay($pid)`. - **Initial service invoice** (`repeat_invoices_id == service._invoice`) — deletes:   - the `repeat_invoices` row,   - every `invoices` row for that service,   - the service row in `{settings['TABLE']}`. - **Addon/recurring invoice** — deletes only the matching `repeat_invoices` row and the single `invoices` row.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `Invalid invoice` — `id` not found or wrong owner. - `Invalid service` — invoice references a service that no longer exists. - `Can only delete invoices for pending services or prepays` — service is `active`/`suspended`/`cancelled`. - `401` — unauthenticated.  **Related calls:** - **List candidates:** `getBillingInvoices`. - **Detail first:** `getBillingInvoice`. - **For active services:** `VPSCancel`, `CancelDomain`, `mailCancel`, `webhostingCancel`, `licensesCancel`, `sslCancel`, `cancelScrubIp`, `floating_ipsCancel`, `cancelBackup`, `quickserversCancel`, `serversCancel` — these use `Billing\\CancelService::go()`. - **For prepay invoices:** `deleteBillingPrepay` (delegated automatically). 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BillingApi`** | API context | 
**`id`** | **`Int64`** | The invoice ID to delete. Only unpaid invoices can be deleted. |

### Return type

[**`SuccessTextResponse`**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **delete_billing_prepay**
> `delete_billing_prepay`(_api::`BillingApi`, `id`::`Int64`; _mediaType=nothing) -> `SuccessTextResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `delete_billing_prepay`(_api::`BillingApi`, response_stream::`Channel`, `id`::`Int64`; _mediaType=nothing) -> `Channel`{ `SuccessTextResponse` }, `OpenAPI.Clients.ApiResponse`

Delete an unfunded prepay or strip its unpaid funding invoices

Removes a prepay from the account, with one safety rule: a prepay that still has usable credit (`prepay_remaining > $0.01`) cannot be deleted *unless* it also has unpaid funding invoices we can clean up — in which case those unpaid `invoices` rows are deleted and the prepay row stays. Use to back out a never-funded prepay, or to surface stuck unpaid funding invoices. **Irreversible** — funded credit is unrecoverable through this endpoint. Sibling ops: `getBillingPrePays`, `addBillingPrepay`, `deleteBillingInvoice`.  **Path param:** - `id` (integer, required) — prepay id from `getBillingPrePays.prepay_id`.  **Body:** None.  **Returns:** - When unpaid funding invoices were stripped but prepay still has funds: `\"PrePay {id} Unpaid Invoices Deleted\"`. - When the prepay row was deleted: `\"PrePay {id} deleted.\"`.  **Side effects:** - Deletes any unpaid `invoices` rows matching `invoices_description = \"Prepay ID {id} Invoice\"` and `invoices_paid=0`. - Deletes the `prepays` row when remaining balance ≤ $0.01.  **Auth:** Session/API key.  **Errors:** - `Invalid Prepay` — `id` not found. - `That prepay still hands funds available on it` — funds remain AND no unpaid invoices to clean up. - `There was an error deleting the prepay, please contact support` — delete affected 0 rows. - `401` — unauthenticated.  **Related calls:** - **List first:** `getBillingPrePays`. - **Re-add later:** `addBillingPrepay`. - **Cancel a specific funding invoice:** `deleteBillingInvoice` (routes prepay invoices here automatically). 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BillingApi`** | API context | 
**`id`** | **`Int64`** | The prepay balance ID to delete. |

### Return type

[**`SuccessTextResponse`**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_affiliate_banners**
> `get_affiliate_banners`(_api::`BillingApi`; _mediaType=nothing) -> `Vector{AffiliateBannerRow}`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_affiliate_banners`(_api::`BillingApi`, response_stream::`Channel`; _mediaType=nothing) -> `Channel`{ `Vector{AffiliateBannerRow}` }, `OpenAPI.Clients.ApiResponse`

List affiliate banner image assets with filename and dimensions

Returns the catalog of pre-built banner images affiliates can embed on partner sites — same catalog for every account (not per-affiliate). Use to render a creative-asset picker in the affiliate dashboard. Each row carries the image filename and dimensions so the client can build correctly-sized `<img>` tags. Read-only. Sibling ops: `getAffiliateRichReport`, `getAffiliateSalesGraph`, `getAffiliateTrafficGraph`, `getAffiliateWebTraffic`, `getAffiliateSignups`, `updateAffiliateDockSetup`.  **Path/Query/Body:** None.  **Returns:** Array of `AffiliateBannerRow`: - `image` (string) — filename (e.g. `12946798.gif`); served from the affiliate asset bucket. - `width` (string) — pixels. - `height` (string) — pixels.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**`Vector{AffiliateBannerRow}`**](AffiliateBannerRow.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_affiliate_download**
> `get_affiliate_download`(_api::`BillingApi`; `st`=nothing, `ex`=nothing, `year`=nothing, _mediaType=nothing) -> `Nothing`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_affiliate_download`(_api::`BillingApi`, response_stream::`Channel`; `st`=nothing, `ex`=nothing, `year`=nothing, _mediaType=nothing) -> `Channel`{ `Nothing` }, `OpenAPI.Clients.ApiResponse`

Export the affiliate signup report as CSV, XLS, XLSX, or PDF file download

Exports the affiliate signup report as a downloadable file in the requested format. Use for accounting, tax filings, or sharing reports outside the dashboard. **Response is a binary stream, not JSON** — the handler emits the file body with matching `Content-Type` + `Content-Disposition: attachment` headers and `exit()`s the request immediately. Consumers must read the raw response body. Sibling ops: `getAffiliateRichReport`, `getAffiliateSignups`, `getAffiliateSalesGraph`.  **Query params:** - `ex` (string, optional, enum `csv`/`xls`/`xlsx`/`pdf`, default `csv`) — export format. - `st` (string, optional, default `default`) — status filter (same as `getAffiliateSignups`). - `year` (integer, optional, default current year) — report scope.  **Returns:** File download with format-appropriate Content-Type: - `csv` → `text/csv`, filename `Interserver_Affiliates.csv`. - `xls` / `xlsx` → `application/vnd.openxmlformats-officedocument.spreadsheetml.sheet`, filename `Interserver_Affiliates.<ext>`. - `pdf` → `application/pdf`, filename `Interserver_Affiliates.pdf`.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BillingApi`** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`st`** | **`String`** | Filter by status. | [default to nothing]
 **`ex`** | **`String`** | Export format: csv, xls, xlsx, or pdf. Defaults to csv. | [default to nothing]
 **`year`** | **`Int64`** | Year to filter the report. Defaults to the current year. | [default to nothing]

### Return type

`Nothing`

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_affiliate_rich_report**
> `get_affiliate_rich_report`(_api::`BillingApi`; _mediaType=nothing) -> `TextResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_affiliate_rich_report`(_api::`BillingApi`, response_stream::`Channel`; _mediaType=nothing) -> `Channel`{ `TextResponse` }, `OpenAPI.Clients.ApiResponse`

Read a combined affiliate performance summary (HTML payload)

Returns a server-rendered HTML/text summary report combining commission totals, conversion rates, and traffic in one round-trip — useful for embedding in a dashboard panel. The payload is **not structured JSON** — for chart-friendly data use `getAffiliateSalesGraph` and `getAffiliateTrafficGraph` instead. Backed by `affiliate_summary_report()`. Sibling ops: `getAffiliateSalesGraph`, `getAffiliateTrafficGraph`, `getAffiliateSignups`, `getAffiliateDownload`, `getAffiliateWebTraffic`.  **Path/Query/Body:** None.  **Returns:** `{text: \"<html-or-plain-text-report>\"}`.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Structured time series:** `getAffiliateSalesGraph`, `getAffiliateTrafficGraph`. - **Per-signup detail:** `getAffiliateSignups`. - **CSV/XLSX export:** `getAffiliateDownload`. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**`TextResponse`**](TextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_affiliate_sales_graph**
> `get_affiliate_sales_graph`(_api::`BillingApi`; `days`=nothing, _mediaType=nothing) -> `StatusMonthlyBreakdown`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_affiliate_sales_graph`(_api::`BillingApi`, response_stream::`Channel`; `days`=nothing, _mediaType=nothing) -> `Channel`{ `StatusMonthlyBreakdown` }, `OpenAPI.Clients.ApiResponse`

Read aggregated affiliate sales time-series (monthly buckets) for chart rendering

Returns aggregated sales time-series data — monthly buckets with sale counts/totals — for the requested look-back window. Use to render a sales trend chart in the affiliate dashboard. Bucket granularity is fixed at monthly by `sales_graph_lte_data`; increasing `days` extends the window, it does not change bucket size. Sibling ops: `getAffiliateTrafficGraph` (clicks), `getAffiliateRichReport` (combined summary), `getAffiliateSignups`, `getAffiliateDownload`.  **Query params:** - `days` (integer, optional, default `365`) — look-back window in days.  **Returns:** `StatusMonthlyBreakdown` — buckets keyed by month with aggregated sale counts and amounts.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BillingApi`** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`days`** | **`Int64`** | Number of days of sales history to include in the graph data. Determines the time window for the returned data points. | [default to nothing]

### Return type

[**`StatusMonthlyBreakdown`**](StatusMonthlyBreakdown.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_affiliate_signups**
> `get_affiliate_signups`(_api::`BillingApi`; `st`=nothing, _mediaType=nothing) -> `GetAffiliateSignups200Response`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_affiliate_signups`(_api::`BillingApi`, response_stream::`Channel`; `st`=nothing, _mediaType=nothing) -> `Channel`{ `GetAffiliateSignups200Response` }, `OpenAPI.Clients.ApiResponse`

Read affiliate signup stats and per-customer conversion data

Returns referred-customer signup statistics with optional status filtering — counts, conversion data, and per-customer detail produced by `affiliates_clientside()`. The inner `data` shape varies by status filter; pass `default` for the full dataset. Sibling ops: `getAffiliateRichReport`, `getAffiliateSalesGraph`, `getAffiliateTrafficGraph`, `getAffiliateDownload`.  **Query params:** - `st` (string, optional, default `default`) — status filter. `default` returns all; other values narrow the results to that status.  **Returns:** `{data: <object>}` — signup counts, conversions, per-customer detail (shape depends on `st`).  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BillingApi`** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`st`** | **`String`** | Filter signups by status. Use &#x60;default&#x60; to show all or pass a specific status value to narrow results. | [default to nothing]

### Return type

[**`GetAffiliateSignups200Response`**](GetAffiliateSignups200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_affiliate_traffic_graph**
> `get_affiliate_traffic_graph`(_api::`BillingApi`; `days`=nothing, _mediaType=nothing) -> `MonthlyCounts`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_affiliate_traffic_graph`(_api::`BillingApi`, response_stream::`Channel`; `days`=nothing, _mediaType=nothing) -> `Channel`{ `MonthlyCounts` }, `OpenAPI.Clients.ApiResponse`

Read aggregated affiliate referral click/visit time-series for chart rendering

Returns aggregated click/visit time-series data from the `affiliate_traffic` table — monthly buckets with visit counts — for the requested look-back window. Pair with `getAffiliateSalesGraph` to compute click-to-sale conversion ratios client-side. Sibling ops: `getAffiliateSalesGraph` (sales), `getAffiliateWebTraffic` (raw per-visit log entries), `getAffiliateRichReport`.  **Query params:** - `days` (integer, optional, default `180`) — look-back window in days.  **Returns:** `MonthlyCounts` — buckets keyed by month with aggregated visit counts.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BillingApi`** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`days`** | **`Int64`** | Number of days of traffic history to include in the graph data. Determines the time window for the returned data points. | [default to nothing]

### Return type

[**`MonthlyCounts`**](MonthlyCounts.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_affiliate_web_traffic**
> `get_affiliate_web_traffic`(_api::`BillingApi`; _mediaType=nothing) -> `Vector{AffiliateTrafficRow}`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_affiliate_web_traffic`(_api::`BillingApi`, response_stream::`Channel`; _mediaType=nothing) -> `Channel`{ `Vector{AffiliateTrafficRow}` }, `OpenAPI.Clients.ApiResponse`

List the 20 most recent affiliate referral visits with IP, referrer, timestamp

Returns the 20 most recent raw referral visits from the `affiliate_traffic` table — visitor IP, full referral URL, and timestamp per row. Use to audit traffic sources, identify top referrers, or investigate suspicious click patterns. Hard-coded limit 20 (no pagination); for longer-term analysis use `getAffiliateTrafficGraph` or export via `getAffiliateDownload`. Sibling ops: `getAffiliateTrafficGraph`, `getAffiliateSignups`, `getAffiliateRichReport`, `getAffiliateDownload`.  **Path/Query/Body:** None.  **Returns:** Array of `AffiliateTrafficRow`: - `traffic_id` (string) — row id (most-recent-first). - `traffic_ip` (string) — visitor IP (IPv4 or IPv6). - `traffic_url` (string) — referral landing URL. - `traffic_affiliate` (string) — affiliate (= session `account_id`). - `traffic_referrer` (string) — HTTP Referer (may be empty). - `traffic_timestamp` (string) — `YYYY-MM-DD HH:MM:SS` in account timezone.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**`Vector{AffiliateTrafficRow}`**](AffiliateTrafficRow.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_billing_cart**
> `get_billing_cart`(_api::`BillingApi`; _mediaType=nothing) -> `Any`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_billing_cart`(_api::`BillingApi`, response_stream::`Channel`; _mediaType=nothing) -> `Channel`{ `Any` }, `OpenAPI.Clients.ApiResponse`

Read the current shopping cart contents, totals, and available payment methods

Returns the customer's checkout state — every pending/unpaid invoice on the account aggregated as a cart, plus available payment methods, currency totals, and checkout metadata. Use to render a checkout page or, in agent flows, as a pre-payment confirmation step before calling `initiatePayment`. Backed by the `cart` helper module; `modules_json` and `csrf_token` are stripped from the response. Read-only. Sibling ops: `getBillingInvoices` (raw list), `getBillingInvoice` (one invoice in detail), `initiatePayment` (pay), `getBillingPrePays` (check prepay balance first).  **Path/Query/Body:** None.  **Returns:** A cart object with: - Line items aggregated from unpaid `invoices` rows for the session account. - Currency-normalized subtotal / total. - Available payment methods (filtered by feature flags, account country, and which gateways are enabled): `cc`, `paypal`, `btcpay`, `coinbase`, `payu`, `ccavenue`, `cashfree`, `payssion`, `prepay`. - Per-invoice description, module, service-id, amount.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **List unpaid invoices directly:** `getBillingInvoices`. - **Drill into one invoice:** `getBillingInvoice`. - **Pay:** `initiatePayment` (use the cart's invoice ids or the `SERVICEvpsN` / `INVvpsN` tag forms). - **Top up prepay first:** `getBillingPrePays`, `addBillingPrepay`. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

**`Any`**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_billing_credit_card_verify**
> `get_billing_credit_card_verify`(_api::`BillingApi`, `id`::`Int64`; _mediaType=nothing) -> `SuccessTextResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_billing_credit_card_verify`(_api::`BillingApi`, response_stream::`Channel`, `id`::`Int64`; _mediaType=nothing) -> `Channel`{ `SuccessTextResponse` }, `OpenAPI.Clients.ApiResponse`

Probe whether a stored card still needs micro-charge verification

Status probe for the credit-card verification flow. Read-only — current implementation returns a placeholder string indicating verification is pending; the actual two-step verification happens via `patchBillingCreditCardVerify` (initiate dual micro-charge with CVV) followed by `postBillingCreditCardVerify` (submit the charged amounts). Use to drive the UI's \"verify card\" form rendering. Sibling ops: `patchBillingCreditCardVerify`, `postBillingCreditCardVerify`, `addBillingCreditCard`, `updateBillingPaymentMethod`.  **Path param:** - `id` (integer, required) — credit card index from `parse_ccs`.  **Body:** None.  **Returns:** `Verification requirements` (placeholder text — reserved for future structured response with `requires_cvv` / `requires_amounts` flags).  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Step 1 of verify flow:** `patchBillingCreditCardVerify`. - **Step 2 of verify flow:** `postBillingCreditCardVerify`. - **Add a new card:** `addBillingCreditCard`. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BillingApi`** | API context | 
**`id`** | **`Int64`** | The credit card ID to verify. Use the ID returned from &#x60;POST /billing/creditcards&#x60;. |

### Return type

[**`SuccessTextResponse`**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_billing_invoice**
> `get_billing_invoice`(_api::`BillingApi`, `id`::`Int64`; _mediaType=nothing) -> `BillingInvoiceDetail`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_billing_invoice`(_api::`BillingApi`, response_stream::`Channel`, `id`::`Int64`; _mediaType=nothing) -> `Channel`{ `BillingInvoiceDetail` }, `OpenAPI.Clients.ApiResponse`

Read full invoice detail — line items, totals, paid status, customer info

Returns the full rendered invoice payload for a single invoice — backed by `get_invoice_data()`, the same helper that builds the email-style invoice document. Use to confirm the exact balance due and the invoice description before calling `initiatePayment`, or to render an invoice viewer page. Read-only. The response is an email-style/HTML payload (not a structured line-item array) — for a structured cart-style summary use `getBillingCart`. The response includes a Link to `deleteBillingInvoice` for unpaid pending-service invoices. Sibling ops: `getBillingInvoices`, `deleteBillingInvoice`, `initiatePayment`, `getBillingCart`, per-service `getVpsInvoices` / `getMailInvoices` / etc.  **Path param:** - `id` (integer, required) — invoice id from `getBillingInvoices.rows[].id`, from an order endpoint's response (e.g. `addVps.iid`), or from a per-service invoice list.  **Body:** None.  **Returns:** `BillingInvoiceDetail` — full rendered invoice payload (email body) with line items, totals, customer/billing info, and paid status. The exact shape mirrors what gets sent to the customer.  **Auth:** Session/API key. Ownership enforced through the invoice's `invoices_custid`.  **Errors:** - `Invalid Invoice` — `id` not found or owned by another account. - `401` — unauthenticated.  **Related calls:** - **Pay it:** `initiatePayment` (`/billing/pay/{method}/{id}`). - **Delete if pending/unpaid:** `deleteBillingInvoice`. - **List all:** `getBillingInvoices`. - **Cart-style summary across all unpaid:** `getBillingCart`. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BillingApi`** | API context | 
**`id`** | **`Int64`** | The invoice ID. Use IDs from &#x60;GET /billing/invoices&#x60; or from order responses. |

### Return type

[**`BillingInvoiceDetail`**](BillingInvoiceDetail.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_billing_invoices**
> `get_billing_invoices`(_api::`BillingApi`; _mediaType=nothing) -> `BillingInvoiceList`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_billing_invoices`(_api::`BillingApi`, response_stream::`Channel`; _mediaType=nothing) -> `Channel`{ `BillingInvoiceList` }, `OpenAPI.Clients.ApiResponse`

List every invoice on the account with summary totals and paid/unpaid status

Returns the customer's complete invoice ledger — every charge, paid or unpaid, across every service module. Use to render a billing-history page, find an unpaid invoice id to pass to `initiatePayment`, or audit recent activity. Server-side strips the first synthetic header row from `get_view_invoices()` and reindexes the array. Read-only. The response includes a Link to `getBillingInvoice` for drilling into any row. Sibling ops: `getBillingInvoice`, `deleteBillingInvoice`, `initiatePayment`, `getBillingCart`, `getBillingPrePays`.  **Path/Query/Body:** None.  **Returns:** `BillingInvoiceList` — object containing: - `rows` (array) — per-invoice summaries: `id`, `amount`, `paid`, `description`, `date`, `due_date`, `module`, `service` (service-id within the module), `currency`. - Aggregate totals across the array (totals object: `total`, `paid_total`, `unpaid_total`).  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Drill into one invoice:** `getBillingInvoice`. - **Pay an unpaid invoice:** `initiatePayment`. - **Cancel an unpaid pending-service invoice:** `deleteBillingInvoice` (only works on pending services / unpaid prepays). - **Per-service invoices instead:** `getVpsInvoices`, `getDomainInvoices`, `getMailInvoices`, `getBackupInvoices`, etc. 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**`BillingInvoiceList`**](BillingInvoiceList.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_billing_pre_pays**
> `get_billing_pre_pays`(_api::`BillingApi`; _mediaType=nothing) -> `Any`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_billing_pre_pays`(_api::`BillingApi`, response_stream::`Channel`; _mediaType=nothing) -> `Channel`{ `Any` }, `OpenAPI.Clients.ApiResponse`

List prepay deposits on the account — remaining balance and auto-use flags

Returns every prepay deposit on the account — funded or pending — with remaining balances, modules they're scoped to, and the `automatic_use` flag controlling whether the balance auto-applies to future invoices. Use to gate `method=prepay` at checkout (a prepay must be funded to count toward payment) or to render a prepays management page. Read-only. `csrf_token` is stripped from the helper output. Sibling ops: `addBillingPrepay` (top up), `deleteBillingPrepay` (remove), `initiatePayment` (`method=prepay`), `getBillingCart`.  **Path/Query/Body:** None.  **Returns:** Object with per-prepay rows: - `prepay_id` (integer). - `prepay_module` (string) — service module the prepay is scoped to (or `default` for any). - `prepay_amount` (decimal) — original deposit amount. - `prepay_remaining` (decimal) — funds left. - `prepay_automatic_use` (bool) — auto-apply to invoices. - `prepay_paid` (bool) — whether the funding invoice has been paid (unpaid prepays are listed but unusable).  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Top up:** `addBillingPrepay` (returns an invoice id you then pay via `initiatePayment`). - **Pay with prepay:** `initiatePayment` with `method=prepay`. - **Remove an unfunded prepay:** `deleteBillingPrepay`. - **Cart view:** `getBillingCart` (includes prepay summary). 

### Required Parameters
This endpoint does not need any parameter.

### Return type

**`Any`**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **initiate_payment**
> `initiate_payment`(_api::`BillingApi`, `method`::`String`, `invoices`::`String`; _mediaType=nothing) -> `InitiatePayment200Response`, `OpenAPI.Clients.ApiResponse` <br/>
> `initiate_payment`(_api::`BillingApi`, response_stream::`Channel`, `method`::`String`, `invoices`::`String`; _mediaType=nothing) -> `Channel`{ `InitiatePayment200Response` }, `OpenAPI.Clients.ApiResponse`

Pay invoices through the chosen gateway — returns the next-step action

Universal payment trigger — the final step in every order/checkout flow. Use after any order endpoint (`addVps`, `addQs`, `addBackup`, `addMail`, `addBillingPrepay`) returns an invoice id, or after `getBillingInvoices` surfaces unpaid invoices. Resolves the chosen gateway class under `include/Api/Billing/Pay/`, populates it with the invoices, and returns one of three response shapes the client must act on: `redirect` (send the user to the gateway URL), `submit` (POST a form with the supplied items), or `single` (processed synchronously). Sibling ops: `getBillingCart`, `getBillingInvoices`, `getBillingInvoice`, `addBillingPrepay`, `updateBillingPaymentMethod`, `addBillingCreditCard`.  **Path params:** - `method` (string enum, required) — one of `cc`, `paypal`, `prepay`, `payssion`, `payu`, `ccavenue`, `cashfree`, `coinbase`, `btcpay`. Rejected with 400 otherwise. - `invoices` (string, required) — comma-separated identifiers. Each identifier may be:   - a bare integer invoice id (e.g. `25296600`);   - `INV<module><iid>` (e.g. `INVvps25296600`) — strict invoice lookup;   - `SERVICE<module><id>` (e.g. `SERVICEvps12345`) — picks the most recent unpaid invoice for that service;   - `RINV<module><rid>` (e.g. `RINVvps78901`) — picks the most recent unpaid invoice for that repeat-invoice row;   - `PREPAYID<pid>INV<iid>` — explicit prepay-funding invoice.  **Query params:** - `redirectUrl` (string, optional) — override the gateway return-URL. Defaults to `https://my.interserver.net/pay/`.  **Returns** (one of three shapes — branch on `type`): - **type=`redirect`:** `{type: \"redirect\", redirect: \"<gateway-url>\", text: \"...\"}` — send the user to `redirect`. - **type=`submit`:** `{type: \"submit\", action: \"<url>\", method: \"POST\", items: {field: value, ...}}` — render a form with those fields, POST to `action`. - **type=`single`:** `{type: \"single\", text: \"...\"}` — payment already processed; surface `text` to the customer.  **Side effects:** - Creates a `payment_requests` row tracking the attempt (via `addPaymentRequest`). - On `single`-mode success (`cc`, `prepay`): marks the underlying `invoices.invoices_paid=1`, triggers `queue_process_payment($iid)` → service activation. - On `redirect`/`submit`-mode: nothing is paid yet; the gateway IPN/callback handler in `confirm()` (in each `Pay/*.php` subclass) runs `queue_process_payment` after the gateway notifies us of success.  **Auth:** Session/API key. Ownership of every referenced invoice is enforced through the `setInvoices()` lookup (filters by session `account_id`).  **Errors:** - `400 Invalid payment method` — unrecognized `method`. - `402` / gateway-specific text — card declined, balance insufficient, etc. Returned as `{error: \"<text>\"}`. - `422 Invalid Invoice Tag` — identifier format not recognized. - `401` — unauthenticated. - Method-specific:   - `cc`: card not verified (use `addBillingCreditCard` → `patchBillingCreditCardVerify` → `postBillingCreditCardVerify` first; verify via `updateBillingPaymentMethod`).   - `prepay`: insufficient prepay balance (use `addBillingPrepay` to top up first).  **Related calls:** - **Get an invoice id to pass:** `addVps` / `addQs` / `addBackup` / `addMail` / `addBillingPrepay` / `getBillingInvoices`. - **Confirm invoice detail first:** `getBillingInvoice`. - **Set up payment methods:** `addBillingCreditCard`, `patchBillingCreditCardVerify`, `postBillingCreditCardVerify`, `updateBillingPaymentMethod`. - **After payment:** poll the originating service endpoint (e.g. `getVpsInfo` for VPS) until status flips to `active`.  **Example happy-path (VPS):** ```text # 1) Order created — POST /vps/order returned {serviceid: 12345, real_iids: [\"25296600\"]} # 2) Pay with stored credit card: GET /apiv2/billing/pay/cc/25296600 # 3) Response: {\"type\": \"single\", \"text\": \"Payment processed.\"} # 4) Poll service: GET /apiv2/vps/12345  -> {\"vps_status\": \"active\", ...} ``` **Example PayPal flow:** ```text GET /apiv2/billing/pay/paypal/25296600 {\"type\": \"redirect\", \"redirect\": \"https://www.paypal.com/...\", \"text\": \"...\"} # Client redirects user; PayPal IPN later marks invoice paid and activates service. ``` 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BillingApi`** | API context | 
**`method`** | **`String`** | The payment method to use. Valid values: &#x60;cc&#x60; (credit card), &#x60;paypal&#x60;, &#x60;prepay&#x60;, &#x60;payssion&#x60;, &#x60;payu&#x60;, &#x60;ccavenue&#x60;, &#x60;cashfree&#x60;, &#x60;coinbase&#x60;, &#x60;btcpay&#x60;. |
**`invoices`** | **`String`** | A comma-separated list of invoice IDs or invoice Tags to pay. These IDs are returned by order endpoints (e.g. &#x60;/backups/order&#x60;, &#x60;/vps/order&#x60;) and by &#x60;/billing/invoices&#x60;. Invoice tags accepted are SERVICE&lt;module&gt;&lt;id&gt;, RINV&lt;module&gt;&lt;repeat invoice id&gt;, INV&lt;module&gt;&lt;invoice id&gt;, PREPAY&lt;prepay id&gt;&lt;invoice id&gt;, and &lt;invoice id&gt;. |

### Return type

[**`InitiatePayment200Response`**](InitiatePayment200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **patch_billing_credit_card_verify**
> `patch_billing_credit_card_verify`(_api::`BillingApi`, `id`::`Int64`, `patch_billing_credit_card_verify_request`::`PatchBillingCreditCardVerifyRequest`; _mediaType=nothing) -> `SuccessTextResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `patch_billing_credit_card_verify`(_api::`BillingApi`, response_stream::`Channel`, `id`::`Int64`, `patch_billing_credit_card_verify_request`::`PatchBillingCreditCardVerifyRequest`; _mediaType=nothing) -> `Channel`{ `SuccessTextResponse` }, `OpenAPI.Clients.ApiResponse`

Place two micro-charges on the card to start CVV verification (step 1 of 2)

Step 1 of the two-step card-verification flow. After `addBillingCreditCard` returns `action='verify'`, call this with the card's CVV to place two small charges (cents-scale) on the card. The customer must then look up the exact amounts in their bank statement and submit them via `postBillingCreditCardVerify` to finalize verification. **After 3 failed CVV attempts** (`cc_fails_<cc>` counter on the account) the card is locked from further verification attempts — contact support. Sibling ops: `getBillingCreditCardVerify`, `postBillingCreditCardVerify`, `addBillingCreditCard`, `updateBillingPaymentMethod`.  **Path param:** - `id` (integer, required) — credit card index from `parse_ccs`.  **Body fields:** - `cc_ccv2` (string, required) — the 3- or 4-digit CVV/CVC code from the back (or front, for Amex) of the card.  **Returns:** `Your card is charged. Please enter the amounts charged up!` — surface to the UI to prompt for the two amounts.  **Side effects:** - Places two test charges via `verify_cc_charge()` (gateway-side). - On failure: increments `cc_fails_<cc>` on the account.  **Auth:** Session/API key. Card ownership enforced.  **Errors:** - `Invalid Credit Card Passed` — `id` not in `parse_ccs`. - `Reached the max number of tries to authenticate this card` — `cc_fails_<cc> > 3`. - `Missing or blank CVV` — `cc_ccv2` absent or empty. - Gateway error text — charge attempt failed. - `401` — unauthenticated.  **Related calls:** - **Prerequisite:** `addBillingCreditCard` (must have returned `action='verify'`). - **Next (step 2):** `postBillingCreditCardVerify` (submit `cc_amount1` + `cc_amount2`). - **After verification:** `updateBillingPaymentMethod` to make it the default. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BillingApi`** | API context | 
**`id`** | **`Int64`** | The credit card ID to verify. Use the ID returned from &#x60;POST /billing/creditcards&#x60;. |
**`patch_billing_credit_card_verify_request`** | [**`PatchBillingCreditCardVerifyRequest`**](PatchBillingCreditCardVerifyRequest.md) |  |

### Return type

[**`SuccessTextResponse`**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **post_billing_credit_card_verify**
> `post_billing_credit_card_verify`(_api::`BillingApi`, `id`::`Int64`, `billing_verify_cc_request`::`BillingVerifyCcRequest`; _mediaType=nothing) -> `SuccessTextResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `post_billing_credit_card_verify`(_api::`BillingApi`, response_stream::`Channel`, `id`::`Int64`, `billing_verify_cc_request`::`BillingVerifyCcRequest`; _mediaType=nothing) -> `Channel`{ `SuccessTextResponse` }, `OpenAPI.Clients.ApiResponse`

Submit two micro-charge amounts to finalize card verification (step 2 of 2)

Step 2 of the two-step card-verification flow. Submits the two exact micro-charge amounts the customer saw on their statement (placed by `patchBillingCreditCardVerify`) so the gateway can confirm the customer controls the card. On success, the card is marked verified and can be selected via `updateBillingPaymentMethod` (`payment_method=cc<idx>`) or used directly with `initiatePayment` (`method=cc`). After 3 failed attempts (`cc_fails_<cc> > 3`) the card is locked. Sibling ops: `getBillingCreditCardVerify`, `patchBillingCreditCardVerify`, `addBillingCreditCard`, `updateBillingPaymentMethod`.  **Path param:** - `id` (integer, required) — credit card index from `parse_ccs`.  **Body fields (schema `BillingVerifyCcRequest`):** - `cc_amount1` (number, required) — first micro-charge amount (in dollars, decimal). - `cc_amount2` (number, required) — second micro-charge amount.  **Returns:** Verification success text (gateway-returned).  **Side effects:** - Marks the card as verified when amounts match. - On failure: increments `cc_fails_<cc>` on the account.  **Auth:** Session/API key. Card ownership enforced.  **Errors:** - `Invalid Credit Card Passed` — `id` not in `parse_ccs`. - `Reached the max number of tries to authenticate this card` — `cc_fails_<cc> > 3`. - `Missing charge amounts` — `cc_amount1` or `cc_amount2` absent. - Verification failure text (status `failed` / `error` / `warning`) — amounts don't match. - `401` — unauthenticated.  **Related calls:** - **Prerequisite (step 1):** `patchBillingCreditCardVerify`. - **Next:** `updateBillingPaymentMethod` to make the verified card default, or `initiatePayment` (`method=cc`) to pay immediately. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BillingApi`** | API context | 
**`id`** | **`Int64`** | The credit card ID to verify. Use the ID returned from &#x60;POST /billing/creditcards&#x60;. |
**`billing_verify_cc_request`** | [**`BillingVerifyCcRequest`**](BillingVerifyCcRequest.md) |  |

### Return type

[**`SuccessTextResponse`**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_affiliate_dock_setup**
> `update_affiliate_dock_setup`(_api::`BillingApi`; `affiliate_dock_title`=nothing, `affiliate_dock_description`=nothing, `referrer_coupon`=nothing, _mediaType=nothing) -> `TextResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `update_affiliate_dock_setup`(_api::`BillingApi`, response_stream::`Channel`; `affiliate_dock_title`=nothing, `affiliate_dock_description`=nothing, `referrer_coupon`=nothing, _mediaType=nothing) -> `Channel`{ `TextResponse` }, `OpenAPI.Clients.ApiResponse`

Configure the affiliate landing dock title, description, and referrer coupon

Customizes the branded landing-dock page shown to visitors arriving via the affiliate's referral link, and reserves a unique referrer coupon code that's automatically created across all affiliate-eligible modules. Title/description allow a limited HTML allowlist (`<b>`, `<br>`, `<strong>`, `<hr>`); everything else is entity-escaped. Coupon changes propagate to **all** affiliate modules atomically. Sibling ops: `updateAffiliatePaymentSetup`, `getAffiliateSignups`.  **Body fields (multipart or JSON, schema `AffiliateDockSetup`):** - `affiliate_dock_title` (string, optional) — landing-page title. HTML allowlist: `<b>`, `<br>`, `<strong>`, `<hr>`. - `affiliate_dock_description` (string, optional) — landing-page body. Same allowlist. - `referrer_coupon` (string, optional) — coupon code reservation. Requirements:   - ≥ 6 chars.   - `^[a-zA-Z0-9]+$` (alphanumeric only).   - Must NOT contain `facebook`, `test`, or `interserver` (substring check, case-insensitive).   - Must NOT exactly match a reserved word.   - Must NOT already exist as a coupon in any affiliate module (`webhosting`, `vps`, `quickservers`, `servers`, `backups`).  **Returns:** `{text: \"<status message>\"}`.  **Side effects:** - First time setting `referrer_coupon`: inserts a `coupons` row in each affiliate module (`type=3`, `amount=0.01`, `onetime=1`, `customer=-1`, `usable=1`, `applies=-1`). - Changing `referrer_coupon`: renames the coupon across all affiliate modules in one transaction. - Updates the account's `affiliate_dock_title`, `affiliate_dock_description`, `referrer_coupon` fields.  **Auth:** Session/API key.  **Errors:** - `422 The name must be at least 6 characters long`. - `422 Invalid Characters, use only standard english letters and numbers`. - `422 That is a reserved word that cannot be used here`. - `422 <position> is a reserved word that cannot be used here` (substring match against `facebook`/`test`/`interserver`). - `409 That name is already taken` — coupon exists in another account's module. - `401` — unauthenticated. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BillingApi`** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`affiliate_dock_title`** | **`String`** |  | [default to nothing]
 **`affiliate_dock_description`** | **`String`** |  | [default to nothing]
 **`referrer_coupon`** | **`String`** |  | [default to nothing]

### Return type

[**`TextResponse`**](TextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_affiliate_payment_setup**
> `update_affiliate_payment_setup`(_api::`BillingApi`; `affiliate_paypal`=nothing, `affiliate_payment_method`=nothing, _mediaType=nothing) -> `TextResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `update_affiliate_payment_setup`(_api::`BillingApi`, response_stream::`Channel`; `affiliate_paypal`=nothing, `affiliate_payment_method`=nothing, _mediaType=nothing) -> `Channel`{ `TextResponse` }, `OpenAPI.Clients.ApiResponse`

Configure how affiliate commissions get paid out (PayPal or internal prepay)

Sets the disbursement preferences for affiliate commission payouts. Choose between PayPal payout (provide an email — validated) or internal prepay credit (auto-applied to future invoices via `method=prepay`). Selecting `not set` suspends payouts. Sibling ops: `updateAffiliateDockSetup`, `getAffiliateRichReport`, `getAffiliateDownload`.  **Body fields (multipart or JSON, schema `AffiliatePaymentSetup`):** - `affiliate_payment_method` (string, optional) — one of `paypal` / `prepay` / `not set`. - `affiliate_paypal` (string, optional, required when method=`paypal`) — email validated by `valid_email()`.  **Returns:** `{text: \"Ok\"}`.  **Side effects:** - Updates the account's `affiliate_payment_method` and/or `affiliate_paypal` fields.  **Auth:** Session/API key.  **Errors:** - `422 Invalid Email` — `affiliate_paypal` fails `valid_email()`. - `422 Invalid Payment Method` — value not in `{paypal, prepay, not set}`. - `401` — unauthenticated.  **Related calls:** - **Read current commissions:** `getAffiliateRichReport`, `getAffiliateSalesGraph`. - **Export commission report:** `getAffiliateDownload`. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BillingApi`** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`affiliate_paypal`** | **`String`** |  | [default to nothing]
 **`affiliate_payment_method`** | **`String`** |  | [default to nothing]

### Return type

[**`TextResponse`**](TextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_billing_credit_card**
> `update_billing_credit_card`(_api::`BillingApi`, `id`::`Int64`; _mediaType=nothing) -> `SuccessTextResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `update_billing_credit_card`(_api::`BillingApi`, response_stream::`Channel`, `id`::`Int64`; _mediaType=nothing) -> `Channel`{ `SuccessTextResponse` }, `OpenAPI.Clients.ApiResponse`

Refresh stored card expiration and re-trigger MaxMind fraud scoring

Updates the expiration date on a stored credit card and re-encrypts the card record. If the updated card matches the account's primary `cc`, the account-level `cc_exp` is also refreshed. If no MaxMind risk score exists yet for the card, `update_maxmind()` is called to compute one. Use to fix an upcoming expiration before recurring charges fail. Sibling ops: `addBillingCreditCard`, `deleteBillingCreditCard`, `getBillingCreditCardVerify`, `postBillingCreditCardVerify`, `updateBillingPaymentMethod`.  **Path param:** - `id` (integer, required) — credit card index (the key in the account's `ccs` array, returned by `parse_ccs` and surfaced as `cc<idx>` in `updateBillingPaymentMethod`).  **Body fields:** - `cc_exp` (string, required) — new expiration in `MM/YYYY` format.  **Returns:** `Card updated successfully.`.  **Side effects:** - Updates the `ccs` array (re-serialized via `myadmin_stringify`) on the account. - When the card == primary `cc`, the account-level `cc_exp` is also written. - Triggers `update_maxmind($custid, false, $cc_idx)` if no risk score exists.  **Auth:** Session/API key. Card ownership enforced via `parse_ccs`.  **Errors:** - `Invalid Credit Card Passed` — `id` not in `parse_ccs`. - `Please enter valid card expiry date` — `cc_exp` body field missing. - `Invalid expiration date. It must be in the form of MM/YYYY` — wrong format. - `401` — unauthenticated.  **Related calls:** - **Verify a freshly added card:** `patchBillingCreditCardVerify` → `postBillingCreditCardVerify`. - **Remove the card:** `deleteBillingCreditCard`. - **Make it default:** `updateBillingPaymentMethod` with `payment_method=cc<idx>`. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BillingApi`** | API context | 
**`id`** | **`Int64`** | The credit card ID. Use IDs from &#x60;GET /billing/creditcards&#x60; or the response from &#x60;POST /billing/creditcards&#x60;. |

### Return type

[**`SuccessTextResponse`**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_billing_payment_method**
> `update_billing_payment_method`(_api::`BillingApi`, `billing_payment_method_request`::`BillingPaymentMethodRequest`; _mediaType=nothing) -> `SuccessTextResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `update_billing_payment_method`(_api::`BillingApi`, response_stream::`Channel`, `billing_payment_method_request`::`BillingPaymentMethodRequest`; _mediaType=nothing) -> `Channel`{ `SuccessTextResponse` }, `OpenAPI.Clients.ApiResponse`

Set the account's default payment method for recurring/auto charges

Sets the account's preferred payment method for recurring/automatic charges and (when applicable) promotes a specific stored credit card to be the primary `cc` on the account. Use after `addBillingCreditCard` + verification to select the new card, or when switching between PayPal and credit-card billing. First-time payment-method assignment triggers `update_maxmind()` and `update_fraudrecord()` risk-score generation. Sibling ops: `addBillingCreditCard`, `postBillingCreditCardVerify`, `deleteBillingCreditCard`, `initiatePayment`.  **Body fields (JSON or multipart, schema `BillingPaymentMethodRequest`):** - `payment_method` (string, required) — one of:   - `cc` — use the existing primary credit card.   - `cc<idx>` (e.g. `cc2`) — promote the card at index `idx` (from `parse_ccs`) to primary. Must be verified.   - `paypal` — switch to PayPal. - `cc_auto` (string `0`/`1`, optional) — auto-charge flag. Implicitly set to `1` when selecting `cc`/`cc<idx>`, `0` for `paypal`.  **Returns:** `{text: \"Payment Method Updated\"}`.  **Side effects:** - When `payment_method=cc<idx>`: copies the indexed card's encrypted `cc` and `cc_exp` onto the account's primary fields. - First time a payment method is set: runs MaxMind risk score, then FraudRecord score.  **Auth:** Session/API key.  **Errors:** - `Invalid Credit Card Specified` — `cc<idx>` is malformed or `idx` not found in `parse_ccs`. - `This CC has not been verified.` — the chosen card hasn't completed `postBillingCreditCardVerify`. - `Invalid Payment Method Specified` — value not in `{cc, paypal, cc<idx>}`. - `401` — unauthenticated.  **Related calls:** - **Prerequisite for `cc<idx>`:** `addBillingCreditCard` → `patchBillingCreditCardVerify` → `postBillingCreditCardVerify`. - **Now pay an invoice:** `initiatePayment` (`method=cc` will use the default; `method=paypal` if you switched). - **Audit current methods:** `getAccountInfo` (account profile shows cards as masked). 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BillingApi`** | API context | 
**`billing_payment_method_request`** | [**`BillingPaymentMethodRequest`**](BillingPaymentMethodRequest.md) |  |

### Return type

[**`SuccessTextResponse`**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

