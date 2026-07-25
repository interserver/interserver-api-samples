require "json"

module InterserverApiClient
  module Api
  class Captcha
    def initialize(@conn : Connection); end

    # Fetch a base64 JPEG captcha challenge for human verification Fetches a fresh captcha challenge image to display before submitting &#x60;submitSignup&#x60; (or any unauthenticated form that needs human verification). Public endpoint — no authentication required. Sibling ops: &#x60;getLoginInfo&#x60; (returns a captcha alongside other login-page data), &#x60;submitSignup&#x60; (consumes the answer), &#x60;submitLogin&#x60;.  **Path/Query/Body:** None.  **Returns:** &#x60;{ captcha: string }&#x60; — &#x60;captcha&#x60; is a &#x60;data:image/jpeg;base64,...&#x60; URL ready to drop into an &#x60;&lt;img src&gt;&#x60;.  **Side effects:** the phrase is stored server-side in &#x60;$_SESSION[&#39;captcha&#39;]&#x60; (also aliased to the signup-flow key &#x60;$_SESSION[&#39;captchaSignup&#39;]&#x60; and forgot-password key &#x60;$_SESSION[&#39;captchaFP&#39;]&#x60;). The browser must send the same &#x60;PHPSESSID&#x60; cookie back when posting the answer.  **Charset:** 8 chars from &#x60;3456789ABCDEFGHJKLMNPQRSTWXY&#x60; — no ambiguous &#x60;0&#x60;/&#x60;1&#x60;/&#x60;I&#x60;/&#x60;O&#x60;/&#x60;2&#x60;/&#x60;Z&#x60;.  **Related calls:** - **Consumers:** &#x60;submitSignup&#x60;, &#x60;submitLogin&#x60;. - **One-shot login bootstrap:** &#x60;getLoginInfo&#x60;. answer in &#x60;captcha&#x60; field). 
    def list() : Response(InterserverApiClient::CaptchaResponse)
      @conn.request(InterserverApiClient::CaptchaResponse,
        method: :GET,
        path: "/captcha",
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end
  end
  end

end
