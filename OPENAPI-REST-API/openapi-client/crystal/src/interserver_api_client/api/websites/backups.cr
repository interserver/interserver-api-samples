require "json"

module InterserverApiClient
  module Api
  class Websites::Backups
    def initialize(@conn : Connection); end

    # List off-site cpmove backups stored in Swift — list or inline-download archive Returns the list of off-site cpmove backups stored for the webhosting account, or — with the &#x60;download&#x3D;&lt;name&gt;&#x60; query param — inline-streams the chosen archive as base64. Backups are read from the OpenStack Swift container &#x60;serviceMaster.website_name&#x60; (authenticated with &#x60;SWIFT_WEBHOSTING_USER&#x60;/&#x60;SWIFT_WEBHOSTING_PASS&#x60;) and filtered to objects matching &#x60;cpmove-{website_username}-*&#x60;. Use to find restore points before a risky change or before &#x60;webhostingCancel&#x60;. Empty array means no off-site cpmoves have been pushed for this account. Sibling ops: &#x60;webhostingCancel&#x60; (snapshot before terminating), &#x60;getWebsiteInfo&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — &#x60;website_id&#x60; from &#x60;getWebsiteList&#x60;.  **Query params:** - &#x60;download&#x60; (string, optional) — when set to a backup &#x60;name&#x60; from the list, switches to inline download mode (returns the file base64-encoded). **Large payload** — only fetch when actually restoring.  **Returns:** - **List mode** (no &#x60;download&#x60;): array of &#x60;{name: \&quot;&lt;cpmove-...&gt;\&quot;, size: \&quot;&lt;human-scaled&gt;\&quot;}&#x60; (size from &#x60;Content-Length&#x60; via &#x60;Scale($len, &#39;bytes&#39;, 1)&#x60;). - **Download mode** (&#x60;?download&#x3D;&lt;name&gt;&#x60;): single object &#x60;{name, size, file: \&quot;&lt;base64-encoded-archive&gt;\&quot;}&#x60;.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;404 Invalid VPS Passed&#x60; (legacy text) — &#x60;id&#x60; not owned by caller. - &#x60;409 Website is not active&#x60; — &#x60;website_status !&#x3D; \&quot;active\&quot;&#x60;.  **Related calls:** - **Take a backup before cancelling:** &#x60;getWebsitesBackups&#x60; (with &#x60;download&#x3D;&#x60;) → &#x60;webhostingCancel&#x60;. - **Migrate to/from another host:** &#x60;postWebsiteMigration&#x60;. 
    def list(id : Int32) : Response(InterserverApiClient::WebsiteBackups)
      @conn.request(InterserverApiClient::WebsiteBackups,
        method: :GET,
        path: "/websites/{id}/backups".sub("{id}", InterserverApiClient.enc(id)),
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end
  end
  end

end
