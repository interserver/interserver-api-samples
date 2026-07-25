require "json"

module InterserverApiClient
  module Api
  class Account
    def initialize(@conn : Connection); end

    # Rotate the account&#39;s REST/MCP API key — old key is invalidated immediately DESTRUCTIVE: generates a new 128-character random API key and overwrites the existing entry in &#x60;account_security&#x60; (type &#x60;api_key&#x60;, label &#x60;default&#x60;). The OLD key stops working the moment this returns — any scripts, MCP clients, or CI jobs using the previous key will start receiving 401 until updated. No body, no path params. Returns &#x60;{success:true, text:NEW_KEY}&#x60; — the plaintext key is returned ONCE in this response and is not retrievable later (only stored hashed-equivalent server-side for verification). Store immediately in a secret manager. Use after suspected credential leak, employee offboarding, or routine rotation. Errors: 401 unauthenticated. Sibling ops: &#x60;updateAccountPassword&#x60;, &#x60;updateAccountIpLimits&#x60;, &#x60;Logout&#x60;.
    def apikey() : Response(InterserverApiClient::SuccessTextResponse)
      @conn.request(InterserverApiClient::SuccessTextResponse,
        method: :POST,
        path: "/account/apikey",
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end

    # Fetch TOTP secret to enroll a 2FA authenticator app (Google Authenticator etc.) Use as step 1 of 2FA enrollment. The 160-bit secret is generated on first call and cached in the session until the user completes (or abandons) setup. No body, no path params. Returns &#x60;{2fa_google_key, 2fa_google_split}&#x60; — render &#x60;2fa_google_key&#x60; as a QR code (otpauth://totp/My.InterServer:LID?secret&#x3D;KEY) and display &#x60;2fa_google_split&#x60; (key chunked into 4-char groups, space-separated) for manual entry. After the user types the 6-digit code from their app, finalize enrollment with &#x60;updateAccountTfa&#x60;. Calling this multiple times before enrolling reuses the same in-session secret. Errors: 401 if session invalid. Sibling ops: &#x60;updateAccountTfa&#x60; (verify &amp; enable), &#x60;deleteAccountTfa&#x60; (disable).
    def call_2fa() : Response(InterserverApiClient::GetAccountTfaSetup200Response)
      @conn.request(InterserverApiClient::GetAccountTfaSetup200Response,
        method: :GET,
        path: "/account/2fa",
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end

    # Disable two-factor authentication and remove the TOTP secret DESTRUCTIVE: removes the 2FA secret from &#x60;account_security&#x60; and clears the in-session secret cache. After success, only password authentication is required for future logins — security posture drops materially. No body, no path params. Use when the customer has lost their authenticator device or wants to re-enroll from scratch (call this, then &#x60;getAccountTfaSetup&#x60; -&gt; &#x60;updateAccountTfa&#x60;). Returns &#x60;{success:true, text:&#39;Google Two Factor Authentication is disabled successfully!&#39;}&#x60;. Errors: 401 unauthenticated. Caveat: existing sessions remain valid; rotate &#x60;updateAccountPassword&#x60; if you suspect credential compromise. Sibling ops: &#x60;getAccountTfaSetup&#x60;, &#x60;updateAccountTfa&#x60;, &#x60;updateAccountPassword&#x60;.
    def call_2fa_delete() : Response(InterserverApiClient::SuccessTextResponse)
      @conn.request(InterserverApiClient::SuccessTextResponse,
        method: :DELETE,
        path: "/account/2fa",
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end

    # Verify TOTP code and enable two-factor authentication on the account Use as step 2 of 2FA enrollment, after &#x60;getAccountTfaSetup&#x60;. Body: &#x60;{2fa_google_code:string}&#x60; — the 6-digit code currently displayed by the user&#39;s authenticator app for the secret returned from &#x60;getAccountTfaSetup&#x60;. On verify success, the secret is persisted to &#x60;account_security&#x60; (type &#x60;2fa_google_key&#x60;, label &#x60;default&#x60;) and ALL OTHER active sessions for this account are invalidated (server destroys appsessions and sessions rows where session_id !&#x3D; current). The current session remains. Subsequent logins will require both password and a fresh TOTP code. Returns &#x60;{success:true, text}&#x60;. Errors: 401 unauthenticated; 422 &#x60;Invalid Code&#x60; if the TOTP doesn&#39;t match (clock skew, wrong app entry, or expired). Sibling ops: &#x60;getAccountTfaSetup&#x60;, &#x60;deleteAccountTfa&#x60;.
    def call_2fa_post(_2fa_google_code : String? = nil) : Response(InterserverApiClient::SuccessTextResponse)
      @conn.request(InterserverApiClient::SuccessTextResponse,
        method: :POST,
        path: "/account/2fa",
        form: Hash(String, Crest::ParamsValue){ "2fa_google_code" => _2fa_google_code },
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end

    # List enabled countries keyed by ISO-2/ISO-3/numeric code Populates country dropdowns in account registration, billing-address forms, and domain/whois contact forms. Public — no auth required. Disabled countries (e.g. embargoed jurisdictions) are excluded — admins toggle this in &#x60;country_t.enabled&#x60;. Sibling ops: &#x60;getTimezones&#x60;, &#x60;getAccountLocales&#x60;, &#x60;getAccountCurrencies&#x60;, &#x60;updateAccountInfo&#x60; (consumes the chosen country).  **Query parameters:** - &#x60;fetch_by&#x60; (string, optional) — one of &#x60;iso2&#x60; (default; two-letter codes like &#x60;US&#x60;, &#x60;GB&#x60;), &#x60;iso3&#x60; (three-letter like &#x60;USA&#x60;, &#x60;GBR&#x60;), or &#x60;numcode&#x60; (UN M49 numeric like &#x60;840&#x60;). Any other value silently falls back to &#x60;iso2&#x60;.  **Body:** None.  **Returns:** JSON object mapping the chosen key format to the country&#39;s short name — e.g. &#x60;{ \&quot;AF\&quot;: \&quot;Afghanistan\&quot;, \&quot;US\&quot;: \&quot;United States\&quot;, \&quot;ZW\&quot;: \&quot;Zimbabwe\&quot; }&#x60;. Sourced from the &#x60;country_t&#x60; table, filtered to &#x60;enabled&#x3D;1&#x60;, ordered alphabetically by &#x60;short_name&#x60;.  **Auth:** None.  **Errors:** No documented error path.  **Related calls:** - **Apply to account profile:** &#x60;updateAccountInfo&#x60;. - **Other preference catalogs:** &#x60;getTimezones&#x60;, &#x60;getAccountLocales&#x60;, &#x60;getAccountCurrencies&#x60;. 
    def countries(*, fetch_by : String? = nil) : Response(JSON::Any)
      @conn.request(JSON::Any,
        method: :GET,
        path: "/account/countries",
        query: { "fetch_by" => fetch_by },
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end

    # Update contact and billing-address fields on the customer profile Use to change the customer&#39;s name, company, mailing address, phone, GSTIN, locale, timezone, or notification-email overrides (&#x60;email_invoices&#x60;, &#x60;email_abuse&#x60;). Submit only fields you want to change — partial updates supported. Required (must be non-empty if sent): &#x60;name&#x60;, &#x60;country&#x60;, &#x60;address&#x60;, &#x60;city&#x60;, &#x60;state&#x60;, &#x60;zip&#x60;, &#x60;phone&#x60;. Phone is normalized: parens, dashes, underscores stripped. Timezone must be a valid IANA identifier (e.g. &#x60;America/New_York&#x60;). Side effects: triggers FraudRecord + MaxMind risk re-scoring on first save, updates Kayako helpdesk username when &#x60;name&#x60; changes. Returns &#x60;{success:true}&#x60;. Errors: 401 missing-required field; 422 invalid timezone or empty payload. Sibling ops: &#x60;getAccountInfo&#x60;, &#x60;updateAccountFeatures&#x60;, &#x60;updateAccountPassword&#x60;.
    def create(name : String? = nil, company : String? = nil, address : String? = nil, address2 : String? = nil, city : String? = nil, state : String? = nil, zip : String? = nil, country : String? = nil, phone : String? = nil, locale : String? = nil, email_invoices : String? = nil, email_abuse : String? = nil, disable_reset : Bool? = nil, disable_reinstall : Bool? = nil, disable_server_notifications : Bool? = nil, disable_email_notifications : Bool? = nil, gstin : String? = nil) : Response(InterserverApiClient::SuccessTextResponse)
      @conn.request(InterserverApiClient::SuccessTextResponse,
        method: :POST,
        path: "/account",
        form: Hash(String, Crest::ParamsValue){ "name" => name, "company" => company, "address" => address, "address2" => address2, "city" => city, "state" => state, "zip" => zip, "country" => country, "phone" => phone, "locale" => locale, "email_invoices" => email_invoices, "email_abuse" => email_abuse, "disable_reset" => disable_reset, "disable_reinstall" => disable_reinstall, "disable_server_notifications" => disable_server_notifications, "disable_email_notifications" => disable_email_notifications, "gstin" => gstin },
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end

    # List enabled currency codes accepted for billing and preferences Populates a currency selector on signup, billing-preferences, or invoice-display forms. Public — no auth required. The list changes only when an admin enables/disables a currency — cache client-side. Sibling ops: &#x60;getCountries&#x60;, &#x60;getTimezones&#x60;, &#x60;getAccountLocales&#x60;, plus the billing-preference endpoints under &#x60;/account/*&#x60; and &#x60;/billing/*&#x60;.  **Path/Query/Body:** None.  **Returns:** flat JSON array of ISO-4217 currency codes — e.g. &#x60;[\&quot;USD\&quot;, \&quot;EUR\&quot;, \&quot;GBP\&quot;, \&quot;INR\&quot;]&#x60;. Sourced from rows in the &#x60;currencies&#x60; table where &#x60;currency_enabled&#x3D;1&#x60;, in the natural row order. The endpoint returns codes only — for symbols, decimals, or exchange rates use a separate currency-detail endpoint or a static client-side map.  **Auth:** None.  **Errors:** No documented error path.  **Related calls:** - **Apply to account profile:** &#x60;updateAccountInfo&#x60;. - **Other preference catalogs:** &#x60;getCountries&#x60;, &#x60;getTimezones&#x60;, &#x60;getAccountLocales&#x60;. 
    def currencies() : Response(Array(String))
      @conn.request(Array(String),
        method: :GET,
        path: "/account/currencies",
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end

    # Toggle account-wide safety locks for password reset and OS reinstall Updates account-level feature flags that gate destructive service operations across every VPS / dedicated / QuickServer the customer owns. Useful for production accounts that want belt-and-suspenders protection against accidental reinstalls or root-password resets via the panel/API. Changes take effect immediately for all subsequent service operations. Sibling ops: &#x60;getAccountInfo&#x60;, &#x60;updateAccountInfo&#x60;, &#x60;updateAccountIpLimits&#x60;.  **Body fields:** - &#x60;disable_reset&#x60; (bool, optional) — when &#x60;true&#x60;, blocks server / VPS root-password resets account-wide. - &#x60;disable_reinstall&#x60; (bool, optional) — when &#x60;true&#x60;, blocks OS reinstalls account-wide.  Submit either or both. Flags absent from the request default to &#x60;0&#x60; for the comparison and only persist if their value differs from the current stored value.  **Returns:** &#x60;{ success: true, text }&#x60;.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;400&#x60; / &#x60;422&#x60; — &#x60;Nothing to update&#x60; when neither flag&#39;s value differs from current. 
    def features(disable_reset : Int32? = nil, disable_reinstall : Int32? = nil) : Response(InterserverApiClient::SuccessTextResponse)
      @conn.request(InterserverApiClient::SuccessTextResponse,
        method: :POST,
        path: "/account/features",
        form: Hash(String, Crest::ParamsValue){ "disable_reset" => disable_reset, "disable_reinstall" => disable_reinstall },
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end

    # Add an IP CIDR/range to the account&#39;s API+web allow-list (lockout-safe) DESTRUCTIVE / LOCKOUT-RISK: appends an IP range to &#x60;accounts.session_limit&#x60;. Once ANY range exists, all &#x60;/apiv2&#x60; and panel access is restricted to matching source IPs. Body: &#x60;{start, end, restrict?}&#x60; — both IPv4 dotted-quad; &#x60;restrict&#x60; is &#x60;Web &amp; API&#x60; (default) or &#x60;Only API&#x60;. Safety net: server checks the caller&#39;s IP against the resulting list and auto-appends a /32 for the caller if not already covered (response text warns about this). The MCP server sets header &#x60;X-API-APP: 1&#x60; which short-circuits the IP check entirely (see &#x60;api_check_auth_limits()&#x60;), so MCP tools keep working. Caveats: &#x60;192.168.1.0&#x60;-&#x60;192.168.1.255&#x60; is rejected as a placeholder. Returns &#x60;{success:true, text}&#x60;. Errors: 400/422 &#x60;Invalid IP Address&#x60;; 401 unauthenticated. Sibling ops: &#x60;deleteIpLimit&#x60;, &#x60;getAccountInfo&#x60;.
    def iplimits(start : String? = nil, _end : String? = nil) : Response(InterserverApiClient::SuccessTextResponse)
      @conn.request(InterserverApiClient::SuccessTextResponse,
        method: :POST,
        path: "/account/iplimits",
        form: Hash(String, Crest::ParamsValue){ "start" => start, "end" => _end },
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end

    # Remove one IP range from the account allow-list (PATCH on /account/iplimits) DESTRUCTIVE: deletes the matching &#x60;{start, end}&#x60; entry from &#x60;accounts.session_limit&#x60;. Method is PATCH (not DELETE) because the path collides with &#x60;updateAccountIpLimits&#x60;. Body: &#x60;{start, end}&#x60; — must exactly match an existing range (trim-equal on both bounds). Behaviour: if removing this range would leave an empty list, IP limiting is disabled and the account becomes accessible from any IP. If ranges remain but none cover the caller&#39;s source IP, the server auto-injects a /32 for the caller to prevent self-lockout (response text warns). MCP callers bypass via &#x60;X-API-APP: 1&#x60; header. Returns &#x60;{success:true, text:&#39;IP Range deleted.&#39;}&#x60;. Errors: 400/422 &#x60;Invalid IP Address&#x60; if &#x60;start&#x60;/&#x60;end&#x60; aren&#39;t valid IPs; 401 unauthenticated. Sibling ops: &#x60;updateAccountIpLimits&#x60;, &#x60;getAccountInfo&#x60;.
    def iplimits_patch(ip_limit_range : InterserverApiClient::IpLimitRange? = nil) : Response(InterserverApiClient::GenericResponse)
      @conn.request(InterserverApiClient::GenericResponse,
        method: :PATCH,
        path: "/account/iplimits",
        body: ip_limit_range,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end

    # Read full account profile, billing address, and security settings Use to render the account-settings page or to verify current state before mutating with &#x60;updateAccountInfo&#x60;. No body, no path params. Returns: full profile (name, company, address1/2, city, state, zip, country, phone, email_invoices, email_abuse, gstin, locale, timezone), masked credit-card list (last-4 digits only — full PAN never returned), OAuth provider config (with secret keys stripped), feature toggles (&#x60;disable_reset&#x60;, &#x60;disable_reinstall&#x60;, &#x60;disable_*_notifications&#x60;), gravatar URL, language, country-&gt;currency map, and &#x60;enableLocales&#x60;/&#x60;enableCurrencies&#x60; UI flags. Timezone defaults to IP-derived value if unset, falling back to America/New_York. Errors: 401 if session invalid or expired. Sibling ops: &#x60;updateAccountInfo&#x60;, &#x60;getAccountTfaSetup&#x60;, &#x60;updateAccountFeatures&#x60;, &#x60;updateAccountIpLimits&#x60;.
    def list() : Response(InterserverApiClient::AccountInfo)
      @conn.request(InterserverApiClient::AccountInfo,
        method: :GET,
        path: "/account",
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end

    # List supported UI locales with English and native display names Renders the language-picker for account preferences or login pages. Public — no auth required. Cross-references PHP&#39;s Punic locale data with &#x60;locale/google_langs.php&#x60; so only locales with Google Translate support are returned. Result is essentially static — cache client-side. Sibling ops: &#x60;getCountries&#x60;, &#x60;getTimezones&#x60;, &#x60;getAccountCurrencies&#x60;, &#x60;updateAccountInfo&#x60; (consumes the chosen locale).  **Path/Query/Body:** None.  **Returns:** JSON object keyed by BCP-47-style locale code, with &#x60;{ name, local_name }&#x60; per entry — e.g.      {       \&quot;en\&quot;: { \&quot;name\&quot;: \&quot;English\&quot;, \&quot;local_name\&quot;: \&quot;English\&quot; },       \&quot;es\&quot;: { \&quot;name\&quot;: \&quot;Spanish\&quot;, \&quot;local_name\&quot;: \&quot;español\&quot; },       \&quot;fr\&quot;: { \&quot;name\&quot;: \&quot;French\&quot;, \&quot;local_name\&quot;: \&quot;français\&quot; }     }  &#x60;name&#x60; is the English label; &#x60;local_name&#x60; is the locale&#39;s name in its own language (good for accessibility and avoiding the wrong-script problem).  **Auth:** None.  **Errors:** No documented error path.  **Related calls:** - **Apply to account profile:** &#x60;updateAccountInfo&#x60; (sets &#x60;locale&#x60;). - **Other preference catalogs:** &#x60;getCountries&#x60;, &#x60;getTimezones&#x60;, &#x60;getAccountCurrencies&#x60;. 
    def locales() : Response(Hash(String, InterserverApiClient::GetAccountLocales200ResponseValue))
      @conn.request(Hash(String, InterserverApiClient::GetAccountLocales200ResponseValue),
        method: :GET,
        path: "/account/locales",
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end

    # Change the account login password (verifies current, kills other sessions) DESTRUCTIVE: changes the account login password and invalidates all OTHER active sessions for this account. The current caller&#39;s session is preserved; API keys generated via &#x60;updateAccountApiKey&#x60; remain valid. Sibling ops: &#x60;updateAccountApiKey&#x60;, &#x60;Logout&#x60;, &#x60;updateAccountTfa&#x60;.  **Body fields:** - &#x60;currentpassword&#x60; (string, required) — verified via &#x60;auth::authenticate&#x60;. - &#x60;password&#x60; (string, required) — must pass &#x60;valid_password()&#x60; — 8–50 chars, at least one uppercase, one lowercase, one digit, and one of &#x60;_~-!@#$%^&amp;*&#x60;. - &#x60;password2&#x60; (string, required) — must equal &#x60;password&#x60;.  **Returns:** &#x60;{ success: bool }&#x60; — flash messages on the response capture per-field errors.  **Side effects:** - Persists &#x60;md5(password)&#x60; to &#x60;accounts.account_passwd&#x60;. - Sends &#x60;password_change_notify.tpl&#x60; email to the account login id. - Destroys all other sessions for this account row-by-row.  **Errors:** - &#x60;401&#x60; — unauthenticated. - Flash &#x60;Current login password is mismatching&#x60; — bad &#x60;currentpassword&#x60;. - Flash &#x60;Confirm Password is mismatching&#x60; — &#x60;password&#x60; ≠ &#x60;password2&#x60;. - Flash password-policy violation message. 
    def password(password : String? = nil) : Response(InterserverApiClient::TextResponse)
      @conn.request(InterserverApiClient::TextResponse,
        method: :POST,
        path: "/account/password",
        form: Hash(String, Crest::ParamsValue){ "password" => password },
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end

    # Set the account-level SSH public key auto-installed on new VPS/dedicated orders Stores or replaces the SSH public key on &#x60;account_security&#x60; (type &#x60;ssh_key&#x60;, label &#x60;default&#x60;). On future VPS, dedicated server, or quickserver orders the activation flow can install this key into &#x60;~/.ssh/authorized_keys&#x60; for the root/sudo user, eliminating password-based SSH for the initial provisioning. Body: &#x60;{sshKey:string}&#x60; — full single-line OpenSSH public key (ssh-rsa/ssh-ed25519/ecdsa-sha2-* + base64 + optional comment). Newlines are stripped on save. Existing servers are NOT retroactively updated — only new orders pick this up. Use to set up key-based access ahead of order activation, or to rotate the canonical key. Returns &#x60;{success:true, text:&#39;SSH Keys Updated.&#39;}&#x60;. Errors: 401 unauthenticated. Sibling ops: &#x60;getAccountInfo&#x60;, &#x60;updateAccountPassword&#x60;, &#x60;updateAccountApiKey&#x60;.
    def sshkey(ssh_key : String? = nil) : Response(InterserverApiClient::SuccessTextResponse)
      @conn.request(InterserverApiClient::SuccessTextResponse,
        method: :POST,
        path: "/account/sshkey",
        form: Hash(String, Crest::ParamsValue){ "ssh_key" => ssh_key },
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end

    # List all PHP timezone identifiers usable on accounts and services Populates a timezone picker for account preferences or for VPS / QuickServer timezone changes. Public — no auth required. Backed by PHP&#39;s &#x60;DateTimeZone::listIdentifiers()&#x60; so the catalog is large (~400+ zones, including deprecated aliases like &#x60;US/Eastern&#x60;). Result is fixed for a given PHP build — cache aggressively client-side. Sibling ops: &#x60;postVpsChangeTimezone&#x60;, &#x60;postQsChangeTimezone&#x60;, &#x60;getCountries&#x60;, &#x60;getAccountLocales&#x60;, &#x60;getAccountCurrencies&#x60;.  **Path/Query/Body:** None.  **Returns:** flat JSON array of stable IANA tz strings, e.g. &#x60;[\&quot;Africa/Abidjan\&quot;, \&quot;America/New_York\&quot;, \&quot;Asia/Tokyo\&quot;, \&quot;Europe/London\&quot;, \&quot;UTC\&quot;]&#x60;. Values are usable verbatim on the timezone-change endpoints; no translation or country-grouping is performed here.  **Auth:** None.  **Errors:** No documented error path under normal operation.  **Related calls:** - **Apply selection to a service:** &#x60;postVpsChangeTimezone&#x60; (&#x60;/vps/{id}/change_timezone&#x60;), &#x60;postQsChangeTimezone&#x60; (&#x60;/qs/{id}/change_timezone&#x60;). - **Apply to account profile:** &#x60;updateAccountInfo&#x60; (sets &#x60;timezone&#x60;). - **Other preference catalogs:** &#x60;getCountries&#x60;, &#x60;getAccountLocales&#x60;, &#x60;getAccountCurrencies&#x60;. 
    def timezones() : Response(Array(String))
      @conn.request(Array(String),
        method: :GET,
        path: "/account/timezones",
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end
  end
  end

end
