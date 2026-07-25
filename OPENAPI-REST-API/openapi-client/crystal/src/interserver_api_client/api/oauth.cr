require "json"

module InterserverApiClient
  module Api
  class Oauth
    def initialize(@conn : Connection); end

    # Submit 2FA code to finish OAuth login when account has 2FA enabled Final step of the OAuth login flow when the account has 2FA enabled. Called after &#x60;postOauthCallback&#x60; (or the popup&#39;s &#x60;window.postMessage()&#x60; handshake) returned &#x60;2fa_required&#x60;. Verifies the TOTP against the account&#39;s stored Google Authenticator secret and creates the session. Public — no auth required. Sibling ops: &#x60;postOauthCallback&#x60; (prior step), &#x60;getOauthRedirect&#x60; (entry point), &#x60;getAccountTfaSetup&#x60; (enroll 2FA), &#x60;submitLogin&#x60;.  **Body fields** (JSON or form): - &#x60;code&#x60; (string, required) — 6-digit TOTP from the authenticator app. - &#x60;account_id&#x60; (integer, required) — returned by the prior &#x60;postOauthCallback&#x60;. - &#x60;oauth_token&#x60; (string, optional) — signed token from the original &#x60;postMessage&#x60; payload, type &#x60;2fa&#x60;, 10-minute expiry. When present, its embedded OAuth profile data is merged into the account (name / picture / phone / address) for any fields still empty.  **Returns:** &#x60;{ login: true, sessionId, account_id, account_lid, ima, name, gravatar }&#x60;.  **Errors:** - &#x60;400&#x60; — invalid / expired &#x60;oauth_token&#x60; or no pending verification. - &#x60;401&#x60; — invalid 2FA code. - &#x60;409&#x60; — 2FA not enabled on the account. - &#x60;422&#x60; — missing &#x60;code&#x60;.  **Related calls:** - **Prerequisite:** &#x60;postOauthCallback&#x60;. - **Enroll 2FA on the account first:** &#x60;getAccountTfaSetup&#x60; → &#x60;updateAccountTfa&#x60;. - **Alternate login:** &#x60;submitLogin&#x60;. 
    def bulk_partial_update(patch_oauth_two_factor_request : InterserverApiClient::PatchOauthTwoFactorRequest) : Response(InterserverApiClient::PatchOauthTwoFactor200Response)
      @conn.request(InterserverApiClient::PatchOauthTwoFactor200Response,
        method: :PATCH,
        path: "/oauth",
        body: patch_oauth_two_factor_request,
        accept: %w[application/json],
        content_type: %w[application/json multipart/form-data],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end

    # Complete OAuth login by linking provider to existing or new account Step 3 of the OAuth login flow. Called after &#x60;getOauthRedirect&#x60; returned &#x60;oauth_link_required&#x60; via the popup&#39;s &#x60;window.postMessage()&#x60;. Either links the OAuth identity to an existing account (verifying password) or creates a new account. Public — no auth required. Sibling ops: &#x60;patchOauthTwoFactor&#x60; (2FA follow-up), &#x60;getOauthRedirect&#x60; (start the flow), &#x60;submitSignup&#x60;, &#x60;submitLogin&#x60;.  **Body fields** (JSON or form): - &#x60;oauth_token&#x60; (string, required) — signed token from the popup&#39;s &#x60;window.postMessage()&#x60; payload; 10-minute expiry. - &#x60;login&#x60; (string, required) — email. - &#x60;password&#x60; (string, required). - &#x60;create&#x60; (boolean, optional) — set &#x60;true&#x60; to create a new account instead of linking. - &#x60;email_confirmation&#x60; (string, conditional) — 8-char code emailed on the first &#x60;create&#x3D;true&#x60; attempt; server returns 422 &#x60;email_verification_required&#x60; until provided. - &#x60;tfa&#x60; (string, conditional) — 6-digit TOTP when the existing account has 2FA enabled (after the first attempt returns 422 &#x60;2fa_required&#x60;).  **Returns:** &#x60;{ login|signup|linked: true, sessionId, account_id, account_lid, ima, name, gravatar }&#x60;.  **Errors:** - &#x60;400&#x60; — invalid / expired &#x60;oauth_token&#x60;. - &#x60;401&#x60; — bad password or wrong 2FA code. - &#x60;409&#x60; — account already exists (when &#x60;create: true&#x60;). - &#x60;422&#x60; — missing field; &#x60;email_verification_required&#x60;; &#x60;2fa_required&#x60;.  **Related calls:** - **Prerequisite:** &#x60;getOauthRedirect&#x60; to initiate the popup flow. - **Follow-up when 2FA required:** &#x60;patchOauthTwoFactor&#x60;. - **Alternate entry points:** &#x60;submitLogin&#x60;, &#x60;submitSignup&#x60;. 
    def create(post_oauth_callback_request : InterserverApiClient::PostOauthCallbackRequest? = nil, *, provider : String? = nil) : Response(InterserverApiClient::PostOauthCallback200Response)
      @conn.request(InterserverApiClient::PostOauthCallback200Response,
        method: :POST,
        path: "/oauth",
        body: post_oauth_callback_request,
        query: { "provider" => provider },
        accept: %w[application/json],
        content_type: %w[application/json multipart/form-data],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end

    # Begin OAuth login flow — redirect user to provider for authentication Use as step 1 of social login. Navigate the browser (typically a popup) to &#x60;/apiv2/oauth?provider&#x3D;X&#x60; so the provider authenticates the user, then handle the postMessage from the popup. Public — no auth required. Query params: &#x60;provider&#x60; (required, case-sensitive: &#x60;Google&#x60;/&#x60;GitHub&#x60;/&#x60;Facebook&#x60;/&#x60;Twitter&#x60;), &#x60;origin&#x60; (optional, opener window origin used to target postMessage instead of &#x60;*&#x60;). The endpoint redirects directly to the provider rather than returning JSON. After the provider callback, the popup posts one of: &#x60;oauth_success&#x60; (logged in), &#x60;oauth_2fa_required&#x60; (call &#x60;patchOauthTwoFactor&#x60; with the &#x60;oauth_token&#x60;), &#x60;oauth_link_required&#x60; (call &#x60;postOauthCallback&#x60; to link or create), or &#x60;oauth_error&#x60;. Siblings: &#x60;postOauthCallback&#x60;, &#x60;patchOauthTwoFactor&#x60;, &#x60;submitLogin&#x60; (password flow).
    def list(*, provider : String? = nil) : Response(InterserverApiClient::GetOauthRedirect200Response)
      @conn.request(InterserverApiClient::GetOauthRedirect200Response,
        method: :GET,
        path: "/oauth",
        query: { "provider" => provider },
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end
  end
  end

end
