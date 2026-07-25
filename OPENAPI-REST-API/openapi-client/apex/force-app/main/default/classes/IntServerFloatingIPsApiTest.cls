@isTest
private class IntServerFloatingIPsApiTest {
    /**
     * Place a real Floating IP order, create billing records, and provision the service
     *
     * Charges the customer and creates a new Floating IP service via &#x60;place_buy_floating_ip&#x60;. Validate first with &#x60;putFloating_ips&#x60; to avoid surprise failures. Body (form-encoded): &#x60;serviceType&#x60; (required, &#x60;services_id&#x60;), &#x60;coupon&#x60; (optional), &#x60;comment&#x60; (optional internal note). On success returns &#x60;{ continue:true, errors, total_cost, iid, iids, real_iids, serviceId, invoice_description, cj_params }&#x60; — &#x60;iid&#x60; is the master invoice ID, &#x60;serviceId&#x60; is the new &#x60;floating_ip_id&#x60;. On validation failure returns &#x60;{ continue:false, errors:[...] }&#x60; with no charge. Errors: 401 if unauthenticated; soft errors in &#x60;errors[]&#x60;. The newly-issued IP starts unassigned — point it at a target with &#x60;postFloatingIpsChangeIp&#x60; once the service is &#x60;active&#x60;.\n\nSibling ops: &#x60;getNewFloatingIp&#x60; (catalog), &#x60;putFloating_ips&#x60; (validate), &#x60;getFloatingIpInfo&#x60; (poll), &#x60;postFloatingIpsChangeIp&#x60; (route), &#x60;getBillingInvoice&#x60; + &#x60;initiatePayment&#x60; (settle invoice), &#x60;floating_ipsCancel&#x60;.
     */
    @isTest
    private static void addFloatingIpTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerFloatingIpOrderRequest' => ''
        };

        IntServer_Client client;
        IntServerFloatingIPsApi api;
        IntServerServiceOrderPostResponse response;
        IntServerServiceOrderPostResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerFloatingIPsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServiceOrderPostResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServiceOrderPostResponse.getExample();
        response = (IntServerServiceOrderPostResponse) api.addFloatingIp(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServiceOrderPostResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServiceOrderPostResponse.getExample();
        response = (IntServerServiceOrderPostResponse) api.addFloatingIp(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerFloatingIPsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServiceOrderPostResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServiceOrderPostResponse.getExample();
        response = (IntServerServiceOrderPostResponse) api.addFloatingIp(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServiceOrderPostResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServiceOrderPostResponse.getExample();
        response = (IntServerServiceOrderPostResponse) api.addFloatingIp(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerFloatingIPsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServiceOrderPostResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServiceOrderPostResponse.getExample();
        response = (IntServerServiceOrderPostResponse) api.addFloatingIp(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServiceOrderPostResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServiceOrderPostResponse.getExample();
        response = (IntServerServiceOrderPostResponse) api.addFloatingIp(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Cancel a Floating IP service and release the IP — destructive, billing stops
     *
     * Cancels the Floating IP via the shared &#x60;Api\Billing\CancelService&#x60; flow — flips status to canceled, halts recurring billing, and releases the IP back to the pool so it can no longer be re-routed. Not reversible: the customer cannot recover the same IP after release. Path param &#x60;id&#x60; (&#x60;floating_ip_id&#x60; from &#x60;getFloatingIpsList&#x60;). No body. Returns the &#x60;FloatingIpsCancelResponse&#x60; shape (success text / cancellation outcome). Errors: 401 if unauthenticated; 404 / cross-customer hidden when &#x60;id&#x60; is not owned by the caller; 409 if already canceled or otherwise non-cancelable. Confirm with the customer before calling — for routing changes use &#x60;postFloatingIpsChangeIp&#x60; instead of cancel-and-reorder.\n\nSibling ops: &#x60;getFloatingIpInfo&#x60; (status), &#x60;getFloatingIpInvoices&#x60; (outstanding charges), &#x60;postFloatingIpsChangeIp&#x60; (re-route instead of cancel), &#x60;addFloatingIp&#x60; (re-order).
     */
    @isTest
    private static void floatingIpsCancelTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerFloatingIPsApi api;
        IntServerFloatingIpsCancel200Respons response;
        IntServerFloatingIpsCancel200Respons expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerFloatingIPsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerFloatingIpsCancel200Respons.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerFloatingIpsCancel200Respons.getExample();
        response = (IntServerFloatingIpsCancel200Respons) api.floatingIpsCancel(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerFloatingIpsCancel200Respons.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerFloatingIpsCancel200Respons.getExample();
        response = (IntServerFloatingIpsCancel200Respons) api.floatingIpsCancel(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerFloatingIPsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerFloatingIpsCancel200Respons.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerFloatingIpsCancel200Respons.getExample();
        response = (IntServerFloatingIpsCancel200Respons) api.floatingIpsCancel(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerFloatingIpsCancel200Respons.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerFloatingIpsCancel200Respons.getExample();
        response = (IntServerFloatingIpsCancel200Respons) api.floatingIpsCancel(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerFloatingIPsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerFloatingIpsCancel200Respons.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerFloatingIpsCancel200Respons.getExample();
        response = (IntServerFloatingIpsCancel200Respons) api.floatingIpsCancel(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerFloatingIpsCancel200Respons.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerFloatingIpsCancel200Respons.getExample();
        response = (IntServerFloatingIpsCancel200Respons) api.floatingIpsCancel(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Fetch full details for one Floating IP service, including current target IP
     *
     * Use for a Floating IP detail screen, or to read &#x60;floating_ip_ip&#x60; / &#x60;floating_ip_target_ip&#x60; before calling &#x60;postFloatingIpsChangeIp&#x60;. Read-only. Path param &#x60;id&#x60; (integer, &#x60;floating_ip_id&#x60; from &#x60;getFloatingIpsList&#x60;). No body. Returns the &#x60;ViewFloatingIp.getDetails()&#x60; payload — service info, billing/cost summary, status, target IP, and &#x60;client_links&#x60; (action URLs the UI can render). Internal-only fields (&#x60;admin_links&#x60;, &#x60;settings&#x60;, &#x60;csrf&#x60;) are stripped. Errors: 401 if unauthenticated; effectively 404 / cross-customer hidden when &#x60;id&#x60; is not owned by the caller (&#x60;get_service&#x60; filters by custid). Siblings: &#x60;postFloatingIpsChangeIp&#x60;, &#x60;updateFloatingIpInfo&#x60;, &#x60;getFloatingIpInvoices&#x60;, &#x60;getFloatingIpsWelcomeEmail&#x60;, &#x60;floating_ipsCancel&#x60;.
     */
    @isTest
    private static void getFloatingIpInfoTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerFloatingIPsApi api;
        Object response;
        Object expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerFloatingIPsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(null);
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = null;
        response = (Object) api.getFloatingIpInfo(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerFloatingIPsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(null);
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = null;
        response = (Object) api.getFloatingIpInfo(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerFloatingIPsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(null);
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = null;
        response = (Object) api.getFloatingIpInfo(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List all billing invoices charged against a specific Floating IP service
     *
     * Use for a per-service billing history view — pulls the standard &#x60;Api\Billing\InvoicesList&#x60; rows scoped to this Floating IP. Read-only. Path param &#x60;id&#x60; (&#x60;floating_ip_id&#x60; from &#x60;getFloatingIpsList&#x60;). No body. Returns the &#x60;ChargeInvoiceRows&#x60; schema: array of invoice rows with id, date, amount, status, etc. Use the invoice IDs with the global billing endpoints (&#x60;getBillingInvoice&#x60;, &#x60;initiatePayment&#x60;) for line-item detail. Errors: 401 if unauthenticated; effectively 404 / cross-customer hidden when &#x60;id&#x60; is not owned by the caller. Siblings: &#x60;getFloatingIpInfo&#x60; (service details), &#x60;getFloatingIpsWelcomeEmail&#x60;.
     */
    @isTest
    private static void getFloatingIpInvoicesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerFloatingIPsApi api;
        IntServerChargeInvoiceRows response;
        IntServerChargeInvoiceRows expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerFloatingIPsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getFloatingIpInvoices(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getFloatingIpInvoices(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerFloatingIPsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getFloatingIpInvoices(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getFloatingIpInvoices(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerFloatingIPsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getFloatingIpInvoices(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getFloatingIpInvoices(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List all Floating IP services on the authenticated customer\&#39;s account
     *
     * Use to enumerate every Floating IP the caller owns before drilling into a specific one. Read-only; safe to call frequently. No params, no body. Returns an array of rows: &#x60;floating_ip_id&#x60;, &#x60;repeat_invoices_cost&#x60; (recurring price), &#x60;floating_ip_ip&#x60; (the portable IP), &#x60;floating_ip_target_ip&#x60; (the IP it currently routes to), &#x60;floating_ip_status&#x60; (active/pending/canceled/etc.), &#x60;services_name&#x60; (package label). Empty array if the account owns no Floating IPs. Errors: 401 if unauthenticated. Use returned IDs with &#x60;getFloatingIpInfo&#x60;, &#x60;postFloatingIpsChangeIp&#x60;, &#x60;getFloatingIpInvoices&#x60;, &#x60;getFloatingIpsWelcomeEmail&#x60;, or &#x60;floating_ipsCancel&#x60;. To order a new one see &#x60;getNewFloatingIp&#x60; / &#x60;addFloatingIp&#x60;.\n\nSibling ops: &#x60;getFloatingIpInfo&#x60;, &#x60;getNewFloatingIp&#x60; (catalog), &#x60;addFloatingIp&#x60; (order).
     */
    @isTest
    private static void getFloatingIpsListTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        IntServer_Client client;
        IntServerFloatingIPsApi api;
        List<Object> response;
        List<Object> expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerFloatingIPsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<Object>{null});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<Object>{null};
        response = (List<Object>) api.getFloatingIpsList();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<Object>{null});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<Object>{null};
        response = (List<Object>) api.getFloatingIpsList();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerFloatingIPsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<Object>{null});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<Object>{null};
        response = (List<Object>) api.getFloatingIpsList();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<Object>{null});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<Object>{null};
        response = (List<Object>) api.getFloatingIpsList();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerFloatingIPsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<Object>{null});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<Object>{null};
        response = (List<Object>) api.getFloatingIpsList();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<Object>{null});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<Object>{null};
        response = (List<Object>) api.getFloatingIpsList();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Resend the Floating IP welcome / setup email to the account contact
     *
     * Triggers &#x60;floating_ip_welcome_email($id)&#x60; to re-deliver the original setup email (the IP, routing instructions, etc.) to the customer\&#39;s on-file address. Useful when the email was lost or the customer needs the IP/setup details again. No body, no params besides path &#x60;id&#x60; (&#x60;floating_ip_id&#x60;). Returns &#x60;{ text: \&#39;Welcome Email has been resent.\&#39; }&#x60;. Errors: 401 if unauthenticated; 404 (&#x60;Invalid Service Passed&#x60;) if &#x60;id&#x60; is not owned by the caller; 409 (&#x60;Service is not active&#x60;) if status is not &#x60;active&#x60;. Side effect: sends an outbound email — avoid in tight loops. Read state first via &#x60;getFloatingIpInfo&#x60; if unsure of status.\n\nSibling ops: &#x60;getFloatingIpInfo&#x60; (status), &#x60;addFloatingIp&#x60; (new order), &#x60;floating_ipsCancel&#x60;.
     */
    @isTest
    private static void getFloatingIpsWelcomeEmailTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerFloatingIPsApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerFloatingIPsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getFloatingIpsWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getFloatingIpsWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerFloatingIPsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getFloatingIpsWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getFloatingIpsWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerFloatingIPsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getFloatingIpsWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getFloatingIpsWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get pricing and service-type options for ordering a new Floating IP
     *
     * Use before showing a Floating IP order form, or before calling &#x60;addFloatingIp&#x60;, to discover which service types (&#x60;serviceTypes&#x60;) and prices (&#x60;packageCosts&#x60;, keyed by &#x60;services_id&#x60; in the customer\&#39;s currency) are currently buyable. Read-only; no side effects. No params, no body. Returns &#x60;{ packageCosts: { &lt;services_id&gt;: &lt;cost&gt; }, serviceTypes: [ ... ] } &#x60;. Costs are &#x60;services.services_cost&#x60; filtered to &#x60;services_buyable&#x3D;1&#x60; for module &#x60;floating_ips&#x60;. Errors: 401 if unauthenticated. Next steps: validate the chosen &#x60;serviceType&#x60; with &#x60;putFloating_ips&#x60;, then place the order with &#x60;addFloatingIp&#x60;. Floating IPs are portable IPv4 addresses that route to a target IP on one of the customer\&#39;s active services.\n\nSibling ops: &#x60;putFloating_ips&#x60; (validate), &#x60;addFloatingIp&#x60; (commit), &#x60;getFloatingIpsList&#x60; (existing IPs).
     */
    @isTest
    private static void getNewFloatingIpTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        IntServer_Client client;
        IntServerFloatingIPsApi api;
        Object response;
        Object expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerFloatingIPsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(null);
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = null;
        response = (Object) api.getNewFloatingIp();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerFloatingIPsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(null);
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = null;
        response = (Object) api.getNewFloatingIp();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerFloatingIPsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(null);
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = null;
        response = (Object) api.getNewFloatingIp();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Re-point a Floating IP to a different target IP on one of the customer\&#39;s services
     *
     * Reattaches the Floating IP by removing the old static route on the source switch and adding a new one on the destination switch (via &#x60;Sshwitch&#x60;), then updates &#x60;floating_ip_target_ip&#x60;. Use to move a portable IP between the customer\&#39;s VPS / Quickservers / websites / dedicated servers without renumbering apps. Path param &#x60;id&#x60; (&#x60;floating_ip_id&#x60;). Body: &#x60;{ ip: &lt;new target IP&gt; }&#x60; (also accepts multipart form). Returns &#x60;{ success:true, text:\&#39;IP Changed\&#39; }&#x60;. Errors (returned via &#x60;json_error&#x60;): invalid IP format; IP not in our datacenter; IP not in use by an active service of this customer; service not active; another Floating IP already points to that target; switch lookup failures; route still present after removal. 401 if unauthenticated.\n\nSibling ops: &#x60;getFloatingIpInfo&#x60; (read current target), &#x60;getFloatingIpsList&#x60;, &#x60;floating_ipsCancel&#x60;. Read current target with &#x60;getFloatingIpInfo&#x60; first.
     */
    @isTest
    private static void postFloatingIpsChangeIpTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'ip' => 'null',
            'id' => ''
        };

        IntServer_Client client;
        IntServerFloatingIPsApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerFloatingIPsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.postFloatingIpsChangeIp(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.postFloatingIpsChangeIp(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerFloatingIPsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.postFloatingIpsChangeIp(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.postFloatingIpsChangeIp(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerFloatingIPsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.postFloatingIpsChangeIp(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.postFloatingIpsChangeIp(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Validate a Floating IP order and price it without charging the customer
     *
     * Dry-run for &#x60;addFloatingIp&#x60; — runs &#x60;validate_buy_floating_ip&#x60; to apply coupons, compute intro/repeat pricing, and surface errors before committing. No charge, no service created. Body fields (form-encoded): &#x60;serviceType&#x60; (required, &#x60;services_id&#x60; from &#x60;getNewFloatingIp.packageCosts&#x60;), &#x60;coupon&#x60; (optional code). Returns &#x60;{ continue, errors, serviceType, serviceCost, originalCost, repeatServiceCost, password, introFrequency, coupon, couponCode }&#x60;. &#x60;continue&#x3D;true&#x60; means the order would succeed; &#x60;continue&#x3D;false&#x60; plus populated &#x60;errors[]&#x60; means it would not. Errors: 401 if unauthenticated; 422-style soft errors arrive in the &#x60;errors&#x60; array. Use the returned &#x60;serviceType&#x60; and &#x60;couponCode&#x60; when calling &#x60;addFloatingIp&#x60;.\nSibling ops: &#x60;getNewFloatingIp&#x60; (catalog), &#x60;addFloatingIp&#x60; (commit).
     */
    @isTest
    private static void putFloatingIpsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerFloatingIpOrderRequest' => ''
        };

        IntServer_Client client;
        IntServerFloatingIPsApi api;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerFloatingIPsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.putFloatingIps(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerFloatingIPsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.putFloatingIps(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerFloatingIPsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.putFloatingIps(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Update a Floating IP service\&#39;s editable settings (label / metadata)
     *
     * Stub edit endpoint that delegates to the same handler as &#x60;getFloatingIpInfo&#x60; — currently used for label/metadata edits surfaced by &#x60;ViewFloatingIp&#x60;. To re-route the IP to a different target use the dedicated &#x60;postFloatingIpsChangeIp&#x60; instead; this op does not change routing. Path param &#x60;id&#x60; (&#x60;floating_ip_id&#x60;). Body: form-encoded fields exposed by the Floating IP edit form (label/comment style). Returns the standard success-text response. Errors: 401 if unauthenticated; effectively 404 if &#x60;id&#x60; not owned by the caller. Read state first with &#x60;getFloatingIpInfo&#x60;.\n\nSibling ops: &#x60;getFloatingIpInfo&#x60; (read), &#x60;postFloatingIpsChangeIp&#x60; (re-route), &#x60;floating_ipsCancel&#x60;.
     */
    @isTest
    private static void updateFloatingIpInfoTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        IntServer_Client client;
        IntServerFloatingIPsApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerFloatingIPsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateFloatingIpInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateFloatingIpInfo(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerFloatingIPsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateFloatingIpInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateFloatingIpInfo(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerFloatingIPsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateFloatingIpInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateFloatingIpInfo(params);
        System.assertEquals(expectedResponse, response);
    }
}