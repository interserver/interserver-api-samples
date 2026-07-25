@isTest
private class IntServerSSLCertificatesApiTest {
    /**
     * Place a new SSL certificate order - creates invoice and queues issuance
     *
     * [DESTRUCTIVE] Use after putSsl returns continue&#x3D;true to commit the SSL order. Body (form): frequency (default 12 months), service_type, hostname, csr, coupon_code, plus per-type vars/extra. Re-runs validate_buy_ssl then calls place_buy_ssl which creates the service row, generates invoice (iid/iids/real_iids), and returns serviceId, serviceCost, invoice_description. CA validation is async - issuance takes minutes to hours and may require DNS or email validation post-order. If validation fails, returns continue&#x3D;false with errors and no charge. Returns 401 unauthenticated, 422 invalid input. Caveat: cert is not active until invoice paid AND CA validation completes. Poll status via getSslInfo; resend instructions via getSslWelcomeEmail.\n\nSibling ops: &#x60;getNewSsl&#x60; (catalog), &#x60;putSsl&#x60; (validate), &#x60;getSslInfo&#x60; (poll), &#x60;getSslInvoices&#x60;, &#x60;initiatePayment&#x60; (settle invoice), &#x60;getSslWelcomeEmail&#x60;, &#x60;sslCancel&#x60;.
     */
    @isTest
    private static void addSslTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerSslOrderRequest' => ''
        };

        IntServer_Client client;
        IntServerSSLCertificatesApi api;
        IntServerServiceOrderPostResponse response;
        IntServerServiceOrderPostResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerSSLCertificatesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServiceOrderPostResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServiceOrderPostResponse.getExample();
        response = (IntServerServiceOrderPostResponse) api.addSsl(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServiceOrderPostResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServiceOrderPostResponse.getExample();
        response = (IntServerServiceOrderPostResponse) api.addSsl(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerSSLCertificatesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServiceOrderPostResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServiceOrderPostResponse.getExample();
        response = (IntServerServiceOrderPostResponse) api.addSsl(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServiceOrderPostResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServiceOrderPostResponse.getExample();
        response = (IntServerServiceOrderPostResponse) api.addSsl(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerSSLCertificatesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServiceOrderPostResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServiceOrderPostResponse.getExample();
        response = (IntServerServiceOrderPostResponse) api.addSsl(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServiceOrderPostResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServiceOrderPostResponse.getExample();
        response = (IntServerServiceOrderPostResponse) api.addSsl(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get available SSL certificate packages and pricing for placing a new order
     *
     * Use before addSsl to discover which DV/OV/EV certificate types and validation tiers are buyable, plus their costs. Returns object with packageCosts (services_id keyed map of float costs) and serviceTypes (full list of SSL product offerings from the get_service_types event). No parameters required - prices are in the customer\&#39;s currency. Returns 401 if unauthenticated. Show these to the customer to pick a service_type, then call putSsl to dry-run validation (hostname, CSR, coupon) without charging, then addSsl to commit. Costs do not include taxes or applied coupons — putSsl returns the actual computed price with discounts.\n\nSibling ops: &#x60;putSsl&#x60; (validate), &#x60;addSsl&#x60; (commit), &#x60;getSslList&#x60; (existing certs), &#x60;getSslInfo&#x60; (per-cert).
     */
    @isTest
    private static void getNewSslTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        IntServer_Client client;
        IntServerSSLCertificatesApi api;
        Object response;
        Object expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerSSLCertificatesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(null);
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = null;
        response = (Object) api.getNewSsl();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerSSLCertificatesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(null);
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = null;
        response = (Object) api.getNewSsl();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerSSLCertificatesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(null);
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = null;
        response = (Object) api.getNewSsl();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get full details for one SSL certificate by id - status, expiration, links
     *
     * Use to inspect a single SSL cert after locating its id via getSslList. Path param id (integer, required) is the ssl_id; cross-account ids return 404 (get_service enforces ownership). Returns the ViewSSL detail payload: hostname, service_type, status, expiration, company, plus client_links (rewrite/reissue/install actions available to the customer). admin_links, settings, csrf are stripped from client responses. Returns 401 unauthenticated, 404 if id not owned by the session customer. Reissue/rekey/install actions surfaced in client_links are time-sensitive and may require fresh DNS validation. Pair with getSslInvoices for billing history, getSslWelcomeEmail to resend, sslCancel to terminate, updateSslInfo to modify settings.\n\nSibling ops: &#x60;updateSslInfo&#x60;, &#x60;getSslInvoices&#x60;, &#x60;getSslWelcomeEmail&#x60;, &#x60;sslCancel&#x60;, &#x60;getSslList&#x60;.
     */
    @isTest
    private static void getSslInfoTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerSSLCertificatesApi api;
        Object response;
        Object expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerSSLCertificatesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(null);
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = null;
        response = (Object) api.getSslInfo(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerSSLCertificatesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(null);
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = null;
        response = (Object) api.getSslInfo(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerSSLCertificatesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(null);
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = null;
        response = (Object) api.getSslInfo(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List all billing invoices and charges tied to one SSL certificate by id
     *
     * Use to retrieve the full invoice history for a single SSL cert - initial order, renewals, and any addon charges. Path param id (integer, required) is the ssl_id; ownership is enforced via get_service so cross-account ids return an Invalid Service error. Returns ChargeInvoiceRows: success bool plus invoices array of charge/invoice rows with iid, date, cost, status (paid/unpaid/refunded), and description. Returns 401 unauthenticated, 400 if the id resolves to no service. Useful for auditing renewals before sslCancel, reconciling payment failures, or showing the customer their billing history.\n\nSibling ops: &#x60;getSslInfo&#x60;, &#x60;sslCancel&#x60;, &#x60;getSslWelcomeEmail&#x60;, &#x60;getBillingInvoice&#x60; (per-invoice detail), &#x60;initiatePayment&#x60; (settle unpaid).
     */
    @isTest
    private static void getSslInvoicesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerSSLCertificatesApi api;
        IntServerChargeInvoiceRows response;
        IntServerChargeInvoiceRows expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerSSLCertificatesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getSslInvoices(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getSslInvoices(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerSSLCertificatesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getSslInvoices(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getSslInvoices(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerSSLCertificatesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getSslInvoices(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getSslInvoices(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List all SSL certificates on the authenticated customer account with status and hostname
     *
     * Use to enumerate every SSL certificate (DV/OV/EV) the current customer owns before drilling into a specific cert. Returns an array of SslRow objects with id, hostname, services_name (package), status (pending/active/expired/canceled), and company. No query parameters - results are auto-scoped to the session account_id. Empty array if customer has no certs. Returns 401 if unauthenticated. Pair the returned id with getSslInfo for full details, getSslInvoices for billing, getSslWelcomeEmail to resend credentials, sslCancel to terminate, or addSsl to order a new cert. Status values may be stale relative to CA - issuance/validation can take minutes to hours after order.\n\nSibling ops: &#x60;getSslInfo&#x60;, &#x60;getNewSsl&#x60; (catalog), &#x60;addSsl&#x60; (order new cert).
     */
    @isTest
    private static void getSslListTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        IntServer_Client client;
        IntServerSSLCertificatesApi api;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerSSLCertificatesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.getSslList();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerSSLCertificatesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.getSslList();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerSSLCertificatesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.getSslList();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Resend the SSL welcome email with cert credentials and install instructions
     *
     * Use when a customer lost the original welcome email containing CSR submission steps, validation links, or installation guidance for an active SSL cert. Path param id (integer, required) is the ssl_id. Triggers the module\&#39;s ssl_welcome_email function to re-send to the account\&#39;s email on file. Returns SuccessTextResponse: text&#x3D;\&#39;Welcome Email has been resent.\&#39; Returns 401 unauthenticated, 404 if id not found or not owned by session customer (\&#39;Invalid Service Passed\&#39;), 409 if cert status is not \&#39;active\&#39; (pending/canceled/expired certs do not have a welcome email to resend). Caveat: cannot change the destination email - update the account profile first if the customer\&#39;s address has changed.\n\nSibling ops: &#x60;getSslInfo&#x60; (verify status), &#x60;sslCancel&#x60; (terminate), &#x60;updateAccountInfo&#x60; (change email first).
     */
    @isTest
    private static void getSslWelcomeEmailTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerSSLCertificatesApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerSSLCertificatesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getSslWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getSslWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerSSLCertificatesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getSslWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getSslWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerSSLCertificatesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getSslWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getSslWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Validate an SSL certificate order without charging - dry-run before addSsl
     *
     * Use after getNewSsl and before addSsl to verify hostname, CSR, service_type, frequency, and coupon_code are acceptable without creating an invoice or charging the customer. Body params (form): frequency (months, default 12), service_type, hostname, csr, coupon_code, plus extra/vars per cert type. Returns continue (bool), errors (array), serviceType, serviceCost (after coupon), originalCost, hostname, couponCode. If continue&#x3D;false the errors array explains what to fix - typical issues are invalid hostname/CSR mismatch, expired coupon, or unsupported service_type. Returns 401 if unauthenticated, 422 on validation failure semantics. No state is mutated. Always run this before addSsl to prevent failed charges.\nSibling ops: &#x60;getNewSsl&#x60; (catalog), &#x60;addSsl&#x60; (commit).
     */
    @isTest
    private static void putSslTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerSslOrderRequest' => ''
        };

        IntServer_Client client;
        IntServerSSLCertificatesApi api;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerSSLCertificatesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.putSsl(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerSSLCertificatesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.putSsl(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerSSLCertificatesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.putSsl(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Cancel an SSL certificate service - stops renewals at end of billing cycle
     *
     * [DESTRUCTIVE] Use to cancel a customer-owned SSL cert. Path param id (integer, required) is the ssl_id. Cancellation marks the service for non-renewal - the cert stays valid until its current paid period ends, after which auto-billing stops. The CA-issued certificate itself is NOT revoked by this call (file a separate revocation request if needed). Returns SSLCancelResponse with success bool and text. Returns 401 unauthenticated, 404 if id not owned by session customer, error if the cancel_service hook fails. Caveat: irreversible at the billing level - re-enabling requires a new addSsl order. Verify the right cert with getSslInfo and confirm no unpaid charges via getSslInvoices first.\n\nSibling ops: &#x60;getSslInfo&#x60; (verify cert), &#x60;getSslInvoices&#x60; (check unpaid), &#x60;addSsl&#x60; (re-order).
     */
    @isTest
    private static void sslCancelTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerSSLCertificatesApi api;
        IntServerSslCancel200Response response;
        IntServerSslCancel200Response expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerSSLCertificatesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSslCancel200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSslCancel200Response.getExample();
        response = (IntServerSslCancel200Response) api.sslCancel(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSslCancel200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSslCancel200Response.getExample();
        response = (IntServerSslCancel200Response) api.sslCancel(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerSSLCertificatesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSslCancel200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSslCancel200Response.getExample();
        response = (IntServerSslCancel200Response) api.sslCancel(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSslCancel200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSslCancel200Response.getExample();
        response = (IntServerSslCancel200Response) api.sslCancel(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerSSLCertificatesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSslCancel200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSslCancel200Response.getExample();
        response = (IntServerSslCancel200Response) api.sslCancel(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSslCancel200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSslCancel200Response.getExample();
        response = (IntServerSslCancel200Response) api.sslCancel(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Update mutable settings on an existing SSL certificate order by id
     *
     * Use to modify mutable fields on a customer-owned SSL cert (e.g. contact info, renewal preferences, hostname or CSR data depending on cert state and CA rules). Path param id (string/int, required) is the ssl_id. Body params depend on the cert package and which fields the underlying service supports - inspect getSslInfo client_links first to see which actions are exposed. Returns SuccessTextResponse on success. Returns 401 unauthenticated, 404 if id not owned, 409 if cert state forbids the change (e.g. canceled or pending CA validation), 422 on invalid field values. Caveat: changes that affect the certificate identity (hostname, CSR) typically trigger a reissue with the CA which is time-sensitive and may require new DNS or email validation.\n\nSibling ops: &#x60;getSslInfo&#x60; (read), &#x60;sslCancel&#x60; (terminate), &#x60;getSslWelcomeEmail&#x60;.
     */
    @isTest
    private static void updateSslInfoTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        IntServer_Client client;
        IntServerSSLCertificatesApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerSSLCertificatesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateSslInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateSslInfo(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerSSLCertificatesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateSslInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateSslInfo(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerSSLCertificatesApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateSslInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateSslInfo(params);
        System.assertEquals(expectedResponse, response);
    }
}