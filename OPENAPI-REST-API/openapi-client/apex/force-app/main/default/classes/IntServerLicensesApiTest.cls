@isTest
private class IntServerLicensesApiTest {
    /**
     * Order a new software license and create the recurring invoice
     *
     * Places an order for a new software license (cPanel, Plesk, LiteSpeed, etc.). Re-runs validate_buy_license then place_buy_license, which creates the repeat_invoices row, the first invoice, and queues payment processing. Always call putLicenses first to surface validation errors cheaply; addLicense re-validates and returns error JSON if continue&#x3D;false. Body (form or JSON): package (services_id from getNewLicense), ip (target server IP the license binds to), frequency (billing months), coupon, comment, tos (truthy). No path params. Returns ServiceOrderPostResponse with the new service id and invoice info. Errors: 401 unauthenticated; validation or payment failures return json_error with the underlying message. Caveat: provisioning is asynchronous — poll getLicenseInfo for status.\n\nSibling ops: &#x60;getNewLicense&#x60; (catalog), &#x60;putLicenses&#x60; (validate), &#x60;getLicenseInfo&#x60; (poll status), &#x60;getLicenseInvoices&#x60;, &#x60;getBillingInvoice&#x60; + &#x60;initiatePayment&#x60; (settle invoice), &#x60;licensesCancel&#x60;.
     */
    @isTest
    private static void addLicenseTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerLicenseOrderRequest' => ''
        };

        IntServer_Client client;
        IntServerLicensesApi api;
        IntServerServiceOrderPostResponse response;
        IntServerServiceOrderPostResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerLicensesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServiceOrderPostResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServiceOrderPostResponse.getExample();
        response = (IntServerServiceOrderPostResponse) api.addLicense(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServiceOrderPostResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServiceOrderPostResponse.getExample();
        response = (IntServerServiceOrderPostResponse) api.addLicense(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerLicensesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServiceOrderPostResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServiceOrderPostResponse.getExample();
        response = (IntServerServiceOrderPostResponse) api.addLicense(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServiceOrderPostResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServiceOrderPostResponse.getExample();
        response = (IntServerServiceOrderPostResponse) api.addLicense(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerLicensesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServiceOrderPostResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServiceOrderPostResponse.getExample();
        response = (IntServerServiceOrderPostResponse) api.addLicense(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServiceOrderPostResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServiceOrderPostResponse.getExample();
        response = (IntServerServiceOrderPostResponse) api.addLicense(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get full details for one license including status, IP, and links
     *
     * Returns rich detail for a single license service: serviceInfo row (license_id, hostname, license_ip, license_status, license_type), the underlying services row (name, cost, frequency), client_links for self-service actions (change IP, cancel, resend welcome email, view invoices), and provisioning state. Use after getLicenseList to drill into a specific license, or as the canonical lookup before postLicenseChangeIp / licensesCancel / getLicenseInvoices. Path: id (license_id from list). No body. Errors: 401 unauthenticated; 404 if id is invalid or owned by a different customer. Caveat: admin_links/settings/csrf are stripped — use admin endpoints for those. Sibling endpoints: updateLicenseInfo (mutate fields), postLicenseChangeIp.
     */
    @isTest
    private static void getLicenseInfoTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerLicensesApi api;
        IntServerLicense response;
        IntServerLicense expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerLicensesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerLicense.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerLicense.getExample();
        response = (IntServerLicense) api.getLicenseInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerLicense.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerLicense.getExample();
        response = (IntServerLicense) api.getLicenseInfo(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerLicensesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerLicense.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerLicense.getExample();
        response = (IntServerLicense) api.getLicenseInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerLicense.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerLicense.getExample();
        response = (IntServerLicense) api.getLicenseInfo(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerLicensesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerLicense.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerLicense.getExample();
        response = (IntServerLicense) api.getLicenseInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerLicense.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerLicense.getExample();
        response = (IntServerLicense) api.getLicenseInfo(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List all billing invoices tied to one software license service
     *
     * Returns the full invoice history for a single license service: the original setup invoice plus every recurring renewal invoice generated by the repeat_invoices entry. Use this for billing reconciliation, to display past charges in the customer UI, or to confirm a renewal posted before contacting support. Path: id (license_id from getLicenseList). No body. Returns ChargeInvoiceRows: an array of invoice rows with id, date, amount, paid status, and payment method. Errors: 401 unauthenticated; returns success&#x3D;false with HTTP 400 if the service id is invalid or owned by a different customer. Caveat: only invoices linked via repeat_invoices_id are included — manual one-off charges from staff may not appear here. Sibling endpoints: getLicenseInfo, licensesCancel.
     */
    @isTest
    private static void getLicenseInvoicesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerLicensesApi api;
        IntServerChargeInvoiceRows response;
        IntServerChargeInvoiceRows expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerLicensesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getLicenseInvoices(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getLicenseInvoices(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerLicensesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getLicenseInvoices(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getLicenseInvoices(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerLicensesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getLicenseInvoices(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getLicenseInvoices(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List all software licenses owned by the authenticated customer
     *
     * Lists every software license service (cPanel, Plesk, LiteSpeed, CloudLinux, etc.) on the authenticated customer\&#39;s account. Use this as the entry point for license management to discover the license_id needed by every other Licenses endpoint. Returns an array of rows including license_id, hostname, bound IP, services_name (license type), recurring cost, status (pending/active/canceled), and last invoice date/paid state. No path or query parameters; the customer scope is taken from the session. Errors: 401 when the session is missing or expired. Caveats: list is unpaginated, includes canceled rows so callers should filter by status. Sibling: getLicenseInfo for full details on one license.
     */
    @isTest
    private static void getLicenseListTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        IntServer_Client client;
        IntServerLicensesApi api;
        List<IntServerLicenseRow> response;
        List<IntServerLicenseRow> expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerLicensesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<IntServerLicenseRow>{IntServerLicenseRow.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerLicenseRow>{IntServerLicenseRow.getExample()};
        response = (List<IntServerLicenseRow>) api.getLicenseList();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<IntServerLicenseRow>{IntServerLicenseRow.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerLicenseRow>{IntServerLicenseRow.getExample()};
        response = (List<IntServerLicenseRow>) api.getLicenseList();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerLicensesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<IntServerLicenseRow>{IntServerLicenseRow.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerLicenseRow>{IntServerLicenseRow.getExample()};
        response = (List<IntServerLicenseRow>) api.getLicenseList();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<IntServerLicenseRow>{IntServerLicenseRow.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerLicenseRow>{IntServerLicenseRow.getExample()};
        response = (List<IntServerLicenseRow>) api.getLicenseList();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerLicensesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<IntServerLicenseRow>{IntServerLicenseRow.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerLicenseRow>{IntServerLicenseRow.getExample()};
        response = (List<IntServerLicenseRow>) api.getLicenseList();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<IntServerLicenseRow>{IntServerLicenseRow.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerLicenseRow>{IntServerLicenseRow.getExample()};
        response = (List<IntServerLicenseRow>) api.getLicenseList();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Resend the license welcome email with the key and activation steps
     *
     * Resends the welcome email for an active license to the account email on file. The email contains the license key, the bound IP, and vendor-specific activation instructions (e.g. cPanel /usr/local/cpanel/cpkeyclt, LiteSpeed lswsctrl). Use this when the customer lost the original email or rotated mailboxes — the key itself is unchanged. Path: id (license_id). No body. Returns SuccessTextResponse with a translated confirmation. Errors: 401 unauthenticated; 404 if the id is invalid or not owned by the session customer; 409 if the license status is not active (cancelled licenses cannot resend). Caveat: delivery is best-effort — check the email log if it does not arrive. Sibling endpoints: getLicenseInfo, postLicenseChangeIp.
     */
    @isTest
    private static void getLicensesWelcomeEmailTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerLicensesApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerLicensesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getLicensesWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getLicensesWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerLicensesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getLicensesWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getLicensesWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerLicensesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getLicensesWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getLicensesWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get available license types, packages, and pricing for ordering
     *
     * Returns the catalog needed to build the license-order form: service categories (category_id-&gt;name), buyable service types (services_id, name, cost, billing frequency), package costs map keyed by services_id, the customer\&#39;s currency symbol, and per-package field metadata via get_license_fields. Use this before addLicense to render type/package pickers and to validate a chosen package_id exists and is buyable (services_hidden&#x3D;0, services_buyable&#x3D;1). No path params or body. Returns LicensesOrder schema. Errors: 401 if unauthenticated. Sibling endpoints: putLicenses (validate selection), addLicense (place order). Note: pricing is converted to the session currency; coupon/IP/frequency are evaluated in the validate step, not here.
     */
    @isTest
    private static void getNewLicenseTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        IntServer_Client client;
        IntServerLicensesApi api;
        IntServerLicensesOrder response;
        IntServerLicensesOrder expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerLicensesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerLicensesOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerLicensesOrder.getExample();
        response = (IntServerLicensesOrder) api.getNewLicense();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerLicensesOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerLicensesOrder.getExample();
        response = (IntServerLicensesOrder) api.getNewLicense();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerLicensesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerLicensesOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerLicensesOrder.getExample();
        response = (IntServerLicensesOrder) api.getNewLicense();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerLicensesOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerLicensesOrder.getExample();
        response = (IntServerLicensesOrder) api.getNewLicense();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerLicensesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerLicensesOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerLicensesOrder.getExample();
        response = (IntServerLicensesOrder) api.getNewLicense();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerLicensesOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerLicensesOrder.getExample();
        response = (IntServerLicensesOrder) api.getNewLicense();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Cancel a license service and stop future billing (irreversible)
     *
     * Cancels a license service: invokes cancel_service which marks the service canceled, deactivates the license key with the upstream vendor, and stops the recurring invoice so no further charges occur. Use carefully — once vendor-side deactivation propagates the key stops working on the bound machine. Path: id (license_id from getLicenseList). No body. Returns LicensesCancelResponse with success and a translated text message. Errors: 401 unauthenticated; the underlying handler returns success&#x3D;false JSON if the service id is invalid or cancellation fails (contact support path). Caveats: no prorated refund by default; pre-paid time is forfeited per TOS. Sibling endpoints: getLicenseInfo, getLicenseInvoices for billing history before cancelling.
     */
    @isTest
    private static void licensesCancelTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerLicensesApi api;
        IntServerLicensesCancel200Response response;
        IntServerLicensesCancel200Response expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerLicensesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerLicensesCancel200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerLicensesCancel200Response.getExample();
        response = (IntServerLicensesCancel200Response) api.licensesCancel(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerLicensesCancel200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerLicensesCancel200Response.getExample();
        response = (IntServerLicensesCancel200Response) api.licensesCancel(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerLicensesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerLicensesCancel200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerLicensesCancel200Response.getExample();
        response = (IntServerLicensesCancel200Response) api.licensesCancel(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerLicensesCancel200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerLicensesCancel200Response.getExample();
        response = (IntServerLicensesCancel200Response) api.licensesCancel(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerLicensesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerLicensesCancel200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerLicensesCancel200Response.getExample();
        response = (IntServerLicensesCancel200Response) api.licensesCancel(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerLicensesCancel200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerLicensesCancel200Response.getExample();
        response = (IntServerLicensesCancel200Response) api.licensesCancel(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Rebind a license to a new IP address (may incur a vendor fee)
     *
     * Changes the IP address that the license is bound to and triggers re-issuance with the upstream vendor (cPanel store, LiteSpeed key server, Plesk, etc.). The service must be active. Use getLicenseInfo first to read the current license_ip, then submit the new IP. Path: id (license_id). Body (JSON or multipart): IpObject with the new ip field. Returns SuccessTextResponse on success. Errors: 401 unauthenticated; 404 invalid id or not owned; 409 if status !&#x3D; active; 422-style failures from the vendor are returned via json_error with the upstream status_text. Caveats: many vendors charge a per-change fee and rate-limit changes (e.g. cPanel allows limited free changes per period); the new IP must be reachable for license verification. Sibling: updateLicenseInfo.
     */
    @isTest
    private static void postLicenseChangeIpTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerIpObject' => '',
            'id' => ''
        };

        IntServer_Client client;
        IntServerLicensesApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerLicensesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.postLicenseChangeIp(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.postLicenseChangeIp(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerLicensesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.postLicenseChangeIp(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.postLicenseChangeIp(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerLicensesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.postLicenseChangeIp(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.postLicenseChangeIp(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Validate a software license order before placing it (dry run preview)
     *
     * Dry-runs validate_buy_license against the same payload addLicense will accept, returning a structured result with continue&#x3D;true/false plus errors[], normalized package, ip, service_cost, original_cost, coupon_code, custid, currency and service_extra. Always call this before addLicense to surface package/IP/coupon/TOS issues without creating an invoice. Body fields (form or JSON): package (services_id), ip, frequency (billing cycle months), coupon, comment, tos. No path params. Returns the validation object. Errors: 401 unauthenticated; 422-style errors are returned inside the body with continue&#x3D;false rather than as HTTP errors. Caveat: a valid PUT does not reserve inventory; addLicense re-validates. Sibling: addLicense, getNewLicense.
     */
    @isTest
    private static void putLicensesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerLicenseOrderRequest' => ''
        };

        IntServer_Client client;
        IntServerLicensesApi api;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerLicensesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.putLicenses(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerLicensesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.putLicenses(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerLicensesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.putLicenses(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Update mutable fields on a license service (e.g. assigned IP)
     *
     * Updates settings on an existing license service. The primary mutable field is the bound IP, but the endpoint shares routing with View::go so other future fields flow through here. For IP changes prefer postLicenseChangeIp which has explicit semantics and triggers vendor rebinding. Path: id (license_id). Body: fields to update (form or JSON); shape varies by license type. Returns SuccessTextResponse. Errors: 401 unauthenticated; 404 if id is invalid or not owned; 409 if license is not active. Caveats: vendor-side propagation (cPanel store, LiteSpeed key server, etc.) is asynchronous; some IP/hostname changes incur a fee per vendor policy. Sibling: getLicenseInfo (read), postLicenseChangeIp (dedicated).
     */
    @isTest
    private static void updateLicenseInfoTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        IntServer_Client client;
        IntServerLicensesApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerLicensesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateLicenseInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateLicenseInfo(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerLicensesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateLicenseInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateLicenseInfo(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerLicensesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateLicenseInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateLicenseInfo(params);
        System.assertEquals(expectedResponse, response);
    }
}