require "json"

module InterserverApiClient
  module Api
  class Logout
    def initialize(@conn : Connection); end

    # Destroy the current API/web session — token becomes unusable DESTRUCTIVE: invalidates the caller&#39;s session record and appsession bag. After this returns the session id can no longer authenticate requests; the client must discard it and prompt the user to log in again. Idempotent — calling with an already-invalid session returns &#x60;200&#x60; (no-op when &#x60;App::accounts()-&gt;data&#x60; is empty). API keys (&#x60;updateAccountApiKey&#x60;) and persistent OAuth links are NOT affected — only this session token. Sibling ops: &#x60;updateAccountPassword&#x60;, &#x60;updateAccountApiKey&#x60;, &#x60;logoutAccountOauth&#x60;, &#x60;deleteAccountOauthName&#x60;.  **Path/Query/Body:** None.  **Returns:** &#x60;{ success: true, text: &#39;Logged Out&#39; }&#x60;.  **Side effects:** calls &#x60;App::session()-&gt;destroy()&#x60; only when &#x60;api_check_auth_limits()&#x60; passes for the current account, so a locked account is short-circuited gracefully without further error.  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — only on a completely malformed auth header.  **Related calls:** - **Re-login:** &#x60;submitLogin&#x60; or &#x60;getOauthRedirect&#x60;. - **Per-provider OAuth sign-out (does NOT invalidate the session):** &#x60;logoutAccountOauth&#x60;. 
    def list() : Response(InterserverApiClient::SuccessTextResponse)
      @conn.request(InterserverApiClient::SuccessTextResponse,
        method: :GET,
        path: "/logout",
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end
  end
  end

end
