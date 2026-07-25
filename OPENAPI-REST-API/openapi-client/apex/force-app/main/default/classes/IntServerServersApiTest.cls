@isTest
private class IntServerServersApiTest {
    /**
     * Place a custom dedicated server order, creating a real billable invoice
     *
     * Submits a fully custom dedicated server order. Creates a &#x60;pending&#x60; &#x60;servers&#x60; row, a &#x60;Repeat_Invoice&#x60;, and the first invoice, then emails customer + admin. Caveat: real billable order — confirm with the user first.\nBody (form fields): &#x60;cpu&#x60; (id from &#x60;cpu_li&#x60;), &#x60;hd[]&#x60; (array of drive ids), &#x60;memory&#x60;, &#x60;bandwidth&#x60;, &#x60;ips&#x60;, &#x60;os&#x60;, &#x60;cp&#x60;, &#x60;raid&#x60; (ids from &#x60;getNewServer&#x60;), &#x60;region&#x60; (region_id), &#x60;servername&#x60; (valid hostname), &#x60;rootpass&#x60;, &#x60;tos&#x60; (must be true), optional &#x60;comment&#x60;. &#x60;account.server_order_discount&#x60; (if set) applies.\nReturns: &#x60;{ text:\&#39;Order Completed\&#39;, invoice, order }&#x60;. Errors: 422 \&#39;Missing/Invalid &lt;field&gt;\&#39;; 401 unauth.\nSibling ops: &#x60;getNewServer&#x60; (options), &#x60;placeBuyNowServer&#x60; (pre-built path), &#x60;getServerInfo&#x60; (view new order), &#x60;getServerInvoices&#x60;.
     */
    @isTest
    private static void addServerTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerServerOrderPostRequest' => ''
        };

        IntServer_Client client;
        IntServerServersApi api;
        IntServerAddServer200Response response;
        IntServerAddServer200Response expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerAddServer200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerAddServer200Response.getExample();
        response = (IntServerAddServer200Response) api.addServer(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerAddServer200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerAddServer200Response.getExample();
        response = (IntServerAddServer200Response) api.addServer(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerAddServer200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerAddServer200Response.getExample();
        response = (IntServerAddServer200Response) api.addServer(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerAddServer200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerAddServer200Response.getExample();
        response = (IntServerAddServer200Response) api.addServer(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerAddServer200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerAddServer200Response.getExample();
        response = (IntServerAddServer200Response) api.addServer(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerAddServer200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerAddServer200Response.getExample();
        response = (IntServerAddServer200Response) api.addServer(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get configurable options for a Rapid Deploy / coupon dedicated server
     *
     * Step 1 of the Rapid Deploy / coupon dedicated server order flow. Returns options + pricing for either a marketplace asset (&#x60;a&#x3D;&lt;asset_id&gt;&#x60;) or a coupon (&#x60;c&#x3D;&lt;coupon_name&gt;&#x60;) so the order form can be rendered before &#x60;placeBuyNowServer&#x60;. Read-only; no charge. Sibling ops: &#x60;placeBuyNowServer&#x60; (commit), &#x60;getMPServers&#x60; (browse marketplace), &#x60;addServer&#x60; (custom build flow).\n\n**Query (one required):**\n- &#x60;a&#x60; (integer) — asset_id from &#x60;getMPServers&#x60;.\n- &#x60;c&#x60; (string) — &#x60;server_coupons.name&#x60;.\n\n**Returns:** &#x60;{ bandwidth[], ips[], os[], cp[], raid[], regions[], a?: {asset + items}, c?: {coupon + region} }&#x60;. Each option row is &#x60;{ id, short_desc, long_desc, monthly_price }&#x60; — feed those ids into &#x60;placeBuyNowServer&#x60;.\n\n**Auth:** Session/API key.\n\n**Errors:**\n- &#x60;400&#x60; — &#x60;\&#39;No Server Coupon or Market-Place Asset Specified\&#39;&#x60; when neither &#x60;a&#x60; nor &#x60;c&#x60; is passed.\n- &#x60;400&#x60; — &#x60;\&#39;Invalid Asset ID\&#39;&#x60; / &#x60;\&#39;No Server Coupon with that name\&#39;&#x60;.\n- &#x60;409&#x60; — &#x60;\&#39;Server already sold!\&#39;&#x60; (asset already in-cart) or &#x60;\&#39;Server Out of stock\&#39;&#x60; (coupon).\n- &#x60;401&#x60; — unauthenticated.\n\n**Related calls:**\n- **Next:** &#x60;placeBuyNowServer&#x60; (commit the order).\n- **Browse:** &#x60;getMPServers&#x60;.\n- **Custom build alternative:** &#x60;addServer&#x60;.\n
     */
    @isTest
    private static void buyItNowServerOrderTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        IntServer_Client client;
        IntServerServersApi api;
        IntServerBuyItNowServerOrder200Respo response;
        IntServerBuyItNowServerOrder200Respo expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerBuyItNowServerOrder200Respo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBuyItNowServerOrder200Respo.getExample();
        response = (IntServerBuyItNowServerOrder200Respo) api.buyItNowServerOrder();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerBuyItNowServerOrder200Respo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBuyItNowServerOrder200Respo.getExample();
        response = (IntServerBuyItNowServerOrder200Respo) api.buyItNowServerOrder();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerBuyItNowServerOrder200Respo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBuyItNowServerOrder200Respo.getExample();
        response = (IntServerBuyItNowServerOrder200Respo) api.buyItNowServerOrder();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerBuyItNowServerOrder200Respo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBuyItNowServerOrder200Respo.getExample();
        response = (IntServerBuyItNowServerOrder200Respo) api.buyItNowServerOrder();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerBuyItNowServerOrder200Respo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBuyItNowServerOrder200Respo.getExample();
        response = (IntServerBuyItNowServerOrder200Respo) api.buyItNowServerOrder();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerBuyItNowServerOrder200Respo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBuyItNowServerOrder200Respo.getExample();
        response = (IntServerBuyItNowServerOrder200Respo) api.buyItNowServerOrder();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing
     *
     * Use to browse pre-built dedicated servers ready for immediate provisioning (Rapid Deploy / marketplace). No params, no body. Pulls live inventory from &#x60;mynew.interserver.net/ajax/server_a.php&#x60;.\nReturns: array of &#x60;{ server_id, cpu: [model, {img,type,speed,num_cpus,num_cores}], memory, disk, bandwidth, ips, location, price }&#x60;. The &#x60;server_id&#x60; is the marketplace asset id — feed it into &#x60;buyItNowServerOrder&#x60; (GET options for asset &#x60;?a&#x3D;&lt;id&gt;&#x60;) and &#x60;placeBuyNowServer&#x60; (POST to commit). Errors: 401 if session expired.\nSibling ops: &#x60;buyItNowServerOrder&#x60; (configure asset), &#x60;placeBuyNowServer&#x60; (purchase), &#x60;getNewServer&#x60;/&#x60;addServer&#x60; (custom-spec build, not pre-built), &#x60;getServerList&#x60; (already-owned servers).
     */
    @isTest
    private static void getMPServersTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        IntServer_Client client;
        IntServerServersApi api;
        IntServerBuyItNowList response;
        IntServerBuyItNowList expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerBuyItNowList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBuyItNowList.getExample();
        response = (IntServerBuyItNowList) api.getMPServers();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerBuyItNowList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBuyItNowList.getExample();
        response = (IntServerBuyItNowList) api.getMPServers();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerBuyItNowList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBuyItNowList.getExample();
        response = (IntServerBuyItNowList) api.getMPServers();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerBuyItNowList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBuyItNowList.getExample();
        response = (IntServerBuyItNowList) api.getMPServers();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerBuyItNowList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBuyItNowList.getExample();
        response = (IntServerBuyItNowList) api.getMPServers();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerBuyItNowList.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBuyItNowList.getExample();
        response = (IntServerBuyItNowList) api.getMPServers();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get custom dedicated server ordering options, regions, and pricing
     *
     * Use before placing a fully custom (non-Rapid-Deploy) dedicated server order to discover available CPUs, drives, memory tiers, OS images, control panels, RAID levels, bandwidth packages, IP blocks, and regions with monthly prices. No params, no body.\nReturns: object with &#x60;config_li&#x60; keyed by category (&#x60;cpu_li&#x60;, &#x60;hd_li&#x60;, &#x60;memory_li&#x60;, &#x60;bandwidth_li&#x60;, &#x60;ips_li&#x60;, &#x60;os_li&#x60;, &#x60;cp_li&#x60;, &#x60;raid_li&#x60;) plus &#x60;regions&#x60;. Use returned IDs as POST values for &#x60;addServer&#x60;. Note &#x60;hd_li&#x60; and &#x60;memory_li&#x60; are nested by &#x60;cpu&#x60; id — the chosen CPU constrains valid drive/memory options. Errors: 401 if not authenticated.\nSibling ops: &#x60;addServer&#x60; (commits the order), &#x60;buyItNowServerOrder&#x60; (pre-built marketplace alternative), &#x60;getMPServers&#x60; (browse marketplace).
     */
    @isTest
    private static void getNewServerTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        IntServer_Client client;
        IntServerServersApi api;
        IntServerServerOrder response;
        IntServerServerOrder expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServerOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServerOrder.getExample();
        response = (IntServerServerOrder) api.getNewServer();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServerOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServerOrder.getExample();
        response = (IntServerServerOrder) api.getNewServer();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServerOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServerOrder.getExample();
        response = (IntServerServerOrder) api.getNewServer();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServerOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServerOrder.getExample();
        response = (IntServerServerOrder) api.getNewServer();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServerOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServerOrder.getExample();
        response = (IntServerServerOrder) api.getNewServer();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServerOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServerOrder.getExample();
        response = (IntServerServerOrder) api.getNewServer();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get full hardware, network, and lifecycle details for a dedicated server
     *
     * Use to fetch complete configuration for one dedicated server — hardware, network/VLAN/IP layout, asset assignments, location, status, billing references, and client action links. Path param: &#x60;id&#x60; (integer server_id, from &#x60;getServerList&#x60;). No body.\nReturns: &#x60;ViewServer::getDetails()&#x60; shape: &#x60;serviceInfo&#x60;, &#x60;networkInfo&#x60; (vlans + assets, with &#x60;ipmi_admin_username&#x60;/&#x60;ipmi_admin_password&#x60; and admin lease creds REDACTED for client safety), normalized &#x60;client_links&#x60;, &#x60;serviceType&#x60;. &#x60;admin_links&#x60;/raw &#x60;settings&#x60;/&#x60;csrf&#x60; stripped. Errors: 404 not owned; 401 unauth.\nSibling ops: &#x60;getServerInvoices&#x60;, &#x60;serverIpmiLiveGet&#x60;, &#x60;serverIpmiPowerGet&#x60; (single — prefer &#x60;serverBulkIpmiPowerGet&#x60; for many), &#x60;getServerReverseDns&#x60;, &#x60;getServersWelcomeEmail&#x60;, &#x60;serversCancel&#x60;.
     */
    @isTest
    private static void getServerInfoTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerServersApi api;
        IntServerServer response;
        IntServerServer expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServer.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServer.getExample();
        response = (IntServerServer) api.getServerInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServer.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServer.getExample();
        response = (IntServerServer) api.getServerInfo(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServer.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServer.getExample();
        response = (IntServerServer) api.getServerInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServer.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServer.getExample();
        response = (IntServerServer) api.getServerInfo(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServer.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServer.getExample();
        response = (IntServerServer) api.getServerInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServer.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServer.getExample();
        response = (IntServerServer) api.getServerInfo(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List billing invoices (charges + payments) tied to one dedicated server
     *
     * Use to retrieve the invoice history for a single dedicated server — e.g. before a cancel, refund, or to show outstanding balances. Path param: &#x60;id&#x60; (integer server_id from &#x60;getServerList&#x60;). No body. Inherits from &#x60;MyAdmin\Api\Billing\InvoicesList&#x60; with module&#x3D;servers.\nReturns: &#x60;ChargeInvoiceRows&#x60; array — invoice rows with id, date, amount, status, currency, line items. Errors: 404 if &#x60;id&#x60; not owned by the caller; 401 unauth.\nSibling ops: &#x60;getServerInfo&#x60; (current service state), &#x60;serversCancel&#x60; (cancel), &#x60;getBillingInvoice&#x60; (single invoice by invoice id), &#x60;getVpsInvoices&#x60;/&#x60;getDomainInvoices&#x60; for other modules, &#x60;getServersWelcomeEmail&#x60; to resend setup info.
     */
    @isTest
    private static void getServerInvoicesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerServersApi api;
        IntServerChargeInvoiceRows response;
        IntServerChargeInvoiceRows expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getServerInvoices(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getServerInvoices(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getServerInvoices(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getServerInvoices(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getServerInvoices(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getServerInvoices(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List all dedicated servers owned by the authenticated customer
     *
     * Use to enumerate physical bare-metal dedicated servers on the calling account. No params, no body. Filters &#x60;servers&#x60; by session &#x60;account_id&#x60;.\nReturns: array of &#x60;{ server_id, account_lid, server_hostname, server_status }&#x60;. Use &#x60;server_id&#x60; with &#x60;getServerInfo&#x60; for full hardware/network/IPMI details, &#x60;getServerInvoices&#x60; for billing, or &#x60;serverIpmiPowerGet&#x60; for chassis power state. Errors: 401 if not authenticated; empty array if account owns no servers.\nSibling ops: &#x60;getServerInfo&#x60; (details), &#x60;getVpsList&#x60; (virtual instead of physical hardware), &#x60;getMPServers&#x60; (purchasable inventory, not owned). For IPMI status across many servers in one call, prefer &#x60;serverBulkIpmiPowerGet&#x60;.
     */
    @isTest
    private static void getServerListTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        IntServer_Client client;
        IntServerServersApi api;
        List<IntServerServerRow> response;
        List<IntServerServerRow> expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<IntServerServerRow>{IntServerServerRow.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerServerRow>{IntServerServerRow.getExample()};
        response = (List<IntServerServerRow>) api.getServerList();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<IntServerServerRow>{IntServerServerRow.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerServerRow>{IntServerServerRow.getExample()};
        response = (List<IntServerServerRow>) api.getServerList();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<IntServerServerRow>{IntServerServerRow.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerServerRow>{IntServerServerRow.getExample()};
        response = (List<IntServerServerRow>) api.getServerList();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<IntServerServerRow>{IntServerServerRow.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerServerRow>{IntServerServerRow.getExample()};
        response = (List<IntServerServerRow>) api.getServerList();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<IntServerServerRow>{IntServerServerRow.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerServerRow>{IntServerServerRow.getExample()};
        response = (List<IntServerServerRow>) api.getServerList();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<IntServerServerRow>{IntServerServerRow.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerServerRow>{IntServerServerRow.getExample()};
        response = (List<IntServerServerRow>) api.getServerList();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List current reverse-DNS (PTR) records for a dedicated server\&#39;s IPs
     *
     * Use to read the existing PTR/rDNS hostnames assigned to each public IP in the server\&#39;s VLANs — typically before calling &#x60;postServerReverseDns&#x60; to update them. Path param: &#x60;id&#x60; (integer server_id). No body. Walks &#x60;networkInfo.vlans&#x60;, expands each network to usable host IPs (handles /31 and /32 edge cases), and resolves each via &#x60;get_hostname()&#x60;.\nReturns: &#x60;{ ips: { \&#39;&lt;ipv4&gt;\&#39;: \&#39;&lt;ptr_or_empty_string&gt;\&#39;, ... } }&#x60;. Empty string indicates no PTR set. Errors: 404 if &#x60;id&#x60; not owned by caller; 401 unauth.\nSibling ops: &#x60;postServerReverseDns&#x60; (update PTRs), &#x60;getServerInfo&#x60; (full network), &#x60;getVpsReverseDns&#x60; for VPS, &#x60;getDomainNameservers&#x60; / DNS endpoints for forward records. Note rDNS propagation is delegated to the in-addr.arpa zone — changes are not always instant.
     */
    @isTest
    private static void getServerReverseDnsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerServersApi api;
        IntServerReverseDnsEntries response;
        IntServerReverseDnsEntries expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerReverseDnsEntries.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerReverseDnsEntries.getExample();
        response = (IntServerReverseDnsEntries) api.getServerReverseDns(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerReverseDnsEntries.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerReverseDnsEntries.getExample();
        response = (IntServerReverseDnsEntries) api.getServerReverseDns(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerReverseDnsEntries.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerReverseDnsEntries.getExample();
        response = (IntServerReverseDnsEntries) api.getServerReverseDns(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerReverseDnsEntries.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerReverseDnsEntries.getExample();
        response = (IntServerReverseDnsEntries) api.getServerReverseDns(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerReverseDnsEntries.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerReverseDnsEntries.getExample();
        response = (IntServerReverseDnsEntries) api.getServerReverseDns(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerReverseDnsEntries.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerReverseDnsEntries.getExample();
        response = (IntServerReverseDnsEntries) api.getServerReverseDns(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Resend the dedicated server welcome email with setup credentials
     *
     * Use when the customer asks for the original setup/login info to be re-sent (root password, IPs, control-panel URL). Path param: &#x60;id&#x60; (integer server_id, must be &#x60;active&#x60;). No body. Invokes &#x60;server_welcome_email($id)&#x60; which re-sends the welcome message to the account\&#39;s email.\nReturns: &#x60;{ text:\&#39;Welcome Email has been resent.\&#39; }&#x60;. Errors: 404 if &#x60;id&#x60; not owned by caller; 409 if service not active (cancelled/pending/suspended); 401 unauth. Caveat: re-sending is rate-sensitive; do not call repeatedly in a loop. The email may contain root credentials — confirm intent before triggering.\nSibling ops: &#x60;getServerInfo&#x60; (status check), &#x60;getServerInvoices&#x60;, &#x60;getVpsWelcomeEmail&#x60; for VPS, &#x60;getDomainsWelcomeEmail&#x60; for domains.
     */
    @isTest
    private static void getServersWelcomeEmailTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerServersApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getServersWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getServersWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getServersWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getServersWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getServersWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getServersWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Place a Rapid Deploy / coupon dedicated server order; creates real invoice
     *
     * Step 2 of the Rapid Deploy / coupon order flow. Commits a marketplace asset OR coupon-based dedicated server order. Inserts the &#x60;servers&#x60; row, creates a &#x60;Repeat_Invoice&#x60; plus the first &#x60;invoices&#x60; row, marks the asset &#x60;MarketPlace-Incart&#x60; (or decrements &#x60;server_coupons.in_stock&#x60;), then emails customer + admin. **Real billable order — confirm intent first.** Sibling ops: &#x60;buyItNowServerOrder&#x60; (catalog), &#x60;getServerInfo&#x60; (poll provisioning), &#x60;getServerInvoices&#x60; (billing), &#x60;addServer&#x60; (custom build alternative).\n\n**Query (one required, same as &#x60;buyItNowServerOrder&#x60;):**\n- &#x60;a&#x60; (integer) — asset_id.\n- &#x60;c&#x60; (string) — &#x60;server_coupons.name&#x60;.\n\n**Body fields:**\n- &#x60;hostname&#x60; (string, required) — valid FQDN; validated by &#x60;valid_hostname&#x60;.\n- &#x60;enablepassword&#x60; (boolean, optional, default &#x60;false&#x60;) — when true the client must supply &#x60;rootPassword&#x60;; otherwise a secure password is generated server-side via &#x60;generate_password()&#x60;.\n- &#x60;rootPassword&#x60; (string, required when &#x60;enablepassword&#x3D;true&#x60;) — must be ≥8 chars with at least one uppercase, lowercase, digit, and special character (&#x60;valid_password&#x60;).\n- &#x60;os&#x60;, &#x60;bandwidth&#x60;, &#x60;ips&#x60;, &#x60;cp&#x60;, &#x60;raid&#x60; (integer, optional) — option ids from &#x60;buyItNowServerOrder&#x60;; defaults &#x60;30&#x60; / &#x60;10&#x60; / &#x60;9&#x60; / &#x60;1&#x60; / &#x60;0&#x60; applied when missing.\n- &#x60;comments&#x60; (string, optional) — appended to the order comment.\n\n**Returns:** &#x60;201 { success: true, text: \&#39;Server order is placed.\&#39;, service_id, invoice_id }&#x60;.\n\n**Auth:** Session/API key.\n\n**Errors:**\n- &#x60;400&#x60; — &#x60;\&#39;Server Hostname is missing.\&#39;&#x60; / &#x60;\&#39;Invalid Hostname!\&#39;&#x60; / &#x60;\&#39;Server Password is missing.\&#39;&#x60; / password complexity message.\n- &#x60;409&#x60; — &#x60;\&#39;Server already sold!\&#39;&#x60; / &#x60;\&#39;Server Out of stock.\&#39;&#x60;\n- &#x60;401&#x60; — unauthenticated.\n\n**Side effects:** inserts &#x60;servers&#x60; row, creates &#x60;repeat_invoices&#x60; + &#x60;invoices&#x60; rows, updates &#x60;assets.status&#x60; or &#x60;server_coupons.in_stock&#x60;, queues admin + customer welcome emails.\n\n**Related calls:**\n- **Prerequisite:** &#x60;buyItNowServerOrder&#x60;.\n- **Next:** &#x60;getBillingInvoice&#x60; + &#x60;initiatePayment&#x60; to pay, then poll &#x60;getServerInfo&#x60; for provisioning state.\n- **Custom build alternative:** &#x60;addServer&#x60;.\n
     */
    @isTest
    private static void placeBuyNowServerTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerPlaceBuyNowServerRequest' => ''
        };

        IntServer_Client client;
        IntServerServersApi api;
        IntServerServersBuyNowResponse response;
        IntServerServersBuyNowResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServersBuyNowResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServersBuyNowResponse.getExample();
        response = (IntServerServersBuyNowResponse) api.placeBuyNowServer(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServersBuyNowResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServersBuyNowResponse.getExample();
        response = (IntServerServersBuyNowResponse) api.placeBuyNowServer(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServersBuyNowResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServersBuyNowResponse.getExample();
        response = (IntServerServersBuyNowResponse) api.placeBuyNowServer(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServersBuyNowResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServersBuyNowResponse.getExample();
        response = (IntServerServersBuyNowResponse) api.placeBuyNowServer(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServersBuyNowResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServersBuyNowResponse.getExample();
        response = (IntServerServersBuyNowResponse) api.placeBuyNowServer(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServersBuyNowResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServersBuyNowResponse.getExample();
        response = (IntServerServersBuyNowResponse) api.placeBuyNowServer(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServersBuyNowResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServersBuyNowResponse.getExample();
        response = (IntServerServersBuyNowResponse) api.placeBuyNowServer(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServersBuyNowResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServersBuyNowResponse.getExample();
        response = (IntServerServersBuyNowResponse) api.placeBuyNowServer(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServersBuyNowResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServersBuyNowResponse.getExample();
        response = (IntServerServersBuyNowResponse) api.placeBuyNowServer(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Update reverse-DNS (PTR) hostnames on a dedicated server\&#39;s IPs
     *
     * Use to set or remove PTR records for the server\&#39;s public IPs. Path param: &#x60;id&#x60; (server_id). Body: &#x60;ips&#x60; (object mapping &#x60;\&#39;&lt;ipv4&gt;\&#39;&#x60; to desired hostname; empty string removes the PTR). Only IPs that already exist on the server\&#39;s VLANs and whose hostname differs from current are updated; each diff calls &#x60;reverse_dns($ip, $host, \&#39;set_reverse\&#39;|\&#39;remove_reverse\&#39;)&#x60;.\nReturns: &#x60;{ message, success:bool }&#x60;. &#x60;success:false&#x60; with \&#39;No valid IPs were passed or there were no changes\&#39; when nothing to update; otherwise reports update count. Errors: 404 invalid id; 401 unauth. Caveats: caller can only set PTRs for IPs they actually own; rDNS propagation is async — do not assume immediate visibility downstream.\nSibling ops: &#x60;getServerReverseDns&#x60; (read first), &#x60;getServerInfo&#x60;, VPS counterpart &#x60;postVpsReverseDns&#x60;.
     */
    @isTest
    private static void postServerReverseDnsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerReverseDnsEntries' => '',
            'id' => ''
        };

        IntServer_Client client;
        IntServerServersApi api;
        IntServerTextResponse response;
        IntServerTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.postServerReverseDns(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.postServerReverseDns(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.postServerReverseDns(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.postServerReverseDns(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.postServerReverseDns(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.postServerReverseDns(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Read IPMI chassis power status for many dedicated servers in one call
     *
     * Use when you need power status for several owned servers at once (dashboards, mass health checks). Each server is queried independently; per-server failures (invalid id, inactive service, no asset, BMC error) are reported in the same response without aborting the batch. Read-only — does NOT change power state.\nQuery: &#x60;ids&#x60; (required) — comma-separated string &#x60;?ids&#x3D;2313,2314,2315&#x60; OR repeated &#x60;ids[]&#x60; array. Duplicates de-duped; non-positive ints become per-row errors. Returns: &#x60;{ results: [ { id, asset?, text|error } ] }&#x60;. Errors: 400 \&#39;No server IDs provided.\&#39; if &#x60;ids&#x60; empty/missing; 401 unauth.\nSibling ops: &#x60;serverIpmiPowerGet&#x60; (single-server equivalent), &#x60;serverIpmiPowerPost&#x60; (DESTRUCTIVE — change power; no bulk equivalent — call per server), &#x60;getServerList&#x60; (discover ids).
     */
    @isTest
    private static void serverBulkIpmiPowerGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'ids' => 2313,2314,2315
        };

        IntServer_Client client;
        IntServerServersApi api;
        IntServerServerBulkIpmiPowerResponse response;
        IntServerServerBulkIpmiPowerResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServerBulkIpmiPowerResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServerBulkIpmiPowerResponse.getExample();
        response = (IntServerServerBulkIpmiPowerResponse) api.serverBulkIpmiPowerGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServerBulkIpmiPowerResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServerBulkIpmiPowerResponse.getExample();
        response = (IntServerServerBulkIpmiPowerResponse) api.serverBulkIpmiPowerGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServerBulkIpmiPowerResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServerBulkIpmiPowerResponse.getExample();
        response = (IntServerServerBulkIpmiPowerResponse) api.serverBulkIpmiPowerGet(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServerBulkIpmiPowerResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServerBulkIpmiPowerResponse.getExample();
        response = (IntServerServerBulkIpmiPowerResponse) api.serverBulkIpmiPowerGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServerBulkIpmiPowerResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServerBulkIpmiPowerResponse.getExample();
        response = (IntServerServerBulkIpmiPowerResponse) api.serverBulkIpmiPowerGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServerBulkIpmiPowerResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServerBulkIpmiPowerResponse.getExample();
        response = (IntServerServerBulkIpmiPowerResponse) api.serverBulkIpmiPowerGet(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServerBulkIpmiPowerResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServerBulkIpmiPowerResponse.getExample();
        response = (IntServerServerBulkIpmiPowerResponse) api.serverBulkIpmiPowerGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServerBulkIpmiPowerResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServerBulkIpmiPowerResponse.getExample();
        response = (IntServerServerBulkIpmiPowerResponse) api.serverBulkIpmiPowerGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServerBulkIpmiPowerResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServerBulkIpmiPowerResponse.getExample();
        response = (IntServerServerBulkIpmiPowerResponse) api.serverBulkIpmiPowerGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Read current IPMI Live whitelist + KVM gateway URL for a dedicated server
     *
     * Reads the active IPMI Live session for a dedicated server — the temporary whitelisted public IP, the customer-side IPMI gateway URL, and the IPMI client (read-only) credentials so the customer can open the KVM/console. Looks up the asset\&#39;s IPMI IP, the location\&#39;s IPMI group, and any active &#x60;ipmi_ips&#x60; lease (3-hour TTL). Sibling ops: &#x60;serverIpmiLivePost&#x60; (allocate whitelist slot), &#x60;serverIpmiPowerGet&#x60; / &#x60;serverIpmiPowerPost&#x60; (chassis power).\n\n**Path:** &#x60;id&#x60; (integer, required) — server_id from &#x60;getServerList&#x60;.\n\n**Body / query:** None. Optionally pass &#x60;asset&#x60; (asset_id) to target a specific asset; default is first asset.\n\n**Returns:** when an active lease exists &#x60;{ text (html), public_ip, allowed_ip, client_username, client_password }&#x60;. When no lease yet: &#x60;{ text: \&#39;Setup not yet completed\&#39; }&#x60; — then call &#x60;serverIpmiLivePost&#x60; to allocate a slot.\n\n**Auth:** Session/API key. Ownership enforced via &#x60;server_custid&#x60;.\n\n**Errors:**\n- &#x60;404&#x60; — &#x60;id&#x60; not owned, or &#x60;asset&#x60; not on this server.\n- &#x60;409&#x60; — service not &#x60;active&#x60;.\n- &#x60;200&#x60; with error text &#x60;\&#39;No IPMI IP Set\&#39;&#x60; / &#x60;\&#39;Invalid IPMI IP\&#39;&#x60; / &#x60;\&#39;Live IPMI not Available for this location.\&#39;&#x60; when the asset/location is not configured for IPMI Live.\n\n**Caveat:** returns &#x60;client_password&#x60; — never log/echo verbatim.\n\n**Related calls:**\n- **Allocate:** &#x60;serverIpmiLivePost&#x60;.\n- **Chassis power:** &#x60;serverIpmiPowerGet&#x60;, &#x60;serverIpmiPowerPost&#x60;.\n
     */
    @isTest
    private static void serverIpmiLiveGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerServersApi api;
        IntServerServerIpmiLiveInfo response;
        IntServerServerIpmiLiveInfo expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServerIpmiLiveInfo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServerIpmiLiveInfo.getExample();
        response = (IntServerServerIpmiLiveInfo) api.serverIpmiLiveGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServerIpmiLiveInfo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServerIpmiLiveInfo.getExample();
        response = (IntServerServerIpmiLiveInfo) api.serverIpmiLiveGet(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServerIpmiLiveInfo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServerIpmiLiveInfo.getExample();
        response = (IntServerServerIpmiLiveInfo) api.serverIpmiLiveGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServerIpmiLiveInfo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServerIpmiLiveInfo.getExample();
        response = (IntServerServerIpmiLiveInfo) api.serverIpmiLiveGet(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServerIpmiLiveInfo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServerIpmiLiveInfo.getExample();
        response = (IntServerServerIpmiLiveInfo) api.serverIpmiLiveGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServerIpmiLiveInfo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServerIpmiLiveInfo.getExample();
        response = (IntServerServerIpmiLiveInfo) api.serverIpmiLiveGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Whitelist an IP for IPMI Live KVM gateway access (3-hour lease)
     *
     * Allocates / refreshes an IPMI Live whitelist slot so the customer\&#39;s specified IP can reach the BMC\&#39;s KVM/console for 3 hours. Picks a free &#x60;ipmi_ips&#x60; row for the location\&#39;s &#x60;ipmi_group&#x60;, refreshes the lease if the same IP is already allocated, otherwise pushes the new whitelist via &#x60;ipmi_live_setup()&#x60;. Sibling ops: &#x60;serverIpmiLiveGet&#x60; (read current lease), &#x60;serverIpmiPowerPost&#x60; (DESTRUCTIVE — chassis power).\n\n**Path:** &#x60;id&#x60; (integer, required) — server_id.\n\n**Body fields:**\n- &#x60;ip&#x60; (string, required) — public IPv4 to whitelist.\n- &#x60;asset&#x60; (integer, optional) — asset_id; defaults to first asset on the server.\n\n**Returns:** &#x60;{ text (html), public_ip, allowed_ip, client_username, client_password }&#x60; for KVM login.\n\n**Auth:** Session/API key. Ownership enforced via &#x60;server_custid&#x60;.\n\n**Errors:**\n- &#x60;404&#x60; — &#x60;id&#x60; not owned, or &#x60;asset&#x60; not on this server.\n- &#x60;409&#x60; — service not &#x60;active&#x60;.\n- &#x60;200&#x60; with error text — &#x60;\&#39;An Invalid IP was passed.\&#39;&#x60;, &#x60;\&#39;No Live IPs are currently free for use with the IPMI Gateway. Please wait &lt;duration&gt; for the next IP to free up.\&#39;&#x60;, &#x60;\&#39;There was an error communicating with the IPMI Management server\&#39;&#x60;, &#x60;\&#39;No IPMI IP Set\&#39;&#x60; / &#x60;\&#39;Invalid IPMI IP\&#39;&#x60; / &#x60;\&#39;Live IPMI not Available for this location.\&#39;&#x60;.\n\n**Caveat:** returns IPMI client password — handle securely; whitelist exposes the BMC briefly.\n\n**Related calls:**\n- **Read current lease:** &#x60;serverIpmiLiveGet&#x60;.\n- **Power control:** &#x60;serverIpmiPowerPost&#x60;.\n
     */
    @isTest
    private static void serverIpmiLivePostTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'ip' => 'null',
            'id' => '',
            'asset' => ''
        };

        IntServer_Client client;
        IntServerServersApi api;
        IntServerServerIpmiLiveInfo response;
        IntServerServerIpmiLiveInfo expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServerIpmiLiveInfo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServerIpmiLiveInfo.getExample();
        response = (IntServerServerIpmiLiveInfo) api.serverIpmiLivePost(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServerIpmiLiveInfo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServerIpmiLiveInfo.getExample();
        response = (IntServerServerIpmiLiveInfo) api.serverIpmiLivePost(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServerIpmiLiveInfo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServerIpmiLiveInfo.getExample();
        response = (IntServerServerIpmiLiveInfo) api.serverIpmiLivePost(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServerIpmiLiveInfo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServerIpmiLiveInfo.getExample();
        response = (IntServerServerIpmiLiveInfo) api.serverIpmiLivePost(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServerIpmiLiveInfo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServerIpmiLiveInfo.getExample();
        response = (IntServerServerIpmiLiveInfo) api.serverIpmiLivePost(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServerIpmiLiveInfo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServerIpmiLiveInfo.getExample();
        response = (IntServerServerIpmiLiveInfo) api.serverIpmiLivePost(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Read IPMI chassis power status for a dedicated server (single)
     *
     * Use to check whether a server\&#39;s chassis is currently &#x60;on&#x60;/&#x60;off&#x60; via IPMI before issuing a power action. Path param: &#x60;id&#x60; (integer server_id). Optional body &#x60;asset&#x60; (asset_id — defaults to first asset). Issues &#x60;ipmitool power status&#x60; against the asset\&#39;s &#x60;ipmi_ip&#x60; using its location IPMI group/credentials.\nReturns: &#x60;{ text:\&#39;Chassis Power is on\&#39; }&#x60; (or \&#39;off\&#39;). Errors: 404 if &#x60;id&#x60; not owned by caller; 409 if service not active; \&#39;There was an error sending the IPMI command\&#39; if BMC unreachable. Caveat: BMCs occasionally rate-limit — back off on repeated errors.\nSibling ops: &#x60;serverBulkIpmiPowerGet&#x60; (preferred when polling many servers — single round-trip), &#x60;serverIpmiPowerPost&#x60; (DESTRUCTIVE — change power), &#x60;getServerInfo&#x60; (full state), &#x60;serverIpmiLiveGet&#x60; (IPMI Live KVM).
     */
    @isTest
    private static void serverIpmiPowerGetTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerServersApi api;
        IntServerTextResponse response;
        IntServerTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.serverIpmiPowerGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.serverIpmiPowerGet(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.serverIpmiPowerGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.serverIpmiPowerGet(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.serverIpmiPowerGet(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.serverIpmiPowerGet(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * DESTRUCTIVE — change chassis power state on a bare-metal server
     *
     * Sends an IPMI chassis power command (&#x60;on&#x60;, &#x60;off&#x60;, &#x60;cycle&#x60;, &#x60;reset&#x60;, &#x60;soft&#x60;) to a customer\&#39;s physical dedicated server. **DESTRUCTIVE on running hardware:** &#x60;off&#x60; / &#x60;cycle&#x60; / &#x60;reset&#x60; are forced power events that can corrupt filesystems, lose un-flushed data, or break in-flight workloads. &#x60;soft&#x60; requests an ACPI shutdown (safer when the guest OS is responsive). Always confirm intent with the operator. Sibling ops: &#x60;serverIpmiPowerGet&#x60; (read first), &#x60;serverBulkIpmiPowerGet&#x60; (status only), &#x60;serverIpmiLivePost&#x60; (KVM access).\n\n**Path:** &#x60;id&#x60; (integer, required) — server_id.\n\n**Body fields:**\n- &#x60;action&#x60; (string, required) — one of &#x60;on&#x60; / &#x60;off&#x60; / &#x60;cycle&#x60; / &#x60;reset&#x60; / &#x60;soft&#x60;.\n- &#x60;asset&#x60; (integer, optional) — asset_id; defaults to first asset on the server.\n\n**Returns:** &#x60;{ text: \&#39;Power command sent. Response: &lt;ipmi output&gt;\&#39; }&#x60;.\n\n**Auth:** Session/API key. Ownership enforced via &#x60;server_custid&#x60;.\n\n**Errors:**\n- &#x60;422&#x60; / inline error text — &#x60;Invalid Action&#x60; when &#x60;action&#x60; is not in the allowed set.\n- &#x60;404&#x60; — &#x60;id&#x60; not owned, or &#x60;asset&#x60; not on this server.\n- &#x60;409&#x60; — service not &#x60;active&#x60;.\n- &#x60;200&#x60; with error text — &#x60;\&#39;There was an error sending the IPMI command.\&#39;&#x60; when BMC is unreachable or rate-limiting.\n\n**Related calls:**\n- **Status (single / bulk):** &#x60;serverIpmiPowerGet&#x60;, &#x60;serverBulkIpmiPowerGet&#x60;.\n- **KVM console:** &#x60;serverIpmiLivePost&#x60;.\n
     */
    @isTest
    private static void serverIpmiPowerPostTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'action' => 'null',
            'id' => '',
            'asset' => ''
        };

        IntServer_Client client;
        IntServerServersApi api;
        IntServerTextResponse response;
        IntServerTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.serverIpmiPowerPost(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.serverIpmiPowerPost(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.serverIpmiPowerPost(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.serverIpmiPowerPost(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.serverIpmiPowerPost(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.serverIpmiPowerPost(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Cancel a dedicated server service at the end of the current billing cycle
     *
     * Submits a cancellation request for a dedicated server. The server is deprovisioned and recurring billing stops at the end of the current billing cycle (not an immediate refund). Path param: &#x60;id&#x60; (integer server_id, from &#x60;getServerList&#x60;). No body.\nCaveat: billing-affecting action — always confirm with the user. Hardware-attached data may be wiped on deprovisioning. Returns: &#x60;{ success:bool, text:\&#39;Servers is canceled.\&#39; }&#x60;. Errors: 404 if &#x60;id&#x60; not owned by caller; 409 if already cancelled or non-active; 401 unauth.\nSibling ops: &#x60;getServerInfo&#x60; (current status), &#x60;getServerInvoices&#x60; (outstanding charges), VPS counterpart &#x60;VPSCancel&#x60;. To re-order after cancel use &#x60;addServer&#x60; or &#x60;placeBuyNowServer&#x60;.
     */
    @isTest
    private static void serversCancelTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerServersApi api;
        IntServerServersCancel200Response response;
        IntServerServersCancel200Response expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServersCancel200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServersCancel200Response.getExample();
        response = (IntServerServersCancel200Response) api.serversCancel(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServersCancel200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServersCancel200Response.getExample();
        response = (IntServerServersCancel200Response) api.serversCancel(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServersCancel200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServersCancel200Response.getExample();
        response = (IntServerServersCancel200Response) api.serversCancel(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServersCancel200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServersCancel200Response.getExample();
        response = (IntServerServersCancel200Response) api.serversCancel(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServersCancel200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServersCancel200Response.getExample();
        response = (IntServerServersCancel200Response) api.serversCancel(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServersCancel200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServersCancel200Response.getExample();
        response = (IntServerServersCancel200Response) api.serversCancel(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Update settings on a dedicated server order (shares handler with view)
     *
     * Use to modify metadata on an existing dedicated server order. Path param: &#x60;id&#x60; (integer server_id). Currently this method shares the same handler as &#x60;getServerInfo&#x60; (&#x60;View::go()&#x60;) — no dedicated update fields are processed; treat it as deprecated/no-op pending field-specific endpoints. For hostname, password, or rDNS changes use the dedicated ops below.\nReturns: same payload shape as &#x60;getServerInfo&#x60;. Errors: 404 if &#x60;id&#x60; not owned by caller; 401 unauth.\nSibling ops: prefer &#x60;postServerReverseDns&#x60; (rDNS), &#x60;serverIpmiPowerPost&#x60; (power), &#x60;serverIpmiLivePost&#x60; (IPMI access), &#x60;serversCancel&#x60; (cancel). For new orders use &#x60;addServer&#x60; or &#x60;placeBuyNowServer&#x60;. View-only: &#x60;getServerInfo&#x60;.
     */
    @isTest
    private static void updateServerInfoTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        IntServer_Client client;
        IntServerServersApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateServerInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateServerInfo(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateServerInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateServerInfo(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerServersApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateServerInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateServerInfo(params);
        System.assertEquals(expectedResponse, response);
    }
}