-module(interserver_api_mail_api).

-export([add_mail/2, add_mail/3,
         add_rule/3, add_rule/4,
         create_mail_alert/3, create_mail_alert/4,
         delete_mail_alert/3, delete_mail_alert/4,
         delete_rule/3, delete_rule/4,
         delist_block/2, delist_block/3,
         get_mail_alerts/2, get_mail_alerts/3,
         get_mail_blocks/2, get_mail_blocks/3,
         get_mail_delist/2, get_mail_delist/3,
         get_mail_deliverability/2, get_mail_deliverability/3,
         get_mail_info/2, get_mail_info/3,
         get_mail_invoices/2, get_mail_invoices/3,
         get_mail_list/1, get_mail_list/2,
         get_mail_welcome_email/2, get_mail_welcome_email/3,
         get_new_mail/1, get_new_mail/2,
         get_rules/2, get_rules/3,
         get_stats/2, get_stats/3,
         mail_cancel/2, mail_cancel/3,
         post_mail_delist/3, post_mail_delist/4,
         put_mail/2, put_mail/3,
         reset_mail_password/2, reset_mail_password/3,
         send_adv_mail/3, send_adv_mail/4,
         send_mail/3, send_mail/4,
         update_mail_alert/3, update_mail_alert/4,
         update_mail_info/2, update_mail_info/3,
         update_rule/4, update_rule/5,
         view_mail_log/2, view_mail_log/3]).

-define(BASE_URL, <<"/apiv2">>).

%% @doc Place a new Mail Baby order, generate invoice, and queue provisioning
%% Step 3 of the Mail Baby order flow. Revalidates via `validate_buy_mail()`, then calls `place_buy_mail()` to create a `Repeat_Invoice` recurring billing row, an initial `invoices` row, and a `mail` service record in pending status. SMTP credentials become active once the activation worker runs the welcome email (after the invoice is paid). **Real money** — call `putMail` first. Sibling ops: `getNewMail`, `putMail`, `getMailInfo`, `initiatePayment`.  **Body fields:** - `serviceType` (integer, required) — plan id from `getNewMail`. - `coupon` (string, optional). - `comment` (string, optional) — saved on the order row.  **Returns** (on success): `{continue: true, total_cost, iid, iids, real_iids, serviceId (new mail_id), invoice_description, cj_params}` — pass `real_iids` to `initiatePayment`. On validation failure: `{continue: false, errors: [...]}` with HTTP 200.  **Side effects:** - Inserts `mail` service row in `pending` status. - Inserts `repeat_invoices` + `invoices` rows.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Pay:** `initiatePayment` with `real_iids`. - **Confirm activation:** `getMailInfo` (poll until `mail_status=='active'`). - **Resend credentials:** `getMailWelcomeEmail`.  **Full ordering happy path:** ```text GET /mail/order                                    -> catalog (getNewMail) PUT /mail/order { serviceType, coupon? }           -> quote (putMail) POST /mail/order { serviceType, coupon?, comment? } -> { serviceId, real_iids } GET /billing/pay/cc/{real_iids[0]}                 -> pay (initiatePayment) GET /mail/{serviceId}                              -> poll until mail_status=='active' ``` 
-spec add_mail(ctx:ctx(), interserver_api_mail_order_request:interserver_api_mail_order_request()) -> {ok, interserver_api_service_order_post_response:interserver_api_service_order_post_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
add_mail(Ctx, InterserverApiMailOrderRequest) ->
    add_mail(Ctx, InterserverApiMailOrderRequest, #{}).

-spec add_mail(ctx:ctx(), interserver_api_mail_order_request:interserver_api_mail_order_request(), maps:map()) -> {ok, interserver_api_service_order_post_response:interserver_api_service_order_post_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
add_mail(Ctx, InterserverApiMailOrderRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/mail/order"],
    QS = [],
    Headers = [],
    Body1 = InterserverApiMailOrderRequest,
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create a new deny rule to auto-block matching submissions
%% Inserts a new `mail_spam` row scoped to this service's `mail_username` so the relay drops matching submissions. Sibling ops: `getRules`, `updateRule`, `deleteRule`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (schema `DenyRuleNew`):** - `type` (string, required) — `domain` / `email` / `startswith` / `destination`. - `data` (string, required) — literal value matched; validation: no quotes, valid domain for `type=domain`, valid email for `type=email`, `[A-Z0-9+_.-]+` for `startswith`.  **Returns:** `\"Spam Block Added\"`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** field-level errors on validation failure, `401`, `404`, `409 not active`. 
-spec add_rule(ctx:ctx(), integer(), interserver_api_deny_rule_new:interserver_api_deny_rule_new()) -> {ok, interserver_api_generic_response:interserver_api_generic_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
add_rule(Ctx, Id, InterserverApiDenyRuleNew) ->
    add_rule(Ctx, Id, InterserverApiDenyRuleNew, #{}).

-spec add_rule(ctx:ctx(), integer(), interserver_api_deny_rule_new:interserver_api_deny_rule_new(), maps:map()) -> {ok, interserver_api_generic_response:interserver_api_generic_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
add_rule(Ctx, Id, InterserverApiDenyRuleNew, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/mail/", Id, "/rules"],
    QS = [],
    Headers = [],
    Body1 = InterserverApiDenyRuleNew,
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"application/json">>, <<"application/x-www-form-urlencoded">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create a new Mail Baby alert for delivery, bounce, or quota events
%% Inserts a new alert row via the `Alert` ORM. The new `alert_id` is retrievable via `getMailAlerts`. Sibling ops: `getMailAlerts`, `updateMailAlert`, `deleteMailAlert`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (schema `MailAlertRequest`):** - `type` (string, required). - `value` (string/numeric, required) — threshold. - `to` (string, required) — notification email; validated via `FILTER_VALIDATE_EMAIL`. - `enabled` (bool, optional).  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** field-level errors for missing/invalid body, `401`, `404`, `409 not active`. 
-spec create_mail_alert(ctx:ctx(), integer(), interserver_api_mail_alert_request:interserver_api_mail_alert_request()) -> {ok, interserver_api_success_text_response:interserver_api_success_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
create_mail_alert(Ctx, Id, InterserverApiMailAlertRequest) ->
    create_mail_alert(Ctx, Id, InterserverApiMailAlertRequest, #{}).

-spec create_mail_alert(ctx:ctx(), integer(), interserver_api_mail_alert_request:interserver_api_mail_alert_request(), maps:map()) -> {ok, interserver_api_success_text_response:interserver_api_success_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
create_mail_alert(Ctx, Id, InterserverApiMailAlertRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/mail/", Id, "/alerts"],
    QS = [],
    Headers = [],
    Body1 = InterserverApiMailAlertRequest,
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"application/json">>, <<"multipart/form-data">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete a Mail Baby alert by alert_id (hard delete — no recovery)
%% Hard-deletes a single alert row. Handler verifies the alert belongs to this service+module before deleting. **Irreversible** — no history is preserved; recreate via `createMailAlert` if needed. Sibling ops: `getMailAlerts`, `createMailAlert`, `updateMailAlert`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields:** - `alert_id` (integer, required) — from `getMailAlerts`.  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `Invalid alert!` (alert not owned), `401`, `404`, `409 not active`. 
-spec delete_mail_alert(ctx:ctx(), integer(), interserver_api_delete_mail_alert_request:interserver_api_delete_mail_alert_request()) -> {ok, interserver_api_success_text_response:interserver_api_success_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
delete_mail_alert(Ctx, Id, InterserverApiDeleteMailAlertRequest) ->
    delete_mail_alert(Ctx, Id, InterserverApiDeleteMailAlertRequest, #{}).

-spec delete_mail_alert(ctx:ctx(), integer(), interserver_api_delete_mail_alert_request:interserver_api_delete_mail_alert_request(), maps:map()) -> {ok, interserver_api_success_text_response:interserver_api_success_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
delete_mail_alert(Ctx, Id, InterserverApiDeleteMailAlertRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/mail/", Id, "/alerts"],
    QS = [],
    Headers = [],
    Body1 = InterserverApiDeleteMailAlertRequest,
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"application/json">>, <<"multipart/form-data">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete a Mail Baby deny rule by rule ID (hard delete — no recovery)
%% Hard-deletes a single `mail_spam` row scoped to this service's `mail_username`. **Irreversible** — no audit copy preserved. Query filter `id={rule} AND user='{mail_username}'` prevents cross-tenant deletes; passing a `rule` belonging to a different mail order is silently a no-op (still returns success). Sibling ops: `getRules`, `addRule`, `updateRule`.  **Path params:** - `id` (integer, required) — `mail_id` from `getMailList`. - `rule` (string, required) — rule id from `getRules`.  **Returns:** `\"Block deleted successfully.\"`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404`, `409 not active`. 
-spec delete_rule(ctx:ctx(), integer(), binary()) -> {ok, interserver_api_generic_response:interserver_api_generic_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
delete_rule(Ctx, Id, Rule) ->
    delete_rule(Ctx, Id, Rule, #{}).

-spec delete_rule(ctx:ctx(), integer(), binary(), maps:map()) -> {ok, interserver_api_generic_response:interserver_api_generic_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
delete_rule(Ctx, Id, Rule, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/mail/", Id, "/rules/", Rule, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delist a sender email from rspamd / mailchannels / mailbaby block lists
%% Removes block rows for the supplied email across the three reputation stores: `rspamd` (by `fromemail`), `mailchannels` (by `email`), `mailbaby` (by `emailfrom`). Functionally equivalent to `postMailDelist` but uses `email` parameter naming and returns 400 (not error JSON) for an invalid address. Sibling ops: `getMailBlocks`, `getMailDelist`, `postMailDelist`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (schema `EmailAddress`):** - `email` (string, required) — sender address; validated via `FILTER_VALIDATE_EMAIL`.  **Returns:** `{status: \"ok\", text: \"Email '...' removed from block list\"}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `400` invalid email, `401`, `404`, `409 not active`. 
-spec delist_block(ctx:ctx(), integer()) -> {ok, interserver_api_generic_response:interserver_api_generic_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
delist_block(Ctx, Id) ->
    delist_block(Ctx, Id, #{}).

-spec delist_block(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_generic_response:interserver_api_generic_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
delist_block(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/mail/", Id, "/blocks/delete"],
    QS = [],
    Headers = [],
    Body1 = {form, []++interserver_api_utils:optional_params(['email'], _OptionalParams)},
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"multipart/form-data">>, <<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List configured delivery/bounce/quota alerts for one Mail Baby service
%% Returns every alert row from `alerts` matching this service. Each row carries `alert_id` (use with PUT/DELETE), `alert_type`, `alert_value` (threshold), `alert_to` (notification email), `alert_enabled`, and timestamps. Sibling ops: `createMailAlert`, `updateMailAlert`, `deleteMailAlert`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns** (schema `MailAlertsResponse`): array of alert rows.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404`, `409 not active`. 
-spec get_mail_alerts(ctx:ctx(), integer()) -> {ok, interserver_api_mail_alerts_response:interserver_api_mail_alerts_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_mail_alerts(Ctx, Id) ->
    get_mail_alerts(Ctx, Id, #{}).

-spec get_mail_alerts(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_mail_alerts_response:interserver_api_mail_alerts_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_mail_alerts(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mail/", Id, "/alerts"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List recent local-blocklist hits and spam-trap captures for the mail user
%% Returns relay-side block events for the SMTP user behind `mail_id` — the last 24 hours of `LOCAL_BL_RCPT` and `MBTRAP` rspamd hits, plus a 3-day window of suspicious-subject hits (credential-leak heuristic firing on subjects containing `@` / `smtp` / `socks5` / `socks4` more than 4 times). Use the `from` value with `delistBlock` or `postMailDelist` to clear a block. Sibling ops: `delistBlock`, `getMailDelist`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns** (schema `MailBlocks`): - `local` (array) — rspamd `LOCAL_BL_RCPT` hits: `{date, from, messageId, subject, to}`. - `mbtrap` (array) — spam-trap captures (`MBTRAP` symbol): same shape. - `subject` (array) — senders flagged by subject-line heuristic: `{from, subject}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `mail_status != \"active\"`.  **Related calls:** - **Clear a block:** `delistBlock` (POST `/mail/{id}/blocks/delete`). - **Broader delist UI:** `getMailDelist`, `postMailDelist`. 
-spec get_mail_blocks(ctx:ctx(), integer()) -> {ok, interserver_api_mail_blocks:interserver_api_mail_blocks(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_mail_blocks(Ctx, Id) ->
    get_mail_blocks(Ctx, Id, #{}).

-spec get_mail_blocks(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_mail_blocks:interserver_api_mail_blocks(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_mail_blocks(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mail/", Id, "/blocks"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Read blocklist diagnostics and find senders eligible for delisting
%% Returns a richer diagnostic snapshot than `getMailBlocks` — intended for the delist UI. Use any `SMTPFrom`/`from` value as the `unblock` field for `postMailDelist`. Sibling ops: `postMailDelist`, `getMailBlocks`, `delistBlock`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns** (schema `MailDelistResponse`): - `id` (integer) — `mail_id` echo. - `local`, `mbtrap` (array) — last 24h rspamd hits with capitalized keys (`Date`, `SMTPFrom`, `MessageId`, `Subject`, `MimeRecipients`). - `subject` (array) — credential-leak-heuristic firings (3-day window). - `manual` (array) — manually added blocks.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404`, `409 not active`. 
-spec get_mail_delist(ctx:ctx(), integer()) -> {ok, interserver_api_mail_delist_response:interserver_api_mail_delist_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_mail_delist(Ctx, Id) ->
    get_mail_delist(Ctx, Id, #{}).

-spec get_mail_delist(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_mail_delist_response:interserver_api_mail_delist_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_mail_delist(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mail/", Id, "/delist"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Read delivered vs bounced totals broken down by sender (or by recipient domain)
%% Returns deliverability analytics from `MailDeliveryStats` (Dragonfly cache) for the SMTP user behind `mail_id`. Default pivot is by sender; pass `?filter_domain=1` to pivot by recipient domain for the current year instead. Use to drive analytics dashboards. Sibling ops: `getStats`, `viewMailLog`, `getMailBlocks`, `getMailDelist`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Query params:** - `filter_domain` (string `1`, optional) — pivot by recipient domain instead of sender.  **Returns** (schema `MailDeliverabilityResponse`): - `stat`: `{delivered, bounced, percent}` — totals and bounce ratio. - `header` (string), `col1` (string) — table headers. - `table_data` (array) — rows of `[<sender-or-domain>, bounced, delivered, bouncePercent]`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404`, `409 not active`. 
-spec get_mail_deliverability(ctx:ctx(), integer()) -> {ok, interserver_api_mail_deliverability_response:interserver_api_mail_deliverability_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_mail_deliverability(Ctx, Id) ->
    get_mail_deliverability(Ctx, Id, #{}).

-spec get_mail_deliverability(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_mail_deliverability_response:interserver_api_mail_deliverability_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_mail_deliverability(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mail/", Id, "/deliverability"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Read full detail for one Mail Baby service including SMTP credentials
%% Returns the full `ViewMail` payload for one Mail Baby service — `serviceInfo`, `serviceType`, and `client_links` (URLs rewritten to API paths, e.g. `view_mail_log` → `log`). Admin fields (`admin_links`, `settings`, `csrf`) stripped. Use to render a service dashboard or retrieve SMTP host/username for MTA configuration. Sibling ops: `getMailList`, `updateMailInfo`, `mailCancel`, `resetMailPassword`, `getMailWelcomeEmail`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns** (schema `MailSchema`): - `serviceInfo` — `mail_id`, `mail_username` (e.g. `mb1234`), `mail_status`, `mail_invoice`, `mail_custid`, dates, currency. - `serviceType` — plan row (`services_ourcost` stripped). - `client_links` (array) — action URLs (log, alerts, blocks, etc.).  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller.  **Related calls:** - **Send:** `sendMail` / `sendAdvMail`. - **Rotate password:** `resetMailPassword`. - **Reset credentials:** `getMailWelcomeEmail`. - **Cancel:** `mailCancel`. 
-spec get_mail_info(ctx:ctx(), integer()) -> {ok, interserver_api_mail_schema:interserver_api_mail_schema(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_mail_info(Ctx, Id) ->
    get_mail_info(Ctx, Id, #{}).

-spec get_mail_info(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_mail_schema:interserver_api_mail_schema(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_mail_info(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mail/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List billing invoices linked to this Mail Baby service
%% Returns every invoice associated with this `mail_id` via the shared `InvoicesList` workflow. Use to render per-service billing history or find unpaid invoices to pay via `initiatePayment`. Sibling ops: `getBillingInvoice`, `initiatePayment`, `addMail`, `mailCancel`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns:** `ChargeInvoiceRows` — array of `{id, amount, currency, paid, date, due_date, description, module: \"mail\", service}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404 Invalid Service`. 
-spec get_mail_invoices(ctx:ctx(), integer()) -> {ok, interserver_api_charge_invoice_rows:interserver_api_charge_invoice_rows(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_mail_invoices(Ctx, Id) ->
    get_mail_invoices(Ctx, Id, #{}).

-spec get_mail_invoices(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_charge_invoice_rows:interserver_api_charge_invoice_rows(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_mail_invoices(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mail/", Id, "/invoices"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List every Mail Baby SMTP relay service on the account
%% Enumerates every Mail Baby SMTP relay service owned by the authenticated customer. Canonical entry point for finding a `mail_id` to pass to other Mail endpoints. Filtered server-side by `mail_custid`. Sibling ops: `getMailInfo`, `getStats`, `viewMailLog`, `getMailDeliverability`, `getMailBlocks`, `getMailInvoices`, `addMail`.  **Path/Query/Body:** None.  **Returns:** Array of `MailRow`: - `mail_id` (integer) — canonical id. - `mail_username` (string) — SMTP username (e.g. `mb1234`). - `mail_status` (string enum) — `active` / `pending` / `canceled` / `suspended`. - `services_name` (string) — plan label. - `repeat_invoices_cost` (decimal string) — recurring cost.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Per-service detail:** `getMailInfo`. - **Send mail:** `sendMail` / `sendAdvMail`. - **Reputation:** `getMailDeliverability` / `getMailBlocks` / `getMailDelist`. - **Order a new service:** `getNewMail` → `putMail` → `addMail`. 
-spec get_mail_list(ctx:ctx()) -> {ok, [interserver_api_mail_row:interserver_api_mail_row()], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_mail_list(Ctx) ->
    get_mail_list(Ctx, #{}).

-spec get_mail_list(ctx:ctx(), maps:map()) -> {ok, [interserver_api_mail_row:interserver_api_mail_row()], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_mail_list(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mail"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Resend the Mail Baby welcome email with SMTP credentials and setup info
%% Re-runs the `mail_welcome_email` plugin function — composes and sends the standard welcome email (SMTP host `relay.mailbaby.net`, port, username `mb{mail_id}`, current password, configuration tips) to the account-on-file. Use after `resetMailPassword` to redeliver the rotated credential, or when a customer reports losing the original setup email. Idempotent. Sibling ops: `resetMailPassword`, `getMailInfo`. Cross-module welcome-email endpoints: `getVpsWelcomeEmail`, `getWebsitesWelcomeEmail`, `getDomainsWelcomeEmail`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns:** `{text: \"Welcome Email has been resent.\"}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404`, `409 not active`. 
-spec get_mail_welcome_email(ctx:ctx(), integer()) -> {ok, interserver_api_success_text_response:interserver_api_success_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_mail_welcome_email(Ctx, Id) ->
    get_mail_welcome_email(Ctx, Id, #{}).

-spec get_mail_welcome_email(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_success_text_response:interserver_api_success_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_mail_welcome_email(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mail/", Id, "/welcome_email"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Read the Mail Baby order catalog — plans, package costs, service-type metadata
%% Step 1 of the Mail Baby order flow. Returns the catalog used to bootstrap an order form: `packageCosts` keyed by `services_id` (only buyable services where `services_buyable=1`) and the full `serviceTypes` map. Read-only. Pricing is normalized to the customer's currency via `getCurrency()`. Sibling ops: `putMail`, `addMail`, `getMailList`.  **Path/Query/Body:** None.  **Returns** (schema `MailOrder`): - `packageCosts` (object) — `{<services_id>: <cost>}` per buyable plan. - `serviceTypes` (object) — full service-types registry (plan metadata).  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Next:** `putMail` (validate + quote — no charge), `addMail` (place order). 
-spec get_new_mail(ctx:ctx()) -> {ok, interserver_api_mail_order:interserver_api_mail_order(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_new_mail(Ctx) ->
    get_new_mail(Ctx, #{}).

-spec get_new_mail(ctx:ctx(), maps:map()) -> {ok, interserver_api_mail_order:interserver_api_mail_order(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_new_mail(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mail/order"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List configured deny rules (sender/recipient blocks) for a Mail Baby service
%% Returns every `mail_spam` row scoped to this service's `mail_username` — local sender/recipient block rules the customer has configured. Sibling ops: `addRule`, `updateRule`, `deleteRule`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns:** Array of `DenyRuleRecord` — `{id, user, type, data, created}`. `type` values: - `domain` — block by sender domain. - `email` — block by exact sender email. - `startswith` — block when sender local-part starts with a string. - `destination` — block by recipient email.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404`, `409 not active`. 
-spec get_rules(ctx:ctx(), integer()) -> {ok, [interserver_api_deny_rule_record:interserver_api_deny_rule_record()], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_rules(Ctx, Id) ->
    get_rules(Ctx, Id, #{}).

-spec get_rules(ctx:ctx(), integer(), maps:map()) -> {ok, [interserver_api_deny_rule_record:interserver_api_deny_rule_record()], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_rules(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mail/", Id, "/rules"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Read Mail Baby usage counts, send volume totals, top destinations, and projected cost
%% Returns aggregate usage and cost metrics for the SMTP user behind `mail_id` from the ZoneMTA `mail_messagestore` / `mail_senderdelivered` tables. Use to drive an analytics dashboard or to project end-of-cycle cost. Sibling ops: `viewMailLog`, `getMailDeliverability`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Query params:** - `time` (string enum, optional, default `1h`) — window: `all` / `billing` (current invoice cycle) / `month` / `7d` / `24h` / `1d` / `1h`.  **Returns** (schema `MailStatsType`): - `time` (string) — echo of selected window. - `usage` (integer) — full-billing-cycle send count. - `currency`, `currencySymbol` (string). - `cost` (decimal) — projected = base + `$0.20 / 1000 emails`. - `received`, `sent` (integer). - `volume.to`, `volume.from`, `volume.ip` (object) — top-500 destinations / senders / origin IPs by count.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `Invalid or missing mail order id`, `401`. 
-spec get_stats(ctx:ctx(), integer()) -> {ok, interserver_api_mail_stats_type:interserver_api_mail_stats_type(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_stats(Ctx, Id) ->
    get_stats(Ctx, Id, #{}).

-spec get_stats(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_mail_stats_type:interserver_api_mail_stats_type(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_stats(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mail/", Id, "/stats"],
    QS = lists:flatten([])++interserver_api_utils:optional_params(['time'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Cancel a Mail Baby service and stop the recurring invoice
%% Cancels the Mail Baby service through the shared `Billing\\CancelService::go($id)` flow with `module='mail'`. SMTP credentials are deactivated, the service transitions to canceled, the `repeat_invoice` is stopped, and queued submissions stop being accepted. **Irreversible via API** — re-activation requires placing a new order via `addMail`. Sibling ops: `getMailInfo`, `getMailInvoices`, `addMail`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns:** `MailCancelResponse`.  **Side effects:** - Sets `mail_status='canceled'`. - Marks `repeat_invoices` non-renewing. - ZoneMTA-side: stops accepting new submissions for `mb{mail_id}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller.  **Related calls:** - **Sibling cancels:** `VPSCancel`, `CancelDomain`, `webhostingCancel`, etc. - **Re-provision:** `addMail`. 
-spec mail_cancel(ctx:ctx(), integer()) -> {ok, interserver_api_mail_cancel_200_response:interserver_api_mail_cancel_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
mail_cancel(Ctx, Id) ->
    mail_cancel(Ctx, Id, #{}).

-spec mail_cancel(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_mail_cancel_200_response:interserver_api_mail_cancel_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
mail_cancel(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/mail/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delist a sender from rspamd / mailchannels / mailbaby block lists
%% Removes all block rows for one sender email across three reputation stores: `rspamd` (by `fromemail`), `mailchannels` (by `email`), `mailbaby` (by `emailfrom`). Effect is global per-address across all three tables; takes effect immediately for new submissions. Sibling ops: `getMailDelist`, `delistBlock` (alias at `/mail/{id}/blocks/delete`), `getMailBlocks`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (schema `MailDelistRequest`):** - `unblock` (string, required) — sender email from `getMailDelist`/`getMailBlocks`.  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `Missing parameter unblock`, `401`, `404`, `409 not active`. 
-spec post_mail_delist(ctx:ctx(), integer(), interserver_api_mail_delist_request:interserver_api_mail_delist_request()) -> {ok, interserver_api_success_text_response:interserver_api_success_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
post_mail_delist(Ctx, Id, InterserverApiMailDelistRequest) ->
    post_mail_delist(Ctx, Id, InterserverApiMailDelistRequest, #{}).

-spec post_mail_delist(ctx:ctx(), integer(), interserver_api_mail_delist_request:interserver_api_mail_delist_request(), maps:map()) -> {ok, interserver_api_success_text_response:interserver_api_success_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
post_mail_delist(Ctx, Id, InterserverApiMailDelistRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/mail/", Id, "/delist"],
    QS = [],
    Headers = [],
    Body1 = InterserverApiMailDelistRequest,
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"application/json">>, <<"multipart/form-data">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Validate Mail Baby order, quote pricing, and verify coupon — no charge
%% Step 2 of the Mail Baby order flow. Dry-runs the order through `validate_buy_mail()` without creating invoices. Returns the cost preview, coupon resolution, and validation errors. The endpoint also auto-generates an SMTP password preview the order will use. Use to surface live pricing in the UI before `addMail`. Sibling ops: `getNewMail`, `addMail`.  **Body fields:** - `serviceType` (integer, required) — plan id from `getNewMail.packageCosts` keys. - `coupon` (string, optional) — coupon code.  **Returns:** - `continue` (bool) — `true` if order can safely be POSTed. - `errors` (array) — validation messages. - `serviceType`, `serviceCost`, `originalCost`, `repeatServiceCost` (numeric). - `password` (string) — auto-generated SMTP password preview. - `introFrequency` (integer). - `coupon`, `couponCode` (string/integer) — resolved coupon.  **Auth:** Session/API key.  **Errors:** - `200` with `continue=false` and `errors[]` — validation problems. - `401` — unauthenticated.  **Related calls:** - **Prerequisite:** `getNewMail` (catalog). - **Place order:** `addMail`. 
-spec put_mail(ctx:ctx(), interserver_api_mail_order_request:interserver_api_mail_order_request()) -> {ok, [], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
put_mail(Ctx, InterserverApiMailOrderRequest) ->
    put_mail(Ctx, InterserverApiMailOrderRequest, #{}).

-spec put_mail(ctx:ctx(), interserver_api_mail_order_request:interserver_api_mail_order_request(), maps:map()) -> {ok, [], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
put_mail(Ctx, InterserverApiMailOrderRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/mail/order"],
    QS = [],
    Headers = [],
    Body1 = InterserverApiMailOrderRequest,
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Rotate the SMTP password and email the new credential to the account owner
%% Generates a new 20-char SMTP password (lower/upper/digits via `generate_password`), writes it to the ZoneMTA Mongo `users` collection for username `mb{mail_id}`, logs the change to `App::history()`, and emails the result to the account-on-file via `client_email.tpl`. **Any MTA, app, or saved client still using the old password will start failing auth immediately.** The new password is **not** returned in the response — fetch via `getMailWelcomeEmail` or `getMailInfo`. Sibling ops: `getMailWelcomeEmail`, `getMailInfo`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns:** `SuccessTextResponse`.  **Side effects:** - Mongo update on ZoneMTA `users` for `mb{mail_id}`. - `App::history()` audit entry. - Email sent to account owner.  **Auth:** Session/API key. Ownership enforced.  **Errors:** Mongo update modified 0 rows → error text; `401`, `404`, `409 not active`. 
-spec reset_mail_password(ctx:ctx(), integer()) -> {ok, interserver_api_success_text_response:interserver_api_success_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
reset_mail_password(Ctx, Id) ->
    reset_mail_password(Ctx, Id, #{}).

-spec reset_mail_password(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_success_text_response:interserver_api_success_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
reset_mail_password(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mail/", Id, "/reset_password"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Send email via Mail Baby SMTP relay with attachments, CC/BCC, and multi-recipient
%% Submits an outbound message through `relay.mailbaby.net:25` using the service's SMTP credentials (fetched via `mail_get_password`). Use for multi-recipient sends, named addresses, CC/BCC, ReplyTo, or attachments. For single-recipient plain sends, `sendMail` is the lighter option. Sibling ops: `sendMail`, `viewMailLog` (find queued message), `getMailDeliverability` (analyze bounces).  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (JSON or form-urlencoded, schema `SendMailAdv`):** - `from` (string or `{email, name}`, required). - `to` (array of strings or `{email, name}` objects, required). - `subject` (string, required). - `body` (string, required) — HTML auto-detected when tags are present. - `replyto` (array, optional) — same shape as `to`. - `cc`, `bcc` (array, optional) — same shape as `to`. - `attachments` (array, optional) — each `{filename, data}` where `data` is base64-encoded; added via `addStringAttachment`.  **Returns:** `{status: \"ok\", text: \"Email queued successfully\"}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `400` with PHPMailer `ErrorInfo` on send failure or missing required field. - `401` — unauthenticated. - `404 Invalid Service Passed`. - `409 Service is not active`. 
-spec send_adv_mail(ctx:ctx(), integer(), interserver_api_send_mail_adv:interserver_api_send_mail_adv()) -> {ok, interserver_api_generic_response:interserver_api_generic_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
send_adv_mail(Ctx, Id, InterserverApiSendMailAdv) ->
    send_adv_mail(Ctx, Id, InterserverApiSendMailAdv, #{}).

-spec send_adv_mail(ctx:ctx(), integer(), interserver_api_send_mail_adv:interserver_api_send_mail_adv(), maps:map()) -> {ok, interserver_api_generic_response:interserver_api_generic_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
send_adv_mail(Ctx, Id, InterserverApiSendMailAdv, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/mail/", Id, "/advsend"],
    QS = [],
    Headers = [],
    Body1 = InterserverApiSendMailAdv,
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"application/json">>, <<"application/x-www-form-urlencoded">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Send a simple single-recipient email through the Mail Baby SMTP relay
%% Sends a single-recipient transactional email through `relay.mailbaby.net:25` authenticated as this `mail_id`. Body fields are the minimum needed for a plain send; Reply-To is auto-set to `from`. For multi-recipient sends, CC/BCC, named addresses, or attachments use `sendAdvMail` instead. Sibling ops: `sendAdvMail`, `viewMailLog`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (JSON or form-urlencoded, schema `SendMail`):** - `to` (string, required) — recipient email. - `from` (string, required) — sender email. - `subject` (string, required). - `body` (string, required) — HTML auto-detected when tags are present.  **Returns:** `{status: \"ok\", text: \"Email queued successfully\"}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `400` with PHPMailer `ErrorInfo` on send failure or missing required field, `401`, `404`, `409 not active`. 
-spec send_mail(ctx:ctx(), integer(), interserver_api_send_mail:interserver_api_send_mail()) -> {ok, interserver_api_generic_response:interserver_api_generic_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
send_mail(Ctx, Id, InterserverApiSendMail) ->
    send_mail(Ctx, Id, InterserverApiSendMail, #{}).

-spec send_mail(ctx:ctx(), integer(), interserver_api_send_mail:interserver_api_send_mail(), maps:map()) -> {ok, interserver_api_generic_response:interserver_api_generic_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
send_mail(Ctx, Id, InterserverApiSendMail, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/mail/", Id, "/send"],
    QS = [],
    Headers = [],
    Body1 = InterserverApiSendMail,
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"application/json">>, <<"application/x-www-form-urlencoded">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update an existing Mail Baby alert by alert_id
%% Updates a single alert row by `alert_id`. Handler verifies the alert belongs to this service+module before writing. Sibling ops: `getMailAlerts`, `createMailAlert`, `deleteMailAlert`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (schema `MailAlertUpdateRequest`):** - `alert_id` (integer, required) — from `getMailAlerts`. - `type` (string, required). - `value` (string/numeric, required) — threshold. - `to` (string, required) — notification email; validated via `FILTER_VALIDATE_EMAIL`. - `enabled` (bool, optional).  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `Invalid alert!` (alert not owned), field-level errors for missing/invalid body, `401`, `404`, `409 not active`. 
-spec update_mail_alert(ctx:ctx(), integer(), interserver_api_mail_alert_update_request:interserver_api_mail_alert_update_request()) -> {ok, interserver_api_success_text_response:interserver_api_success_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
update_mail_alert(Ctx, Id, InterserverApiMailAlertUpdateRequest) ->
    update_mail_alert(Ctx, Id, InterserverApiMailAlertUpdateRequest, #{}).

-spec update_mail_alert(ctx:ctx(), integer(), interserver_api_mail_alert_update_request:interserver_api_mail_alert_update_request(), maps:map()) -> {ok, interserver_api_success_text_response:interserver_api_success_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
update_mail_alert(Ctx, Id, InterserverApiMailAlertUpdateRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/mail/", Id, "/alerts"],
    QS = [],
    Headers = [],
    Body1 = InterserverApiMailAlertUpdateRequest,
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"application/json">>, <<"multipart/form-data">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc POST mutation hook for the Mail Baby service detail page
%% POST mutation hook for the Mail Baby service detail page. Currently delegates to the same `View::go()` handler as `getMailInfo` — placeholder for future field updates. Does NOT rotate credentials (use `resetMailPassword`) and does NOT change billing (use `/billing` endpoints). Sibling ops: `getMailInfo`, `mailCancel`, `resetMailPassword`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body:** Form fields.  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `mail_status != \"active\"`.  **Related calls:** - **Read:** `getMailInfo`. - **Rotate password:** `resetMailPassword`. 
-spec update_mail_info(ctx:ctx(), binary()) -> {ok, interserver_api_success_text_response:interserver_api_success_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
update_mail_info(Ctx, Id) ->
    update_mail_info(Ctx, Id, #{}).

-spec update_mail_info(ctx:ctx(), binary(), maps:map()) -> {ok, interserver_api_success_text_response:interserver_api_success_text_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
update_mail_info(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/mail/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update an existing Mail Baby deny rule's type and match data
%% Updates `type` and `data` on a single `mail_spam` row. Query is bounded by `id={rule} AND user='{mail_username}'` so cross-tenant updates are impossible. Same validation rules as `addRule`. Sibling ops: `getRules`, `addRule`, `deleteRule`.  **Path params:** - `id` (integer, required) — `mail_id` from `getMailList`. - `rule` (string, required) — rule id from `getRules`.  **Body fields (schema `DenyRuleNew`):** - `type` (string, required) — `domain` / `email` / `startswith` / `destination`. - `data` (string, required) — see `addRule` for type-specific validation.  **Returns:** `\"Record updated successfully.\"`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** field-level errors on validation failure, `401`, `404`, `409 not active`. 
-spec update_rule(ctx:ctx(), integer(), binary(), interserver_api_deny_rule_new:interserver_api_deny_rule_new()) -> {ok, interserver_api_generic_response:interserver_api_generic_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
update_rule(Ctx, Id, Rule, InterserverApiDenyRuleNew) ->
    update_rule(Ctx, Id, Rule, InterserverApiDenyRuleNew, #{}).

-spec update_rule(ctx:ctx(), integer(), binary(), interserver_api_deny_rule_new:interserver_api_deny_rule_new(), maps:map()) -> {ok, interserver_api_generic_response:interserver_api_generic_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
update_rule(Ctx, Id, Rule, InterserverApiDenyRuleNew, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/mail/", Id, "/rules/", Rule, ""],
    QS = [],
    Headers = [],
    Body1 = InterserverApiDenyRuleNew,
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"application/json">>, <<"multipart/form-data">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search and paginate per-message Mail Baby delivery log entries
%% Paginated search over ZoneMTA's `mail_messagestore` joined with `mail_senderdelivered` and `mail_queuerelease`. Supports envelope, header, and metadata filters; sortable; choose recipient-level or message-level grouping. Use to investigate delivery issues, find specific messages by Message-ID, audit bounce rates, or feed an analytics dashboard. Sibling ops: `getStats`, `getMailDeliverability`, `delistBlock` (clear a block surfaced by a bounce).  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList` (omit to span all owned mail users — admin-only).  **Query params:** - `from`, `to` (string) — envelope address, exact match. - `headerfrom`, `replyto` (string) — header address, exact match; validated as email. - `subject` (string) — LIKE match on subject. - `mailid` (string, 18–19 chars) — relay id, exact. - `messageId` (string) — Message-ID header, substring match. - `origin` (string) — submitter IP, exact. - `mx` (string) — destination MX hostname, LIKE. - `delivered` (integer 0/1). - `startDate`, `endDate` (Unix timestamp or `strtotime`-parseable string). - `skip` (integer, default 0), `limit` (integer 1–10000, default 100). - `sort` (`time`), `dir` (`asc`/`desc`, default `desc`). - `groupby` (`recipient` default — one row per delivery attempt; `message` — one row per `_id`).  **Returns** (schema `MailLog`): `{total, skip, limit, emails: [{id, _id, from, to, subject, messageId, time, mxHostname, delivered, code, response, recipient, ...}]}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `400` bad input, `401`. 
-spec view_mail_log(ctx:ctx(), integer()) -> {ok, interserver_api_mail_log:interserver_api_mail_log(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
view_mail_log(Ctx, Id) ->
    view_mail_log(Ctx, Id, #{}).

-spec view_mail_log(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_mail_log:interserver_api_mail_log(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
view_mail_log(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mail/", Id, "/log"],
    QS = lists:flatten([])++interserver_api_utils:optional_params(['id', 'origin', 'mx', 'from', 'to', 'subject', 'mailid', 'messageId', 'replyto', 'headerfrom', 'delivered', 'skip', 'limit', 'startDate', 'endDate', 'sort', 'dir', 'groupby'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


