require "json"

module InterserverApiClient
  module Api
  class Info
    def initialize(@conn : Connection); end

    # Discover available modules, service packages, categories, and types Enumerates what services this MyAdmin install sells before placing orders or building a signup UI. Public — no auth required. Sibling ops: &#x60;getNewVps&#x60;, &#x60;getNewWebsite&#x60;, &#x60;getNewMail&#x60;, &#x60;getNewSsl&#x60;, &#x60;getNewLicense&#x60;, &#x60;getNewBackup&#x60;, &#x60;getNewQs&#x60;, &#x60;getNewServer&#x60; — each module&#39;s catalog op for buyable-package details.  **Path/Query/Body:** None.  **Returns:** &#x60;{ modules, services, serviceTypes, serviceCategories }&#x60;. - &#x60;modules&#x60; (array) — enabled plugin modules (&#x60;vps&#x60;, &#x60;webhosting&#x60;, &#x60;domains&#x60;, &#x60;ssl&#x60;, etc.). - &#x60;services&#x60; (object) — map of &#x60;services_id&#x60; → row from the &#x60;services&#x60; table, filtered to &#x60;services_buyable&#x3D;1 AND services_hidden&#x3D;0&#x60;, with &#x60;services_ourcost&#x60; / &#x60;services_hidden&#x60; stripped, and &#x60;services_id&#x60; / &#x60;services_category&#x60; / &#x60;services_type&#x60; cast to int and &#x60;services_cost&#x60; cast to float. - &#x60;serviceTypes&#x60; (object) — joins service rows to human-readable type names. - &#x60;serviceCategories&#x60; (object) — joins service rows to category names.  **Auth:** None.  **Errors:** No documented error path; 401 only if a stricter auth layer is added upstream.  **Related calls:** - **Module-specific order catalog:** &#x60;getNewVps&#x60;, &#x60;getNewWebsite&#x60;, &#x60;getNewMail&#x60;, &#x60;getNewSsl&#x60;, &#x60;getNewLicense&#x60;, &#x60;getNewBackup&#x60;, &#x60;getNewQs&#x60;, &#x60;getNewServer&#x60;. - **Deeper health probe:** &#x60;pingServer&#x60;. 
    def list() : Response(InterserverApiClient::ServicesInfo)
      @conn.request(InterserverApiClient::ServicesInfo,
        method: :GET,
        path: "/info",
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end
  end
  end

end
