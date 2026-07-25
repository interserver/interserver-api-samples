require "json"

module InterserverApiClient
  module Api
  class Signup
    def initialize(@conn : Connection); end

    # Create a new customer account (email + password + captcha + ToS) First step of the signup flow before adding payment or services. Public — no auth required. The account is created in &#x60;pending&#x60; state and moved to &#x60;active&#x60; once the email-confirmation code is verified; an &#x60;account.activated&#x60; event then fires (welcome email + admin notification). MaxMind GeoIP populates &#x60;country&#x60; from the client IP. Sibling ops: &#x60;submitLogin&#x60;, &#x60;getCaptcha&#x60;, &#x60;getLoginInfo&#x60;, &#x60;addBillingPrepay&#x60;, plus the &#x60;add*&#x60; service ops to follow up after signup.  **Body fields** (JSON or form): - &#x60;login&#x60; (string, required) — email; must be valid and not an alias like &#x60;+tag&#x60; or dotted gmail. - &#x60;passwd&#x60; (string, required) — 4–64 chars. - &#x60;tos&#x60; (truthy, required) — &#x60;yes&#x60; / &#x60;true&#x60; / &#x60;1&#x60;. - &#x60;captcha&#x60; (string, required) — answer to the phrase from &#x60;getCaptcha&#x60; or &#x60;getLoginInfo&#x60; (server reads the phrase from &#x60;$_SESSION[&#39;captchaSignup&#39;]&#x60;). - &#x60;email_confirmation&#x60; (string, conditional) — 8-char code emailed on the first attempt; server returns &#x60;400 { field: &#39;email_confirmation&#39; }&#x60; until provided. - &#x60;remember&#x60; (boolean / &#x60;&#39;true&#39;&#x60; / &#x60;&#39;yes&#39;&#x60; / &#x60;&#39;1&#39;&#x60;, optional) — 256-day cookie.  **Returns:** &#x60;{ sessionId, account_id, account_lid, ima }&#x60;.  **Errors:** - &#x60;400&#x60; — missing or invalid &#x60;login&#x60; / &#x60;passwd&#x60; / &#x60;tos&#x60; / &#x60;captcha&#x60; / &#x60;email_confirmation&#x60;; blocked-domain or aliased-email; account already exists. - &#x60;402&#x60; per &#x60;LoginResponseError&#x60; — signup gate misconfigured upstream.  **Related calls:** - **Prerequisite:** &#x60;getCaptcha&#x60; or &#x60;getLoginInfo&#x60;. - **After signup:** &#x60;submitLogin&#x60;, &#x60;addBillingPrepay&#x60;, plus any &#x60;add*&#x60; order op. 
    def create(login_submission_example : InterserverApiClient::LoginSubmissionExample? = nil) : Response(Nil)
      @conn.request(Nil,
        method: :POST,
        path: "/signup",
        body: login_submission_example,
        accept: %w[application/json],
        content_type: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end
  end
  end

end
