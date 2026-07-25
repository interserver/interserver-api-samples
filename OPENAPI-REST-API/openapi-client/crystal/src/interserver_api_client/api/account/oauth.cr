require "json"

module InterserverApiClient
  module Api
  class Account::Oauth
    def initialize(@conn : Connection); end

    # Unlink a third-party OAuth/social provider (Google, GitHub, etc.) from the account DESTRUCTIVE: removes the linked provider&#39;s tokens from &#x60;accounts_ext&#x60; (rows where &#x60;account_key&#x60; IN (&#x60;{name}_id&#x60;,&#x60;{name}_url&#x60;)). After unlinking, that provider can no longer be used to log in or pre-fill profile data — the user must log in via password (and 2FA if enabled). Path param: &#x60;name&#x60; (case-insensitive provider key, e.g. &#x60;google&#x60;, &#x60;github&#x60;, &#x60;facebook&#x60;) — must be present in &#x60;getOauthConfig().providers&#x60;. No request body. Use when the customer wants to revoke a previously authorized social-login. Returns &#x60;{success:true, text:&#39;OAuth Provider Unlinked.&#39;}&#x60;. Errors: 400 &#x60;Invalid Provider Name.&#x60; if &#x60;name&#x60; not configured; 401 unauthenticated. Sibling ops: &#x60;logoutAccountOauth&#x60;, &#x60;getAccountInfo&#x60;, &#x60;updateAccountPassword&#x60;.
    def delete(name : String) : Response(InterserverApiClient::SuccessTextResponse)
      @conn.request(InterserverApiClient::SuccessTextResponse,
        method: :DELETE,
        path: "/account/oauth/{name}".sub("{name}", InterserverApiClient.enc(name)),
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end

    # Sign out of the upstream OAuth provider session (does not unlink the account) Soft de-authorization for a linked OAuth provider — terminates only the upstream provider session/cookie state. The account-level link in &#x60;accounts_ext&#x60; is preserved, so the user can log back in with that provider without re-linking. Path param: &#x60;name&#x60; (provider key, e.g. &#x60;google&#x60;, &#x60;github&#x60;). No request body. Use when forcing a fresh consent screen on next OAuth login, or after the user reports a stuck/stale provider session. NOT a substitute for &#x60;Logout&#x60; (which kills the MyAdmin session) and NOT a substitute for &#x60;deleteAccountOauthName&#x60; (which permanently severs the link). Returns &#x60;{success:true, text:&#39;OAuth Provider Logged Out.&#39;}&#x60;. Errors: 401 unauthenticated. Sibling ops: &#x60;deleteAccountOauthName&#x60;, &#x60;Logout&#x60;, &#x60;getAccountInfo&#x60;.
    def logout(name : String) : Response(InterserverApiClient::SuccessTextResponse)
      @conn.request(InterserverApiClient::SuccessTextResponse,
        method: :GET,
        path: "/account/oauth/{name}/logout".sub("{name}", InterserverApiClient.enc(name)),
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end
  end
  end

end
