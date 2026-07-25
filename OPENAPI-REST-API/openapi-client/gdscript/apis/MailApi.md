<a name="__pageTop"></a>
# MailApi   { #MailApi }


All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_mail**](#add_mail) | **POST** `/mail/order` | Place a new Mail Baby order, generate invoice, and queue provisioning
[**add_rule**](#add_rule) | **POST** `/mail/{id}/rules` | Create a new deny rule to auto-block matching submissions
[**create_mail_alert**](#create_mail_alert) | **POST** `/mail/{id}/alerts` | Create a new Mail Baby alert for delivery, bounce, or quota events
[**delete_mail_alert**](#delete_mail_alert) | **DELETE** `/mail/{id}/alerts` | Delete a Mail Baby alert by alert_id (hard delete — no recovery)
[**delete_rule**](#delete_rule) | **DELETE** `/mail/{id}/rules/{rule}` | Delete a Mail Baby deny rule by rule ID (hard delete — no recovery)
[**delist_block**](#delist_block) | **POST** `/mail/{id}/blocks/delete` | Delist a sender email from rspamd / mailchannels / mailbaby block lists
[**get_mail_alerts**](#get_mail_alerts) | **GET** `/mail/{id}/alerts` | List configured delivery/bounce/quota alerts for one Mail Baby service
[**get_mail_blocks**](#get_mail_blocks) | **GET** `/mail/{id}/blocks` | List recent local-blocklist hits and spam-trap captures for the mail user
[**get_mail_delist**](#get_mail_delist) | **GET** `/mail/{id}/delist` | Read blocklist diagnostics and find senders eligible for delisting
[**get_mail_deliverability**](#get_mail_deliverability) | **GET** `/mail/{id}/deliverability` | Read delivered vs bounced totals broken down by sender (or by recipient domain)
[**get_mail_info**](#get_mail_info) | **GET** `/mail/{id}` | Read full detail for one Mail Baby service including SMTP credentials
[**get_mail_invoices**](#get_mail_invoices) | **GET** `/mail/{id}/invoices` | List billing invoices linked to this Mail Baby service
[**get_mail_list**](#get_mail_list) | **GET** `/mail` | List every Mail Baby SMTP relay service on the account
[**get_mail_welcome_email**](#get_mail_welcome_email) | **GET** `/mail/{id}/welcome_email` | Resend the Mail Baby welcome email with SMTP credentials and setup info
[**get_new_mail**](#get_new_mail) | **GET** `/mail/order` | Read the Mail Baby order catalog — plans, package costs, service-type metadata
[**get_rules**](#get_rules) | **GET** `/mail/{id}/rules` | List configured deny rules (sender/recipient blocks) for a Mail Baby service
[**get_stats**](#get_stats) | **GET** `/mail/{id}/stats` | Read Mail Baby usage counts, send volume totals, top destinations, and projected cost
[**mail_cancel**](#mail_cancel) | **DELETE** `/mail/{id}` | Cancel a Mail Baby service and stop the recurring invoice
[**post_mail_delist**](#post_mail_delist) | **POST** `/mail/{id}/delist` | Delist a sender from rspamd / mailchannels / mailbaby block lists
[**put_mail**](#put_mail) | **PUT** `/mail/order` | Validate Mail Baby order, quote pricing, and verify coupon — no charge
[**reset_mail_password**](#reset_mail_password) | **GET** `/mail/{id}/reset_password` | Rotate the SMTP password and email the new credential to the account owner
[**send_adv_mail**](#send_adv_mail) | **POST** `/mail/{id}/advsend` | Send email via Mail Baby SMTP relay with attachments, CC/BCC, and multi-recipient
[**send_mail**](#send_mail) | **POST** `/mail/{id}/send` | Send a simple single-recipient email through the Mail Baby SMTP relay
[**update_mail_alert**](#update_mail_alert) | **PUT** `/mail/{id}/alerts` | Update an existing Mail Baby alert by alert_id
[**update_mail_info**](#update_mail_info) | **POST** `/mail/{id}` | POST mutation hook for the Mail Baby service detail page
[**update_rule**](#update_rule) | **PUT** `/mail/{id}/rules/{rule}` | Update an existing Mail Baby deny rule&#x27;s type and match data
[**view_mail_log**](#view_mail_log) | **GET** `/mail/{id}/log` | Search and paginate per-message Mail Baby delivery log entries

# **add_mail**   { #add_mail }
<a name="add_mail"></a>

> `add_mail(mailOrderRequest: MailOrderRequest, on_success: Callable, on_failure: Callable)`

Place a new Mail Baby order, generate invoice, and queue provisioning

Step 3 of the Mail Baby order flow. Revalidates via `validate_buy_mail()`, then calls `place_buy_mail()` to create a `Repeat_Invoice` recurring billing row, an initial `invoices` row, and a `mail` service record in pending status. SMTP credentials become active once the activation worker runs the welcome email (after the invoice is paid). **Real money** — call `putMail` first. Sibling ops: `getNewMail`, `putMail`, `getMailInfo`, `initiatePayment`.  **Body fields:** - `serviceType` (integer, required) — plan id from `getNewMail`. - `coupon` (string, optional). - `comment` (string, optional) — saved on the order row.  **Returns** (on success): `{continue: true, total_cost, iid, iids, real_iids, serviceId (new mail_id), invoice_description, cj_params}` — pass `real_iids` to `initiatePayment`. On validation failure: `{continue: false, errors: [...]}` with HTTP 200.  **Side effects:** - Inserts `mail` service row in `pending` status. - Inserts `repeat_invoices` + `invoices` rows.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Pay:** `initiatePayment` with `real_iids`. - **Confirm activation:** `getMailInfo` (poll until `mail_status=='active'`). - **Resend credentials:** `getMailWelcomeEmail`.  **Full ordering happy path:** ```text GET /mail/order                                    -> catalog (getNewMail) PUT /mail/order { serviceType, coupon? }           -> quote (putMail) POST /mail/order { serviceType, coupon?, comment? } -> { serviceId, real_iids } GET /billing/pay/cc/{real_iids[0]}                 -> pay (initiatePayment) GET /mail/{serviceId}                              -> poll until mail_status=='active' ``` 

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = MailApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = MailApi.new(config, client)

var mailOrderRequest = MailOrderRequest.new()
# … fill model mailOrderRequest with data

# Invoke an endpoint
api.add_mail(
	# mailOrderRequest: MailOrderRequest
	mailOrderRequest,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "add_mail", response)
		assert(response.data is ServiceOrderPostResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **add_rule**   { #add_rule }
<a name="add_rule"></a>

> `add_rule(id: int,denyRuleNew: DenyRuleNew, on_success: Callable, on_failure: Callable)`

Create a new deny rule to auto-block matching submissions

Inserts a new `mail_spam` row scoped to this service's `mail_username` so the relay drops matching submissions. Sibling ops: `getRules`, `updateRule`, `deleteRule`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (schema `DenyRuleNew`):** - `type` (string, required) — `domain` / `email` / `startswith` / `destination`. - `data` (string, required) — literal value matched; validation: no quotes, valid domain for `type=domain`, valid email for `type=email`, `[A-Z0-9+_.-]+` for `startswith`.  **Returns:** `\"Spam Block Added\"`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** field-level errors on validation failure, `401`, `404`, `409 not active`. 

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = MailApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = MailApi.new(config, client)

var denyRuleNew = DenyRuleNew.new()
# … fill model denyRuleNew with data

# Invoke an endpoint
api.add_rule(
	# id: int   Eg: 56
	# The mail service ID. Use `mail_id` from `GET /mail`.
	id,
	# denyRuleNew: DenyRuleNew   Eg: {"user":"mb20682","type":"email","data":"domeinwo@server.guesshost.net"}
	# These are the fields needed to create a new email deny rule.
	denyRuleNew,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "add_rule", response)
		assert(response.data is GenericResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **create_mail_alert**   { #create_mail_alert }
<a name="create_mail_alert"></a>

> `create_mail_alert(id: int,mailAlertRequest: MailAlertRequest, on_success: Callable, on_failure: Callable)`

Create a new Mail Baby alert for delivery, bounce, or quota events

Inserts a new alert row via the `Alert` ORM. The new `alert_id` is retrievable via `getMailAlerts`. Sibling ops: `getMailAlerts`, `updateMailAlert`, `deleteMailAlert`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (schema `MailAlertRequest`):** - `type` (string, required). - `value` (string/numeric, required) — threshold. - `to` (string, required) — notification email; validated via `FILTER_VALIDATE_EMAIL`. - `enabled` (bool, optional).  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** field-level errors for missing/invalid body, `401`, `404`, `409 not active`. 

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = MailApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = MailApi.new(config, client)

var mailAlertRequest = MailAlertRequest.new()
# … fill model mailAlertRequest with data

# Invoke an endpoint
api.create_mail_alert(
	# id: int   Eg: 56
	# The mail service ID. Use `mail_id` from `GET /mail`.
	id,
	# mailAlertRequest: MailAlertRequest
	mailAlertRequest,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "create_mail_alert", response)
		assert(response.data is SuccessTextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **delete_mail_alert**   { #delete_mail_alert }
<a name="delete_mail_alert"></a>

> `delete_mail_alert(id: int,deleteMailAlertRequest: DeleteMailAlertRequest, on_success: Callable, on_failure: Callable)`

Delete a Mail Baby alert by alert_id (hard delete — no recovery)

Hard-deletes a single alert row. Handler verifies the alert belongs to this service+module before deleting. **Irreversible** — no history is preserved; recreate via `createMailAlert` if needed. Sibling ops: `getMailAlerts`, `createMailAlert`, `updateMailAlert`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields:** - `alert_id` (integer, required) — from `getMailAlerts`.  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `Invalid alert!` (alert not owned), `401`, `404`, `409 not active`. 

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = MailApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = MailApi.new(config, client)

var deleteMailAlertRequest = DeleteMailAlertRequest.new()
# … fill model deleteMailAlertRequest with data

# Invoke an endpoint
api.delete_mail_alert(
	# id: int   Eg: 56
	# The mail service ID. Use `mail_id` from `GET /mail`.
	id,
	# deleteMailAlertRequest: DeleteMailAlertRequest
	deleteMailAlertRequest,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "delete_mail_alert", response)
		assert(response.data is SuccessTextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **delete_rule**   { #delete_rule }
<a name="delete_rule"></a>

> `delete_rule(id: int,rule: String, on_success: Callable, on_failure: Callable)`

Delete a Mail Baby deny rule by rule ID (hard delete — no recovery)

Hard-deletes a single `mail_spam` row scoped to this service's `mail_username`. **Irreversible** — no audit copy preserved. Query filter `id={rule} AND user='{mail_username}'` prevents cross-tenant deletes; passing a `rule` belonging to a different mail order is silently a no-op (still returns success). Sibling ops: `getRules`, `addRule`, `updateRule`.  **Path params:** - `id` (integer, required) — `mail_id` from `getMailList`. - `rule` (string, required) — rule id from `getRules`.  **Returns:** `\"Block deleted successfully.\"`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404`, `409 not active`. 

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = MailApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = MailApi.new(config, client)


# Invoke an endpoint
api.delete_rule(
	# id: int   Eg: 56
	# The mail service ID. Use `mail_id` from `GET /mail`.
	id,
	# rule: String = ""   Eg: 34
	# The ID of the Rules entry.
	rule,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "delete_rule", response)
		assert(response.data is GenericResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **delist_block**   { #delist_block }
<a name="delist_block"></a>

> `delist_block(id: int,email = "", on_success: Callable, on_failure: Callable)`

Delist a sender email from rspamd / mailchannels / mailbaby block lists

Removes block rows for the supplied email across the three reputation stores: `rspamd` (by `fromemail`), `mailchannels` (by `email`), `mailbaby` (by `emailfrom`). Functionally equivalent to `postMailDelist` but uses `email` parameter naming and returns 400 (not error JSON) for an invalid address. Sibling ops: `getMailBlocks`, `getMailDelist`, `postMailDelist`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (schema `EmailAddress`):** - `email` (string, required) — sender address; validated via `FILTER_VALIDATE_EMAIL`.  **Returns:** `{status: \"ok\", text: \"Email '...' removed from block list\"}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `400` invalid email, `401`, `404`, `409 not active`. 

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = MailApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = MailApi.new(config, client)


# Invoke an endpoint
api.delist_block(
	# id: int   Eg: 56
	# The mail service ID. Use `mail_id` from `GET /mail`.
	id,
	# email: String = ""   Eg: email_example
	# an email address
	email,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "delist_block", response)
		assert(response.data is GenericResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_mail_alerts**   { #get_mail_alerts }
<a name="get_mail_alerts"></a>

> `get_mail_alerts(id: int, on_success: Callable, on_failure: Callable)`

List configured delivery/bounce/quota alerts for one Mail Baby service

Returns every alert row from `alerts` matching this service. Each row carries `alert_id` (use with PUT/DELETE), `alert_type`, `alert_value` (threshold), `alert_to` (notification email), `alert_enabled`, and timestamps. Sibling ops: `createMailAlert`, `updateMailAlert`, `deleteMailAlert`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns** (schema `MailAlertsResponse`): array of alert rows.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404`, `409 not active`. 

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = MailApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = MailApi.new(config, client)


# Invoke an endpoint
api.get_mail_alerts(
	# id: int   Eg: 56
	# The mail service ID. Use `mail_id` from `GET /mail`.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_mail_alerts", response)
		assert(response.data is MailAlertsResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_mail_blocks**   { #get_mail_blocks }
<a name="get_mail_blocks"></a>

> `get_mail_blocks(id: int, on_success: Callable, on_failure: Callable)`

List recent local-blocklist hits and spam-trap captures for the mail user

Returns relay-side block events for the SMTP user behind `mail_id` — the last 24 hours of `LOCAL_BL_RCPT` and `MBTRAP` rspamd hits, plus a 3-day window of suspicious-subject hits (credential-leak heuristic firing on subjects containing `@` / `smtp` / `socks5` / `socks4` more than 4 times). Use the `from` value with `delistBlock` or `postMailDelist` to clear a block. Sibling ops: `delistBlock`, `getMailDelist`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns** (schema `MailBlocks`): - `local` (array) — rspamd `LOCAL_BL_RCPT` hits: `{date, from, messageId, subject, to}`. - `mbtrap` (array) — spam-trap captures (`MBTRAP` symbol): same shape. - `subject` (array) — senders flagged by subject-line heuristic: `{from, subject}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `mail_status != \"active\"`.  **Related calls:** - **Clear a block:** `delistBlock` (POST `/mail/{id}/blocks/delete`). - **Broader delist UI:** `getMailDelist`, `postMailDelist`. 

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = MailApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = MailApi.new(config, client)


# Invoke an endpoint
api.get_mail_blocks(
	# id: int   Eg: 56
	# The mail service ID. Use `mail_id` from `GET /mail`.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_mail_blocks", response)
		assert(response.data is MailBlocks)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_mail_delist**   { #get_mail_delist }
<a name="get_mail_delist"></a>

> `get_mail_delist(id: int, on_success: Callable, on_failure: Callable)`

Read blocklist diagnostics and find senders eligible for delisting

Returns a richer diagnostic snapshot than `getMailBlocks` — intended for the delist UI. Use any `SMTPFrom`/`from` value as the `unblock` field for `postMailDelist`. Sibling ops: `postMailDelist`, `getMailBlocks`, `delistBlock`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns** (schema `MailDelistResponse`): - `id` (integer) — `mail_id` echo. - `local`, `mbtrap` (array) — last 24h rspamd hits with capitalized keys (`Date`, `SMTPFrom`, `MessageId`, `Subject`, `MimeRecipients`). - `subject` (array) — credential-leak-heuristic firings (3-day window). - `manual` (array) — manually added blocks.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404`, `409 not active`. 

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = MailApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = MailApi.new(config, client)


# Invoke an endpoint
api.get_mail_delist(
	# id: int   Eg: 56
	# The mail service ID. Use `mail_id` from `GET /mail`.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_mail_delist", response)
		assert(response.data is MailDelistResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_mail_deliverability**   { #get_mail_deliverability }
<a name="get_mail_deliverability"></a>

> `get_mail_deliverability(id: int, on_success: Callable, on_failure: Callable)`

Read delivered vs bounced totals broken down by sender (or by recipient domain)

Returns deliverability analytics from `MailDeliveryStats` (Dragonfly cache) for the SMTP user behind `mail_id`. Default pivot is by sender; pass `?filter_domain=1` to pivot by recipient domain for the current year instead. Use to drive analytics dashboards. Sibling ops: `getStats`, `viewMailLog`, `getMailBlocks`, `getMailDelist`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Query params:** - `filter_domain` (string `1`, optional) — pivot by recipient domain instead of sender.  **Returns** (schema `MailDeliverabilityResponse`): - `stat`: `{delivered, bounced, percent}` — totals and bounce ratio. - `header` (string), `col1` (string) — table headers. - `table_data` (array) — rows of `[<sender-or-domain>, bounced, delivered, bouncePercent]`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404`, `409 not active`. 

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = MailApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = MailApi.new(config, client)


# Invoke an endpoint
api.get_mail_deliverability(
	# id: int   Eg: 56
	# The mail service ID. Use `mail_id` from `GET /mail`.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_mail_deliverability", response)
		assert(response.data is MailDeliverabilityResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_mail_info**   { #get_mail_info }
<a name="get_mail_info"></a>

> `get_mail_info(id: int, on_success: Callable, on_failure: Callable)`

Read full detail for one Mail Baby service including SMTP credentials

Returns the full `ViewMail` payload for one Mail Baby service — `serviceInfo`, `serviceType`, and `client_links` (URLs rewritten to API paths, e.g. `view_mail_log` → `log`). Admin fields (`admin_links`, `settings`, `csrf`) stripped. Use to render a service dashboard or retrieve SMTP host/username for MTA configuration. Sibling ops: `getMailList`, `updateMailInfo`, `mailCancel`, `resetMailPassword`, `getMailWelcomeEmail`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns** (schema `MailSchema`): - `serviceInfo` — `mail_id`, `mail_username` (e.g. `mb1234`), `mail_status`, `mail_invoice`, `mail_custid`, dates, currency. - `serviceType` — plan row (`services_ourcost` stripped). - `client_links` (array) — action URLs (log, alerts, blocks, etc.).  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller.  **Related calls:** - **Send:** `sendMail` / `sendAdvMail`. - **Rotate password:** `resetMailPassword`. - **Reset credentials:** `getMailWelcomeEmail`. - **Cancel:** `mailCancel`. 

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = MailApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = MailApi.new(config, client)


# Invoke an endpoint
api.get_mail_info(
	# id: int   Eg: 56
	# The mail service ID. Use `mail_id` from `GET /mail`.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_mail_info", response)
		assert(response.data is MailSchema)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_mail_invoices**   { #get_mail_invoices }
<a name="get_mail_invoices"></a>

> `get_mail_invoices(id: int, on_success: Callable, on_failure: Callable)`

List billing invoices linked to this Mail Baby service

Returns every invoice associated with this `mail_id` via the shared `InvoicesList` workflow. Use to render per-service billing history or find unpaid invoices to pay via `initiatePayment`. Sibling ops: `getBillingInvoice`, `initiatePayment`, `addMail`, `mailCancel`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns:** `ChargeInvoiceRows` — array of `{id, amount, currency, paid, date, due_date, description, module: \"mail\", service}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404 Invalid Service`. 

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = MailApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = MailApi.new(config, client)


# Invoke an endpoint
api.get_mail_invoices(
	# id: int   Eg: 56
	# The mail service ID. Use `mail_id` from `GET /mail`.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_mail_invoices", response)
		assert(response.data is ChargeInvoiceRows)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_mail_list**   { #get_mail_list }
<a name="get_mail_list"></a>

> `get_mail_list( on_success: Callable, on_failure: Callable)`

List every Mail Baby SMTP relay service on the account

Enumerates every Mail Baby SMTP relay service owned by the authenticated customer. Canonical entry point for finding a `mail_id` to pass to other Mail endpoints. Filtered server-side by `mail_custid`. Sibling ops: `getMailInfo`, `getStats`, `viewMailLog`, `getMailDeliverability`, `getMailBlocks`, `getMailInvoices`, `addMail`.  **Path/Query/Body:** None.  **Returns:** Array of `MailRow`: - `mail_id` (integer) — canonical id. - `mail_username` (string) — SMTP username (e.g. `mb1234`). - `mail_status` (string enum) — `active` / `pending` / `canceled` / `suspended`. - `services_name` (string) — plan label. - `repeat_invoices_cost` (decimal string) — recurring cost.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Per-service detail:** `getMailInfo`. - **Send mail:** `sendMail` / `sendAdvMail`. - **Reputation:** `getMailDeliverability` / `getMailBlocks` / `getMailDelist`. - **Order a new service:** `getNewMail` → `putMail` → `addMail`. 

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = MailApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = MailApi.new(config, client)


# Invoke an endpoint
api.get_mail_list(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_mail_list", response)
		assert(response.data is MailRow)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_mail_welcome_email**   { #get_mail_welcome_email }
<a name="get_mail_welcome_email"></a>

> `get_mail_welcome_email(id: int, on_success: Callable, on_failure: Callable)`

Resend the Mail Baby welcome email with SMTP credentials and setup info

Re-runs the `mail_welcome_email` plugin function — composes and sends the standard welcome email (SMTP host `relay.mailbaby.net`, port, username `mb{mail_id}`, current password, configuration tips) to the account-on-file. Use after `resetMailPassword` to redeliver the rotated credential, or when a customer reports losing the original setup email. Idempotent. Sibling ops: `resetMailPassword`, `getMailInfo`. Cross-module welcome-email endpoints: `getVpsWelcomeEmail`, `getWebsitesWelcomeEmail`, `getDomainsWelcomeEmail`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns:** `{text: \"Welcome Email has been resent.\"}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404`, `409 not active`. 

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = MailApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = MailApi.new(config, client)


# Invoke an endpoint
api.get_mail_welcome_email(
	# id: int   Eg: 56
	# The mail service ID. Use `mail_id` from `GET /mail`.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_mail_welcome_email", response)
		assert(response.data is SuccessTextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_new_mail**   { #get_new_mail }
<a name="get_new_mail"></a>

> `get_new_mail( on_success: Callable, on_failure: Callable)`

Read the Mail Baby order catalog — plans, package costs, service-type metadata

Step 1 of the Mail Baby order flow. Returns the catalog used to bootstrap an order form: `packageCosts` keyed by `services_id` (only buyable services where `services_buyable=1`) and the full `serviceTypes` map. Read-only. Pricing is normalized to the customer's currency via `getCurrency()`. Sibling ops: `putMail`, `addMail`, `getMailList`.  **Path/Query/Body:** None.  **Returns** (schema `MailOrder`): - `packageCosts` (object) — `{<services_id>: <cost>}` per buyable plan. - `serviceTypes` (object) — full service-types registry (plan metadata).  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Next:** `putMail` (validate + quote — no charge), `addMail` (place order). 

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = MailApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = MailApi.new(config, client)


# Invoke an endpoint
api.get_new_mail(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_new_mail", response)
		assert(response.data is MailOrder)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_rules**   { #get_rules }
<a name="get_rules"></a>

> `get_rules(id: int, on_success: Callable, on_failure: Callable)`

List configured deny rules (sender/recipient blocks) for a Mail Baby service

Returns every `mail_spam` row scoped to this service's `mail_username` — local sender/recipient block rules the customer has configured. Sibling ops: `addRule`, `updateRule`, `deleteRule`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns:** Array of `DenyRuleRecord` — `{id, user, type, data, created}`. `type` values: - `domain` — block by sender domain. - `email` — block by exact sender email. - `startswith` — block when sender local-part starts with a string. - `destination` — block by recipient email.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404`, `409 not active`. 

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = MailApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = MailApi.new(config, client)


# Invoke an endpoint
api.get_rules(
	# id: int   Eg: 56
	# The mail service ID. Use `mail_id` from `GET /mail`.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_rules", response)
		assert(response.data is DenyRuleRecord)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_stats**   { #get_stats }
<a name="get_stats"></a>

> `get_stats(id: int,some_timenull = "", on_success: Callable, on_failure: Callable)`

Read Mail Baby usage counts, send volume totals, top destinations, and projected cost

Returns aggregate usage and cost metrics for the SMTP user behind `mail_id` from the ZoneMTA `mail_messagestore` / `mail_senderdelivered` tables. Use to drive an analytics dashboard or to project end-of-cycle cost. Sibling ops: `viewMailLog`, `getMailDeliverability`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Query params:** - `time` (string enum, optional, default `1h`) — window: `all` / `billing` (current invoice cycle) / `month` / `7d` / `24h` / `1d` / `1h`.  **Returns** (schema `MailStatsType`): - `time` (string) — echo of selected window. - `usage` (integer) — full-billing-cycle send count. - `currency`, `currencySymbol` (string). - `cost` (decimal) — projected = base + `$0.20 / 1000 emails`. - `received`, `sent` (integer). - `volume.to`, `volume.from`, `volume.ip` (object) — top-500 destinations / senders / origin IPs by count.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `Invalid or missing mail order id`, `401`. 

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = MailApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = MailApi.new(config, client)


# Invoke an endpoint
api.get_stats(
	# id: int   Eg: 56
	# The mail service ID. Use `mail_id` from `GET /mail`.
	id,
	# some_timenull: String = ""   Eg: some_timenull_example
	# The timeframe for the statistics.
	some_timenull,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_stats", response)
		assert(response.data is MailStatsType)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **mail_cancel**   { #mail_cancel }
<a name="mail_cancel"></a>

> `mail_cancel(id: int, on_success: Callable, on_failure: Callable)`

Cancel a Mail Baby service and stop the recurring invoice

Cancels the Mail Baby service through the shared `Billing\\CancelService::go($id)` flow with `module='mail'`. SMTP credentials are deactivated, the service transitions to canceled, the `repeat_invoice` is stopped, and queued submissions stop being accepted. **Irreversible via API** — re-activation requires placing a new order via `addMail`. Sibling ops: `getMailInfo`, `getMailInvoices`, `addMail`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns:** `MailCancelResponse`.  **Side effects:** - Sets `mail_status='canceled'`. - Marks `repeat_invoices` non-renewing. - ZoneMTA-side: stops accepting new submissions for `mb{mail_id}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller.  **Related calls:** - **Sibling cancels:** `VPSCancel`, `CancelDomain`, `webhostingCancel`, etc. - **Re-provision:** `addMail`. 

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = MailApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = MailApi.new(config, client)


# Invoke an endpoint
api.mail_cancel(
	# id: int   Eg: 56
	# The mail service ID. Use `mail_id` from `GET /mail`.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "mail_cancel", response)
		assert(response.data is mailCancel_200_response)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **post_mail_delist**   { #post_mail_delist }
<a name="post_mail_delist"></a>

> `post_mail_delist(id: int,mailDelistRequest: MailDelistRequest, on_success: Callable, on_failure: Callable)`

Delist a sender from rspamd / mailchannels / mailbaby block lists

Removes all block rows for one sender email across three reputation stores: `rspamd` (by `fromemail`), `mailchannels` (by `email`), `mailbaby` (by `emailfrom`). Effect is global per-address across all three tables; takes effect immediately for new submissions. Sibling ops: `getMailDelist`, `delistBlock` (alias at `/mail/{id}/blocks/delete`), `getMailBlocks`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (schema `MailDelistRequest`):** - `unblock` (string, required) — sender email from `getMailDelist`/`getMailBlocks`.  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `Missing parameter unblock`, `401`, `404`, `409 not active`. 

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = MailApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = MailApi.new(config, client)

var mailDelistRequest = MailDelistRequest.new()
# … fill model mailDelistRequest with data

# Invoke an endpoint
api.post_mail_delist(
	# id: int   Eg: 56
	# The mail service ID. Use `mail_id` from `GET /mail`.
	id,
	# mailDelistRequest: MailDelistRequest
	mailDelistRequest,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "post_mail_delist", response)
		assert(response.data is SuccessTextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **put_mail**   { #put_mail }
<a name="put_mail"></a>

> `put_mail(mailOrderRequest: MailOrderRequest, on_success: Callable, on_failure: Callable)`

Validate Mail Baby order, quote pricing, and verify coupon — no charge

Step 2 of the Mail Baby order flow. Dry-runs the order through `validate_buy_mail()` without creating invoices. Returns the cost preview, coupon resolution, and validation errors. The endpoint also auto-generates an SMTP password preview the order will use. Use to surface live pricing in the UI before `addMail`. Sibling ops: `getNewMail`, `addMail`.  **Body fields:** - `serviceType` (integer, required) — plan id from `getNewMail.packageCosts` keys. - `coupon` (string, optional) — coupon code.  **Returns:** - `continue` (bool) — `true` if order can safely be POSTed. - `errors` (array) — validation messages. - `serviceType`, `serviceCost`, `originalCost`, `repeatServiceCost` (numeric). - `password` (string) — auto-generated SMTP password preview. - `introFrequency` (integer). - `coupon`, `couponCode` (string/integer) — resolved coupon.  **Auth:** Session/API key.  **Errors:** - `200` with `continue=false` and `errors[]` — validation problems. - `401` — unauthenticated.  **Related calls:** - **Prerequisite:** `getNewMail` (catalog). - **Place order:** `addMail`. 

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = MailApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = MailApi.new(config, client)

var mailOrderRequest = MailOrderRequest.new()
# … fill model mailOrderRequest with data

# Invoke an endpoint
api.put_mail(
	# mailOrderRequest: MailOrderRequest
	mailOrderRequest,
	# On Success
	func(response):
		prints("Success!", "put_mail", response)
		
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **reset_mail_password**   { #reset_mail_password }
<a name="reset_mail_password"></a>

> `reset_mail_password(id: int, on_success: Callable, on_failure: Callable)`

Rotate the SMTP password and email the new credential to the account owner

Generates a new 20-char SMTP password (lower/upper/digits via `generate_password`), writes it to the ZoneMTA Mongo `users` collection for username `mb{mail_id}`, logs the change to `App::history()`, and emails the result to the account-on-file via `client_email.tpl`. **Any MTA, app, or saved client still using the old password will start failing auth immediately.** The new password is **not** returned in the response — fetch via `getMailWelcomeEmail` or `getMailInfo`. Sibling ops: `getMailWelcomeEmail`, `getMailInfo`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns:** `SuccessTextResponse`.  **Side effects:** - Mongo update on ZoneMTA `users` for `mb{mail_id}`. - `App::history()` audit entry. - Email sent to account owner.  **Auth:** Session/API key. Ownership enforced.  **Errors:** Mongo update modified 0 rows → error text; `401`, `404`, `409 not active`. 

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = MailApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = MailApi.new(config, client)


# Invoke an endpoint
api.reset_mail_password(
	# id: int   Eg: 56
	# The mail service ID. Use `mail_id` from `GET /mail`.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "reset_mail_password", response)
		assert(response.data is SuccessTextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **send_adv_mail**   { #send_adv_mail }
<a name="send_adv_mail"></a>

> `send_adv_mail(id: int,sendMailAdv: SendMailAdv, on_success: Callable, on_failure: Callable)`

Send email via Mail Baby SMTP relay with attachments, CC/BCC, and multi-recipient

Submits an outbound message through `relay.mailbaby.net:25` using the service's SMTP credentials (fetched via `mail_get_password`). Use for multi-recipient sends, named addresses, CC/BCC, ReplyTo, or attachments. For single-recipient plain sends, `sendMail` is the lighter option. Sibling ops: `sendMail`, `viewMailLog` (find queued message), `getMailDeliverability` (analyze bounces).  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (JSON or form-urlencoded, schema `SendMailAdv`):** - `from` (string or `{email, name}`, required). - `to` (array of strings or `{email, name}` objects, required). - `subject` (string, required). - `body` (string, required) — HTML auto-detected when tags are present. - `replyto` (array, optional) — same shape as `to`. - `cc`, `bcc` (array, optional) — same shape as `to`. - `attachments` (array, optional) — each `{filename, data}` where `data` is base64-encoded; added via `addStringAttachment`.  **Returns:** `{status: \"ok\", text: \"Email queued successfully\"}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `400` with PHPMailer `ErrorInfo` on send failure or missing required field. - `401` — unauthenticated. - `404 Invalid Service Passed`. - `409 Service is not active`. 

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = MailApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = MailApi.new(config, client)

var sendMailAdv = SendMailAdv.new()
# … fill model sendMailAdv with data

# Invoke an endpoint
api.send_adv_mail(
	# id: int   Eg: 56
	# The mail service ID. Use `mail_id` from `GET /mail`.
	id,
	# sendMailAdv: SendMailAdv   Eg: {"subject":"Welcome","body":"Hello","from":{"email":"user@domain.com"},"to":[{"email":"someone@client.com","name":"Mr Client"}],"attachments":[{"filename":"message.txt","data":"base64_encoded_contents"}],"id":66}
	sendMailAdv,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "send_adv_mail", response)
		assert(response.data is GenericResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **send_mail**   { #send_mail }
<a name="send_mail"></a>

> `send_mail(id: int,sendMail: SendMail, on_success: Callable, on_failure: Callable)`

Send a simple single-recipient email through the Mail Baby SMTP relay

Sends a single-recipient transactional email through `relay.mailbaby.net:25` authenticated as this `mail_id`. Body fields are the minimum needed for a plain send; Reply-To is auto-set to `from`. For multi-recipient sends, CC/BCC, named addresses, or attachments use `sendAdvMail` instead. Sibling ops: `sendAdvMail`, `viewMailLog`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (JSON or form-urlencoded, schema `SendMail`):** - `to` (string, required) — recipient email. - `from` (string, required) — sender email. - `subject` (string, required). - `body` (string, required) — HTML auto-detected when tags are present.  **Returns:** `{status: \"ok\", text: \"Email queued successfully\"}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `400` with PHPMailer `ErrorInfo` on send failure or missing required field, `401`, `404`, `409 not active`. 

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = MailApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = MailApi.new(config, client)

var sendMail = SendMail.new()
# … fill model sendMail with data

# Invoke an endpoint
api.send_mail(
	# id: int   Eg: 56
	# The mail service ID. Use `mail_id` from `GET /mail`.
	id,
	# sendMail: SendMail
	sendMail,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "send_mail", response)
		assert(response.data is GenericResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **update_mail_alert**   { #update_mail_alert }
<a name="update_mail_alert"></a>

> `update_mail_alert(id: int,mailAlertUpdateRequest: MailAlertUpdateRequest, on_success: Callable, on_failure: Callable)`

Update an existing Mail Baby alert by alert_id

Updates a single alert row by `alert_id`. Handler verifies the alert belongs to this service+module before writing. Sibling ops: `getMailAlerts`, `createMailAlert`, `deleteMailAlert`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (schema `MailAlertUpdateRequest`):** - `alert_id` (integer, required) — from `getMailAlerts`. - `type` (string, required). - `value` (string/numeric, required) — threshold. - `to` (string, required) — notification email; validated via `FILTER_VALIDATE_EMAIL`. - `enabled` (bool, optional).  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `Invalid alert!` (alert not owned), field-level errors for missing/invalid body, `401`, `404`, `409 not active`. 

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = MailApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = MailApi.new(config, client)

var mailAlertUpdateRequest = MailAlertUpdateRequest.new()
# … fill model mailAlertUpdateRequest with data

# Invoke an endpoint
api.update_mail_alert(
	# id: int   Eg: 56
	# The mail service ID. Use `mail_id` from `GET /mail`.
	id,
	# mailAlertUpdateRequest: MailAlertUpdateRequest
	mailAlertUpdateRequest,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "update_mail_alert", response)
		assert(response.data is SuccessTextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **update_mail_info**   { #update_mail_info }
<a name="update_mail_info"></a>

> `update_mail_info(id: String, on_success: Callable, on_failure: Callable)`

POST mutation hook for the Mail Baby service detail page

POST mutation hook for the Mail Baby service detail page. Currently delegates to the same `View::go()` handler as `getMailInfo` — placeholder for future field updates. Does NOT rotate credentials (use `resetMailPassword`) and does NOT change billing (use `/billing` endpoints). Sibling ops: `getMailInfo`, `mailCancel`, `resetMailPassword`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body:** Form fields.  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `mail_status != \"active\"`.  **Related calls:** - **Read:** `getMailInfo`. - **Rotate password:** `resetMailPassword`. 

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = MailApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = MailApi.new(config, client)


# Invoke an endpoint
api.update_mail_info(
	# id: String = ""   Eg: id_example
	# The mail service ID. Use `mail_id` from `GET /mail`.
	id,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "update_mail_info", response)
		assert(response.data is SuccessTextResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **update_rule**   { #update_rule }
<a name="update_rule"></a>

> `update_rule(id: int,rule: String,denyRuleNew: DenyRuleNew, on_success: Callable, on_failure: Callable)`

Update an existing Mail Baby deny rule's type and match data

Updates `type` and `data` on a single `mail_spam` row. Query is bounded by `id={rule} AND user='{mail_username}'` so cross-tenant updates are impossible. Same validation rules as `addRule`. Sibling ops: `getRules`, `addRule`, `deleteRule`.  **Path params:** - `id` (integer, required) — `mail_id` from `getMailList`. - `rule` (string, required) — rule id from `getRules`.  **Body fields (schema `DenyRuleNew`):** - `type` (string, required) — `domain` / `email` / `startswith` / `destination`. - `data` (string, required) — see `addRule` for type-specific validation.  **Returns:** `\"Record updated successfully.\"`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** field-level errors on validation failure, `401`, `404`, `409 not active`. 

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = MailApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = MailApi.new(config, client)

var denyRuleNew = DenyRuleNew.new()
# … fill model denyRuleNew with data

# Invoke an endpoint
api.update_rule(
	# id: int   Eg: 56
	# The mail service ID. Use `mail_id` from `GET /mail`.
	id,
	# rule: String = ""   Eg: rule_example
	# The ID of the deny rule to update.
	rule,
	# denyRuleNew: DenyRuleNew
	denyRuleNew,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "update_rule", response)
		assert(response.data is GenericResponse)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **view_mail_log**   { #view_mail_log }
<a name="view_mail_log"></a>

> `view_mail_log(id: int,id2 = null,origin = "",mx = "",from = null,to = null,subject = "",mailid = "",messageId = "",replyto = null,headerfrom = null,delivered = null,skip = 0,limit = 100,startDate = null,endDate = null,sort = "time",dir = "desc",groupby = "recipient", on_success: Callable, on_failure: Callable)`

Search and paginate per-message Mail Baby delivery log entries

Paginated search over ZoneMTA's `mail_messagestore` joined with `mail_senderdelivered` and `mail_queuerelease`. Supports envelope, header, and metadata filters; sortable; choose recipient-level or message-level grouping. Use to investigate delivery issues, find specific messages by Message-ID, audit bounce rates, or feed an analytics dashboard. Sibling ops: `getStats`, `getMailDeliverability`, `delistBlock` (clear a block surfaced by a bounce).  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList` (omit to span all owned mail users — admin-only).  **Query params:** - `from`, `to` (string) — envelope address, exact match. - `headerfrom`, `replyto` (string) — header address, exact match; validated as email. - `subject` (string) — LIKE match on subject. - `mailid` (string, 18–19 chars) — relay id, exact. - `messageId` (string) — Message-ID header, substring match. - `origin` (string) — submitter IP, exact. - `mx` (string) — destination MX hostname, LIKE. - `delivered` (integer 0/1). - `startDate`, `endDate` (Unix timestamp or `strtotime`-parseable string). - `skip` (integer, default 0), `limit` (integer 1–10000, default 100). - `sort` (`time`), `dir` (`asc`/`desc`, default `desc`). - `groupby` (`recipient` default — one row per delivery attempt; `message` — one row per `_id`).  **Returns** (schema `MailLog`): `{total, skip, limit, emails: [{id, _id, from, to, subject, messageId, time, mxHostname, delivered, code, response, recipient, ...}]}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `400` bad input, `401`. 

### Example

* Api Key Authentication (`sessionIdCookieAuth`)
* Api Key Authentication (`apiKeyAuth`)
* Api Key Authentication (`sessionIdHeaderAuth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = MailApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = MailApi.new(config, client)


# Invoke an endpoint
api.view_mail_log(
	# id: int   Eg: 56
	# The mail service ID. Use `mail_id` from `GET /mail`.
	id,
	# id2: float   Eg: 2604
	# The numeric ID of the mail order to filter by.  When omitted, logs from the first active mail order are returned.  Obtain valid IDs from `GET /mail` or `GET /mail/{id}`.
	id2,
	# origin: String = ""   Eg: 1.2.3.4
	# Filter by the originating IP address from which the message was submitted to the relay.  Must be a valid IPv4 or IPv6 address.
	origin,
	# mx: String = ""   Eg: mx.google.com
	# Filter by the MX hostname the relay attempted delivery to.  For example `mx.google.com` would return messages destined for Gmail recipients. Maps to `mxHostname` in the `MailLogEntry` response.
	mx,
	# from: String   Eg: me@sender.com
	# Filter by SMTP envelope `MAIL FROM` address (exact match).  This is the address the relay used for bounce handling and may differ from the `From:` message header.  For header-level filtering use `headerfrom`.
	from,
	# to: String   Eg: you@receiver.com
	# Filter by SMTP envelope `RCPT TO` address (exact match).  This is the delivery address used by the relay and may differ from the `To:` header when BCC recipients are involved.
	to,
	# subject: String = ""   Eg: Your order has shipped
	# Filter by email `Subject` header (exact match).  MIME-encoded subjects are decoded automatically in the response.
	subject,
	# mailid: String = ""   Eg: 185997065c60008840
	# Filter by the relay-assigned mail ID string (exact match).  This corresponds to the `id` field in `MailLogEntry` and to the `text` value returned by the sending endpoints on success.  Format is an 18-19 character hexadecimal string such as `185997065c60008840`.
	mailid,
	# messageId: String = ""   Eg: <abc123@yourdomain.com>
	# Filter by the `Message-ID` email header using a substring (case-insensitive) match. The `Message-ID` is assigned by the sending mail client and is visible in the `messageId` field of `MailLogEntry`.
	messageId,
	# replyto: String   Eg: replies@sender.com
	# Filter by the `Reply-To` message header address (exact match).  Only returns messages where this header was explicitly set.
	replyto,
	# headerfrom: String   Eg: newsletter@sender.com
	# Filter by the `From` message header address (exact match).  This is the human-visible sender address and may differ from the SMTP envelope `from` parameter when sending on behalf of another address.
	headerfrom,
	# delivered: int   Eg: 1
	# Filter by delivery status.  `1` returns only messages that were successfully delivered to the destination MX.  `0` returns messages that are still queued, deferred, or failed.  Omit to return all messages regardless of delivery status.
	delivered,
	# skip: int = 0   Eg: 0
	# Number of records to skip for pagination.  Use in combination with `limit` to page through large result sets.  Defaults to `0` (no skip).
	skip,
	# limit: int = 100   Eg: 100
	# Maximum number of records to return per page.  Defaults to `100`. Maximum allowed value is `10000`.  The response also includes a `total` field with the full matched count so you can calculate the number of pages.
	limit,
	# startDate: ViewMailLogStartDateParameter   Eg: 1641781008
	# Earliest date to include.  Accepts either a Unix timestamp (integer seconds since epoch) or a date string parseable by `strtotime()` such as `2024-01-15` or `last monday`.  Messages with a `time` value **greater than or equal to** this value will be included.
	startDate,
	# endDate: ViewMailLogStartDateParameter   Eg: 1673317008
	# Latest date to include.  Accepts either a Unix timestamp (integer seconds since epoch) or a date string parseable by `strtotime()` such as `2024-01-31` or `yesterday`. Messages with a `time` value **less than or equal to** this value will be included.
	endDate,
	# sort: String = "time"   Eg: time
	# Field to sort results by.  Currently only `time` is supported (sorts by internal row ID which corresponds to chronological order).
	sort,
	# dir: String = "desc"   Eg: desc
	# Sort direction.  `desc` returns newest first (default), `asc` returns oldest first.
	dir,
	# groupby: String = "recipient"   Eg: recipient
	# Controls how results are grouped.  `recipient` (default) returns one row per delivery attempt — a message sent to 4 recipients produces 4 rows, each with its own `recipient`, `delivered`, `response`, and delivery metadata.  `message` collapses to one row per unique message ID; delivery-level fields will reflect one arbitrary recipient per message.  The `total` count in the response matches the grouping mode.
	groupby,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "view_mail_log", response)
		assert(response.data is MailLog)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```


### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), 
[sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth), 
[sessionIdCookieAuth](../README.md#sessionIdCookieAuth)

[[Back to top]](#__pageTop) \
[[Back to API list]](../README.md#documentation-for-api-endpoints) \
[[Back to Model list]](../README.md#documentation-for-models) \
[[Back to README]](../README.md) \

