@isTest
private class IntServerScrubIpsApiTest {
    /**
     * Cancel a Scrub IP service and stop its recurring DDoS billing
     *
     * Cancels the Scrub IP DDoS protection service. The protected IP is removed from the scrubbing infrastructure and the recurring invoice is closed; protection stops at end of the current billing cycle. Use only when the customer no longer needs DDoS scrubbing for the IP. Path param: &#x60;id&#x60; (integer, required) — service ID from getScrubIpsList. No request body. Returns {success: true, text: \&#39;Scrub Ips is canceled.\&#39;}. Errors: 401 unauthenticated; 404/Invalid Service if id is not owned by the session account; 409 if the service is not in a cancellable state. Caveat: leaves the underlying VPS/server IP exposed to attacks once protection ends; contact billing for refund handling. Siblings: getScrubIpDetails, disableScrub, getScrubIpInvoices.
     */
    @isTest
    private static void cancelScrubIpTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerScrubIpsApi api;
        IntServerCancelScrubIp200Response response;
        IntServerCancelScrubIp200Response expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerCancelScrubIp200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCancelScrubIp200Response.getExample();
        response = (IntServerCancelScrubIp200Response) api.cancelScrubIp(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCancelScrubIp200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCancelScrubIp200Response.getExample();
        response = (IntServerCancelScrubIp200Response) api.cancelScrubIp(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerCancelScrubIp200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCancelScrubIp200Response.getExample();
        response = (IntServerCancelScrubIp200Response) api.cancelScrubIp(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCancelScrubIp200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCancelScrubIp200Response.getExample();
        response = (IntServerCancelScrubIp200Response) api.cancelScrubIp(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerCancelScrubIp200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCancelScrubIp200Response.getExample();
        response = (IntServerCancelScrubIp200Response) api.cancelScrubIp(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCancelScrubIp200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCancelScrubIp200Response.getExample();
        response = (IntServerCancelScrubIp200Response) api.cancelScrubIp(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Apply a predefined scrubbing filter (DNS/HTTP/synproxy) to a port
     *
     * Attaches a named scrubbing profile to a destination port on the protected IP, applying protocol-aware mitigation (DNS amplification protection, HTTP rate limiting, synproxy SYN-cookies). Call getScrubIpFilterTypes first to list valid &#x60;filter_type&#x60; values. Path param: &#x60;id&#x60; (integer, required) — service ID. Body (CreateFilter): &#x60;filter_type&#x60; (string, required, one of getScrubIpFilterTypes keys), &#x60;port&#x60; (int, required, &gt;&#x3D; 0). Destination IP is locked to the service IP server-side; synproxy uses a different shape internally. Returns 201 {success: true, text: \&#39;New filter has been created.\&#39;}. Errors: 400 \&#39;Filter type is empty/invalid\&#39;, \&#39;Port is invalid\&#39;, or Invalid Service; 401 unauthenticated; 500 if upstream Scrub::filterCreate fails. Siblings: deleteFilter, getScrubIpFilterTypes, createRule.
     */
    @isTest
    private static void createFilterTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerCreateFilter' => '',
            'id' => ''
        };

        IntServer_Client client;
        IntServerScrubIpsApi api;
        IntServerCreateFilter201Response response;
        IntServerCreateFilter201Response expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerCreateFilter201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCreateFilter201Response.getExample();
        response = (IntServerCreateFilter201Response) api.createFilter(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCreateFilter201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCreateFilter201Response.getExample();
        response = (IntServerCreateFilter201Response) api.createFilter(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCreateFilter201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCreateFilter201Response.getExample();
        response = (IntServerCreateFilter201Response) api.createFilter(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCreateFilter201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCreateFilter201Response.getExample();
        response = (IntServerCreateFilter201Response) api.createFilter(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerCreateFilter201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCreateFilter201Response.getExample();
        response = (IntServerCreateFilter201Response) api.createFilter(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCreateFilter201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCreateFilter201Response.getExample();
        response = (IntServerCreateFilter201Response) api.createFilter(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCreateFilter201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCreateFilter201Response.getExample();
        response = (IntServerCreateFilter201Response) api.createFilter(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCreateFilter201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCreateFilter201Response.getExample();
        response = (IntServerCreateFilter201Response) api.createFilter(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerCreateFilter201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCreateFilter201Response.getExample();
        response = (IntServerCreateFilter201Response) api.createFilter(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCreateFilter201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCreateFilter201Response.getExample();
        response = (IntServerCreateFilter201Response) api.createFilter(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCreateFilter201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCreateFilter201Response.getExample();
        response = (IntServerCreateFilter201Response) api.createFilter(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCreateFilter201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCreateFilter201Response.getExample();
        response = (IntServerCreateFilter201Response) api.createFilter(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Add a geographic firewall rule (block/allow by country code or ASN)
     *
     * Creates a geo-based XDP rule on the scrubber for the service\&#39;s protected IP. Use to block traffic from specific countries or ASNs (botnet source regions) or to allow only known regions. Path param: &#x60;id&#x60; (integer, required) — service ID. Body (CreateGeoFirewallRule): &#x60;country_code&#x60; (int, country numeric ID) OR &#x60;asn&#x60; (int) — at least one is required, &#x60;destination_port&#x60; (int, defaults 80), &#x60;xdp_action&#x60; (0 allow, 1 drop, defaults 1). Destination IP is locked to the service IP server-side. Returns 201 {success: true} when created. Errors: 400 errors[] \&#39;Country or Asn is required.\&#39; or Invalid Service; 401 unauthenticated; 500 if upstream Scrub::geoFirewallCreate fails. Caveat: country_code is an internal numeric ID, not ISO-3166. Siblings: scrubIpsDeleteGeoRule, createRule, createFilter.
     */
    @isTest
    private static void createGeoRuleTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerCreateGeoFirewallRule' => '',
            'id' => ''
        };

        IntServer_Client client;
        IntServerScrubIpsApi api;
        IntServerCreateRule201Response response;
        IntServerCreateRule201Response expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerCreateRule201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCreateRule201Response.getExample();
        response = (IntServerCreateRule201Response) api.createGeoRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCreateRule201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCreateRule201Response.getExample();
        response = (IntServerCreateRule201Response) api.createGeoRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCreateRule201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCreateRule201Response.getExample();
        response = (IntServerCreateRule201Response) api.createGeoRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCreateRule201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCreateRule201Response.getExample();
        response = (IntServerCreateRule201Response) api.createGeoRule(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerCreateRule201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCreateRule201Response.getExample();
        response = (IntServerCreateRule201Response) api.createGeoRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCreateRule201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCreateRule201Response.getExample();
        response = (IntServerCreateRule201Response) api.createGeoRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCreateRule201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCreateRule201Response.getExample();
        response = (IntServerCreateRule201Response) api.createGeoRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCreateRule201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCreateRule201Response.getExample();
        response = (IntServerCreateRule201Response) api.createGeoRule(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerCreateRule201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCreateRule201Response.getExample();
        response = (IntServerCreateRule201Response) api.createGeoRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCreateRule201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCreateRule201Response.getExample();
        response = (IntServerCreateRule201Response) api.createGeoRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCreateRule201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCreateRule201Response.getExample();
        response = (IntServerCreateRule201Response) api.createGeoRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCreateRule201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCreateRule201Response.getExample();
        response = (IntServerCreateRule201Response) api.createGeoRule(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Add an L3/L4 firewall rule (allow/drop by IP, port, and protocol)
     *
     * Creates an XDP firewall rule on the scrubber for the service\&#39;s protected IP. Use to whitelist a known good source, block an abusive source, or restrict a destination port. Path param: &#x60;id&#x60; (integer, required) — service ID. Body (CreateFirewallRule): &#x60;source_ip&#x60; (IPv4, 0 &#x3D; any), &#x60;source_port&#x60; (int, 0 &#x3D; any), &#x60;destination_port&#x60; (int, 0 &#x3D; any), &#x60;protocol_id&#x60; (1 ICMP or 2 TCP/UDP — must be 1 or 2), &#x60;xdp_action&#x60; (0 allow, 1 drop). Destination IP is locked to the service IP server-side. Returns 201 {success: true} when created. Errors: 400 with &#x60;errors[]&#x60; for invalid source_ip/protocol_id/xdp_action or Invalid Service; 401 unauthenticated; 500 if upstream Scrub::firewallCreate fails. Caveat: rules are stateless and may interact with active filters. Siblings: scrubIpsDeleteRule, createGeoRule, createFilter.
     */
    @isTest
    private static void createRuleTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerCreateFirewallRule' => '',
            'id' => ''
        };

        IntServer_Client client;
        IntServerScrubIpsApi api;
        IntServerCreateRule201Response response;
        IntServerCreateRule201Response expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerCreateRule201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCreateRule201Response.getExample();
        response = (IntServerCreateRule201Response) api.createRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCreateRule201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCreateRule201Response.getExample();
        response = (IntServerCreateRule201Response) api.createRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCreateRule201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCreateRule201Response.getExample();
        response = (IntServerCreateRule201Response) api.createRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCreateRule201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCreateRule201Response.getExample();
        response = (IntServerCreateRule201Response) api.createRule(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerCreateRule201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCreateRule201Response.getExample();
        response = (IntServerCreateRule201Response) api.createRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCreateRule201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCreateRule201Response.getExample();
        response = (IntServerCreateRule201Response) api.createRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCreateRule201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCreateRule201Response.getExample();
        response = (IntServerCreateRule201Response) api.createRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCreateRule201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCreateRule201Response.getExample();
        response = (IntServerCreateRule201Response) api.createRule(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerCreateRule201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCreateRule201Response.getExample();
        response = (IntServerCreateRule201Response) api.createRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCreateRule201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCreateRule201Response.getExample();
        response = (IntServerCreateRule201Response) api.createRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCreateRule201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCreateRule201Response.getExample();
        response = (IntServerCreateRule201Response) api.createRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCreateRule201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCreateRule201Response.getExample();
        response = (IntServerCreateRule201Response) api.createRule(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Remove a scrubbing filter by matching filter_type and port
     *
     * Removes a previously attached scrubbing profile from the protected IP. Identification is by composite key, not &#x60;rule_id&#x60; — pass the same &#x60;filter_type&#x60; and &#x60;port&#x60; that were used in &#x60;createFilter&#x60;. The endpoint splits &#x60;filter_type&#x60; on &#x60;_&#x60; to dispatch to the correct delete shape (synproxy vs generic). Sibling ops: &#x60;createFilter&#x60;, &#x60;getScrubIpFilterTypes&#x60;.\n\n**Path:** &#x60;id&#x60; (integer, required) — Scrub IP service ID.\n\n**Body fields:**\n- &#x60;filter_type&#x60; (string, required) — must match an enabled type from &#x60;getScrubIpFilterTypes&#x60;.\n- &#x60;port&#x60; (integer, required) — must be &#x60;&gt; 0&#x60;.\n\n**Returns:** &#x60;{ success: true, text: \&#39;Filter is deleted.\&#39; }&#x60;.\n\n**Errors:**\n- &#x60;400&#x60; — &#x60;\&#39;Filter is required.\&#39;&#x60; / &#x60;\&#39;Port is required.\&#39;&#x60; / &#x60;\&#39;Invalid filter\&#39;&#x60; / &#x60;Invalid Service&#x60;.\n- &#x60;401&#x60; — unauthenticated.\n- &#x60;500&#x60; — upstream &#x60;Scrub::filterDelete&#x60; failed.\n\n**Caveat:** the port loses its protocol-specific scrubbing protection until &#x60;createFilter&#x60; is called again with the same composite key.\n
     */
    @isTest
    private static void deleteFilterTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerCreateFilter' => '',
            'id' => ''
        };

        IntServer_Client client;
        IntServerScrubIpsApi api;
        IntServerDeleteFilter200Response response;
        IntServerDeleteFilter200Response expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerDeleteFilter200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDeleteFilter200Response.getExample();
        response = (IntServerDeleteFilter200Response) api.deleteFilter(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDeleteFilter200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDeleteFilter200Response.getExample();
        response = (IntServerDeleteFilter200Response) api.deleteFilter(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDeleteFilter200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDeleteFilter200Response.getExample();
        response = (IntServerDeleteFilter200Response) api.deleteFilter(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDeleteFilter200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDeleteFilter200Response.getExample();
        response = (IntServerDeleteFilter200Response) api.deleteFilter(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerDeleteFilter200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDeleteFilter200Response.getExample();
        response = (IntServerDeleteFilter200Response) api.deleteFilter(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDeleteFilter200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDeleteFilter200Response.getExample();
        response = (IntServerDeleteFilter200Response) api.deleteFilter(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDeleteFilter200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDeleteFilter200Response.getExample();
        response = (IntServerDeleteFilter200Response) api.deleteFilter(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDeleteFilter200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDeleteFilter200Response.getExample();
        response = (IntServerDeleteFilter200Response) api.deleteFilter(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerDeleteFilter200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDeleteFilter200Response.getExample();
        response = (IntServerDeleteFilter200Response) api.deleteFilter(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDeleteFilter200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDeleteFilter200Response.getExample();
        response = (IntServerDeleteFilter200Response) api.deleteFilter(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDeleteFilter200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDeleteFilter200Response.getExample();
        response = (IntServerDeleteFilter200Response) api.deleteFilter(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDeleteFilter200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDeleteFilter200Response.getExample();
        response = (IntServerDeleteFilter200Response) api.deleteFilter(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Disable DDoS scrubbing and remove the BGP announcement on the IP
     *
     * Withdraws the BGP announcement from Wanguard so the IP stops being routed through scrubbing; traffic resumes flowing directly to the backend. Use for maintenance windows or migration off scrub. Path param: &#x60;id&#x60; (integer, required) — service ID from getScrubIpsList. No body (HTTP GET). The endpoint reads the stored Wanguard &#x60;href&#x60; from the service\&#39;s &#x60;extra&#x60; JSON to know which announcement to delete; clears &#x60;extra&#x60; on success. Returns {success: true, text: \&#39;Scrub is disabled on your IP.\&#39;}. Errors: 400 Invalid Service if id is not owned, or \&#39;Scrub is not enabled in this service.\&#39; if there is no active announcement; 401 unauthenticated; 500 if upstream delete fails. Caveat: leaves the IP unprotected against DDoS until enableScrub is called. Siblings: enableScrub, cancelScrubIp, getScrubIpDetails.
     */
    @isTest
    private static void disableScrubTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerScrubIpsApi api;
        IntServerDisableScrub200Response response;
        IntServerDisableScrub200Response expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerDisableScrub200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDisableScrub200Response.getExample();
        response = (IntServerDisableScrub200Response) api.disableScrub(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDisableScrub200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDisableScrub200Response.getExample();
        response = (IntServerDisableScrub200Response) api.disableScrub(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDisableScrub200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDisableScrub200Response.getExample();
        response = (IntServerDisableScrub200Response) api.disableScrub(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDisableScrub200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDisableScrub200Response.getExample();
        response = (IntServerDisableScrub200Response) api.disableScrub(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerDisableScrub200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDisableScrub200Response.getExample();
        response = (IntServerDisableScrub200Response) api.disableScrub(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDisableScrub200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDisableScrub200Response.getExample();
        response = (IntServerDisableScrub200Response) api.disableScrub(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDisableScrub200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDisableScrub200Response.getExample();
        response = (IntServerDisableScrub200Response) api.disableScrub(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDisableScrub200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDisableScrub200Response.getExample();
        response = (IntServerDisableScrub200Response) api.disableScrub(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerDisableScrub200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDisableScrub200Response.getExample();
        response = (IntServerDisableScrub200Response) api.disableScrub(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDisableScrub200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDisableScrub200Response.getExample();
        response = (IntServerDisableScrub200Response) api.disableScrub(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDisableScrub200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDisableScrub200Response.getExample();
        response = (IntServerDisableScrub200Response) api.disableScrub(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDisableScrub200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDisableScrub200Response.getExample();
        response = (IntServerDisableScrub200Response) api.disableScrub(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Enable DDoS scrubbing (BGP announcement) on the service\&#39;s protected IP
     *
     * Routes the service\&#39;s protected IP through the Wanguard scrubbing infrastructure by creating a BGP announcement, so inbound traffic passes through filtering before reaching the backend. Call after placeScrubOrder activation, after disableScrub, or whenever the announcement was lost. Path param: &#x60;id&#x60; (integer, required) — service ID from getScrubIpsList. No request body (HTTP GET). Returns {success: true, text: \&#39;Scrub is enabled on your IP.\&#39;} on 201 from Wanguard, persisted into the service\&#39;s &#x60;extra&#x60; column. Errors: 400 Invalid Service if id is not owned by the session account; 401 unauthenticated; 500 if the upstream Wanguard call fails. Caveat: enabling re-routes live traffic and can briefly disrupt active sessions. Siblings: disableScrub, getScrubIpDetails, getScrubIpLogs.
     */
    @isTest
    private static void enableScrubTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerScrubIpsApi api;
        IntServerEnableScrub200Response response;
        IntServerEnableScrub200Response expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerEnableScrub200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerEnableScrub200Response.getExample();
        response = (IntServerEnableScrub200Response) api.enableScrub(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerEnableScrub200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerEnableScrub200Response.getExample();
        response = (IntServerEnableScrub200Response) api.enableScrub(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerEnableScrub200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerEnableScrub200Response.getExample();
        response = (IntServerEnableScrub200Response) api.enableScrub(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerEnableScrub200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerEnableScrub200Response.getExample();
        response = (IntServerEnableScrub200Response) api.enableScrub(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerEnableScrub200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerEnableScrub200Response.getExample();
        response = (IntServerEnableScrub200Response) api.enableScrub(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerEnableScrub200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerEnableScrub200Response.getExample();
        response = (IntServerEnableScrub200Response) api.enableScrub(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerEnableScrub200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerEnableScrub200Response.getExample();
        response = (IntServerEnableScrub200Response) api.enableScrub(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerEnableScrub200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerEnableScrub200Response.getExample();
        response = (IntServerEnableScrub200Response) api.enableScrub(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerEnableScrub200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerEnableScrub200Response.getExample();
        response = (IntServerEnableScrub200Response) api.enableScrub(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get plans, pricing, and eligible IPs for a new Scrub IP order
     *
     * Returns the data needed to render a new-order form: &#x60;packageCosts&#x60; (default services_id and recurring price in customer currency with symbol), &#x60;serviceTypes&#x60; (each buyable plan with services_id, services_name, services_cost, services_module), and &#x60;ips&#x60; (the customer\&#39;s existing VPS/server/floating IPs eligible to be put behind a scrubber, each with service_id, service_module, service_hostname). Use as a precursor to putScrubIps (validate) or placeScrubOrder (commit). No path/query/body parameters. Returns object. Errors: 401 unauthenticated. Caveat: ips list is filtered to the session account; pricing is converted to the customer\&#39;s currency. Siblings: putScrubIps, placeScrubOrder, getScrubIpsList.
     */
    @isTest
    private static void getOrderDetailTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        IntServer_Client client;
        IntServerScrubIpsApi api;
        IntServerGetOrderDetail200Response response;
        IntServerGetOrderDetail200Response expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerGetOrderDetail200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGetOrderDetail200Response.getExample();
        response = (IntServerGetOrderDetail200Response) api.getOrderDetail();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGetOrderDetail200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGetOrderDetail200Response.getExample();
        response = (IntServerGetOrderDetail200Response) api.getOrderDetail();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerGetOrderDetail200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGetOrderDetail200Response.getExample();
        response = (IntServerGetOrderDetail200Response) api.getOrderDetail();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGetOrderDetail200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGetOrderDetail200Response.getExample();
        response = (IntServerGetOrderDetail200Response) api.getOrderDetail();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerGetOrderDetail200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGetOrderDetail200Response.getExample();
        response = (IntServerGetOrderDetail200Response) api.getOrderDetail();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGetOrderDetail200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGetOrderDetail200Response.getExample();
        response = (IntServerGetOrderDetail200Response) api.getOrderDetail();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get full Scrub IP service detail (rules + geo + filters)
     *
     * Returns the full service-detail payload for one Scrub IP — used to render the dashboard or before mutating rules/filters. Includes &#x60;serviceInfo&#x60; (status, scrubbed IP, custid), &#x60;billingDetails&#x60; (cost, frequency), &#x60;client_links&#x60; (allowed self-service actions), and &#x60;filter_firewall&#x60; with the active firewall &#x60;rules&#x60;, geographic &#x60;geo_rules&#x60;, and traffic &#x60;filters&#x60;. Each rule/filter row carries its own &#x60;id&#x60; used by the delete endpoints. Sibling ops: &#x60;getScrubIpsList&#x60;, &#x60;enableScrub&#x60;, &#x60;disableScrub&#x60;, &#x60;createRule&#x60;, &#x60;scrubIpsDeleteRule&#x60;, &#x60;createGeoRule&#x60;, &#x60;scrubIpsDeleteGeoRule&#x60;, &#x60;createFilter&#x60;, &#x60;deleteFilter&#x60;, &#x60;getScrubIpInvoices&#x60;, &#x60;getScrubIpLogs&#x60;, &#x60;cancelScrubIp&#x60;.\n\n**Path:** &#x60;id&#x60; (integer, required) — service ID from &#x60;getScrubIpsList&#x60;.\n\n**Body / query:** None.\n\n**Returns:** object with &#x60;serviceInfo&#x60;, &#x60;billingDetails&#x60;, &#x60;client_links&#x60;, &#x60;filter_firewall&#x60; (&#x60;rules&#x60; / &#x60;geo_rules&#x60; / &#x60;filters&#x60;).\n\n**Auth:** Session/API key. Ownership enforced via &#x60;scrub_ips_custid&#x60;.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n- &#x60;Invalid Service&#x60; — &#x60;id&#x60; is not owned by the session account.\n\n**Caveat:** rule/filter IDs are regenerated after recreate — re-fetch before calling a delete endpoint.\n\n**Related calls:**\n- **Mutations:** &#x60;enableScrub&#x60;, &#x60;disableScrub&#x60;, &#x60;createRule&#x60;, &#x60;createGeoRule&#x60;, &#x60;createFilter&#x60;.\n- **Deletes:** &#x60;scrubIpsDeleteRule&#x60;, &#x60;scrubIpsDeleteGeoRule&#x60;, &#x60;deleteFilter&#x60;.\n- **Billing / activity:** &#x60;getScrubIpInvoices&#x60;, &#x60;getScrubIpLogs&#x60;.\n- **Cancel:** &#x60;cancelScrubIp&#x60;.\n
     */
    @isTest
    private static void getScrubIpDetailsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerScrubIpsApi api;
        IntServerGetScrubIpDetails200Respons response;
        IntServerGetScrubIpDetails200Respons expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerGetScrubIpDetails200Respons.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGetScrubIpDetails200Respons.getExample();
        response = (IntServerGetScrubIpDetails200Respons) api.getScrubIpDetails(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGetScrubIpDetails200Respons.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGetScrubIpDetails200Respons.getExample();
        response = (IntServerGetScrubIpDetails200Respons) api.getScrubIpDetails(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerGetScrubIpDetails200Respons.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGetScrubIpDetails200Respons.getExample();
        response = (IntServerGetScrubIpDetails200Respons) api.getScrubIpDetails(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGetScrubIpDetails200Respons.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGetScrubIpDetails200Respons.getExample();
        response = (IntServerGetScrubIpDetails200Respons) api.getScrubIpDetails(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerGetScrubIpDetails200Respons.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGetScrubIpDetails200Respons.getExample();
        response = (IntServerGetScrubIpDetails200Respons) api.getScrubIpDetails(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGetScrubIpDetails200Respons.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGetScrubIpDetails200Respons.getExample();
        response = (IntServerGetScrubIpDetails200Respons) api.getScrubIpDetails(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List enabled traffic filter profiles available for createFilter
     *
     * Returns the catalog of scrub filter profiles (e.g. dns, http, synproxy) currently enabled on the scrubbing platform, keyed by filter_name with a humanized display &#x60;name&#x60; and &#x60;desc&#x60;. Call this to populate a dropdown before invoking createFilter — the &#x60;filter_type&#x60; field on that endpoint must be one of the keys returned here. Not service-scoped: no path/query/body parameters and the same set applies to every Scrub IP. Returns {success: true, filters: {&lt;filter_name&gt;: {name, desc}, ...}}. Errors: 401 unauthenticated. Caveat: only filters with enabled&#x3D;1 are returned; profile semantics are platform-defined (synproxy uses different request shape internally). Siblings: createFilter, deleteFilter, getScrubIpDetails.
     */
    @isTest
    private static void getScrubIpFilterTypesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        IntServer_Client client;
        IntServerScrubIpsApi api;
        IntServerScrubIpFilterTypes response;
        IntServerScrubIpFilterTypes expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerScrubIpFilterTypes.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerScrubIpFilterTypes.getExample();
        response = (IntServerScrubIpFilterTypes) api.getScrubIpFilterTypes();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerScrubIpFilterTypes.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerScrubIpFilterTypes.getExample();
        response = (IntServerScrubIpFilterTypes) api.getScrubIpFilterTypes();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerScrubIpFilterTypes.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerScrubIpFilterTypes.getExample();
        response = (IntServerScrubIpFilterTypes) api.getScrubIpFilterTypes();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerScrubIpFilterTypes.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerScrubIpFilterTypes.getExample();
        response = (IntServerScrubIpFilterTypes) api.getScrubIpFilterTypes();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerScrubIpFilterTypes.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerScrubIpFilterTypes.getExample();
        response = (IntServerScrubIpFilterTypes) api.getScrubIpFilterTypes();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerScrubIpFilterTypes.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerScrubIpFilterTypes.getExample();
        response = (IntServerScrubIpFilterTypes) api.getScrubIpFilterTypes();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List recurring and one-time invoices billed for this Scrub IP service
     *
     * Returns the recurring and one-time invoices generated for the Scrub IP service so the caller can verify billing status, present a payment history, or initiate payment on an unpaid invoice. Use after placeScrubOrder (to find the new invoice id) or before cancelScrubIp (to surface outstanding balance). Path param: &#x60;id&#x60; (integer, required) — service ID from getScrubIpsList. No body/query parameters. Returns ChargeInvoiceRows (array of invoice objects with id, amount, status, due dates). Errors: 401 unauthenticated; empty result if id is not owned by the session account. Caveat: paid invoices remain in history; filter on status client-side. Siblings: getScrubIpDetails, placeScrubOrder, cancelScrubIp.
     */
    @isTest
    private static void getScrubIpInvoicesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerScrubIpsApi api;
        IntServerChargeInvoiceRows response;
        IntServerChargeInvoiceRows expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getScrubIpInvoices(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getScrubIpInvoices(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getScrubIpInvoices(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getScrubIpInvoices(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getScrubIpInvoices(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getScrubIpInvoices(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get last 50000 packet/event log entries for the protected IP
     *
     * Pulls scrubbing telemetry directly from the SCRUBLOGS clickhouse-style backend: timestamp, source IP, target IP, target port, protocol (ICMP/IGMP/TCP/UDP/etc.), byte_count, action (Allow/Drop/Challenge), and the matching filter label. Use for incident analysis, validating new firewall rules, or proving a DDoS attack hit the scrubber. Path param: &#x60;id&#x60; (string, required) — service ID. No body/query parameters. Timestamps are converted to the customer\&#39;s timezone. Returns array of log rows (ScrubIpsLogRowSchema), most recent first, capped at 50000. Errors: 401 unauthenticated; returns false if id is not owned or upstream returns no data — not a 404. Caveat: large response; logs are not real-time and source IPs are reverse-byte-ordered. Siblings: getScrubIpDetails, enableScrub, createRule.
     */
    @isTest
    private static void getScrubIpLogsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 413232  
        };

        IntServer_Client client;
        IntServerScrubIpsApi api;
        List<IntServerScrubIpsLogRowSchema> response;
        List<IntServerScrubIpsLogRowSchema> expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<IntServerScrubIpsLogRowSchema>{IntServerScrubIpsLogRowSchema.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerScrubIpsLogRowSchema>{IntServerScrubIpsLogRowSchema.getExample()};
        response = (List<IntServerScrubIpsLogRowSchema>) api.getScrubIpLogs(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<IntServerScrubIpsLogRowSchema>{IntServerScrubIpsLogRowSchema.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerScrubIpsLogRowSchema>{IntServerScrubIpsLogRowSchema.getExample()};
        response = (List<IntServerScrubIpsLogRowSchema>) api.getScrubIpLogs(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<IntServerScrubIpsLogRowSchema>{IntServerScrubIpsLogRowSchema.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerScrubIpsLogRowSchema>{IntServerScrubIpsLogRowSchema.getExample()};
        response = (List<IntServerScrubIpsLogRowSchema>) api.getScrubIpLogs(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<IntServerScrubIpsLogRowSchema>{IntServerScrubIpsLogRowSchema.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerScrubIpsLogRowSchema>{IntServerScrubIpsLogRowSchema.getExample()};
        response = (List<IntServerScrubIpsLogRowSchema>) api.getScrubIpLogs(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<IntServerScrubIpsLogRowSchema>{IntServerScrubIpsLogRowSchema.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerScrubIpsLogRowSchema>{IntServerScrubIpsLogRowSchema.getExample()};
        response = (List<IntServerScrubIpsLogRowSchema>) api.getScrubIpLogs(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<IntServerScrubIpsLogRowSchema>{IntServerScrubIpsLogRowSchema.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerScrubIpsLogRowSchema>{IntServerScrubIpsLogRowSchema.getExample()};
        response = (List<IntServerScrubIpsLogRowSchema>) api.getScrubIpLogs(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List all Scrub IP DDoS protection services on the authenticated account
     *
     * Returns every Scrub IP service belonging to the authenticated customer with status, protected IP, plan name, and recurring cost. Use this for dashboards, picking a service ID for downstream calls (getScrubIpDetails, enableScrub, createRule, getScrubIpLogs), or auditing which IPs are routed through DDoS scrubbing. No path/query/body parameters; service ownership is enforced via session account_id. Returns an array of {id, repeat_invoices_cost, ip, status, services_name}; empty array if no scrub services. Errors: 401 unauthenticated. Caveat: only customer-owned services are visible. Siblings: getScrubIpDetails, getOrderDetail, placeScrubOrder, cancelScrubIp.
     */
    @isTest
    private static void getScrubIpsListTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        IntServer_Client client;
        IntServerScrubIpsApi api;
        List<IntServerScrubIpsRowSchema> response;
        List<IntServerScrubIpsRowSchema> expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<IntServerScrubIpsRowSchema>{IntServerScrubIpsRowSchema.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerScrubIpsRowSchema>{IntServerScrubIpsRowSchema.getExample()};
        response = (List<IntServerScrubIpsRowSchema>) api.getScrubIpsList();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<IntServerScrubIpsRowSchema>{IntServerScrubIpsRowSchema.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerScrubIpsRowSchema>{IntServerScrubIpsRowSchema.getExample()};
        response = (List<IntServerScrubIpsRowSchema>) api.getScrubIpsList();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<IntServerScrubIpsRowSchema>{IntServerScrubIpsRowSchema.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerScrubIpsRowSchema>{IntServerScrubIpsRowSchema.getExample()};
        response = (List<IntServerScrubIpsRowSchema>) api.getScrubIpsList();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<IntServerScrubIpsRowSchema>{IntServerScrubIpsRowSchema.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerScrubIpsRowSchema>{IntServerScrubIpsRowSchema.getExample()};
        response = (List<IntServerScrubIpsRowSchema>) api.getScrubIpsList();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<IntServerScrubIpsRowSchema>{IntServerScrubIpsRowSchema.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerScrubIpsRowSchema>{IntServerScrubIpsRowSchema.getExample()};
        response = (List<IntServerScrubIpsRowSchema>) api.getScrubIpsList();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<IntServerScrubIpsRowSchema>{IntServerScrubIpsRowSchema.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerScrubIpsRowSchema>{IntServerScrubIpsRowSchema.getExample()};
        response = (List<IntServerScrubIpsRowSchema>) api.getScrubIpsList();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Place a new Scrub IP DDoS protection order and generate an invoice
     *
     * Commits the order: re-runs validate_buy_scrub_ip then place_buy_scrub_ip which creates the service row, repeat_invoice, and a one-time invoice for the prorated charge. Use putScrubIps first to surface errors without billing. No path parameters. Body (ScrubIpPlaceOrder): &#x60;serviceType&#x60; (services_id), &#x60;ip&#x60; (eligible IP from getOrderDetail). Returns 201 {success: true, text: \&#39;ScrubIp order is placed.\&#39;, order_details: {total_cost, service_id, invoice_id, invoice_description, cj_params}}. Errors: 400 {success: false, text: \&#39;Unable to place order.\&#39;, errors: []} on validation; 401 unauthenticated; 422 on invalid serviceType/ip; 409 if the IP is already protected. Caveat: invoice is unpaid at creation — pay via Pay endpoints to activate. Siblings: putScrubIps, getOrderDetail, enableScrub, getScrubIpInvoices.
     */
    @isTest
    private static void placeScrubOrderTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerScrubIpPlaceOrder' => ''
        };

        IntServer_Client client;
        IntServerScrubIpsApi api;
        IntServerPlaceScrubOrder201Response response;
        IntServerPlaceScrubOrder201Response expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerPlaceScrubOrder201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerPlaceScrubOrder201Response.getExample();
        response = (IntServerPlaceScrubOrder201Response) api.placeScrubOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerPlaceScrubOrder201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerPlaceScrubOrder201Response.getExample();
        response = (IntServerPlaceScrubOrder201Response) api.placeScrubOrder(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerPlaceScrubOrder201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerPlaceScrubOrder201Response.getExample();
        response = (IntServerPlaceScrubOrder201Response) api.placeScrubOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerPlaceScrubOrder201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerPlaceScrubOrder201Response.getExample();
        response = (IntServerPlaceScrubOrder201Response) api.placeScrubOrder(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerPlaceScrubOrder201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerPlaceScrubOrder201Response.getExample();
        response = (IntServerPlaceScrubOrder201Response) api.placeScrubOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerPlaceScrubOrder201Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerPlaceScrubOrder201Response.getExample();
        response = (IntServerPlaceScrubOrder201Response) api.placeScrubOrder(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Validate a Scrub IP order and return effective pricing without billing
     *
     * Dry-runs a Scrub IP purchase via validate_buy_scrub_ip and returns whether the order would succeed plus the resolved pricing — without creating an invoice. Use to render a real-time price/error panel as the user picks options. No path parameters. Body (ScrubIpPlaceOrder): &#x60;serviceType&#x60; (services_id from getOrderDetail.serviceTypes), &#x60;ip&#x60; (one of getOrderDetail.ips), optional &#x60;coupon&#x60;. Returns {continue: bool, errors: [], serviceType, serviceCost, originalCost, repeatServiceCost}. Errors: 401 unauthenticated; validation failures appear in &#x60;errors&#x60;, not as HTTP 4xx. Caveat: idempotent — call as often as needed; 422 on invalid coupon surfaces in the errors array. Siblings: getOrderDetail, placeScrubOrder, getScrubIpsList.
     */
    @isTest
    private static void putScrubIpsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerScrubIpPlaceOrder' => ''
        };

        IntServer_Client client;
        IntServerScrubIpsApi api;
        IntServerPutScrubIps200Response response;
        IntServerPutScrubIps200Response expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerPutScrubIps200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerPutScrubIps200Response.getExample();
        response = (IntServerPutScrubIps200Response) api.putScrubIps(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerPutScrubIps200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerPutScrubIps200Response.getExample();
        response = (IntServerPutScrubIps200Response) api.putScrubIps(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerPutScrubIps200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerPutScrubIps200Response.getExample();
        response = (IntServerPutScrubIps200Response) api.putScrubIps(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerPutScrubIps200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerPutScrubIps200Response.getExample();
        response = (IntServerPutScrubIps200Response) api.putScrubIps(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerPutScrubIps200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerPutScrubIps200Response.getExample();
        response = (IntServerPutScrubIps200Response) api.putScrubIps(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerPutScrubIps200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerPutScrubIps200Response.getExample();
        response = (IntServerPutScrubIps200Response) api.putScrubIps(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Delete a geo firewall rule by rule_id from getScrubIpDetails
     *
     * Removes a previously created geographic firewall rule from the Scrub IP service. The rule_id must come from the &#x60;filter_firewall.geo_rules[].id&#x60; array returned by getScrubIpDetails — the endpoint validates the id belongs to this service before deleting. Path param: &#x60;id&#x60; (integer, required) — Scrub IP service ID. Body (JSON): {&#x60;rule_id&#x60;: integer, required}. Returns {success: true, text: \&#39;Firewall Rule has been deleted.\&#39;}. Errors: 400 Invalid Service, \&#39;Rule Id is required.\&#39; or \&#39;Invalid rule id\&#39; (rule does not belong to this service); 401 unauthenticated; 500 if upstream Scrub::geoFirewallDelete fails. Caveat: removing a country/ASN block re-admits that traffic. Siblings: createGeoRule, scrubIpsDeleteRule, deleteFilter, getScrubIpDetails.
     */
    @isTest
    private static void scrubIpsDeleteGeoRuleTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerDeleteGeoFirewallRule' => '',
            'id' => ''
        };

        IntServer_Client client;
        IntServerScrubIpsApi api;
        IntServerScrubIpsDeleteRule200Respon response;
        IntServerScrubIpsDeleteRule200Respon expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerScrubIpsDeleteRule200Respon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerScrubIpsDeleteRule200Respon.getExample();
        response = (IntServerScrubIpsDeleteRule200Respon) api.scrubIpsDeleteGeoRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerScrubIpsDeleteRule200Respon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerScrubIpsDeleteRule200Respon.getExample();
        response = (IntServerScrubIpsDeleteRule200Respon) api.scrubIpsDeleteGeoRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerScrubIpsDeleteRule200Respon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerScrubIpsDeleteRule200Respon.getExample();
        response = (IntServerScrubIpsDeleteRule200Respon) api.scrubIpsDeleteGeoRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerScrubIpsDeleteRule200Respon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerScrubIpsDeleteRule200Respon.getExample();
        response = (IntServerScrubIpsDeleteRule200Respon) api.scrubIpsDeleteGeoRule(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerScrubIpsDeleteRule200Respon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerScrubIpsDeleteRule200Respon.getExample();
        response = (IntServerScrubIpsDeleteRule200Respon) api.scrubIpsDeleteGeoRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerScrubIpsDeleteRule200Respon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerScrubIpsDeleteRule200Respon.getExample();
        response = (IntServerScrubIpsDeleteRule200Respon) api.scrubIpsDeleteGeoRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerScrubIpsDeleteRule200Respon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerScrubIpsDeleteRule200Respon.getExample();
        response = (IntServerScrubIpsDeleteRule200Respon) api.scrubIpsDeleteGeoRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerScrubIpsDeleteRule200Respon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerScrubIpsDeleteRule200Respon.getExample();
        response = (IntServerScrubIpsDeleteRule200Respon) api.scrubIpsDeleteGeoRule(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerScrubIpsDeleteRule200Respon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerScrubIpsDeleteRule200Respon.getExample();
        response = (IntServerScrubIpsDeleteRule200Respon) api.scrubIpsDeleteGeoRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerScrubIpsDeleteRule200Respon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerScrubIpsDeleteRule200Respon.getExample();
        response = (IntServerScrubIpsDeleteRule200Respon) api.scrubIpsDeleteGeoRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerScrubIpsDeleteRule200Respon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerScrubIpsDeleteRule200Respon.getExample();
        response = (IntServerScrubIpsDeleteRule200Respon) api.scrubIpsDeleteGeoRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerScrubIpsDeleteRule200Respon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerScrubIpsDeleteRule200Respon.getExample();
        response = (IntServerScrubIpsDeleteRule200Respon) api.scrubIpsDeleteGeoRule(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Delete an L3/L4 firewall rule by rule_id from getScrubIpDetails
     *
     * Removes a previously created L3/L4 firewall rule from the Scrub IP service. The rule_id must come from the &#x60;filter_firewall.rules[].id&#x60; array returned by getScrubIpDetails — the endpoint validates the id belongs to this service before deleting. Path param: &#x60;id&#x60; (integer, required) — Scrub IP service ID. Body (JSON): {&#x60;rule_id&#x60;: integer, required}. Returns {success: true, text: \&#39;Firewall Rule has been deleted.\&#39;}. Errors: 400 Invalid Service, \&#39;rule_id is required.\&#39; or \&#39;Invalid rule id\&#39; (rule does not belong to this service); 401 unauthenticated; 500 if upstream Scrub::firewallDelete fails. Caveat: if the rule was the only protection against a specific source, deleting it re-exposes the IP. Siblings: createRule, scrubIpsDeleteGeoRule, deleteFilter, getScrubIpDetails.
     */
    @isTest
    private static void scrubIpsDeleteRuleTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerDeleteFirewallRule' => '',
            'id' => ''
        };

        IntServer_Client client;
        IntServerScrubIpsApi api;
        IntServerScrubIpsDeleteRule200Respon response;
        IntServerScrubIpsDeleteRule200Respon expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerScrubIpsDeleteRule200Respon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerScrubIpsDeleteRule200Respon.getExample();
        response = (IntServerScrubIpsDeleteRule200Respon) api.scrubIpsDeleteRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerScrubIpsDeleteRule200Respon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerScrubIpsDeleteRule200Respon.getExample();
        response = (IntServerScrubIpsDeleteRule200Respon) api.scrubIpsDeleteRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerScrubIpsDeleteRule200Respon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerScrubIpsDeleteRule200Respon.getExample();
        response = (IntServerScrubIpsDeleteRule200Respon) api.scrubIpsDeleteRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerScrubIpsDeleteRule200Respon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerScrubIpsDeleteRule200Respon.getExample();
        response = (IntServerScrubIpsDeleteRule200Respon) api.scrubIpsDeleteRule(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerScrubIpsDeleteRule200Respon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerScrubIpsDeleteRule200Respon.getExample();
        response = (IntServerScrubIpsDeleteRule200Respon) api.scrubIpsDeleteRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerScrubIpsDeleteRule200Respon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerScrubIpsDeleteRule200Respon.getExample();
        response = (IntServerScrubIpsDeleteRule200Respon) api.scrubIpsDeleteRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerScrubIpsDeleteRule200Respon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerScrubIpsDeleteRule200Respon.getExample();
        response = (IntServerScrubIpsDeleteRule200Respon) api.scrubIpsDeleteRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerScrubIpsDeleteRule200Respon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerScrubIpsDeleteRule200Respon.getExample();
        response = (IntServerScrubIpsDeleteRule200Respon) api.scrubIpsDeleteRule(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerScrubIpsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerScrubIpsDeleteRule200Respon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerScrubIpsDeleteRule200Respon.getExample();
        response = (IntServerScrubIpsDeleteRule200Respon) api.scrubIpsDeleteRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerScrubIpsDeleteRule200Respon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerScrubIpsDeleteRule200Respon.getExample();
        response = (IntServerScrubIpsDeleteRule200Respon) api.scrubIpsDeleteRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerScrubIpsDeleteRule200Respon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerScrubIpsDeleteRule200Respon.getExample();
        response = (IntServerScrubIpsDeleteRule200Respon) api.scrubIpsDeleteRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerScrubIpsDeleteRule200Respon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerScrubIpsDeleteRule200Respon.getExample();
        response = (IntServerScrubIpsDeleteRule200Respon) api.scrubIpsDeleteRule(params);
        System.assertEquals(expectedResponse, response);
    }
}