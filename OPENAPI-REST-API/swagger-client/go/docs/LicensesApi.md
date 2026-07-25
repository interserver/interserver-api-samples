# {{classname}}

All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddLicense**](LicensesApi.md#AddLicense) | **Post** /licenses/order | Order a new software license and create the recurring invoice
[**GetLicenseInfo**](LicensesApi.md#GetLicenseInfo) | **Get** /licenses/{id} | Get full details for one license including status, IP, and links
[**GetLicenseInvoices**](LicensesApi.md#GetLicenseInvoices) | **Get** /licenses/{id}/invoices | List all billing invoices tied to one software license service
[**GetLicenseList**](LicensesApi.md#GetLicenseList) | **Get** /licenses | List all software licenses owned by the authenticated customer
[**GetLicensesWelcomeEmail**](LicensesApi.md#GetLicensesWelcomeEmail) | **Get** /licenses/{id}/welcome_email | Resend the license welcome email with the key and activation steps
[**GetNewLicense**](LicensesApi.md#GetNewLicense) | **Get** /licenses/order | Get available license types, packages, and pricing for ordering
[**LicensesCancel**](LicensesApi.md#LicensesCancel) | **Delete** /licenses/{id} | Cancel a license service and stop future billing (irreversible)
[**PostLicenseChangeIp**](LicensesApi.md#PostLicenseChangeIp) | **Post** /licenses/{id}/change_ip | Rebind a license to a new IP address (may incur a vendor fee)
[**PutLicenses**](LicensesApi.md#PutLicenses) | **Put** /licenses/order | Validate a software license order before placing it (dry run preview)
[**UpdateLicenseInfo**](LicensesApi.md#UpdateLicenseInfo) | **Post** /licenses/{id} | Update mutable fields on a license service (e.g. assigned IP)

# **AddLicense**
> ServiceOrderPostResponse AddLicense(ctx, body)
Order a new software license and create the recurring invoice

Places an order for a new software license (cPanel, Plesk, LiteSpeed, etc.). Re-runs validate_buy_license then place_buy_license, which creates the repeat_invoices row, the first invoice, and queues payment processing. Always call putLicenses first to surface validation errors cheaply; addLicense re-validates and returns error JSON if continue=false. Body (form or JSON): package (services_id from getNewLicense), ip (target server IP the license binds to), frequency (billing months), coupon, comment, tos (truthy). No path params. Returns ServiceOrderPostResponse with the new service id and invoice info. Errors: 401 unauthenticated; validation or payment failures return json_error with the underlying message. Caveat: provisioning is asynchronous — poll getLicenseInfo for status.  Sibling ops: `getNewLicense` (catalog), `putLicenses` (validate), `getLicenseInfo` (poll status), `getLicenseInvoices`, `getBillingInvoice` + `initiatePayment` (settle invoice), `licensesCancel`.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **body** | [**LicenseOrderRequest**](LicenseOrderRequest.md)|  | 

### Return type

[**ServiceOrderPostResponse**](ServiceOrderPostResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetLicenseInfo**
> License GetLicenseInfo(ctx, id)
Get full details for one license including status, IP, and links

Returns rich detail for a single license service: serviceInfo row (license_id, hostname, license_ip, license_status, license_type), the underlying services row (name, cost, frequency), client_links for self-service actions (change IP, cancel, resend welcome email, view invoices), and provisioning state. Use after getLicenseList to drill into a specific license, or as the canonical lookup before postLicenseChangeIp / licensesCancel / getLicenseInvoices. Path: id (license_id from list). No body. Errors: 401 unauthenticated; 404 if id is invalid or owned by a different customer. Caveat: admin_links/settings/csrf are stripped — use admin endpoints for those. Sibling endpoints: updateLicenseInfo (mutate fields), postLicenseChangeIp.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **id** | **int32**| The license service ID. Use &#x60;license_id&#x60; from &#x60;GET /licenses&#x60;. | 

### Return type

[**License**](License.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetLicenseInvoices**
> ChargeInvoiceRows GetLicenseInvoices(ctx, id)
List all billing invoices tied to one software license service

Returns the full invoice history for a single license service: the original setup invoice plus every recurring renewal invoice generated by the repeat_invoices entry. Use this for billing reconciliation, to display past charges in the customer UI, or to confirm a renewal posted before contacting support. Path: id (license_id from getLicenseList). No body. Returns ChargeInvoiceRows: an array of invoice rows with id, date, amount, paid status, and payment method. Errors: 401 unauthenticated; returns success=false with HTTP 400 if the service id is invalid or owned by a different customer. Caveat: only invoices linked via repeat_invoices_id are included — manual one-off charges from staff may not appear here. Sibling endpoints: getLicenseInfo, licensesCancel.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **id** | **int32**| The license service ID. Use &#x60;license_id&#x60; from &#x60;GET /licenses&#x60;. | 

### Return type

[**ChargeInvoiceRows**](ChargeInvoiceRows.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetLicenseList**
> []LicenseRow GetLicenseList(ctx, )
List all software licenses owned by the authenticated customer

Lists every software license service (cPanel, Plesk, LiteSpeed, CloudLinux, etc.) on the authenticated customer's account. Use this as the entry point for license management to discover the license_id needed by every other Licenses endpoint. Returns an array of rows including license_id, hostname, bound IP, services_name (license type), recurring cost, status (pending/active/canceled), and last invoice date/paid state. No path or query parameters; the customer scope is taken from the session. Errors: 401 when the session is missing or expired. Caveats: list is unpaginated, includes canceled rows so callers should filter by status. Sibling: getLicenseInfo for full details on one license.

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**[]LicenseRow**](LicenseRow.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetLicensesWelcomeEmail**
> SuccessTextResponse GetLicensesWelcomeEmail(ctx, id)
Resend the license welcome email with the key and activation steps

Resends the welcome email for an active license to the account email on file. The email contains the license key, the bound IP, and vendor-specific activation instructions (e.g. cPanel /usr/local/cpanel/cpkeyclt, LiteSpeed lswsctrl). Use this when the customer lost the original email or rotated mailboxes — the key itself is unchanged. Path: id (license_id). No body. Returns SuccessTextResponse with a translated confirmation. Errors: 401 unauthenticated; 404 if the id is invalid or not owned by the session customer; 409 if the license status is not active (cancelled licenses cannot resend). Caveat: delivery is best-effort — check the email log if it does not arrive. Sibling endpoints: getLicenseInfo, postLicenseChangeIp.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **id** | **int32**| The license service ID. Use &#x60;license_id&#x60; from &#x60;GET /licenses&#x60;. | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetNewLicense**
> LicensesOrder GetNewLicense(ctx, )
Get available license types, packages, and pricing for ordering

Returns the catalog needed to build the license-order form: service categories (category_id->name), buyable service types (services_id, name, cost, billing frequency), package costs map keyed by services_id, the customer's currency symbol, and per-package field metadata via get_license_fields. Use this before addLicense to render type/package pickers and to validate a chosen package_id exists and is buyable (services_hidden=0, services_buyable=1). No path params or body. Returns LicensesOrder schema. Errors: 401 if unauthenticated. Sibling endpoints: putLicenses (validate selection), addLicense (place order). Note: pricing is converted to the session currency; coupon/IP/frequency are evaluated in the validate step, not here.

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**LicensesOrder**](LicensesOrder.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **LicensesCancel**
> InlineResponse2005 LicensesCancel(ctx, id)
Cancel a license service and stop future billing (irreversible)

Cancels a license service: invokes cancel_service which marks the service canceled, deactivates the license key with the upstream vendor, and stops the recurring invoice so no further charges occur. Use carefully — once vendor-side deactivation propagates the key stops working on the bound machine. Path: id (license_id from getLicenseList). No body. Returns LicensesCancelResponse with success and a translated text message. Errors: 401 unauthenticated; the underlying handler returns success=false JSON if the service id is invalid or cancellation fails (contact support path). Caveats: no prorated refund by default; pre-paid time is forfeited per TOS. Sibling endpoints: getLicenseInfo, getLicenseInvoices for billing history before cancelling.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **id** | **int32**| The license service ID. Use &#x60;license_id&#x60; from &#x60;GET /licenses&#x60;. | 

### Return type

[**InlineResponse2005**](inline_response_200_5.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PostLicenseChangeIp**
> SuccessTextResponse PostLicenseChangeIp(ctx, body, ip, id)
Rebind a license to a new IP address (may incur a vendor fee)

Changes the IP address that the license is bound to and triggers re-issuance with the upstream vendor (cPanel store, LiteSpeed key server, Plesk, etc.). The service must be active. Use getLicenseInfo first to read the current license_ip, then submit the new IP. Path: id (license_id). Body (JSON or multipart): IpObject with the new ip field. Returns SuccessTextResponse on success. Errors: 401 unauthenticated; 404 invalid id or not owned; 409 if status != active; 422-style failures from the vendor are returned via json_error with the upstream status_text. Caveats: many vendors charge a per-change fee and rate-limit changes (e.g. cPanel allows limited free changes per period); the new IP must be reachable for license verification. Sibling: updateLicenseInfo.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **body** | [**IpObject**](IpObject.md)|  | 
  **ip** | **string**|  | 
  **id** | **int32**| The license service ID. Use &#x60;license_id&#x60; from &#x60;GET /licenses&#x60;. | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PutLicenses**
> PutLicenses(ctx, body)
Validate a software license order before placing it (dry run preview)

Dry-runs validate_buy_license against the same payload addLicense will accept, returning a structured result with continue=true/false plus errors[], normalized package, ip, service_cost, original_cost, coupon_code, custid, currency and service_extra. Always call this before addLicense to surface package/IP/coupon/TOS issues without creating an invoice. Body fields (form or JSON): package (services_id), ip, frequency (billing cycle months), coupon, comment, tos. No path params. Returns the validation object. Errors: 401 unauthenticated; 422-style errors are returned inside the body with continue=false rather than as HTTP errors. Caveat: a valid PUT does not reserve inventory; addLicense re-validates. Sibling: addLicense, getNewLicense.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **body** | [**LicenseOrderRequest**](LicenseOrderRequest.md)|  | 

### Return type

 (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **UpdateLicenseInfo**
> SuccessTextResponse UpdateLicenseInfo(ctx, id)
Update mutable fields on a license service (e.g. assigned IP)

Updates settings on an existing license service. The primary mutable field is the bound IP, but the endpoint shares routing with View::go so other future fields flow through here. For IP changes prefer postLicenseChangeIp which has explicit semantics and triggers vendor rebinding. Path: id (license_id). Body: fields to update (form or JSON); shape varies by license type. Returns SuccessTextResponse. Errors: 401 unauthenticated; 404 if id is invalid or not owned; 409 if license is not active. Caveats: vendor-side propagation (cPanel store, LiteSpeed key server, etc.) is asynchronous; some IP/hostname changes incur a fee per vendor policy. Sibling: getLicenseInfo (read), postLicenseChangeIp (dedicated).

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **id** | **string**| The license service ID. Use &#x60;license_id&#x60; from &#x60;GET /licenses&#x60;. | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

