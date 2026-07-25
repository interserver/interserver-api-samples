require "json"

module InterserverApiClient
  module Api
  class BuyNowServersList
    def initialize(@conn : Connection); end

    # List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing Use to browse pre-built dedicated servers ready for immediate provisioning (Rapid Deploy / marketplace). No params, no body. Pulls live inventory from &#x60;mynew.interserver.net/ajax/server_a.php&#x60;. Returns: array of &#x60;{ server_id, cpu: [model, {img,type,speed,num_cpus,num_cores}], memory, disk, bandwidth, ips, location, price }&#x60;. The &#x60;server_id&#x60; is the marketplace asset id — feed it into &#x60;buyItNowServerOrder&#x60; (GET options for asset &#x60;?a&#x3D;&lt;id&gt;&#x60;) and &#x60;placeBuyNowServer&#x60; (POST to commit). Errors: 401 if session expired. Sibling ops: &#x60;buyItNowServerOrder&#x60; (configure asset), &#x60;placeBuyNowServer&#x60; (purchase), &#x60;getNewServer&#x60;/&#x60;addServer&#x60; (custom-spec build, not pre-built), &#x60;getServerList&#x60; (already-owned servers).
    def list() : Response(InterserverApiClient::BuyItNowList)
      @conn.request(InterserverApiClient::BuyItNowList,
        method: :GET,
        path: "/buy_now_servers_list",
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end

    # List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing Use to browse pre-built dedicated servers ready for immediate provisioning (Rapid Deploy / marketplace). No params, no body. Pulls live inventory from &#x60;mynew.interserver.net/ajax/server_a.php&#x60;. Returns: array of &#x60;{ server_id, cpu: [model, {img,type,speed,num_cpus,num_cores}], memory, disk, bandwidth, ips, location, price }&#x60;. The &#x60;server_id&#x60; is the marketplace asset id — feed it into &#x60;buyItNowServerOrder&#x60; (GET options for asset &#x60;?a&#x3D;&lt;id&gt;&#x60;) and &#x60;placeBuyNowServer&#x60; (POST to commit). Errors: 401 if session expired. Sibling ops: &#x60;buyItNowServerOrder&#x60; (configure asset), &#x60;placeBuyNowServer&#x60; (purchase), &#x60;getNewServer&#x60;/&#x60;addServer&#x60; (custom-spec build, not pre-built), &#x60;getServerList&#x60; (already-owned servers).
    def list_get() : Response(InterserverApiClient::BuyItNowList)
      @conn.request(InterserverApiClient::BuyItNowList,
        method: :GET,
        path: "/buy_now_servers_list",
        accept: %w[application/json],
        auth: %w[sessionIdCookieAuth apiKeyAuth sessionIdHeaderAuth])
    end
  end
  end

end
