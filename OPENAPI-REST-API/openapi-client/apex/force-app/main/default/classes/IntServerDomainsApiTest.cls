@isTest
private class IntServerDomainsApiTest {
    /**
     * Place a new domain registration or transfer order, generate billing invoice
     *
     * Places a new domain registration or transfer order. Resolves the TLD to a &#x60;services_id&#x60;, runs &#x60;validate_buy_domain()&#x60; (hostname, TLD service, fields, coupon, whois-privacy add-on), then calls &#x60;place_buy_domain()&#x60; to create the &#x60;Repeat_Invoice&#x60; recurring billing row, generate the initial &#x60;invoices&#x60; row, and (when &#x60;whois_privacy&#x3D;enable&#x60;) an additional add-on &#x60;Repeat_Invoice&#x60; for privacy. **Real money** — call &#x60;putDomains&#x60; then &#x60;patchDomains&#x60; first to preview and validate. Sibling ops: &#x60;getDomainLookup&#x60;, &#x60;getNewDomain&#x60;, &#x60;putDomains&#x60;, &#x60;patchDomains&#x60;, &#x60;initiatePayment&#x60;.\n\n**Body fields (JSON or form):**\n- &#x60;hostname&#x60; (string, required) — FQDN to register or transfer.\n- &#x60;type&#x60; (string, optional, default &#x60;register&#x60;) — &#x60;register&#x60; or &#x60;transfer&#x60;.\n- &#x60;whois_privacy&#x60; (string, optional) — &#x60;enable&#x60; to add the privacy add-on (separate recurring invoice).\n- &#x60;coupon&#x60; (string, optional) — coupon code.\n- All per-TLD contact/registration fields from &#x60;putDomains.domainFields&#x60; (registrant contact details, TLD-specific fields like nexus codes, EPP &#x60;auth_info&#x60; for transfers, etc.).\n\n**Returns** (schema &#x60;ServiceOrderPostResponse&#x60;): &#x60;{total_cost, iid, iids, real_iids, serviceid (new domain_id), invoice_description, cj_params, payUrl}&#x60; — pass &#x60;real_iids&#x60; to &#x60;initiatePayment&#x60; to fund the order.\n\n**Side effects:**\n- Inserts &#x60;domains&#x60; service row in &#x60;pending&#x60; status.\n- Inserts &#x60;repeat_invoices&#x60; row for recurring renewal.\n- Inserts &#x60;invoices&#x60; row for the first-period charge.\n- When &#x60;whois_privacy&#x3D;enable&#x60;: inserts a separate add-on &#x60;repeat_invoices&#x60; row + its initial invoice.\n- For transfers: stores &#x60;auth_info&#x60; and marks &#x60;service_extra&#x60; as &#x60;transfer&#x60;.\n\n**Auth:** Session/API key.\n\n**Errors:**\n- &#x60;400 Missing hostname parameter&#x60;.\n- &#x60;400 Unable to determine service type for this domain TLD.&#x60;.\n- &#x60;401&#x60; — unauthenticated.\n- &#x60;422&#x60; — validation failure (e.g. coupon invalid, required TLD field missing, hostname not registerable). Response body is the combined &#x60;errors&#x60; array from &#x60;validate_buy_domain()&#x60;.\n\n**Related calls:**\n- **Prerequisites:** &#x60;getDomainLookup&#x60; → &#x60;getNewDomain&#x60; → &#x60;putDomains&#x60; → &#x60;patchDomains&#x60;.\n- **Pay:** &#x60;initiatePayment&#x60; with &#x60;real_iids&#x60;.\n- **Verify activation:** &#x60;getDomainInfo&#x60; (poll for &#x60;domain_status&#x3D;\&#39;active\&#39;&#x60;).\n- **Track in-progress transfer:** &#x60;getDomainTransfer&#x60;.\n- **For pending transfers needing EPP/auth_info:** &#x60;updateDomainContact&#x60; (set &#x60;auth_info&#x60;).\n\n**Example happy path (register):**\n&#x60;&#x60;&#x60;text\nGET /apiv2/domains/lookup/example.com           -&gt; available, pricing, fields\nPUT /apiv2/domains/order { hostname, type }     -&gt; domainFields\nPATCH /apiv2/domains/order { hostname, ...fields } -&gt; &quot;success&quot;\nPOST /apiv2/domains/order { hostname, type, ...fields } -&gt; { serviceid, real_iids }\nGET /apiv2/billing/pay/cc/{real_iids[0]}        -&gt; pay\nGET /apiv2/domains/{serviceid}                  -&gt; poll until domain_status&#x3D;&#x3D;&quot;active&quot;\n&#x60;&#x60;&#x60;\n
     */
    @isTest
    private static void addDomainTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerDomainOrderRequest' => ''
        };

        IntServer_Client client;
        IntServerDomainsApi api;
        IntServerServiceOrderPostResponse response;
        IntServerServiceOrderPostResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServiceOrderPostResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServiceOrderPostResponse.getExample();
        response = (IntServerServiceOrderPostResponse) api.addDomain(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServiceOrderPostResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServiceOrderPostResponse.getExample();
        response = (IntServerServiceOrderPostResponse) api.addDomain(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServiceOrderPostResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServiceOrderPostResponse.getExample();
        response = (IntServerServiceOrderPostResponse) api.addDomain(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServiceOrderPostResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServiceOrderPostResponse.getExample();
        response = (IntServerServiceOrderPostResponse) api.addDomain(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServiceOrderPostResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServiceOrderPostResponse.getExample();
        response = (IntServerServiceOrderPostResponse) api.addDomain(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServiceOrderPostResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServiceOrderPostResponse.getExample();
        response = (IntServerServiceOrderPostResponse) api.addDomain(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Register DNSSEC DS records on the domain at OpenSRS
     *
     * Registers one or more DNSSEC DS records at the registrar. Body uses parallel arrays indexed per record. **Propagation caveat:** DNSSEC publication is asynchronous at the registry — a 200 here does not guarantee the records have propagated; re-call &#x60;getDomainDnssec&#x60; to verify. **Sets, not adds:** this replaces the full DS record set in one transaction; to remove all DS records use &#x60;deleteDomainDnssec&#x60;. Sibling ops: &#x60;getDomainDnssec&#x60;, &#x60;deleteDomainDnssec&#x60;.\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.\n\n**Body fields (JSON or multipart, parallel arrays — &#x60;algorithm[0]&#x60; pairs with &#x60;key_tag[0]&#x60;, etc., schema &#x60;DomainDnssecRequest&#x60;):**\n- &#x60;algorithm[]&#x60; (integer) — DNSKEY algorithm (e.g. 8 &#x3D; RSASHA256, 13 &#x3D; ECDSAP256SHA256).\n- &#x60;key_tag[]&#x60; (integer) — must be &lt; 65536.\n- &#x60;digest_type[]&#x60; (integer) — &#x60;1&#x60; (SHA-1, 40 hex chars), &#x60;2&#x60; (SHA-256, 64), &#x60;3&#x60; (GOST, 64), &#x60;4&#x60; (SHA-384, 96).\n- &#x60;digest[]&#x60; (string) — hex digest; length must match &#x60;digest_type[i]&#x60;.\n\n**Returns:** &#x60;SuccessTextResponse&#x60; on registrar confirmation.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n- &#x60;404&#x60; — &#x60;id&#x60; not owned by caller.\n- &#x60;409&#x60; — &#x60;domain_status !&#x3D; &quot;active&quot;&#x60; or registrar refused.\n- &#x60;422&#x60; — &#x60;key_tag &gt;&#x3D; 65536&#x60; or digest length mismatch.\n\n**Related calls:**\n- **Verify propagation:** &#x60;getDomainDnssec&#x60;.\n- **Clear all records:** &#x60;deleteDomainDnssec&#x60;.\n
     */
    @isTest
    private static void addDomainDnssecTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerDomainDnssecRequest' => '',
            'id' => ''
        };

        IntServer_Client client;
        IntServerDomainsApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.addDomainDnssec(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.addDomainDnssec(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.addDomainDnssec(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.addDomainDnssec(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.addDomainDnssec(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.addDomainDnssec(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Register a new nameserver host with glue IP at the registry (registered nameserver)
     *
     * Adds a registered nameserver (host + glue IP) for the domain at the registrar via &#x60;opensrs_create_nameserver&#x60;. Use when running your own authoritative nameservers under the domain itself (e.g. &#x60;ns1.example.com&#x60;, &#x60;ns2.example.com&#x60;). **Glue records, not delegation:** this registers the host\&#39;s IP at the registry; the domain\&#39;s delegation must separately point at these names via &#x60;updateDomainNameservers&#x60;. Sibling ops: &#x60;getDomainNameservers&#x60;, &#x60;updateDomainNameservers&#x60;, &#x60;deleteDomainNameserver&#x60;.\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.\n\n**Body fields (schema &#x60;DomainNameserverPostRequest&#x60;):**\n- &#x60;name&#x60; (string, required) — FQDN of the nameserver (e.g. &#x60;ns1.example.com&#x60;). Validated by &#x60;valid_hostname()&#x60;.\n- &#x60;ipAddress&#x60; (string, required) — IPv4 address. Validated by &#x60;validIp()&#x60;.\n\n**Returns:** &#x60;SuccessTextResponse&#x60; on success.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n- &#x60;404&#x60; — &#x60;id&#x60; not owned by caller.\n- &#x60;409&#x60; — &#x60;domain_status !&#x3D; &quot;active&quot;&#x60;.\n- &#x60;422&#x60; — invalid hostname or IP, or registrar refused.\n\n**Related calls:**\n- **Verify glue record:** &#x60;getDomainNameservers&#x60;.\n- **Use this nameserver in delegation:** &#x60;updateDomainNameservers&#x60;.\n
     */
    @isTest
    private static void addDomainNameserverTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerDomainNameserverPostRequest' => '',
            'id' => ''
        };

        IntServer_Client client;
        IntServerDomainsApi api;
        IntServerTextResponse response;
        IntServerTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.addDomainNameserver(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.addDomainNameserver(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.addDomainNameserver(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.addDomainNameserver(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.addDomainNameserver(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.addDomainNameserver(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Cancel a domain order in the billing system to stop auto-renewals
     *
     * Stops billing and auto-renewal for a domain in the customer account by setting the service to &#x60;canceled&#x60; via the shared &#x60;Billing\CancelService::go($id)&#x60; flow with &#x60;module&#x3D;\&#39;domains\&#39;&#x60;. **Important:** this only stops billing on InterServer\&#39;s side — the domain registration at the registrar (OpenSRS) typically remains active until its current expiration date. To release the domain back to the public pool, let it expire OR submit a release request via support ticket. Sibling ops: &#x60;getDomainInfo&#x60; (verify status), &#x60;getDomainsList&#x60;, &#x60;postDomainRenewal&#x60; (re-activate before expiry).\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.\n\n**Returns:** &#x60;DomainsCancelResponse&#x60; — confirmation envelope.\n\n**Side effects:**\n- Sets &#x60;domain_status&#x3D;\&#39;canceled\&#39;&#x60;.\n- Marks the &#x60;repeat_invoices&#x60; row non-renewing — no future renewal invoices generated.\n- Does **not** call the registrar — the registration remains active at OpenSRS until natural expiry.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n- &#x60;404&#x60; — &#x60;id&#x60; not owned by caller.\n- &#x60;409&#x60; — already canceled.\n\n**Related calls:**\n- **Re-activate before expiry:** &#x60;postDomainRenewal&#x60;.\n- **Verify status:** &#x60;getDomainInfo&#x60;.\n- **Sibling cancels on other modules:** &#x60;VPSCancel&#x60;, &#x60;mailCancel&#x60;, &#x60;webhostingCancel&#x60;, etc. (same &#x60;CancelService&#x60; handler).\n
     */
    @isTest
    private static void cancelDomainTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerDomainsApi api;
        IntServerCancelDomain200Response response;
        IntServerCancelDomain200Response expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerCancelDomain200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCancelDomain200Response.getExample();
        response = (IntServerCancelDomain200Response) api.cancelDomain(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCancelDomain200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCancelDomain200Response.getExample();
        response = (IntServerCancelDomain200Response) api.cancelDomain(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerCancelDomain200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCancelDomain200Response.getExample();
        response = (IntServerCancelDomain200Response) api.cancelDomain(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCancelDomain200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCancelDomain200Response.getExample();
        response = (IntServerCancelDomain200Response) api.cancelDomain(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerCancelDomain200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCancelDomain200Response.getExample();
        response = (IntServerCancelDomain200Response) api.cancelDomain(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCancelDomain200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCancelDomain200Response.getExample();
        response = (IntServerCancelDomain200Response) api.cancelDomain(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Clear all DNSSEC DS records on the domain (disable DNSSEC at the registrar)
     *
     * Disables DNSSEC at the registrar by removing the entire DS record set in one call. **Propagation caveat:** DNSSEC removal can fail at the registry even after a 200 response — propagation is asynchronous; re-check with &#x60;getDomainDnssec&#x60; to confirm. To remove records selectively, replace the set via &#x60;addDomainDnssec&#x60; instead. Sibling ops: &#x60;getDomainDnssec&#x60;, &#x60;addDomainDnssec&#x60;.\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.\n\n**Body:** None — removes the full DS record set.\n\n**Returns:** &#x60;SuccessTextResponse&#x60;.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n- &#x60;404&#x60; — &#x60;id&#x60; not owned by caller.\n- &#x60;409&#x60; — &#x60;domain_status !&#x3D; &quot;active&quot;&#x60;.\n- Registrar error surfaced as 4xx.\n\n**Related calls:**\n- **Verify propagation:** &#x60;getDomainDnssec&#x60;.\n- **Replace records selectively:** &#x60;addDomainDnssec&#x60;.\n
     */
    @isTest
    private static void deleteDomainDnssecTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerDomainsApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.deleteDomainDnssec(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.deleteDomainDnssec(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.deleteDomainDnssec(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.deleteDomainDnssec(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.deleteDomainDnssec(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.deleteDomainDnssec(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Remove one registered nameserver glue record from the domain
     *
     * Removes a single registered nameserver entry from the domain at the registrar. Handler first calls OpenSRS &#x60;nsGet&#x60; to resolve the entry by index, then &#x60;nsDelete&#x60;. Per-entry — to replace the full delegation set use &#x60;updateDomainNameservers&#x60; instead. Sibling ops: &#x60;getDomainNameservers&#x60;, &#x60;addDomainNameserver&#x60;, &#x60;updateDomainNameservers&#x60;.\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.\n\n**Query params:**\n- &#x60;index&#x60; (integer, required) — zero-based index from &#x60;getDomainNameservers&#x60; array — or alternatively pass &#x60;name&#x60; + &#x60;ip&#x60; to target by value.\n\n**Returns:** &#x60;SuccessTextResponse&#x60;.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n- &#x60;404&#x60; — &#x60;id&#x60; not owned by caller.\n- &#x60;409&#x60; — &#x60;domain_status !&#x3D; &quot;active&quot;&#x60;.\n- &#x60;422&#x60; — &#x60;index&#x60; out of range or &#x60;name&#x60;/&#x60;ip&#x60; not provided.\n- Registrar errors surfaced as 4xx.\n\n**Related calls:**\n- **List candidates:** &#x60;getDomainNameservers&#x60;.\n- **Replace delegation entirely:** &#x60;updateDomainNameservers&#x60;.\n
     */
    @isTest
    private static void deleteDomainNameserverTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => '',
            'index' => ''
        };

        IntServer_Client client;
        IntServerDomainsApi api;
        IntServerTextResponse response;
        IntServerTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.deleteDomainNameserver(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.deleteDomainNameserver(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.deleteDomainNameserver(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.deleteDomainNameserver(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.deleteDomainNameserver(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.deleteDomainNameserver(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Read the current registrant/admin/tech/billing contact field set for a domain
     *
     * Returns the current contact field set (registrant/admin/tech/billing) with current values for the domain — schema and values mirror what was set at registration. For pending transfer services, the response also includes a &#x60;transfer&#x60; selector and the EPP &#x60;auth_info&#x60; code so the client can resubmit. Read-only. Sibling ops: &#x60;updateDomainContact&#x60; (push changes to OpenSRS), &#x60;getDomainInfo&#x60;.\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.\n\n**Returns** (schema &#x60;DomainContactDetails&#x60;):\n- &#x60;firstname&#x60;, &#x60;lastname&#x60;, &#x60;email&#x60;.\n- &#x60;address&#x60;, &#x60;address2&#x60;, &#x60;address3&#x60;, &#x60;city&#x60;, &#x60;state&#x60;, &#x60;zip&#x60;, &#x60;country&#x60;.\n- &#x60;phone&#x60;, &#x60;fax&#x60; (E.164 format expected).\n- &#x60;company&#x60; (optional).\n- &#x60;auth_info&#x60; (string) — EPP/transfer code (present on transfer services).\n- &#x60;transfer&#x60; (string &#x60;yes&#x60;/&#x60;no&#x60;) — selector for pending transfer services.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n- &#x60;404&#x60; — &#x60;id&#x60; not owned by caller.\n\n**Related calls:**\n- **Update:** &#x60;updateDomainContact&#x60;.\n- **Transfer status:** &#x60;getDomainTransfer&#x60;.\n
     */
    @isTest
    private static void getDomainContactTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerDomainsApi api;
        IntServerDomainContactDetails response;
        IntServerDomainContactDetails expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerDomainContactDetails.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainContactDetails.getExample();
        response = (IntServerDomainContactDetails) api.getDomainContact(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDomainContactDetails.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainContactDetails.getExample();
        response = (IntServerDomainContactDetails) api.getDomainContact(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerDomainContactDetails.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainContactDetails.getExample();
        response = (IntServerDomainContactDetails) api.getDomainContact(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDomainContactDetails.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainContactDetails.getExample();
        response = (IntServerDomainContactDetails) api.getDomainContact(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerDomainContactDetails.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainContactDetails.getExample();
        response = (IntServerDomainContactDetails) api.getDomainContact(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDomainContactDetails.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainContactDetails.getExample();
        response = (IntServerDomainContactDetails) api.getDomainContact(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Read the DNSSEC DS record set currently registered with the registrar
     *
     * Returns the DNSSEC DS record set currently registered for the domain at OpenSRS. Empty array means DNSSEC is not configured. Use to mirror existing settings or as a baseline before &#x60;addDomainDnssec&#x60; (which replaces the set). Sibling ops: &#x60;addDomainDnssec&#x60;, &#x60;deleteDomainDnssec&#x60;.\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.\n\n**Returns** (schema &#x60;DomainDnssecRecords&#x60;):\n- &#x60;records&#x60; (array) — DS entries:\n  - &#x60;algorithm&#x60; (integer) — DNSKEY algorithm (e.g. 8 for RSASHA256, 13 for ECDSAP256SHA256).\n  - &#x60;key_tag&#x60; (integer, &lt; 65536).\n  - &#x60;digest_type&#x60; (integer) — &#x60;1&#x60; (SHA-1), &#x60;2&#x60; (SHA-256), &#x60;3&#x60; (GOST), &#x60;4&#x60; (SHA-384).\n  - &#x60;digest&#x60; (string, hex) — length depends on &#x60;digest_type&#x60;.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n- &#x60;404&#x60; — &#x60;id&#x60; not owned by caller.\n- &#x60;409&#x60; — &#x60;domain_status !&#x3D; &quot;active&quot;&#x60;.\n\n**Related calls:**\n- **Replace records:** &#x60;addDomainDnssec&#x60;.\n- **Clear all records:** &#x60;deleteDomainDnssec&#x60;.\n
     */
    @isTest
    private static void getDomainDnssecTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerDomainsApi api;
        IntServerDomainDnssecRecords response;
        IntServerDomainDnssecRecords expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerDomainDnssecRecords.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainDnssecRecords.getExample();
        response = (IntServerDomainDnssecRecords) api.getDomainDnssec(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDomainDnssecRecords.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainDnssecRecords.getExample();
        response = (IntServerDomainDnssecRecords) api.getDomainDnssec(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerDomainDnssecRecords.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainDnssecRecords.getExample();
        response = (IntServerDomainDnssecRecords) api.getDomainDnssec(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDomainDnssecRecords.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainDnssecRecords.getExample();
        response = (IntServerDomainDnssecRecords) api.getDomainDnssec(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerDomainDnssecRecords.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainDnssecRecords.getExample();
        response = (IntServerDomainDnssecRecords) api.getDomainDnssec(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDomainDnssecRecords.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainDnssecRecords.getExample();
        response = (IntServerDomainDnssecRecords) api.getDomainDnssec(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Read full billing, registrar, and service detail for one domain
     *
     * Returns the full &#x60;ViewDomain&#x60; payload for one domain — billing summary, registration status, lock state, expiry date, contact summary, and &#x60;client_links&#x60; for related dashboard actions. Read-only. Internal &#x60;admin_links&#x60;, &#x60;settings&#x60;, &#x60;csrf&#x60; are stripped before return. Use to render a domain detail page, verify ownership before mutating, or poll &#x60;domain_status&#x60; after &#x60;addDomain&#x60;. Sibling ops: &#x60;getDomainContact&#x60;, &#x60;getDomainNameservers&#x60;, &#x60;getDomainDnssec&#x60;, &#x60;getDomainWhoisPrivacy&#x60;, &#x60;getDomainInvoices&#x60;, &#x60;updateDomainInfo&#x60;, &#x60;CancelDomain&#x60;.\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.\n\n**Returns** (schema &#x60;Domain&#x60;):\n- &#x60;serviceInfo&#x60; — &#x60;domain_id&#x60;, &#x60;domain_hostname&#x60;, &#x60;domain_status&#x60;, &#x60;domain_expire_date&#x60;, lock state, registrar metadata.\n- &#x60;serviceType&#x60; — TLD service row.\n- &#x60;client_links&#x60; (array) — &#x60;{name, link, icon}&#x60; for renew/transfer/contact/DNSSEC/whois-privacy actions. URLs pre-resolved.\n\n**Auth:** Session/API key. Ownership enforced via &#x60;domain_custid&#x60;.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n- &#x60;404&#x60; — &#x60;id&#x60; not owned by caller.\n\n**Related calls:**\n- **Contact:** &#x60;getDomainContact&#x60; / &#x60;updateDomainContact&#x60;.\n- **Nameservers:** &#x60;getDomainNameservers&#x60; / &#x60;updateDomainNameservers&#x60;.\n- **DNSSEC:** &#x60;getDomainDnssec&#x60; / &#x60;addDomainDnssec&#x60; / &#x60;deleteDomainDnssec&#x60;.\n- **Whois privacy:** &#x60;getDomainWhoisPrivacy&#x60; / &#x60;updateDomainWhoisPrivacy&#x60;.\n- **Billing:** &#x60;getDomainInvoices&#x60;, &#x60;getDomainRenewal&#x60; / &#x60;postDomainRenewal&#x60;.\n- **Transfer status:** &#x60;getDomainTransfer&#x60;.\n- **Cancel:** &#x60;CancelDomain&#x60;.\n
     */
    @isTest
    private static void getDomainInfoTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerDomainsApi api;
        IntServerDomain response;
        IntServerDomain expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerDomain.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomain.getExample();
        response = (IntServerDomain) api.getDomainInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDomain.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomain.getExample();
        response = (IntServerDomain) api.getDomainInfo(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerDomain.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomain.getExample();
        response = (IntServerDomain) api.getDomainInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDomain.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomain.getExample();
        response = (IntServerDomain) api.getDomainInfo(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerDomain.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomain.getExample();
        response = (IntServerDomain) api.getDomainInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDomain.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomain.getExample();
        response = (IntServerDomain) api.getDomainInfo(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List all billing invoices scoped to one domain order
     *
     * Returns the billing history for one domain — initial registration/transfer invoice, recurring renewal invoices, Whois privacy add-on invoices. Extends &#x60;Billing\InvoicesList::go()&#x60; with &#x60;module&#x3D;\&#39;domains\&#39;&#x60;. Use to render a per-domain billing-history view or find an unpaid renewal/privacy invoice to pass to &#x60;initiatePayment&#x60;. Sibling ops: &#x60;getDomainInfo&#x60;, &#x60;postDomainRenewal&#x60;, &#x60;updateDomainWhoisPrivacy&#x60;, &#x60;initiatePayment&#x60;, &#x60;getBillingInvoice&#x60;.\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.\n\n**Returns:** &#x60;ChargeInvoiceRows&#x60; — array of &#x60;{id, amount, paid, description, date, due_date, currency, module: &quot;domains&quot;, service: &lt;id&gt;}&#x60;.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n- &#x60;404 Invalid Service&#x60; — &#x60;id&#x60; not owned by caller.\n\n**Related calls:**\n- **Pay an unpaid invoice:** &#x60;initiatePayment&#x60;.\n- **Renew:** &#x60;postDomainRenewal&#x60;.\n- **Account-wide history:** &#x60;getBillingInvoices&#x60;.\n
     */
    @isTest
    private static void getDomainInvoicesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerDomainsApi api;
        IntServerChargeInvoiceRows response;
        IntServerChargeInvoiceRows expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getDomainInvoices(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getDomainInvoices(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getDomainInvoices(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getDomainInvoices(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getDomainInvoices(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getDomainInvoices(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Check availability, premium status, and pricing for a specific domain
     *
     * Looks up a single FQDN against OpenSRS: returns availability, premium-name flag, current new/renewal/transfer prices, per-TLD order field metadata, and multi-currency quotes. **Public** endpoint — no auth required (rate-limited via &#x60;domainlookup&#x60; cache). Repeated lookups within a short window may return cached results from the &#x60;domainlookup&#x60; table. Use as step 1 of an order: discover availability and pricing, then call &#x60;addDomain&#x60; to commit. Sibling ops: &#x60;getDomainSearch&#x60; (suggestions), &#x60;getNewDomain&#x60; (catalog), &#x60;addDomain&#x60;, &#x60;postDomainSearch&#x60;.\n\n**Path param:**\n- &#x60;name&#x60; (string, required) — full FQDN (e.g. &#x60;example.com&#x60;).\n\n**Returns** (schema &#x60;DomainLookupResponse&#x60;):\n- &#x60;available&#x60; (bool) — registerable now.\n- &#x60;premium&#x60; (bool) — premium-name pricing (often &gt; $100).\n- &#x60;website&#x60; (bool) — same hostname is already a webhosting service on this account.\n- &#x60;domain_service&#x60; (bool) — same hostname is already a domain on this account.\n- &#x60;service&#x60; (object) — &#x60;services_id&#x60;, &#x60;services_name&#x60;, &#x60;services_cost&#x60;, &#x60;services_field1&#x60; (TLD), &#x60;services_module&#x60;.\n- &#x60;whois_privacy&#x60; (bool) — privacy add-on available for this TLD.\n- &#x60;new&#x60;, &#x60;renewal&#x60;, &#x60;transfer&#x60; (float) — base USD prices (with profit markup).\n- &#x60;fields&#x60; (object) — per-TLD order form schema (labels, options, current account values).\n- &#x60;currencies&#x60; (object) — &#x60;{&lt;code&gt;: {services_cost, new, renewal, transfer}}&#x60; converted to each enabled currency.\n\n**Auth:** Public (no auth required).\n\n**Errors:**\n- &#x60;422 Invalid Domain&#x60; — &#x60;valid_domain()&#x60; rejected input.\n\n**Related calls:**\n- **Brainstorm alternatives:** &#x60;getDomainSearch&#x60;.\n- **Place order:** &#x60;addDomain&#x60; with the resolved &#x60;service.services_id&#x60; and &#x60;fields&#x60;.\n- **TLD catalog:** &#x60;getNewDomain&#x60;.\n
     */
    @isTest
    private static void getDomainLookupTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'name' => 'null'
        };

        IntServer_Client client;
        IntServerDomainsApi api;
        IntServerDomainLookupResponse response;
        IntServerDomainLookupResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerDomainLookupResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainLookupResponse.getExample();
        response = (IntServerDomainLookupResponse) api.getDomainLookup(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDomainLookupResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainLookupResponse.getExample();
        response = (IntServerDomainLookupResponse) api.getDomainLookup(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDomainLookupResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainLookupResponse.getExample();
        response = (IntServerDomainLookupResponse) api.getDomainLookup(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerDomainLookupResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainLookupResponse.getExample();
        response = (IntServerDomainLookupResponse) api.getDomainLookup(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDomainLookupResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainLookupResponse.getExample();
        response = (IntServerDomainLookupResponse) api.getDomainLookup(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDomainLookupResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainLookupResponse.getExample();
        response = (IntServerDomainLookupResponse) api.getDomainLookup(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerDomainLookupResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainLookupResponse.getExample();
        response = (IntServerDomainLookupResponse) api.getDomainLookup(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDomainLookupResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainLookupResponse.getExample();
        response = (IntServerDomainLookupResponse) api.getDomainLookup(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDomainLookupResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainLookupResponse.getExample();
        response = (IntServerDomainLookupResponse) api.getDomainLookup(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List registered nameserver hosts and glue IP addresses for a domain
     *
     * Returns the registered-nameserver / glue-record entries currently set for the domain at OpenSRS. **Important distinction:** these are *registered nameservers* (&#x60;host.example.com&#x60; + glue IP records the registrant has created at the registry), NOT the domain\&#39;s delegation NS records. To replace the delegation set, use &#x60;updateDomainNameservers&#x60;. Empty array means no glue records are registered. Sibling ops: &#x60;addDomainNameserver&#x60;, &#x60;updateDomainNameservers&#x60;, &#x60;deleteDomainNameserver&#x60;.\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.\n\n**Returns** (schema &#x60;DomainNameserverGetResponse&#x60;):\n- Array of &#x60;{name, ipaddress, sortorder}&#x60; — use the zero-based array index when calling &#x60;deleteDomainNameserver&#x60; with &#x60;index&#x60;.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n- &#x60;404&#x60; — &#x60;id&#x60; not owned by caller.\n- &#x60;409&#x60; — &#x60;domain_status !&#x3D; &quot;active&quot;&#x60;.\n- &#x60;5xx&#x60; — registrar communication failure.\n\n**Related calls:**\n- **Add glue record:** &#x60;addDomainNameserver&#x60;.\n- **Replace delegation set:** &#x60;updateDomainNameservers&#x60;.\n- **Remove glue record:** &#x60;deleteDomainNameserver&#x60;.\n
     */
    @isTest
    private static void getDomainNameserversTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerDomainsApi api;
        IntServerDomainNameserverGetResponse response;
        IntServerDomainNameserverGetResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerDomainNameserverGetResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainNameserverGetResponse.getExample();
        response = (IntServerDomainNameserverGetResponse) api.getDomainNameservers(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDomainNameserverGetResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainNameserverGetResponse.getExample();
        response = (IntServerDomainNameserverGetResponse) api.getDomainNameservers(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerDomainNameserverGetResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainNameserverGetResponse.getExample();
        response = (IntServerDomainNameserverGetResponse) api.getDomainNameservers(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDomainNameserverGetResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainNameserverGetResponse.getExample();
        response = (IntServerDomainNameserverGetResponse) api.getDomainNameservers(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerDomainNameserverGetResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainNameserverGetResponse.getExample();
        response = (IntServerDomainNameserverGetResponse) api.getDomainNameservers(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDomainNameserverGetResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainNameserverGetResponse.getExample();
        response = (IntServerDomainNameserverGetResponse) api.getDomainNameservers(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Read renewal pricing, expiry, and whether a renewal invoice already exists
     *
     * Returns renewal pricing, current expiry, Whois privacy availability, and whether an unpaid renewal invoice already exists for the domain. Use before triggering &#x60;postDomainRenewal&#x60; to render a renewal form and prevent duplicate invoices. Costs are converted to the customer\&#39;s preferred currency. Sibling ops: &#x60;postDomainRenewal&#x60;, &#x60;getDomainInvoices&#x60;, &#x60;getDomainInfo&#x60;.\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.\n\n**Returns:**\n- &#x60;renewCost&#x60; (float) — renewal cost in &#x60;currency&#x60;.\n- &#x60;whoisCost&#x60; (float) — Whois privacy renewal cost.\n- &#x60;whoisAvailable&#x60; (bool) — privacy supported on this TLD.\n- &#x60;currency&#x60; (string), &#x60;currencySymbol&#x60; (string).\n- &#x60;expiryDate&#x60; (string).\n- &#x60;alreadyInvoiced&#x60; (bool) — a renewal &#x60;Repeat_Invoice&#x60; already produced an invoice.\n- &#x60;invoicePaid&#x60; (bool) — whether that invoice is paid.\n- &#x60;tld&#x60; (string).\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n- &#x60;404&#x60; — &#x60;id&#x60; not owned by caller.\n- &#x60;409&#x60; — &#x60;domain_status !&#x3D; &quot;active&quot;&#x60;.\n- &#x60;4xx&#x60; — renewal not available for this TLD.\n\n**Related calls:**\n- **Submit renewal:** &#x60;postDomainRenewal&#x60;.\n- **Pay existing renewal invoice:** &#x60;getDomainInvoices&#x60; → &#x60;initiatePayment&#x60;.\n
     */
    @isTest
    private static void getDomainRenewalTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerDomainsApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getDomainRenewal(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getDomainRenewal(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getDomainRenewal(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getDomainRenewal(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getDomainRenewal(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getDomainRenewal(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get registrar-suggested domain alternatives and bulk availability for a search term
     *
     * Returns registrar-suggested alternatives plus bulk availability data from OpenSRS for the supplied search term. Useful when a customer is brainstorming names. Pair with &#x60;getDomainLookup&#x60; to get full pricing and per-TLD order fields for any specific chosen result. Sibling ops: &#x60;postDomainSearch&#x60;, &#x60;getDomainLookup&#x60;, &#x60;getNewDomain&#x60;, &#x60;addDomain&#x60;.\n\n**Path param:**\n- &#x60;name&#x60; (string, required) — search term (e.g. &#x60;example&#x60; or &#x60;example.com&#x60;).\n\n**Returns** (schema &#x60;DomainSearchResponse&#x60;):\n- &#x60;success&#x60; (bool) — registrar call succeeded.\n- &#x60;response_text&#x60; (string) — registrar response message.\n- &#x60;response_time&#x60; (float) — registrar latency (seconds).\n- &#x60;lookup&#x60; (array) — exact-match availability across the searched TLD set.\n- &#x60;suggest&#x60; (array) — registrar\&#39;s recommended alternative names with availability.\n- &#x60;tlds&#x60; (array) — TLDs queried.\n\n**Auth:** Public.\n\n**Errors:**\n- &#x60;422 Invalid Search Response!&#x60; — registrar returned no usable results.\n\n**Related calls:**\n- **Single-domain detail:** &#x60;getDomainLookup&#x60;.\n- **One-shot order preview from a search term:** &#x60;postDomainSearch&#x60;.\n
     */
    @isTest
    private static void getDomainSearchTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'name' => 'null'
        };

        IntServer_Client client;
        IntServerDomainsApi api;
        IntServerDomainSearchResponse response;
        IntServerDomainSearchResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerDomainSearchResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainSearchResponse.getExample();
        response = (IntServerDomainSearchResponse) api.getDomainSearch(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDomainSearchResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainSearchResponse.getExample();
        response = (IntServerDomainSearchResponse) api.getDomainSearch(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDomainSearchResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainSearchResponse.getExample();
        response = (IntServerDomainSearchResponse) api.getDomainSearch(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerDomainSearchResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainSearchResponse.getExample();
        response = (IntServerDomainSearchResponse) api.getDomainSearch(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDomainSearchResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainSearchResponse.getExample();
        response = (IntServerDomainSearchResponse) api.getDomainSearch(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDomainSearchResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainSearchResponse.getExample();
        response = (IntServerDomainSearchResponse) api.getDomainSearch(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerDomainSearchResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainSearchResponse.getExample();
        response = (IntServerDomainSearchResponse) api.getDomainSearch(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDomainSearchResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainSearchResponse.getExample();
        response = (IntServerDomainSearchResponse) api.getDomainSearch(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDomainSearchResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainSearchResponse.getExample();
        response = (IntServerDomainSearchResponse) api.getDomainSearch(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Read OpenSRS transfer status for an in-progress domain transfer order
     *
     * Returns the OpenSRS transfer state for a domain order flagged as a transfer in &#x60;service_extra&#x60;. Use to poll an in-progress transfer; &#x60;pending_owner&#x60; means the customer must click the approval link in the email sent by OpenSRS to the registrant. Sibling ops: &#x60;postDomainTransfer&#x60; (re-poll), &#x60;getDomainContact&#x60; (set &#x60;auth_info&#x60;), &#x60;addDomain&#x60; (initiate new transfer).\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.\n\n**Returns:**\n- When not a transfer: &#x60;{transfer: false, message: &quot;...&quot;}&#x60;.\n- When a transfer: &#x60;{transfer: true, info: {status, statusText, type, transferrable, reason}}&#x60; where &#x60;status&#x60; is one of:\n  - &#x60;pending&#x60; — submitted to OpenSRS, awaiting state change.\n  - &#x60;pending_owner&#x60; — **customer action required** (approve the OpenSRS email).\n  - &#x60;pending_admin&#x60; — InterServer staff review.\n  - &#x60;pending_registry&#x60; — registry processing.\n  - &#x60;declined&#x60; — transfer rejected (see &#x60;reason&#x60;).\n  - &#x60;completed&#x60; — transfer landed.\n  - &#x60;undef&#x60; — unknown.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n- &#x60;404&#x60; — &#x60;id&#x60; not owned by caller.\n- &#x60;409&#x60; — &#x60;domain_status !&#x3D; &quot;active&quot;&#x60;.\n- Registrar communication failures returned as errors.\n\n**Related calls:**\n- **Re-poll:** &#x60;postDomainTransfer&#x60;.\n- **Update auth_info:** &#x60;updateDomainContact&#x60;.\n- **Initiate new transfer:** &#x60;addDomain&#x60; with &#x60;type&#x3D;transfer&#x60;.\n
     */
    @isTest
    private static void getDomainTransferTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerDomainsApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getDomainTransfer(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getDomainTransfer(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getDomainTransfer(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getDomainTransfer(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getDomainTransfer(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getDomainTransfer(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Read Whois privacy availability, current state, and add-on pricing for a domain
     *
     * Returns Whois privacy state for the domain — whether the TLD supports privacy, whether it\&#39;s currently enabled at OpenSRS, and the add-on cost. Some TLDs (e.g. &#x60;.us&#x60;, &#x60;.uk&#x60;, country-code variants) do not allow privacy regardless of pricing. Sibling op: &#x60;updateDomainWhoisPrivacy&#x60; (order/enable/disable).\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.\n\n**Returns:**\n- &#x60;available&#x60; (bool) — privacy supported for this TLD (via &#x60;get_domain_tld_whois_privacy()&#x60;).\n- &#x60;cost&#x60; (float) — annual privacy cost in &#x60;currency&#x60;.\n- &#x60;currency&#x60; (string), &#x60;currencySymbol&#x60; (string).\n- &#x60;whoisPrivacy&#x60; (string enum) — &#x60;enabled&#x60; / &#x60;disabled&#x60; (live OpenSRS state).\n- &#x60;repeatInvoice&#x60; (object|null) — current privacy add-on &#x60;Repeat_Invoice&#x60; row, if one exists.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n- &#x60;404&#x60; — &#x60;id&#x60; not owned by caller.\n\n**Related calls:**\n- **Order/enable/disable:** &#x60;updateDomainWhoisPrivacy&#x60;.\n- **Billing:** &#x60;getDomainInvoices&#x60;.\n
     */
    @isTest
    private static void getDomainWhoisPrivacyTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerDomainsApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getDomainWhoisPrivacy(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getDomainWhoisPrivacy(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getDomainWhoisPrivacy(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getDomainWhoisPrivacy(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getDomainWhoisPrivacy(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getDomainWhoisPrivacy(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List every domain registration on the account with billing and registration metadata
     *
     * Enumerates every domain registration owned by the authenticated customer — hostname, expiry, recurring cost, status. The canonical entry point for finding a &#x60;domain_id&#x60; to pass into other Domains endpoints. Empty array means the account has no domains (not an error). Sibling ops: &#x60;getDomainInfo&#x60;, &#x60;getNewDomain&#x60;, &#x60;getDomainLookup&#x60;, &#x60;addDomain&#x60;, &#x60;CancelDomain&#x60;.\n\n**Path/Query/Body:** None.\n\n**Returns:** Array of &#x60;DomainRow&#x60;:\n- &#x60;domain_id&#x60; (string) — canonical id; pass to every &#x60;/domains/{id}/_*&#x60; endpoint.\n- &#x60;domain_hostname&#x60; (string) — registered FQDN.\n- &#x60;domain_expire_date&#x60; (string ISO 8601 or empty) — registry expiry; empty when not yet activated or unknown.\n- &#x60;cost&#x60; (decimal string) — recurring renewal cost in the domain\&#39;s billing currency.\n- &#x60;domain_status&#x60; (string enum) — &#x60;pending&#x60; / &#x60;active&#x60; / &#x60;expired&#x60; / &#x60;canceled&#x60; / &#x60;pending-transfer&#x60;.\n\n**Auth:** Session/API key. Filtered by &#x60;domain_custid&#x60;.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n\n**Related calls:**\n- **Per-domain detail:** &#x60;getDomainInfo&#x60;.\n- **Manage:** &#x60;getDomainContact&#x60; / &#x60;updateDomainContact&#x60;, &#x60;getDomainNameservers&#x60; / &#x60;updateDomainNameservers&#x60;, &#x60;getDomainDnssec&#x60; / &#x60;addDomainDnssec&#x60;, &#x60;getDomainWhoisPrivacy&#x60; / &#x60;updateDomainWhoisPrivacy&#x60;.\n- **Renew / transfer:** &#x60;getDomainRenewal&#x60; / &#x60;postDomainRenewal&#x60;, &#x60;getDomainTransfer&#x60;.\n- **Order a new domain:** &#x60;getDomainLookup&#x60; → &#x60;getNewDomain&#x60; → &#x60;addDomain&#x60;.\n- **Cancel:** &#x60;CancelDomain&#x60;.\n
     */
    @isTest
    private static void getDomainsListTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        IntServer_Client client;
        IntServerDomainsApi api;
        List<IntServerDomainRow> response;
        List<IntServerDomainRow> expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<IntServerDomainRow>{IntServerDomainRow.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerDomainRow>{IntServerDomainRow.getExample()};
        response = (List<IntServerDomainRow>) api.getDomainsList();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<IntServerDomainRow>{IntServerDomainRow.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerDomainRow>{IntServerDomainRow.getExample()};
        response = (List<IntServerDomainRow>) api.getDomainsList();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<IntServerDomainRow>{IntServerDomainRow.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerDomainRow>{IntServerDomainRow.getExample()};
        response = (List<IntServerDomainRow>) api.getDomainsList();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<IntServerDomainRow>{IntServerDomainRow.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerDomainRow>{IntServerDomainRow.getExample()};
        response = (List<IntServerDomainRow>) api.getDomainsList();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<IntServerDomainRow>{IntServerDomainRow.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerDomainRow>{IntServerDomainRow.getExample()};
        response = (List<IntServerDomainRow>) api.getDomainsList();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<IntServerDomainRow>{IntServerDomainRow.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerDomainRow>{IntServerDomainRow.getExample()};
        response = (List<IntServerDomainRow>) api.getDomainsList();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Resend the domain welcome email with registration details and management instructions
     *
     * Resends the domain welcome email (registration details, management instructions, EPP code where applicable) to the customer\&#39;s address on file. Idempotent — safe to call multiple times. Sibling welcome-email endpoints: &#x60;getVpsWelcomeEmail&#x60;, &#x60;getWebsitesWelcomeEmail&#x60;, &#x60;getMailWelcomeEmail&#x60;.\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.\n\n**Body:** None.\n\n**Returns:** &#x60;{text: &quot;Welcome Email has been resent.&quot;}&#x60;.\n\n**Side effects:**\n- Sends an email to the account\&#39;s billing email address.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n- &#x60;404 Invalid Service Passed&#x60; — &#x60;id&#x60; not owned by caller.\n- &#x60;409 Service is not active&#x60; — &#x60;domain_status !&#x3D; &quot;active&quot;&#x60;.\n\n**Related calls:**\n- **Domain detail:** &#x60;getDomainInfo&#x60;.\n- **Contact info:** &#x60;getDomainContact&#x60;.\n
     */
    @isTest
    private static void getDomainsWelcomeEmailTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerDomainsApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getDomainsWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getDomainsWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getDomainsWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getDomainsWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getDomainsWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getDomainsWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Read the buyable domain TLD service catalog and Whois privacy pricing
     *
     * Returns the catalog of buyable TLD services and the base Whois-privacy add-on pricing. Use to resolve a hostname\&#39;s TLD to a &#x60;service_id&#x60; for ordering, or to render a TLD picker. Pair with &#x60;getDomainLookup&#x60; for per-domain pricing and &#x60;addDomain&#x60; to commit. Sibling ops: &#x60;getDomainLookup&#x60;, &#x60;putDomains&#x60;, &#x60;patchDomains&#x60;, &#x60;addDomain&#x60;.\n\n**Path/Query/Body:** None.\n\n**Returns** (schema &#x60;DomainOrder&#x60;):\n- &#x60;whoisPrivacyCost&#x60; (float) — base per-year privacy cost (&#x60;OPENSRS_PRIVACY_COST&#x60; constant).\n- &#x60;whoisPrivacyCostTotal&#x60; (object) — privacy cost per TLD multiplied by that TLD\&#39;s term length: &#x60;{&lt;tld&gt;: &lt;total-cost&gt;}&#x60;.\n- &#x60;services&#x60; (object) — &#x60;{&lt;services_id&gt;: {services_name, services_cost, services_field1 (tld), ...}}&#x60;. &#x60;services_ourcost&#x60; is stripped.\n- &#x60;tldServices&#x60; (object) — TLD → &#x60;services_id&#x60; lookup map (e.g. &#x60;{&quot;com&quot;: 100, &quot;net&quot;: 101, &quot;io&quot;: 234}&#x60;).\n\n**Auth:** Session/API key.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n\n**Related calls:**\n- **Per-domain pricing:** &#x60;getDomainLookup&#x60;.\n- **Preview order fields:** &#x60;putDomains&#x60;.\n- **Validate fields:** &#x60;patchDomains&#x60;.\n- **Place order:** &#x60;addDomain&#x60;.\n
     */
    @isTest
    private static void getNewDomainTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        IntServer_Client client;
        IntServerDomainsApi api;
        IntServerDomainOrder response;
        IntServerDomainOrder expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerDomainOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainOrder.getExample();
        response = (IntServerDomainOrder) api.getNewDomain();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDomainOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainOrder.getExample();
        response = (IntServerDomainOrder) api.getNewDomain();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerDomainOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainOrder.getExample();
        response = (IntServerDomainOrder) api.getNewDomain();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDomainOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainOrder.getExample();
        response = (IntServerDomainOrder) api.getNewDomain();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerDomainOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainOrder.getExample();
        response = (IntServerDomainOrder) api.getNewDomain();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerDomainOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerDomainOrder.getExample();
        response = (IntServerDomainOrder) api.getNewDomain();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Validate posted domain-order field values before committing — dry run
     *
     * Validates posted contact/registration field values via &#x60;validate_domain_fields()&#x60;. Enforces per-TLD requirements (nexus codes, postal formats, registrant org rules, EPP &#x60;auth_info&#x60; syntax for transfers, etc.). Use as the last step before &#x60;addDomain&#x60; to surface form errors cheaply. No commit — no invoice, no service record. Sibling ops: &#x60;putDomains&#x60;, &#x60;addDomain&#x60;, &#x60;getDomainLookup&#x60;, &#x60;getNewDomain&#x60;.\n\n**Body fields:**\n- &#x60;hostname&#x60; (string, required).\n- &#x60;type&#x60; (string, optional, default &#x60;register&#x60;) — &#x60;register&#x60; or &#x60;transfer&#x60;.\n- All per-TLD fields from &#x60;putDomains.domainFields&#x60;.\n\n**Returns:** &#x60;&quot;success&quot;&#x60; (string) when all fields validate; otherwise an &#x60;errors&#x60; object describing the failing fields and per-field validation messages.\n\n**Auth:** Session/API key.\n\n**Errors:**\n- &#x60;400 Missing hostname parameter&#x60;.\n- &#x60;400 Unable to determine service type for this domain TLD.&#x60;.\n- &#x60;401&#x60; — unauthenticated.\n- Validation error object — fields-level failures.\n\n**Related calls:**\n- **Schema:** &#x60;putDomains&#x60; (returns the field set to validate).\n- **Commit:** &#x60;addDomain&#x60;.\n
     */
    @isTest
    private static void patchDomainsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerDomainOrderRequest' => ''
        };

        IntServer_Client client;
        IntServerDomainsApi api;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.patchDomains(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.patchDomains(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.patchDomains(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Submit a domain renewal request and generate the renewal invoice
     *
     * Generates a renewal invoice for the domain (and optionally the Whois privacy add-on). Updates the domain\&#39;s &#x60;Repeat_Invoice&#x60; cost/frequency/currency to the current price, then calls &#x60;Repeat_Invoice::invoice()&#x60; to produce a fresh invoice. **Real money.** If a prior unpaid renewal invoice already exists, returns an error directing the user to pay that one instead — prevents double-billing. Renewal is not supported for some TLDs. Sibling ops: &#x60;getDomainRenewal&#x60;, &#x60;getDomainInvoices&#x60;, &#x60;initiatePayment&#x60;.\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.\n\n**Body fields:**\n- &#x60;whois_privacy&#x60; (string, optional) — &#x60;enable&#x60; to add or keep the privacy add-on; otherwise the existing privacy &#x60;Repeat_Invoice&#x60; is marked &#x60;deleted&#x3D;1&#x60; on renewal.\n\n**Returns:** &#x60;{text, invoices, invoiceIds, payUrl}&#x60; — pass &#x60;invoiceIds&#x60; to &#x60;initiatePayment&#x60; to settle.\n\n**Side effects:**\n- Updates &#x60;repeat_invoices&#x60; cost/frequency/currency.\n- Inserts a new &#x60;invoices&#x60; row for the renewal period.\n- When &#x60;whois_privacy&#x3D;enable&#x60;: extends the privacy add-on &#x60;repeat_invoices&#x60; and creates its renewal invoice.\n- When &#x60;whois_privacy&#x60; not enabled: marks the existing privacy &#x60;repeat_invoices&#x60; row &#x60;deleted&#x3D;1&#x60;.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n- &#x60;404&#x60; — &#x60;id&#x60; not owned by caller.\n- &#x60;409&#x60; — &#x60;domain_status !&#x3D; &quot;active&quot;&#x60;, or unpaid renewal invoice already exists, or already-paid renewal exists.\n- Registrar errors surfaced as 4xx.\n\n**Related calls:**\n- **Preview:** &#x60;getDomainRenewal&#x60;.\n- **Pay:** &#x60;initiatePayment&#x60; with the returned &#x60;invoiceIds&#x60;.\n- **Cancel auto-renew:** &#x60;CancelDomain&#x60;.\n
     */
    @isTest
    private static void postDomainRenewalTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerDomainsApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.postDomainRenewal(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.postDomainRenewal(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.postDomainRenewal(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.postDomainRenewal(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.postDomainRenewal(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.postDomainRenewal(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get the full order form data for a hostname in one round-trip (search → order preview)
     *
     * Returns the complete order-form payload — pricing, service catalog entry, per-TLD order fields — for the hostname in a single POST. Equivalent to calling &#x60;getDomainLookup&#x60; + &#x60;getNewDomain&#x60; + &#x60;putDomains&#x60; and merging the results, but with one round-trip. The path &#x60;name&#x60; is moved server-side into &#x60;$_POST[\&#39;hostname\&#39;]&#x60; and passed to &#x60;getOrderDomainData(true)&#x60;. Sibling ops: &#x60;getDomainSearch&#x60;, &#x60;getDomainLookup&#x60;, &#x60;getNewDomain&#x60;, &#x60;addDomain&#x60;.\n\n**Path param:**\n- &#x60;name&#x60; (string, required) — hostname (e.g. &#x60;example.com&#x60;).\n\n**Body:** None.\n\n**Returns:** Combined order-data response — pricing, service catalog entry, form fields ready to populate for &#x60;addDomain&#x60;.\n\n**Auth:** Session/API key (path is &#x60;client_api&#x60;, but called publicly).\n\n**Errors:**\n- &#x60;4xx&#x60; — hostname cannot be resolved to a TLD service.\n\n**Related calls:**\n- **Place order:** &#x60;addDomain&#x60; with the returned fields.\n
     */
    @isTest
    private static void postDomainSearchTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'name' => 'null'
        };

        IntServer_Client client;
        IntServerDomainsApi api;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.postDomainSearch(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.postDomainSearch(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.postDomainSearch(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Re-poll OpenSRS transfer status for a domain order via POST
     *
     * Re-polls OpenSRS transfer state. Behaves identically to &#x60;getDomainTransfer&#x60; (same &#x60;go()&#x60; handler) — provided so dashboards can refresh via a form-action pattern. **This endpoint does not initiate transfers** — to start a transfer, use &#x60;addDomain&#x60; with &#x60;type&#x3D;transfer&#x60;. Sibling ops: &#x60;getDomainTransfer&#x60;, &#x60;addDomain&#x60; (initiate), &#x60;getDomainContact&#x60; (set &#x60;auth_info&#x60;).\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.\n\n**Body:** None.\n\n**Returns:** Same payload as &#x60;getDomainTransfer&#x60;.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n- &#x60;404&#x60; — &#x60;id&#x60; not owned by caller.\n- &#x60;409&#x60; — &#x60;domain_status !&#x3D; &quot;active&quot;&#x60;.\n\n**Related calls:**\n- **Read:** &#x60;getDomainTransfer&#x60;.\n- **Initiate new transfer:** &#x60;addDomain&#x60; with &#x60;type&#x3D;transfer&#x60;.\n
     */
    @isTest
    private static void postDomainTransferTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerDomainsApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.postDomainTransfer(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.postDomainTransfer(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.postDomainTransfer(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.postDomainTransfer(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.postDomainTransfer(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.postDomainTransfer(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Preview per-TLD field requirements for a domain order — no commit
     *
     * Pre-flight that returns the per-TLD field schema required to register or transfer the supplied hostname. The schema varies significantly by TLD: &#x60;.us&#x60; requires nexus codes, &#x60;.ca&#x60; requires CIRA legal type, &#x60;.eu&#x60; has residency rules, &#x60;.fr&#x60; requires VAT for orgs, etc. Values pre-populate from the account profile when possible. No commit — use &#x60;patchDomains&#x60; to validate filled values, then &#x60;addDomain&#x60; to place the order. Sibling ops: &#x60;getNewDomain&#x60;, &#x60;getDomainLookup&#x60;, &#x60;patchDomains&#x60;, &#x60;addDomain&#x60;.\n\n**Body fields:**\n- &#x60;hostname&#x60; (string, required) — FQDN.\n- &#x60;type&#x60; (string, optional, default &#x60;register&#x60;) — &#x60;register&#x60; or &#x60;transfer&#x60;.\n- &#x60;coupon&#x60; (string, optional) — coupon code.\n\n**Returns:** &#x60;{domainFields: {&lt;field_name&gt;: {label, type, options, value, required, ...}}}&#x60; — schema for the dynamic order form.\n\n**Auth:** Session/API key.\n\n**Errors:**\n- &#x60;400 Missing hostname parameter&#x60;.\n- &#x60;400 Unable to determine service type for this domain TLD.&#x60; — unknown TLD.\n- &#x60;401&#x60; — unauthenticated.\n\n**Related calls:**\n- **Catalog first:** &#x60;getNewDomain&#x60;.\n- **Validate filled values:** &#x60;patchDomains&#x60;.\n- **Place order:** &#x60;addDomain&#x60;.\n
     */
    @isTest
    private static void putDomainsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerDomainOrderRequest' => ''
        };

        IntServer_Client client;
        IntServerDomainsApi api;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.putDomains(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.putDomains(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.putDomains(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Update registrant/admin contact details and push them to OpenSRS
     *
     * Pushes updated contact data to the registrar via OpenSRS &#x60;provModify&#x60;, applied to admin/tech/billing/owner contact roles via &#x60;also_apply_to&#x60;. Active services apply changes immediately at the registrar; pending services may trigger &#x60;queue_process_payment&#x60; when the order is paid. **Domain must not be locked** — locked domains return an error directing the user to unlock first. **Note:** registrant-name changes on some TLDs (e.g. &#x60;.com&#x60;, &#x60;.net&#x60;) require a 60-day transfer lock per ICANN rules. Sibling ops: &#x60;getDomainContact&#x60;, &#x60;getDomainInfo&#x60;.\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.\n\n**Body fields (JSON or multipart, schema &#x60;DomainContactDetails&#x60;):**\nSame fields returned by &#x60;getDomainContact&#x60;: &#x60;firstname&#x60;, &#x60;lastname&#x60;, &#x60;email&#x60;, &#x60;address&#x60;/&#x60;2&#x60;/&#x60;3&#x60;, &#x60;city&#x60;, &#x60;state&#x60;, &#x60;zip&#x60;, &#x60;country&#x60;, &#x60;phone&#x60;, &#x60;fax&#x60;, &#x60;company&#x60;, optional &#x60;auth_info&#x60;, optional &#x60;transfer&#x60;.\n\n**Returns:** &#x60;SuccessTextResponse&#x60;.\n\n**Side effects:**\n- Calls OpenSRS &#x60;provModify&#x60; with &#x60;also_apply_to&#x3D;admin,tech,billing,owner&#x60;.\n- May trigger ICANN 60-day transfer lock for registrant-name changes on legacy TLDs.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n- &#x60;404&#x60; — &#x60;id&#x60; not owned by caller.\n- &#x60;409&#x60; — domain is locked (unlock first).\n- Registrar error (e.g. OpenSRS error code 465 / 466) surfaced as 4xx.\n\n**Related calls:**\n- **Read first:** &#x60;getDomainContact&#x60;.\n- **Transfer status:** &#x60;getDomainTransfer&#x60;.\n
     */
    @isTest
    private static void updateDomainContactTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerDomainContactDetails' => '',
            'id' => ''
        };

        IntServer_Client client;
        IntServerDomainsApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateDomainContact(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateDomainContact(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateDomainContact(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateDomainContact(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateDomainContact(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateDomainContact(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * POST mutation hook for the domain detail page (use dedicated ops where possible)
     *
     * Account-level write-back hook for the domain service record. Runs the same &#x60;View::go()&#x60; handler as &#x60;getDomainInfo&#x60; — it does NOT push registrar-side changes by itself. **For specific changes use the dedicated endpoints** — they push to OpenSRS where appropriate. Sibling ops: &#x60;getDomainInfo&#x60;, &#x60;updateDomainContact&#x60;, &#x60;updateDomainNameservers&#x60;, &#x60;addDomainDnssec&#x60;, &#x60;updateDomainWhoisPrivacy&#x60;.\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.\n\n**Body:** Form fields matching the domain service record.\n\n**Returns:** &#x60;SuccessTextResponse&#x60;.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n- &#x60;404&#x60; — &#x60;id&#x60; not owned by caller.\n\n**Prefer these dedicated endpoints:**\n- **Registrant/admin contact:** &#x60;updateDomainContact&#x60; (pushes to OpenSRS).\n- **Nameservers:** &#x60;updateDomainNameservers&#x60;, &#x60;addDomainNameserver&#x60;, &#x60;deleteDomainNameserver&#x60;.\n- **DNSSEC:** &#x60;addDomainDnssec&#x60;, &#x60;deleteDomainDnssec&#x60;.\n- **Whois privacy:** &#x60;updateDomainWhoisPrivacy&#x60;.\n- **Renew:** &#x60;postDomainRenewal&#x60;.\n- **Cancel:** &#x60;CancelDomain&#x60;.\n
     */
    @isTest
    private static void updateDomainInfoTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerDomainsApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateDomainInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateDomainInfo(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateDomainInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateDomainInfo(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateDomainInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateDomainInfo(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Replace the full authoritative-nameserver delegation list at the registrar
     *
     * Atomically replaces the domain\&#39;s authoritative-nameserver delegation list via OpenSRS &#x60;nsAdvancedUpdt&#x60; with &#x60;op_type&#x3D;assign&#x60;. **Domain must be unlocked.** Use this to switch DNS providers (e.g. point at InterServer &#x60;cdns1&#x60;/&#x60;cdns2&#x60;, Cloudflare, AWS Route53, etc.). **Replaces the full set in one call** — partial updates are not supported through this endpoint. To register a new glue record (host + IP) at the registry, use &#x60;addDomainNameserver&#x60;. Sibling ops: &#x60;getDomainNameservers&#x60;, &#x60;addDomainNameserver&#x60;, &#x60;deleteDomainNameserver&#x60;, &#x60;addDnsDomain&#x60; (host a zone at InterServer).\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.\n\n**Body fields (JSON or multipart, schema &#x60;DomainNameserverPutRequest&#x60;):**\n- &#x60;nameserver[]&#x60; (array of strings, required) — FQDN strings (e.g. &#x60;[&quot;ns1.example.com&quot;, &quot;ns2.example.com&quot;]&#x60;). Trimmed; empty entries dropped server-side.\n\n**Returns:** &#x60;SuccessTextResponse&#x60; on registrar &#x60;is_success&#x3D;1&#x60;.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n- &#x60;404&#x60; — &#x60;id&#x60; not owned by caller.\n- &#x60;409&#x60; — &#x60;domain_status !&#x3D; &quot;active&quot;&#x60; or domain locked.\n- Registrar errors surfaced as 4xx.\n\n**Related calls:**\n- **Read current set:** &#x60;getDomainNameservers&#x60;.\n- **Register a glue record:** &#x60;addDomainNameserver&#x60;.\n- **Host the DNS zone at InterServer:** &#x60;addDnsDomain&#x60; (DNS tag).\n
     */
    @isTest
    private static void updateDomainNameserversTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerDomainNameserverPutRequest' => '',
            'id' => ''
        };

        IntServer_Client client;
        IntServerDomainsApi api;
        IntServerTextResponse response;
        IntServerTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.updateDomainNameservers(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.updateDomainNameservers(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.updateDomainNameservers(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.updateDomainNameservers(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.updateDomainNameservers(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.updateDomainNameservers(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Order, enable, or cancel the Whois privacy add-on for a domain
     *
     * Manages the Whois privacy add-on. Behavior branches on &#x60;action&#x60;:\n- **&#x60;order&#x60;**: creates an add-on &#x60;Repeat_Invoice&#x60; and emits the first invoice; pass the returned &#x60;payUrl&#x60; to the customer or use &#x60;initiatePayment&#x60; with &#x60;invoiceId&#x60;. **Real money.**\n- **&#x60;enable&#x60;**: activates Whois privacy at OpenSRS — call after the invoice is paid (calls &#x60;post_payment_processing_new&#x60;).\n- **&#x60;disableCancel&#x60;**: disables Whois privacy at OpenSRS and marks the add-on &#x60;Repeat_Invoice&#x60; &#x60;deleted&#x3D;1&#x60;.\n- **(no action)**: returns current state — same shape as &#x60;getDomainWhoisPrivacy&#x60;.\n\nSibling ops: &#x60;getDomainWhoisPrivacy&#x60;, &#x60;getDomainInvoices&#x60;, &#x60;initiatePayment&#x60;.\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;domain_id&#x60; from &#x60;getDomainsList&#x60;.\n\n**Body fields (JSON or multipart, schema &#x60;DomainWhoisPrivacyRequest&#x60;):**\n- &#x60;action&#x60; (string, optional) — one of &#x60;order&#x60; / &#x60;enable&#x60; / &#x60;disableCancel&#x60;. Omit for status.\n\n**Returns:** (varies by action)\n- &#x60;order&#x60;: &#x60;{text, invoiceId, repeatInvoiceId, payUrl}&#x60;.\n- &#x60;enable&#x60; / &#x60;disableCancel&#x60;: &#x60;{text}&#x60;.\n- No action: &#x60;{whoisPrivacy, cost, currency, currencySymbol}&#x60;.\n\n**Side effects:**\n- &#x60;order&#x60;: inserts add-on &#x60;repeat_invoices&#x60; + &#x60;invoices&#x60; rows.\n- &#x60;enable&#x60;: OpenSRS &#x60;provModify&#x60; with privacy&#x3D;on; calls &#x60;post_payment_processing_new&#x60;.\n- &#x60;disableCancel&#x60;: OpenSRS &#x60;provModify&#x60; with privacy&#x3D;off; marks add-on &#x60;repeat_invoices.deleted&#x3D;1&#x60;.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n- &#x60;404&#x60; — &#x60;id&#x60; not owned by caller.\n- &#x60;409&#x60; — &#x60;domain_status !&#x3D; &quot;active&quot;&#x60; or TLD doesn\&#39;t support privacy.\n- &#x60;4xx&#x60; — no add-on found for &#x60;enable&#x60; / &#x60;disableCancel&#x60;.\n\n**Related calls:**\n- **Read state:** &#x60;getDomainWhoisPrivacy&#x60;.\n- **Pay the order invoice:** &#x60;initiatePayment&#x60; (&#x60;method&#x3D;cc|paypal|...&#x60;).\n- **Renew with privacy:** &#x60;postDomainRenewal&#x60; with &#x60;whois_privacy&#x3D;enable&#x60;.\n
     */
    @isTest
    private static void updateDomainWhoisPrivacyTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerDomainWhoisPrivacyRequest' => '',
            'id' => ''
        };

        IntServer_Client client;
        IntServerDomainsApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateDomainWhoisPrivacy(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateDomainWhoisPrivacy(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateDomainWhoisPrivacy(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateDomainWhoisPrivacy(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDomainsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateDomainWhoisPrivacy(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateDomainWhoisPrivacy(params);
        System.assertEquals(expectedResponse, response);
    }
}