-module(interserver_api_public_api).

-export([get_account_currencies/1, get_account_currencies/2,
         get_account_locales/1, get_account_locales/2,
         get_captcha/1, get_captcha/2,
         get_countries/1, get_countries/2,
         get_info/1, get_info/2,
         get_login_info/1, get_login_info/2,
         get_mp_servers/1, get_mp_servers/2,
         get_oauth_redirect/2, get_oauth_redirect/3,
         get_timezones/1, get_timezones/2,
         patch_oauth_two_factor/2, patch_oauth_two_factor/3,
         ping_server/1, ping_server/2,
         post_oauth_callback/3, post_oauth_callback/4,
         submit_login/3, submit_login/4,
         submit_signup/2, submit_signup/3]).

-define(BASE_URL, <<"/apiv2">>).

%% @doc List enabled currency codes accepted for billing and preferences
%% Populates a currency selector on signup, billing-preferences, or invoice-display forms. Public — no auth required. The list changes only when an admin enables/disables a currency — cache client-side. Sibling ops: `getCountries`, `getTimezones`, `getAccountLocales`, plus the billing-preference endpoints under `/account/_*` and `/billing/_*`.  **Path/Query/Body:** None.  **Returns:** flat JSON array of ISO-4217 currency codes — e.g. `[\"USD\", \"EUR\", \"GBP\", \"INR\"]`. Sourced from rows in the `currencies` table where `currency_enabled=1`, in the natural row order. The endpoint returns codes only — for symbols, decimals, or exchange rates use a separate currency-detail endpoint or a static client-side map.  **Auth:** None.  **Errors:** No documented error path.  **Related calls:** - **Apply to account profile:** `updateAccountInfo`. - **Other preference catalogs:** `getCountries`, `getTimezones`, `getAccountLocales`. 
-spec get_account_currencies(ctx:ctx()) -> {ok, [binary()], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_account_currencies(Ctx) ->
    get_account_currencies(Ctx, #{}).

-spec get_account_currencies(ctx:ctx(), maps:map()) -> {ok, [binary()], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_account_currencies(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/account/currencies"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List supported UI locales with English and native display names
%% Renders the language-picker for account preferences or login pages. Public — no auth required. Cross-references PHP's Punic locale data with `locale/google_langs.php` so only locales with Google Translate support are returned. Result is essentially static — cache client-side. Sibling ops: `getCountries`, `getTimezones`, `getAccountCurrencies`, `updateAccountInfo` (consumes the chosen locale).  **Path/Query/Body:** None.  **Returns:** JSON object keyed by BCP-47-style locale code, with `{ name, local_name }` per entry — e.g.      {       \"en\": { \"name\": \"English\", \"local_name\": \"English\" },       \"es\": { \"name\": \"Spanish\", \"local_name\": \"español\" },       \"fr\": { \"name\": \"French\", \"local_name\": \"français\" }     }  `name` is the English label; `local_name` is the locale's name in its own language (good for accessibility and avoiding the wrong-script problem).  **Auth:** None.  **Errors:** No documented error path.  **Related calls:** - **Apply to account profile:** `updateAccountInfo` (sets `locale`). - **Other preference catalogs:** `getCountries`, `getTimezones`, `getAccountCurrencies`. 
-spec get_account_locales(ctx:ctx()) -> {ok, maps:map(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_account_locales(Ctx) ->
    get_account_locales(Ctx, #{}).

-spec get_account_locales(ctx:ctx(), maps:map()) -> {ok, maps:map(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_account_locales(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/account/locales"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Fetch a base64 JPEG captcha challenge for human verification
%% Fetches a fresh captcha challenge image to display before submitting `submitSignup` (or any unauthenticated form that needs human verification). Public endpoint — no authentication required. Sibling ops: `getLoginInfo` (returns a captcha alongside other login-page data), `submitSignup` (consumes the answer), `submitLogin`.  **Path/Query/Body:** None.  **Returns:** `{ captcha: string }` — `captcha` is a `data:image/jpeg;base64,...` URL ready to drop into an `<img src>`.  **Side effects:** the phrase is stored server-side in `$_SESSION['captcha']` (also aliased to the signup-flow key `$_SESSION['captchaSignup']` and forgot-password key `$_SESSION['captchaFP']`). The browser must send the same `PHPSESSID` cookie back when posting the answer.  **Charset:** 8 chars from `3456789ABCDEFGHJKLMNPQRSTWXY` — no ambiguous `0`/`1`/`I`/`O`/`2`/`Z`.  **Related calls:** - **Consumers:** `submitSignup`, `submitLogin`. - **One-shot login bootstrap:** `getLoginInfo`. answer in `captcha` field). 
-spec get_captcha(ctx:ctx()) -> {ok, interserver_api_captcha_response:interserver_api_captcha_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_captcha(Ctx) ->
    get_captcha(Ctx, #{}).

-spec get_captcha(ctx:ctx(), maps:map()) -> {ok, interserver_api_captcha_response:interserver_api_captcha_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_captcha(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/captcha"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List enabled countries keyed by ISO-2/ISO-3/numeric code
%% Populates country dropdowns in account registration, billing-address forms, and domain/whois contact forms. Public — no auth required. Disabled countries (e.g. embargoed jurisdictions) are excluded — admins toggle this in `country_t.enabled`. Sibling ops: `getTimezones`, `getAccountLocales`, `getAccountCurrencies`, `updateAccountInfo` (consumes the chosen country).  **Query parameters:** - `fetch_by` (string, optional) — one of `iso2` (default; two-letter codes like `US`, `GB`), `iso3` (three-letter like `USA`, `GBR`), or `numcode` (UN M49 numeric like `840`). Any other value silently falls back to `iso2`.  **Body:** None.  **Returns:** JSON object mapping the chosen key format to the country's short name — e.g. `{ \"AF\": \"Afghanistan\", \"US\": \"United States\", \"ZW\": \"Zimbabwe\" }`. Sourced from the `country_t` table, filtered to `enabled=1`, ordered alphabetically by `short_name`.  **Auth:** None.  **Errors:** No documented error path.  **Related calls:** - **Apply to account profile:** `updateAccountInfo`. - **Other preference catalogs:** `getTimezones`, `getAccountLocales`, `getAccountCurrencies`. 
-spec get_countries(ctx:ctx()) -> {ok, maps:map(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_countries(Ctx) ->
    get_countries(Ctx, #{}).

-spec get_countries(ctx:ctx(), maps:map()) -> {ok, maps:map(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_countries(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/account/countries"],
    QS = lists:flatten([])++interserver_api_utils:optional_params(['fetch_by'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Discover available modules, service packages, categories, and types
%% Enumerates what services this MyAdmin install sells before placing orders or building a signup UI. Public — no auth required. Sibling ops: `getNewVps`, `getNewWebsite`, `getNewMail`, `getNewSsl`, `getNewLicense`, `getNewBackup`, `getNewQs`, `getNewServer` — each module's catalog op for buyable-package details.  **Path/Query/Body:** None.  **Returns:** `{ modules, services, serviceTypes, serviceCategories }`. - `modules` (array) — enabled plugin modules (`vps`, `webhosting`, `domains`, `ssl`, etc.). - `services` (object) — map of `services_id` → row from the `services` table, filtered to `services_buyable=1 AND services_hidden=0`, with `services_ourcost` / `services_hidden` stripped, and `services_id` / `services_category` / `services_type` cast to int and `services_cost` cast to float. - `serviceTypes` (object) — joins service rows to human-readable type names. - `serviceCategories` (object) — joins service rows to category names.  **Auth:** None.  **Errors:** No documented error path; 401 only if a stricter auth layer is added upstream.  **Related calls:** - **Module-specific order catalog:** `getNewVps`, `getNewWebsite`, `getNewMail`, `getNewSsl`, `getNewLicense`, `getNewBackup`, `getNewQs`, `getNewServer`. - **Deeper health probe:** `pingServer`. 
-spec get_info(ctx:ctx()) -> {ok, interserver_api_services_info:interserver_api_services_info(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_info(Ctx) ->
    get_info(Ctx, #{}).

-spec get_info(ctx:ctx(), maps:map()) -> {ok, interserver_api_services_info:interserver_api_services_info(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_info(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/info"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Fetch logo, captcha, language, and stats for rendering a login page
%% Bootstraps an unauthenticated login page in one round-trip — branding logo, fresh captcha challenge, auto-detected user language, and live counts of VPS / websites / servers managed by the system (often used as marketing stats). Public — no auth required. Sibling ops: `submitLogin` (consume the captcha), `getCaptcha` (refresh captcha only), `getAccountLocales`, `submitSignup`.  **Path/Query/Body:** None.  **Returns** `{ logo, captcha, language, counts }`: - `logo` (string) — URL; uses the `LOGO` constant or a default. - `captcha` (string) — `data:image/jpeg;base64,...` image; phrase is stored server-side under `$_SESSION['captcha']` (also aliased to `$_SESSION['captchaSignup']` and `$_SESSION['captchaFP']`) — the browser's `PHPSESSID` cookie carries the phrase to `submitLogin` / `submitSignup`. - `language` (string) — BCP-47 locale (e.g. `en-US`). - `counts` (object) — `{ vps: int, websites: int, servers: int }` from live `SELECT COUNT(*)` on the underlying tables.  **Auth:** None.  **Errors:** `403` per `LoginResponseError` if a stricter login gate is configured upstream.  **Related calls:** - **Next:** `submitLogin` (login form post) or `submitSignup` (new account). - **Captcha refresh only:** `getCaptcha`. - **OAuth alternative:** `getOauthRedirect`. 
-spec get_login_info(ctx:ctx()) -> {ok, interserver_api_login_info:interserver_api_login_info(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_login_info(Ctx) ->
    get_login_info(Ctx, #{}).

-spec get_login_info(ctx:ctx(), maps:map()) -> {ok, interserver_api_login_info:interserver_api_login_info(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_login_info(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/login"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing
%% Use to browse pre-built dedicated servers ready for immediate provisioning (Rapid Deploy / marketplace). No params, no body. Pulls live inventory from `mynew.interserver.net/ajax/server_a.php`. Returns: array of `{ server_id, cpu: [model, {img,type,speed,num_cpus,num_cores}], memory, disk, bandwidth, ips, location, price }`. The `server_id` is the marketplace asset id — feed it into `buyItNowServerOrder` (GET options for asset `?a=<id>`) and `placeBuyNowServer` (POST to commit). Errors: 401 if session expired. Sibling ops: `buyItNowServerOrder` (configure asset), `placeBuyNowServer` (purchase), `getNewServer`/`addServer` (custom-spec build, not pre-built), `getServerList` (already-owned servers).
-spec get_mp_servers(ctx:ctx()) -> {ok, interserver_api_buy_it_now_list:interserver_api_buy_it_now_list(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_mp_servers(Ctx) ->
    get_mp_servers(Ctx, #{}).

-spec get_mp_servers(ctx:ctx(), maps:map()) -> {ok, interserver_api_buy_it_now_list:interserver_api_buy_it_now_list(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_mp_servers(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/buy_now_servers_list"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Begin OAuth login flow — redirect user to provider for authentication
%% Use as step 1 of social login. Navigate the browser (typically a popup) to `/apiv2/oauth?provider=X` so the provider authenticates the user, then handle the postMessage from the popup. Public — no auth required. Query params: `provider` (required, case-sensitive: `Google`/`GitHub`/`Facebook`/`Twitter`), `origin` (optional, opener window origin used to target postMessage instead of `*`). The endpoint redirects directly to the provider rather than returning JSON. After the provider callback, the popup posts one of: `oauth_success` (logged in), `oauth_2fa_required` (call `patchOauthTwoFactor` with the `oauth_token`), `oauth_link_required` (call `postOauthCallback` to link or create), or `oauth_error`. Siblings: `postOauthCallback`, `patchOauthTwoFactor`, `submitLogin` (password flow).
-spec get_oauth_redirect(ctx:ctx(), binary()) -> {ok, interserver_api_get_oauth_redirect_200_response:interserver_api_get_oauth_redirect_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_oauth_redirect(Ctx, Provider) ->
    get_oauth_redirect(Ctx, Provider, #{}).

-spec get_oauth_redirect(ctx:ctx(), binary(), maps:map()) -> {ok, interserver_api_get_oauth_redirect_200_response:interserver_api_get_oauth_redirect_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_oauth_redirect(Ctx, Provider, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/oauth"],
    QS = lists:flatten([{<<"provider">>, Provider}])++interserver_api_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List all PHP timezone identifiers usable on accounts and services
%% Populates a timezone picker for account preferences or for VPS / QuickServer timezone changes. Public — no auth required. Backed by PHP's `DateTimeZone::listIdentifiers()` so the catalog is large (~400+ zones, including deprecated aliases like `US/Eastern`). Result is fixed for a given PHP build — cache aggressively client-side. Sibling ops: `postVpsChangeTimezone`, `postQsChangeTimezone`, `getCountries`, `getAccountLocales`, `getAccountCurrencies`.  **Path/Query/Body:** None.  **Returns:** flat JSON array of stable IANA tz strings, e.g. `[\"Africa/Abidjan\", \"America/New_York\", \"Asia/Tokyo\", \"Europe/London\", \"UTC\"]`. Values are usable verbatim on the timezone-change endpoints; no translation or country-grouping is performed here.  **Auth:** None.  **Errors:** No documented error path under normal operation.  **Related calls:** - **Apply selection to a service:** `postVpsChangeTimezone` (`/vps/{id}/change_timezone`), `postQsChangeTimezone` (`/qs/{id}/change_timezone`). - **Apply to account profile:** `updateAccountInfo` (sets `timezone`). - **Other preference catalogs:** `getCountries`, `getAccountLocales`, `getAccountCurrencies`. 
-spec get_timezones(ctx:ctx()) -> {ok, [binary()], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_timezones(Ctx) ->
    get_timezones(Ctx, #{}).

-spec get_timezones(ctx:ctx(), maps:map()) -> {ok, [binary()], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_timezones(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/account/timezones"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Submit 2FA code to finish OAuth login when account has 2FA enabled
%% Final step of the OAuth login flow when the account has 2FA enabled. Called after `postOauthCallback` (or the popup's `window.postMessage()` handshake) returned `2fa_required`. Verifies the TOTP against the account's stored Google Authenticator secret and creates the session. Public — no auth required. Sibling ops: `postOauthCallback` (prior step), `getOauthRedirect` (entry point), `getAccountTfaSetup` (enroll 2FA), `submitLogin`.  **Body fields** (JSON or form): - `code` (string, required) — 6-digit TOTP from the authenticator app. - `account_id` (integer, required) — returned by the prior `postOauthCallback`. - `oauth_token` (string, optional) — signed token from the original `postMessage` payload, type `2fa`, 10-minute expiry. When present, its embedded OAuth profile data is merged into the account (name / picture / phone / address) for any fields still empty.  **Returns:** `{ login: true, sessionId, account_id, account_lid, ima, name, gravatar }`.  **Errors:** - `400` — invalid / expired `oauth_token` or no pending verification. - `401` — invalid 2FA code. - `409` — 2FA not enabled on the account. - `422` — missing `code`.  **Related calls:** - **Prerequisite:** `postOauthCallback`. - **Enroll 2FA on the account first:** `getAccountTfaSetup` → `updateAccountTfa`. - **Alternate login:** `submitLogin`. 
-spec patch_oauth_two_factor(ctx:ctx(), interserver_api_patch_oauth_two_factor_request:interserver_api_patch_oauth_two_factor_request()) -> {ok, interserver_api_patch_oauth_two_factor_200_response:interserver_api_patch_oauth_two_factor_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
patch_oauth_two_factor(Ctx, InterserverApiPatchOauthTwoFactorRequest) ->
    patch_oauth_two_factor(Ctx, InterserverApiPatchOauthTwoFactorRequest, #{}).

-spec patch_oauth_two_factor(ctx:ctx(), interserver_api_patch_oauth_two_factor_request:interserver_api_patch_oauth_two_factor_request(), maps:map()) -> {ok, interserver_api_patch_oauth_two_factor_200_response:interserver_api_patch_oauth_two_factor_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
patch_oauth_two_factor(Ctx, InterserverApiPatchOauthTwoFactorRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = patch,
    Path = [?BASE_URL, "/oauth"],
    QS = [],
    Headers = [],
    Body1 = InterserverApiPatchOauthTwoFactorRequest,
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"application/json">>, <<"multipart/form-data">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Liveness check — returns the JSON string \"pong\" to confirm API is up
%% Trivial GET that returns the JSON string `\"pong\"` so AI agents and monitors can verify the API endpoint is reachable. Public — no auth required, no params, no body. Does not exercise the database, queue, or any plugin modules. Sibling ops: `getInfo` (richer probe that touches MySQL).  **Path/Query/Body:** None.  **Returns:** JSON-encoded string `\"pong\"` with HTTP 200.  **Auth:** None (public endpoint).  **Errors:** No documented error path under normal operation — a non-200 or absent response indicates the API is down, the host is unreachable, or upstream routing is broken.  **Use when:** - Bootstrapping a new client and want to confirm the API is reachable. - Smoke-testing in CI/health-check pipelines. - Diagnosing connectivity issues before higher-cost calls.  **Related calls:** - **Deeper health probe:** `getInfo` (exercises the DB layer). 
-spec ping_server(ctx:ctx()) -> {ok, binary(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
ping_server(Ctx) ->
    ping_server(Ctx, #{}).

-spec ping_server(ctx:ctx(), maps:map()) -> {ok, binary(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
ping_server(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/ping"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Complete OAuth login by linking provider to existing or new account
%% Step 3 of the OAuth login flow. Called after `getOauthRedirect` returned `oauth_link_required` via the popup's `window.postMessage()`. Either links the OAuth identity to an existing account (verifying password) or creates a new account. Public — no auth required. Sibling ops: `patchOauthTwoFactor` (2FA follow-up), `getOauthRedirect` (start the flow), `submitSignup`, `submitLogin`.  **Body fields** (JSON or form): - `oauth_token` (string, required) — signed token from the popup's `window.postMessage()` payload; 10-minute expiry. - `login` (string, required) — email. - `password` (string, required). - `create` (boolean, optional) — set `true` to create a new account instead of linking. - `email_confirmation` (string, conditional) — 8-char code emailed on the first `create=true` attempt; server returns 422 `email_verification_required` until provided. - `tfa` (string, conditional) — 6-digit TOTP when the existing account has 2FA enabled (after the first attempt returns 422 `2fa_required`).  **Returns:** `{ login|signup|linked: true, sessionId, account_id, account_lid, ima, name, gravatar }`.  **Errors:** - `400` — invalid / expired `oauth_token`. - `401` — bad password or wrong 2FA code. - `409` — account already exists (when `create: true`). - `422` — missing field; `email_verification_required`; `2fa_required`.  **Related calls:** - **Prerequisite:** `getOauthRedirect` to initiate the popup flow. - **Follow-up when 2FA required:** `patchOauthTwoFactor`. - **Alternate entry points:** `submitLogin`, `submitSignup`. 
-spec post_oauth_callback(ctx:ctx(), binary()) -> {ok, interserver_api_post_oauth_callback_200_response:interserver_api_post_oauth_callback_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
post_oauth_callback(Ctx, Provider) ->
    post_oauth_callback(Ctx, Provider, #{}).

-spec post_oauth_callback(ctx:ctx(), binary(), maps:map()) -> {ok, interserver_api_post_oauth_callback_200_response:interserver_api_post_oauth_callback_200_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
post_oauth_callback(Ctx, Provider, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/oauth"],
    QS = lists:flatten([{<<"provider">>, Provider}])++interserver_api_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = InterserverApiPostOauthCallbackRequest,
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"application/json">>, <<"multipart/form-data">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Authenticate with email + password and return a session token
%% Primary password→session-token exchange. Pass the returned session id back as the `sessionid` HTTP header on subsequent calls. Public — no auth required. Sibling ops: `getLoginInfo` (captcha + branding), `getOauthRedirect` (social login), `submitSignup`, `updateAccountApiKey` (rotate API key once logged in).  **Body fields** (JSON or form): - `login` (string, required) — email. - `passwd` (string, required) — password. - `tfa` (string, conditional) — 6-digit TOTP when the account has 2FA enabled. - `verify` (string, conditional) — 8-char email-confirmation code returned via email when logging in from a new IP. Triggered automatically when the IP has no `acquittal` trial record yet (see `Trial` ORM, type `verify_email`). - `remember` (boolean / `'true'` / `'yes'` / `'1'`, optional) — extends cookie lifetime.  **Returns:** `{ sessionId, account_id, account_lid, ima, name, gravatar }`. The `sessionId` value is the credential to send on every subsequent authenticated request.  **Errors:** - `401` — bad credentials or wrong 2FA / verify code. - `422` — missing `login` / `passwd` / `tfa` / `verify`; response body's `field` indicates which input is required next. - `429` — too many failed attempts (login-log rate-limit) or max code retries reached.  **Related calls:** - **Prerequisite:** `getLoginInfo` to fetch the captcha challenge and counts. - **Alternate:** `getOauthRedirect` → `postOauthCallback` for social login. - **After login:** `updateAccountApiKey`. 
-spec submit_login(ctx:ctx(), binary(), binary()) -> {ok, interserver_api_login_success_response:interserver_api_login_success_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
submit_login(Ctx, Login, Passwd) ->
    submit_login(Ctx, Login, Passwd, #{}).

-spec submit_login(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, interserver_api_login_success_response:interserver_api_login_success_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
submit_login(Ctx, Login, Passwd, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/login"],
    QS = [],
    Headers = [],
    Body1 = {form, [{<<"login">>, Login}, {<<"passwd">>, Passwd}]++interserver_api_utils:optional_params(['remember', 'g-recaptcha-response', 'tfa'], _OptionalParams)},
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"multipart/form-data">>, <<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create a new customer account (email + password + captcha + ToS)
%% First step of the signup flow before adding payment or services. Public — no auth required. The account is created in `pending` state and moved to `active` once the email-confirmation code is verified; an `account.activated` event then fires (welcome email + admin notification). MaxMind GeoIP populates `country` from the client IP. Sibling ops: `submitLogin`, `getCaptcha`, `getLoginInfo`, `addBillingPrepay`, plus the `add*` service ops to follow up after signup.  **Body fields** (JSON or form): - `login` (string, required) — email; must be valid and not an alias like `+tag` or dotted gmail. - `passwd` (string, required) — 4–64 chars. - `tos` (truthy, required) — `yes` / `true` / `1`. - `captcha` (string, required) — answer to the phrase from `getCaptcha` or `getLoginInfo` (server reads the phrase from `$_SESSION['captchaSignup']`). - `email_confirmation` (string, conditional) — 8-char code emailed on the first attempt; server returns `400 { field: 'email_confirmation' }` until provided. - `remember` (boolean / `'true'` / `'yes'` / `'1'`, optional) — 256-day cookie.  **Returns:** `{ sessionId, account_id, account_lid, ima }`.  **Errors:** - `400` — missing or invalid `login` / `passwd` / `tos` / `captcha` / `email_confirmation`; blocked-domain or aliased-email; account already exists. - `402` per `LoginResponseError` — signup gate misconfigured upstream.  **Related calls:** - **Prerequisite:** `getCaptcha` or `getLoginInfo`. - **After signup:** `submitLogin`, `addBillingPrepay`, plus any `add*` order op. 
-spec submit_signup(ctx:ctx()) -> {ok, [], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
submit_signup(Ctx) ->
    submit_signup(Ctx, #{}).

-spec submit_signup(ctx:ctx(), maps:map()) -> {ok, [], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
submit_signup(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/signup"],
    QS = [],
    Headers = [],
    Body1 = InterserverApiLoginSubmissionExample,
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


