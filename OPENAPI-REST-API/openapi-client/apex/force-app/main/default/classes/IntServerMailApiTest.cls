@isTest
private class IntServerMailApiTest {
    /**
     * Place a new Mail Baby order, generate invoice, and queue provisioning
     *
     * Step 3 of the Mail Baby order flow. Revalidates via &#x60;validate_buy_mail()&#x60;, then calls &#x60;place_buy_mail()&#x60; to create a &#x60;Repeat_Invoice&#x60; recurring billing row, an initial &#x60;invoices&#x60; row, and a &#x60;mail&#x60; service record in pending status. SMTP credentials become active once the activation worker runs the welcome email (after the invoice is paid). **Real money** — call &#x60;putMail&#x60; first. Sibling ops: &#x60;getNewMail&#x60;, &#x60;putMail&#x60;, &#x60;getMailInfo&#x60;, &#x60;initiatePayment&#x60;.\n\n**Body fields:**\n- &#x60;serviceType&#x60; (integer, required) — plan id from &#x60;getNewMail&#x60;.\n- &#x60;coupon&#x60; (string, optional).\n- &#x60;comment&#x60; (string, optional) — saved on the order row.\n\n**Returns** (on success): &#x60;{continue: true, total_cost, iid, iids, real_iids, serviceId (new mail_id), invoice_description, cj_params}&#x60; — pass &#x60;real_iids&#x60; to &#x60;initiatePayment&#x60;. On validation failure: &#x60;{continue: false, errors: [...]}&#x60; with HTTP 200.\n\n**Side effects:**\n- Inserts &#x60;mail&#x60; service row in &#x60;pending&#x60; status.\n- Inserts &#x60;repeat_invoices&#x60; + &#x60;invoices&#x60; rows.\n\n**Auth:** Session/API key.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n\n**Related calls:**\n- **Pay:** &#x60;initiatePayment&#x60; with &#x60;real_iids&#x60;.\n- **Confirm activation:** &#x60;getMailInfo&#x60; (poll until &#x60;mail_status&#x3D;&#x3D;\&#39;active\&#39;&#x60;).\n- **Resend credentials:** &#x60;getMailWelcomeEmail&#x60;.\n\n**Full ordering happy path:**\n&#x60;&#x60;&#x60;text\nGET /mail/order                                    -&gt; catalog (getNewMail)\nPUT /mail/order { serviceType, coupon? }           -&gt; quote (putMail)\nPOST /mail/order { serviceType, coupon?, comment? } -&gt; { serviceId, real_iids }\nGET /billing/pay/cc/{real_iids[0]}                 -&gt; pay (initiatePayment)\nGET /mail/{serviceId}                              -&gt; poll until mail_status&#x3D;&#x3D;\&#39;active\&#39;\n&#x60;&#x60;&#x60;\n
     */
    @isTest
    private static void addMailTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerMailOrderRequest' => ''
        };

        IntServer_Client client;
        IntServerMailApi api;
        IntServerServiceOrderPostResponse response;
        IntServerServiceOrderPostResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServiceOrderPostResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServiceOrderPostResponse.getExample();
        response = (IntServerServiceOrderPostResponse) api.addMail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServiceOrderPostResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServiceOrderPostResponse.getExample();
        response = (IntServerServiceOrderPostResponse) api.addMail(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServiceOrderPostResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServiceOrderPostResponse.getExample();
        response = (IntServerServiceOrderPostResponse) api.addMail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServiceOrderPostResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServiceOrderPostResponse.getExample();
        response = (IntServerServiceOrderPostResponse) api.addMail(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServiceOrderPostResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServiceOrderPostResponse.getExample();
        response = (IntServerServiceOrderPostResponse) api.addMail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServiceOrderPostResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServiceOrderPostResponse.getExample();
        response = (IntServerServiceOrderPostResponse) api.addMail(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Create a new deny rule to auto-block matching submissions
     *
     * Inserts a new &#x60;mail_spam&#x60; row scoped to this service\&#39;s &#x60;mail_username&#x60; so the relay drops matching submissions. Sibling ops: &#x60;getRules&#x60;, &#x60;updateRule&#x60;, &#x60;deleteRule&#x60;.\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.\n\n**Body fields (schema &#x60;DenyRuleNew&#x60;):**\n- &#x60;type&#x60; (string, required) — &#x60;domain&#x60; / &#x60;email&#x60; / &#x60;startswith&#x60; / &#x60;destination&#x60;.\n- &#x60;data&#x60; (string, required) — literal value matched; validation: no quotes, valid domain for &#x60;type&#x3D;domain&#x60;, valid email for &#x60;type&#x3D;email&#x60;, &#x60;[A-Z0-9+_.-]+&#x60; for &#x60;startswith&#x60;.\n\n**Returns:** &#x60;&quot;Spam Block Added&quot;&#x60;.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:** field-level errors on validation failure, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;.\n
     */
    @isTest
    private static void addRuleTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerDenyRuleNew' => {"user":"mb20682","type":"email","data":"domeinwo@server.guesshost.net"},
            'id' => ''
        };

        IntServer_Client client;
        IntServerMailApi api;
        IntServerGenericResponse response;
        IntServerGenericResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.addRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.addRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.addRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.addRule(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.addRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.addRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.addRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.addRule(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.addRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.addRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.addRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.addRule(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Create a new Mail Baby alert for delivery, bounce, or quota events
     *
     * Inserts a new alert row via the &#x60;Alert&#x60; ORM. The new &#x60;alert_id&#x60; is retrievable via &#x60;getMailAlerts&#x60;. Sibling ops: &#x60;getMailAlerts&#x60;, &#x60;updateMailAlert&#x60;, &#x60;deleteMailAlert&#x60;.\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.\n\n**Body fields (schema &#x60;MailAlertRequest&#x60;):**\n- &#x60;type&#x60; (string, required).\n- &#x60;value&#x60; (string/numeric, required) — threshold.\n- &#x60;to&#x60; (string, required) — notification email; validated via &#x60;FILTER_VALIDATE_EMAIL&#x60;.\n- &#x60;enabled&#x60; (bool, optional).\n\n**Returns:** &#x60;SuccessTextResponse&#x60;.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:** field-level errors for missing/invalid body, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;.\n
     */
    @isTest
    private static void createMailAlertTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerMailAlertRequest' => '',
            'id' => ''
        };

        IntServer_Client client;
        IntServerMailApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.createMailAlert(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.createMailAlert(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.createMailAlert(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.createMailAlert(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.createMailAlert(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.createMailAlert(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Delete a Mail Baby alert by alert_id (hard delete — no recovery)
     *
     * Hard-deletes a single alert row. Handler verifies the alert belongs to this service+module before deleting. **Irreversible** — no history is preserved; recreate via &#x60;createMailAlert&#x60; if needed. Sibling ops: &#x60;getMailAlerts&#x60;, &#x60;createMailAlert&#x60;, &#x60;updateMailAlert&#x60;.\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.\n\n**Body fields:**\n- &#x60;alert_id&#x60; (integer, required) — from &#x60;getMailAlerts&#x60;.\n\n**Returns:** &#x60;SuccessTextResponse&#x60;.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:** &#x60;Invalid alert!&#x60; (alert not owned), &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;.\n
     */
    @isTest
    private static void deleteMailAlertTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerDeleteMailAlertRequest' => '',
            'id' => ''
        };

        IntServer_Client client;
        IntServerMailApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.deleteMailAlert(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.deleteMailAlert(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.deleteMailAlert(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.deleteMailAlert(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.deleteMailAlert(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.deleteMailAlert(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Delete a Mail Baby deny rule by rule ID (hard delete — no recovery)
     *
     * Hard-deletes a single &#x60;mail_spam&#x60; row scoped to this service\&#39;s &#x60;mail_username&#x60;. **Irreversible** — no audit copy preserved. Query filter &#x60;id&#x3D;{rule} AND user&#x3D;\&#39;{mail_username}\&#39;&#x60; prevents cross-tenant deletes; passing a &#x60;rule&#x60; belonging to a different mail order is silently a no-op (still returns success). Sibling ops: &#x60;getRules&#x60;, &#x60;addRule&#x60;, &#x60;updateRule&#x60;.\n\n**Path params:**\n- &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.\n- &#x60;rule&#x60; (string, required) — rule id from &#x60;getRules&#x60;.\n\n**Returns:** &#x60;&quot;Block deleted successfully.&quot;&#x60;.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:** &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;.\n
     */
    @isTest
    private static void deleteRuleTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => '',
            'rule' => 34
        };

        IntServer_Client client;
        IntServerMailApi api;
        IntServerGenericResponse response;
        IntServerGenericResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.deleteRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.deleteRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.deleteRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.deleteRule(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.deleteRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.deleteRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.deleteRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.deleteRule(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.deleteRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.deleteRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.deleteRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.deleteRule(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Delist a sender email from rspamd / mailchannels / mailbaby block lists
     *
     * Removes block rows for the supplied email across the three reputation stores: &#x60;rspamd&#x60; (by &#x60;fromemail&#x60;), &#x60;mailchannels&#x60; (by &#x60;email&#x60;), &#x60;mailbaby&#x60; (by &#x60;emailfrom&#x60;). Functionally equivalent to &#x60;postMailDelist&#x60; but uses &#x60;email&#x60; parameter naming and returns 400 (not error JSON) for an invalid address. Sibling ops: &#x60;getMailBlocks&#x60;, &#x60;getMailDelist&#x60;, &#x60;postMailDelist&#x60;.\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.\n\n**Body fields (schema &#x60;EmailAddress&#x60;):**\n- &#x60;email&#x60; (string, required) — sender address; validated via &#x60;FILTER_VALIDATE_EMAIL&#x60;.\n\n**Returns:** &#x60;{status: &quot;ok&quot;, text: &quot;Email \&#39;...\&#39; removed from block list&quot;}&#x60;.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:** &#x60;400&#x60; invalid email, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;.\n
     */
    @isTest
    private static void delistBlockTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => '',
            'email' => 'null'
        };

        IntServer_Client client;
        IntServerMailApi api;
        IntServerGenericResponse response;
        IntServerGenericResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.delistBlock(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.delistBlock(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.delistBlock(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.delistBlock(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.delistBlock(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.delistBlock(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.delistBlock(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.delistBlock(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.delistBlock(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.delistBlock(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.delistBlock(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.delistBlock(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List configured delivery/bounce/quota alerts for one Mail Baby service
     *
     * Returns every alert row from &#x60;alerts&#x60; matching this service. Each row carries &#x60;alert_id&#x60; (use with PUT/DELETE), &#x60;alert_type&#x60;, &#x60;alert_value&#x60; (threshold), &#x60;alert_to&#x60; (notification email), &#x60;alert_enabled&#x60;, and timestamps. Sibling ops: &#x60;createMailAlert&#x60;, &#x60;updateMailAlert&#x60;, &#x60;deleteMailAlert&#x60;.\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.\n\n**Returns** (schema &#x60;MailAlertsResponse&#x60;): array of alert rows.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:** &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;.\n
     */
    @isTest
    private static void getMailAlertsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerMailApi api;
        IntServerMailAlertsResponse response;
        IntServerMailAlertsResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerMailAlertsResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailAlertsResponse.getExample();
        response = (IntServerMailAlertsResponse) api.getMailAlerts(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerMailAlertsResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailAlertsResponse.getExample();
        response = (IntServerMailAlertsResponse) api.getMailAlerts(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerMailAlertsResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailAlertsResponse.getExample();
        response = (IntServerMailAlertsResponse) api.getMailAlerts(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerMailAlertsResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailAlertsResponse.getExample();
        response = (IntServerMailAlertsResponse) api.getMailAlerts(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerMailAlertsResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailAlertsResponse.getExample();
        response = (IntServerMailAlertsResponse) api.getMailAlerts(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerMailAlertsResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailAlertsResponse.getExample();
        response = (IntServerMailAlertsResponse) api.getMailAlerts(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List recent local-blocklist hits and spam-trap captures for the mail user
     *
     * Returns relay-side block events for the SMTP user behind &#x60;mail_id&#x60; — the last 24 hours of &#x60;LOCAL_BL_RCPT&#x60; and &#x60;MBTRAP&#x60; rspamd hits, plus a 3-day window of suspicious-subject hits (credential-leak heuristic firing on subjects containing &#x60;@&#x60; / &#x60;smtp&#x60; / &#x60;socks5&#x60; / &#x60;socks4&#x60; more than 4 times). Use the &#x60;from&#x60; value with &#x60;delistBlock&#x60; or &#x60;postMailDelist&#x60; to clear a block. Sibling ops: &#x60;delistBlock&#x60;, &#x60;getMailDelist&#x60;.\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.\n\n**Returns** (schema &#x60;MailBlocks&#x60;):\n- &#x60;local&#x60; (array) — rspamd &#x60;LOCAL_BL_RCPT&#x60; hits: &#x60;{date, from, messageId, subject, to}&#x60;.\n- &#x60;mbtrap&#x60; (array) — spam-trap captures (&#x60;MBTRAP&#x60; symbol): same shape.\n- &#x60;subject&#x60; (array) — senders flagged by subject-line heuristic: &#x60;{from, subject}&#x60;.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n- &#x60;404&#x60; — &#x60;id&#x60; not owned by caller.\n- &#x60;409&#x60; — &#x60;mail_status !&#x3D; &quot;active&quot;&#x60;.\n\n**Related calls:**\n- **Clear a block:** &#x60;delistBlock&#x60; (POST &#x60;/mail/{id}/blocks/delete&#x60;).\n- **Broader delist UI:** &#x60;getMailDelist&#x60;, &#x60;postMailDelist&#x60;.\n
     */
    @isTest
    private static void getMailBlocksTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerMailApi api;
        IntServerMailBlocks response;
        IntServerMailBlocks expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerMailBlocks.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailBlocks.getExample();
        response = (IntServerMailBlocks) api.getMailBlocks(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerMailBlocks.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailBlocks.getExample();
        response = (IntServerMailBlocks) api.getMailBlocks(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerMailBlocks.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailBlocks.getExample();
        response = (IntServerMailBlocks) api.getMailBlocks(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerMailBlocks.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailBlocks.getExample();
        response = (IntServerMailBlocks) api.getMailBlocks(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerMailBlocks.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailBlocks.getExample();
        response = (IntServerMailBlocks) api.getMailBlocks(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerMailBlocks.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailBlocks.getExample();
        response = (IntServerMailBlocks) api.getMailBlocks(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerMailBlocks.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailBlocks.getExample();
        response = (IntServerMailBlocks) api.getMailBlocks(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerMailBlocks.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailBlocks.getExample();
        response = (IntServerMailBlocks) api.getMailBlocks(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerMailBlocks.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailBlocks.getExample();
        response = (IntServerMailBlocks) api.getMailBlocks(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Read blocklist diagnostics and find senders eligible for delisting
     *
     * Returns a richer diagnostic snapshot than &#x60;getMailBlocks&#x60; — intended for the delist UI. Use any &#x60;SMTPFrom&#x60;/&#x60;from&#x60; value as the &#x60;unblock&#x60; field for &#x60;postMailDelist&#x60;. Sibling ops: &#x60;postMailDelist&#x60;, &#x60;getMailBlocks&#x60;, &#x60;delistBlock&#x60;.\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.\n\n**Returns** (schema &#x60;MailDelistResponse&#x60;):\n- &#x60;id&#x60; (integer) — &#x60;mail_id&#x60; echo.\n- &#x60;local&#x60;, &#x60;mbtrap&#x60; (array) — last 24h rspamd hits with capitalized keys (&#x60;Date&#x60;, &#x60;SMTPFrom&#x60;, &#x60;MessageId&#x60;, &#x60;Subject&#x60;, &#x60;MimeRecipients&#x60;).\n- &#x60;subject&#x60; (array) — credential-leak-heuristic firings (3-day window).\n- &#x60;manual&#x60; (array) — manually added blocks.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:** &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;.\n
     */
    @isTest
    private static void getMailDelistTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerMailApi api;
        IntServerMailDelistResponse response;
        IntServerMailDelistResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerMailDelistResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailDelistResponse.getExample();
        response = (IntServerMailDelistResponse) api.getMailDelist(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerMailDelistResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailDelistResponse.getExample();
        response = (IntServerMailDelistResponse) api.getMailDelist(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerMailDelistResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailDelistResponse.getExample();
        response = (IntServerMailDelistResponse) api.getMailDelist(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerMailDelistResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailDelistResponse.getExample();
        response = (IntServerMailDelistResponse) api.getMailDelist(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerMailDelistResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailDelistResponse.getExample();
        response = (IntServerMailDelistResponse) api.getMailDelist(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerMailDelistResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailDelistResponse.getExample();
        response = (IntServerMailDelistResponse) api.getMailDelist(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Read delivered vs bounced totals broken down by sender (or by recipient domain)
     *
     * Returns deliverability analytics from &#x60;MailDeliveryStats&#x60; (Dragonfly cache) for the SMTP user behind &#x60;mail_id&#x60;. Default pivot is by sender; pass &#x60;?filter_domain&#x3D;1&#x60; to pivot by recipient domain for the current year instead. Use to drive analytics dashboards. Sibling ops: &#x60;getStats&#x60;, &#x60;viewMailLog&#x60;, &#x60;getMailBlocks&#x60;, &#x60;getMailDelist&#x60;.\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.\n\n**Query params:**\n- &#x60;filter_domain&#x60; (string &#x60;1&#x60;, optional) — pivot by recipient domain instead of sender.\n\n**Returns** (schema &#x60;MailDeliverabilityResponse&#x60;):\n- &#x60;stat&#x60;: &#x60;{delivered, bounced, percent}&#x60; — totals and bounce ratio.\n- &#x60;header&#x60; (string), &#x60;col1&#x60; (string) — table headers.\n- &#x60;table_data&#x60; (array) — rows of &#x60;[&lt;sender-or-domain&gt;, bounced, delivered, bouncePercent]&#x60;.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:** &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;.\n
     */
    @isTest
    private static void getMailDeliverabilityTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerMailApi api;
        IntServerMailDeliverabilityResponse response;
        IntServerMailDeliverabilityResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerMailDeliverabilityResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailDeliverabilityResponse.getExample();
        response = (IntServerMailDeliverabilityResponse) api.getMailDeliverability(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerMailDeliverabilityResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailDeliverabilityResponse.getExample();
        response = (IntServerMailDeliverabilityResponse) api.getMailDeliverability(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerMailDeliverabilityResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailDeliverabilityResponse.getExample();
        response = (IntServerMailDeliverabilityResponse) api.getMailDeliverability(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerMailDeliverabilityResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailDeliverabilityResponse.getExample();
        response = (IntServerMailDeliverabilityResponse) api.getMailDeliverability(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerMailDeliverabilityResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailDeliverabilityResponse.getExample();
        response = (IntServerMailDeliverabilityResponse) api.getMailDeliverability(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerMailDeliverabilityResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailDeliverabilityResponse.getExample();
        response = (IntServerMailDeliverabilityResponse) api.getMailDeliverability(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Read full detail for one Mail Baby service including SMTP credentials
     *
     * Returns the full &#x60;ViewMail&#x60; payload for one Mail Baby service — &#x60;serviceInfo&#x60;, &#x60;serviceType&#x60;, and &#x60;client_links&#x60; (URLs rewritten to API paths, e.g. &#x60;view_mail_log&#x60; → &#x60;log&#x60;). Admin fields (&#x60;admin_links&#x60;, &#x60;settings&#x60;, &#x60;csrf&#x60;) stripped. Use to render a service dashboard or retrieve SMTP host/username for MTA configuration. Sibling ops: &#x60;getMailList&#x60;, &#x60;updateMailInfo&#x60;, &#x60;mailCancel&#x60;, &#x60;resetMailPassword&#x60;, &#x60;getMailWelcomeEmail&#x60;.\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.\n\n**Returns** (schema &#x60;MailSchema&#x60;):\n- &#x60;serviceInfo&#x60; — &#x60;mail_id&#x60;, &#x60;mail_username&#x60; (e.g. &#x60;mb1234&#x60;), &#x60;mail_status&#x60;, &#x60;mail_invoice&#x60;, &#x60;mail_custid&#x60;, dates, currency.\n- &#x60;serviceType&#x60; — plan row (&#x60;services_ourcost&#x60; stripped).\n- &#x60;client_links&#x60; (array) — action URLs (log, alerts, blocks, etc.).\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n- &#x60;404&#x60; — &#x60;id&#x60; not owned by caller.\n\n**Related calls:**\n- **Send:** &#x60;sendMail&#x60; / &#x60;sendAdvMail&#x60;.\n- **Rotate password:** &#x60;resetMailPassword&#x60;.\n- **Reset credentials:** &#x60;getMailWelcomeEmail&#x60;.\n- **Cancel:** &#x60;mailCancel&#x60;.\n
     */
    @isTest
    private static void getMailInfoTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerMailApi api;
        IntServerMailSchema response;
        IntServerMailSchema expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerMailSchema.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailSchema.getExample();
        response = (IntServerMailSchema) api.getMailInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerMailSchema.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailSchema.getExample();
        response = (IntServerMailSchema) api.getMailInfo(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerMailSchema.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailSchema.getExample();
        response = (IntServerMailSchema) api.getMailInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerMailSchema.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailSchema.getExample();
        response = (IntServerMailSchema) api.getMailInfo(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerMailSchema.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailSchema.getExample();
        response = (IntServerMailSchema) api.getMailInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerMailSchema.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailSchema.getExample();
        response = (IntServerMailSchema) api.getMailInfo(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List billing invoices linked to this Mail Baby service
     *
     * Returns every invoice associated with this &#x60;mail_id&#x60; via the shared &#x60;InvoicesList&#x60; workflow. Use to render per-service billing history or find unpaid invoices to pay via &#x60;initiatePayment&#x60;. Sibling ops: &#x60;getBillingInvoice&#x60;, &#x60;initiatePayment&#x60;, &#x60;addMail&#x60;, &#x60;mailCancel&#x60;.\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.\n\n**Returns:** &#x60;ChargeInvoiceRows&#x60; — array of &#x60;{id, amount, currency, paid, date, due_date, description, module: &quot;mail&quot;, service}&#x60;.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:** &#x60;401&#x60;, &#x60;404 Invalid Service&#x60;.\n
     */
    @isTest
    private static void getMailInvoicesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerMailApi api;
        IntServerChargeInvoiceRows response;
        IntServerChargeInvoiceRows expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getMailInvoices(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getMailInvoices(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getMailInvoices(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getMailInvoices(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getMailInvoices(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getMailInvoices(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List every Mail Baby SMTP relay service on the account
     *
     * Enumerates every Mail Baby SMTP relay service owned by the authenticated customer. Canonical entry point for finding a &#x60;mail_id&#x60; to pass to other Mail endpoints. Filtered server-side by &#x60;mail_custid&#x60;. Sibling ops: &#x60;getMailInfo&#x60;, &#x60;getStats&#x60;, &#x60;viewMailLog&#x60;, &#x60;getMailDeliverability&#x60;, &#x60;getMailBlocks&#x60;, &#x60;getMailInvoices&#x60;, &#x60;addMail&#x60;.\n\n**Path/Query/Body:** None.\n\n**Returns:** Array of &#x60;MailRow&#x60;:\n- &#x60;mail_id&#x60; (integer) — canonical id.\n- &#x60;mail_username&#x60; (string) — SMTP username (e.g. &#x60;mb1234&#x60;).\n- &#x60;mail_status&#x60; (string enum) — &#x60;active&#x60; / &#x60;pending&#x60; / &#x60;canceled&#x60; / &#x60;suspended&#x60;.\n- &#x60;services_name&#x60; (string) — plan label.\n- &#x60;repeat_invoices_cost&#x60; (decimal string) — recurring cost.\n\n**Auth:** Session/API key.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n\n**Related calls:**\n- **Per-service detail:** &#x60;getMailInfo&#x60;.\n- **Send mail:** &#x60;sendMail&#x60; / &#x60;sendAdvMail&#x60;.\n- **Reputation:** &#x60;getMailDeliverability&#x60; / &#x60;getMailBlocks&#x60; / &#x60;getMailDelist&#x60;.\n- **Order a new service:** &#x60;getNewMail&#x60; → &#x60;putMail&#x60; → &#x60;addMail&#x60;.\n
     */
    @isTest
    private static void getMailListTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        IntServer_Client client;
        IntServerMailApi api;
        List<IntServerMailRow> response;
        List<IntServerMailRow> expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<IntServerMailRow>{IntServerMailRow.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerMailRow>{IntServerMailRow.getExample()};
        response = (List<IntServerMailRow>) api.getMailList();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<IntServerMailRow>{IntServerMailRow.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerMailRow>{IntServerMailRow.getExample()};
        response = (List<IntServerMailRow>) api.getMailList();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<IntServerMailRow>{IntServerMailRow.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerMailRow>{IntServerMailRow.getExample()};
        response = (List<IntServerMailRow>) api.getMailList();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<IntServerMailRow>{IntServerMailRow.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerMailRow>{IntServerMailRow.getExample()};
        response = (List<IntServerMailRow>) api.getMailList();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<IntServerMailRow>{IntServerMailRow.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerMailRow>{IntServerMailRow.getExample()};
        response = (List<IntServerMailRow>) api.getMailList();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<IntServerMailRow>{IntServerMailRow.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerMailRow>{IntServerMailRow.getExample()};
        response = (List<IntServerMailRow>) api.getMailList();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Resend the Mail Baby welcome email with SMTP credentials and setup info
     *
     * Re-runs the &#x60;mail_welcome_email&#x60; plugin function — composes and sends the standard welcome email (SMTP host &#x60;relay.mailbaby.net&#x60;, port, username &#x60;mb{mail_id}&#x60;, current password, configuration tips) to the account-on-file. Use after &#x60;resetMailPassword&#x60; to redeliver the rotated credential, or when a customer reports losing the original setup email. Idempotent. Sibling ops: &#x60;resetMailPassword&#x60;, &#x60;getMailInfo&#x60;. Cross-module welcome-email endpoints: &#x60;getVpsWelcomeEmail&#x60;, &#x60;getWebsitesWelcomeEmail&#x60;, &#x60;getDomainsWelcomeEmail&#x60;.\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.\n\n**Returns:** &#x60;{text: &quot;Welcome Email has been resent.&quot;}&#x60;.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:** &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;.\n
     */
    @isTest
    private static void getMailWelcomeEmailTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerMailApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getMailWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getMailWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getMailWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getMailWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getMailWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getMailWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Read the Mail Baby order catalog — plans, package costs, service-type metadata
     *
     * Step 1 of the Mail Baby order flow. Returns the catalog used to bootstrap an order form: &#x60;packageCosts&#x60; keyed by &#x60;services_id&#x60; (only buyable services where &#x60;services_buyable&#x3D;1&#x60;) and the full &#x60;serviceTypes&#x60; map. Read-only. Pricing is normalized to the customer\&#39;s currency via &#x60;getCurrency()&#x60;. Sibling ops: &#x60;putMail&#x60;, &#x60;addMail&#x60;, &#x60;getMailList&#x60;.\n\n**Path/Query/Body:** None.\n\n**Returns** (schema &#x60;MailOrder&#x60;):\n- &#x60;packageCosts&#x60; (object) — &#x60;{&lt;services_id&gt;: &lt;cost&gt;}&#x60; per buyable plan.\n- &#x60;serviceTypes&#x60; (object) — full service-types registry (plan metadata).\n\n**Auth:** Session/API key.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n\n**Related calls:**\n- **Next:** &#x60;putMail&#x60; (validate + quote — no charge), &#x60;addMail&#x60; (place order).\n
     */
    @isTest
    private static void getNewMailTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        IntServer_Client client;
        IntServerMailApi api;
        IntServerMailOrder response;
        IntServerMailOrder expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerMailOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailOrder.getExample();
        response = (IntServerMailOrder) api.getNewMail();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerMailOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailOrder.getExample();
        response = (IntServerMailOrder) api.getNewMail();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerMailOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailOrder.getExample();
        response = (IntServerMailOrder) api.getNewMail();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerMailOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailOrder.getExample();
        response = (IntServerMailOrder) api.getNewMail();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerMailOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailOrder.getExample();
        response = (IntServerMailOrder) api.getNewMail();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerMailOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailOrder.getExample();
        response = (IntServerMailOrder) api.getNewMail();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List configured deny rules (sender/recipient blocks) for a Mail Baby service
     *
     * Returns every &#x60;mail_spam&#x60; row scoped to this service\&#39;s &#x60;mail_username&#x60; — local sender/recipient block rules the customer has configured. Sibling ops: &#x60;addRule&#x60;, &#x60;updateRule&#x60;, &#x60;deleteRule&#x60;.\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.\n\n**Returns:** Array of &#x60;DenyRuleRecord&#x60; — &#x60;{id, user, type, data, created}&#x60;. &#x60;type&#x60; values:\n- &#x60;domain&#x60; — block by sender domain.\n- &#x60;email&#x60; — block by exact sender email.\n- &#x60;startswith&#x60; — block when sender local-part starts with a string.\n- &#x60;destination&#x60; — block by recipient email.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:** &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;.\n
     */
    @isTest
    private static void getRulesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerMailApi api;
        List<IntServerDenyRuleRecord> response;
        List<IntServerDenyRuleRecord> expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<IntServerDenyRuleRecord>{IntServerDenyRuleRecord.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerDenyRuleRecord>{IntServerDenyRuleRecord.getExample()};
        response = (List<IntServerDenyRuleRecord>) api.getRules(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<IntServerDenyRuleRecord>{IntServerDenyRuleRecord.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerDenyRuleRecord>{IntServerDenyRuleRecord.getExample()};
        response = (List<IntServerDenyRuleRecord>) api.getRules(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<IntServerDenyRuleRecord>{IntServerDenyRuleRecord.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerDenyRuleRecord>{IntServerDenyRuleRecord.getExample()};
        response = (List<IntServerDenyRuleRecord>) api.getRules(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<IntServerDenyRuleRecord>{IntServerDenyRuleRecord.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerDenyRuleRecord>{IntServerDenyRuleRecord.getExample()};
        response = (List<IntServerDenyRuleRecord>) api.getRules(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<IntServerDenyRuleRecord>{IntServerDenyRuleRecord.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerDenyRuleRecord>{IntServerDenyRuleRecord.getExample()};
        response = (List<IntServerDenyRuleRecord>) api.getRules(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<IntServerDenyRuleRecord>{IntServerDenyRuleRecord.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerDenyRuleRecord>{IntServerDenyRuleRecord.getExample()};
        response = (List<IntServerDenyRuleRecord>) api.getRules(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<IntServerDenyRuleRecord>{IntServerDenyRuleRecord.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerDenyRuleRecord>{IntServerDenyRuleRecord.getExample()};
        response = (List<IntServerDenyRuleRecord>) api.getRules(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<IntServerDenyRuleRecord>{IntServerDenyRuleRecord.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerDenyRuleRecord>{IntServerDenyRuleRecord.getExample()};
        response = (List<IntServerDenyRuleRecord>) api.getRules(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<IntServerDenyRuleRecord>{IntServerDenyRuleRecord.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerDenyRuleRecord>{IntServerDenyRuleRecord.getExample()};
        response = (List<IntServerDenyRuleRecord>) api.getRules(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Read Mail Baby usage counts, send volume totals, top destinations, and projected cost
     *
     * Returns aggregate usage and cost metrics for the SMTP user behind &#x60;mail_id&#x60; from the ZoneMTA &#x60;mail_messagestore&#x60; / &#x60;mail_senderdelivered&#x60; tables. Use to drive an analytics dashboard or to project end-of-cycle cost. Sibling ops: &#x60;viewMailLog&#x60;, &#x60;getMailDeliverability&#x60;.\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.\n\n**Query params:**\n- &#x60;time&#x60; (string enum, optional, default &#x60;1h&#x60;) — window: &#x60;all&#x60; / &#x60;billing&#x60; (current invoice cycle) / &#x60;month&#x60; / &#x60;7d&#x60; / &#x60;24h&#x60; / &#x60;1d&#x60; / &#x60;1h&#x60;.\n\n**Returns** (schema &#x60;MailStatsType&#x60;):\n- &#x60;time&#x60; (string) — echo of selected window.\n- &#x60;usage&#x60; (integer) — full-billing-cycle send count.\n- &#x60;currency&#x60;, &#x60;currencySymbol&#x60; (string).\n- &#x60;cost&#x60; (decimal) — projected &#x3D; base + &#x60;$0.20 / 1000 emails&#x60;.\n- &#x60;received&#x60;, &#x60;sent&#x60; (integer).\n- &#x60;volume.to&#x60;, &#x60;volume.from&#x60;, &#x60;volume.ip&#x60; (object) — top-500 destinations / senders / origin IPs by count.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:** &#x60;Invalid or missing mail order id&#x60;, &#x60;401&#x60;.\n
     */
    @isTest
    private static void getStatsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => '',
            'r_time' => all
        };

        IntServer_Client client;
        IntServerMailApi api;
        IntServerMailStatsType response;
        IntServerMailStatsType expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerMailStatsType.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailStatsType.getExample();
        response = (IntServerMailStatsType) api.getStats(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerMailStatsType.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailStatsType.getExample();
        response = (IntServerMailStatsType) api.getStats(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerMailStatsType.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailStatsType.getExample();
        response = (IntServerMailStatsType) api.getStats(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerMailStatsType.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailStatsType.getExample();
        response = (IntServerMailStatsType) api.getStats(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerMailStatsType.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailStatsType.getExample();
        response = (IntServerMailStatsType) api.getStats(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerMailStatsType.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailStatsType.getExample();
        response = (IntServerMailStatsType) api.getStats(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerMailStatsType.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailStatsType.getExample();
        response = (IntServerMailStatsType) api.getStats(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerMailStatsType.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailStatsType.getExample();
        response = (IntServerMailStatsType) api.getStats(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerMailStatsType.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailStatsType.getExample();
        response = (IntServerMailStatsType) api.getStats(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Cancel a Mail Baby service and stop the recurring invoice
     *
     * Cancels the Mail Baby service through the shared &#x60;Billing\CancelService::go($id)&#x60; flow with &#x60;module&#x3D;\&#39;mail\&#39;&#x60;. SMTP credentials are deactivated, the service transitions to canceled, the &#x60;repeat_invoice&#x60; is stopped, and queued submissions stop being accepted. **Irreversible via API** — re-activation requires placing a new order via &#x60;addMail&#x60;. Sibling ops: &#x60;getMailInfo&#x60;, &#x60;getMailInvoices&#x60;, &#x60;addMail&#x60;.\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.\n\n**Returns:** &#x60;MailCancelResponse&#x60;.\n\n**Side effects:**\n- Sets &#x60;mail_status&#x3D;\&#39;canceled\&#39;&#x60;.\n- Marks &#x60;repeat_invoices&#x60; non-renewing.\n- ZoneMTA-side: stops accepting new submissions for &#x60;mb{mail_id}&#x60;.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n- &#x60;404&#x60; — &#x60;id&#x60; not owned by caller.\n\n**Related calls:**\n- **Sibling cancels:** &#x60;VPSCancel&#x60;, &#x60;CancelDomain&#x60;, &#x60;webhostingCancel&#x60;, etc.\n- **Re-provision:** &#x60;addMail&#x60;.\n
     */
    @isTest
    private static void mailCancelTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerMailApi api;
        IntServerMailCancel200Response response;
        IntServerMailCancel200Response expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerMailCancel200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailCancel200Response.getExample();
        response = (IntServerMailCancel200Response) api.mailCancel(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerMailCancel200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailCancel200Response.getExample();
        response = (IntServerMailCancel200Response) api.mailCancel(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerMailCancel200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailCancel200Response.getExample();
        response = (IntServerMailCancel200Response) api.mailCancel(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerMailCancel200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailCancel200Response.getExample();
        response = (IntServerMailCancel200Response) api.mailCancel(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerMailCancel200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailCancel200Response.getExample();
        response = (IntServerMailCancel200Response) api.mailCancel(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerMailCancel200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailCancel200Response.getExample();
        response = (IntServerMailCancel200Response) api.mailCancel(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Delist a sender from rspamd / mailchannels / mailbaby block lists
     *
     * Removes all block rows for one sender email across three reputation stores: &#x60;rspamd&#x60; (by &#x60;fromemail&#x60;), &#x60;mailchannels&#x60; (by &#x60;email&#x60;), &#x60;mailbaby&#x60; (by &#x60;emailfrom&#x60;). Effect is global per-address across all three tables; takes effect immediately for new submissions. Sibling ops: &#x60;getMailDelist&#x60;, &#x60;delistBlock&#x60; (alias at &#x60;/mail/{id}/blocks/delete&#x60;), &#x60;getMailBlocks&#x60;.\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.\n\n**Body fields (schema &#x60;MailDelistRequest&#x60;):**\n- &#x60;unblock&#x60; (string, required) — sender email from &#x60;getMailDelist&#x60;/&#x60;getMailBlocks&#x60;.\n\n**Returns:** &#x60;SuccessTextResponse&#x60;.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:** &#x60;Missing parameter unblock&#x60;, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;.\n
     */
    @isTest
    private static void postMailDelistTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerMailDelistRequest' => '',
            'id' => ''
        };

        IntServer_Client client;
        IntServerMailApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.postMailDelist(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.postMailDelist(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.postMailDelist(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.postMailDelist(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.postMailDelist(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.postMailDelist(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Validate Mail Baby order, quote pricing, and verify coupon — no charge
     *
     * Step 2 of the Mail Baby order flow. Dry-runs the order through &#x60;validate_buy_mail()&#x60; without creating invoices. Returns the cost preview, coupon resolution, and validation errors. The endpoint also auto-generates an SMTP password preview the order will use. Use to surface live pricing in the UI before &#x60;addMail&#x60;. Sibling ops: &#x60;getNewMail&#x60;, &#x60;addMail&#x60;.\n\n**Body fields:**\n- &#x60;serviceType&#x60; (integer, required) — plan id from &#x60;getNewMail.packageCosts&#x60; keys.\n- &#x60;coupon&#x60; (string, optional) — coupon code.\n\n**Returns:**\n- &#x60;continue&#x60; (bool) — &#x60;true&#x60; if order can safely be POSTed.\n- &#x60;errors&#x60; (array) — validation messages.\n- &#x60;serviceType&#x60;, &#x60;serviceCost&#x60;, &#x60;originalCost&#x60;, &#x60;repeatServiceCost&#x60; (numeric).\n- &#x60;password&#x60; (string) — auto-generated SMTP password preview.\n- &#x60;introFrequency&#x60; (integer).\n- &#x60;coupon&#x60;, &#x60;couponCode&#x60; (string/integer) — resolved coupon.\n\n**Auth:** Session/API key.\n\n**Errors:**\n- &#x60;200&#x60; with &#x60;continue&#x3D;false&#x60; and &#x60;errors[]&#x60; — validation problems.\n- &#x60;401&#x60; — unauthenticated.\n\n**Related calls:**\n- **Prerequisite:** &#x60;getNewMail&#x60; (catalog).\n- **Place order:** &#x60;addMail&#x60;.\n
     */
    @isTest
    private static void putMailTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerMailOrderRequest' => ''
        };

        IntServer_Client client;
        IntServerMailApi api;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.putMail(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.putMail(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.putMail(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Rotate the SMTP password and email the new credential to the account owner
     *
     * Generates a new 20-char SMTP password (lower/upper/digits via &#x60;generate_password&#x60;), writes it to the ZoneMTA Mongo &#x60;users&#x60; collection for username &#x60;mb{mail_id}&#x60;, logs the change to &#x60;App::history()&#x60;, and emails the result to the account-on-file via &#x60;client_email.tpl&#x60;. **Any MTA, app, or saved client still using the old password will start failing auth immediately.** The new password is **not** returned in the response — fetch via &#x60;getMailWelcomeEmail&#x60; or &#x60;getMailInfo&#x60;. Sibling ops: &#x60;getMailWelcomeEmail&#x60;, &#x60;getMailInfo&#x60;.\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.\n\n**Returns:** &#x60;SuccessTextResponse&#x60;.\n\n**Side effects:**\n- Mongo update on ZoneMTA &#x60;users&#x60; for &#x60;mb{mail_id}&#x60;.\n- &#x60;App::history()&#x60; audit entry.\n- Email sent to account owner.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:** Mongo update modified 0 rows → error text; &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;.\n
     */
    @isTest
    private static void resetMailPasswordTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerMailApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.resetMailPassword(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.resetMailPassword(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.resetMailPassword(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.resetMailPassword(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.resetMailPassword(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.resetMailPassword(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Send email via Mail Baby SMTP relay with attachments, CC/BCC, and multi-recipient
     *
     * Submits an outbound message through &#x60;relay.mailbaby.net:25&#x60; using the service\&#39;s SMTP credentials (fetched via &#x60;mail_get_password&#x60;). Use for multi-recipient sends, named addresses, CC/BCC, ReplyTo, or attachments. For single-recipient plain sends, &#x60;sendMail&#x60; is the lighter option. Sibling ops: &#x60;sendMail&#x60;, &#x60;viewMailLog&#x60; (find queued message), &#x60;getMailDeliverability&#x60; (analyze bounces).\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.\n\n**Body fields (JSON or form-urlencoded, schema &#x60;SendMailAdv&#x60;):**\n- &#x60;from&#x60; (string or &#x60;{email, name}&#x60;, required).\n- &#x60;to&#x60; (array of strings or &#x60;{email, name}&#x60; objects, required).\n- &#x60;subject&#x60; (string, required).\n- &#x60;body&#x60; (string, required) — HTML auto-detected when tags are present.\n- &#x60;replyto&#x60; (array, optional) — same shape as &#x60;to&#x60;.\n- &#x60;cc&#x60;, &#x60;bcc&#x60; (array, optional) — same shape as &#x60;to&#x60;.\n- &#x60;attachments&#x60; (array, optional) — each &#x60;{filename, data}&#x60; where &#x60;data&#x60; is base64-encoded; added via &#x60;addStringAttachment&#x60;.\n\n**Returns:** &#x60;{status: &quot;ok&quot;, text: &quot;Email queued successfully&quot;}&#x60;.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:**\n- &#x60;400&#x60; with PHPMailer &#x60;ErrorInfo&#x60; on send failure or missing required field.\n- &#x60;401&#x60; — unauthenticated.\n- &#x60;404 Invalid Service Passed&#x60;.\n- &#x60;409 Service is not active&#x60;.\n
     */
    @isTest
    private static void sendAdvMailTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerSendMailAdv' => {"subject":"Welcome","body":"Hello","from":{"email":"user@domain.com"},"to":[{"email":"someone@client.com","name":"Mr Client"}],"attachments":[{"filename":"message.txt","data":"base64_encoded_contents"}],"id":66},
            'id' => ''
        };

        IntServer_Client client;
        IntServerMailApi api;
        IntServerGenericResponse response;
        IntServerGenericResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.sendAdvMail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.sendAdvMail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.sendAdvMail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.sendAdvMail(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.sendAdvMail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.sendAdvMail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.sendAdvMail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.sendAdvMail(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.sendAdvMail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.sendAdvMail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.sendAdvMail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.sendAdvMail(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Send a simple single-recipient email through the Mail Baby SMTP relay
     *
     * Sends a single-recipient transactional email through &#x60;relay.mailbaby.net:25&#x60; authenticated as this &#x60;mail_id&#x60;. Body fields are the minimum needed for a plain send; Reply-To is auto-set to &#x60;from&#x60;. For multi-recipient sends, CC/BCC, named addresses, or attachments use &#x60;sendAdvMail&#x60; instead. Sibling ops: &#x60;sendAdvMail&#x60;, &#x60;viewMailLog&#x60;.\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.\n\n**Body fields (JSON or form-urlencoded, schema &#x60;SendMail&#x60;):**\n- &#x60;to&#x60; (string, required) — recipient email.\n- &#x60;from&#x60; (string, required) — sender email.\n- &#x60;subject&#x60; (string, required).\n- &#x60;body&#x60; (string, required) — HTML auto-detected when tags are present.\n\n**Returns:** &#x60;{status: &quot;ok&quot;, text: &quot;Email queued successfully&quot;}&#x60;.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:** &#x60;400&#x60; with PHPMailer &#x60;ErrorInfo&#x60; on send failure or missing required field, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;.\n
     */
    @isTest
    private static void sendMailTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerSendMail' => '',
            'id' => ''
        };

        IntServer_Client client;
        IntServerMailApi api;
        IntServerGenericResponse response;
        IntServerGenericResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.sendMail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.sendMail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.sendMail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.sendMail(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.sendMail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.sendMail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.sendMail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.sendMail(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.sendMail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.sendMail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.sendMail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.sendMail(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Update an existing Mail Baby alert by alert_id
     *
     * Updates a single alert row by &#x60;alert_id&#x60;. Handler verifies the alert belongs to this service+module before writing. Sibling ops: &#x60;getMailAlerts&#x60;, &#x60;createMailAlert&#x60;, &#x60;deleteMailAlert&#x60;.\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.\n\n**Body fields (schema &#x60;MailAlertUpdateRequest&#x60;):**\n- &#x60;alert_id&#x60; (integer, required) — from &#x60;getMailAlerts&#x60;.\n- &#x60;type&#x60; (string, required).\n- &#x60;value&#x60; (string/numeric, required) — threshold.\n- &#x60;to&#x60; (string, required) — notification email; validated via &#x60;FILTER_VALIDATE_EMAIL&#x60;.\n- &#x60;enabled&#x60; (bool, optional).\n\n**Returns:** &#x60;SuccessTextResponse&#x60;.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:** &#x60;Invalid alert!&#x60; (alert not owned), field-level errors for missing/invalid body, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;.\n
     */
    @isTest
    private static void updateMailAlertTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerMailAlertUpdateRequest' => '',
            'id' => ''
        };

        IntServer_Client client;
        IntServerMailApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateMailAlert(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateMailAlert(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateMailAlert(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateMailAlert(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateMailAlert(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateMailAlert(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * POST mutation hook for the Mail Baby service detail page
     *
     * POST mutation hook for the Mail Baby service detail page. Currently delegates to the same &#x60;View::go()&#x60; handler as &#x60;getMailInfo&#x60; — placeholder for future field updates. Does NOT rotate credentials (use &#x60;resetMailPassword&#x60;) and does NOT change billing (use &#x60;/billing&#x60; endpoints). Sibling ops: &#x60;getMailInfo&#x60;, &#x60;mailCancel&#x60;, &#x60;resetMailPassword&#x60;.\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.\n\n**Body:** Form fields.\n\n**Returns:** &#x60;SuccessTextResponse&#x60;.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n- &#x60;404&#x60; — &#x60;id&#x60; not owned by caller.\n- &#x60;409&#x60; — &#x60;mail_status !&#x3D; &quot;active&quot;&#x60;.\n\n**Related calls:**\n- **Read:** &#x60;getMailInfo&#x60;.\n- **Rotate password:** &#x60;resetMailPassword&#x60;.\n
     */
    @isTest
    private static void updateMailInfoTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        IntServer_Client client;
        IntServerMailApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateMailInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateMailInfo(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateMailInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateMailInfo(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateMailInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateMailInfo(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Update an existing Mail Baby deny rule\&#39;s type and match data
     *
     * Updates &#x60;type&#x60; and &#x60;data&#x60; on a single &#x60;mail_spam&#x60; row. Query is bounded by &#x60;id&#x3D;{rule} AND user&#x3D;\&#39;{mail_username}\&#39;&#x60; so cross-tenant updates are impossible. Same validation rules as &#x60;addRule&#x60;. Sibling ops: &#x60;getRules&#x60;, &#x60;addRule&#x60;, &#x60;deleteRule&#x60;.\n\n**Path params:**\n- &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60;.\n- &#x60;rule&#x60; (string, required) — rule id from &#x60;getRules&#x60;.\n\n**Body fields (schema &#x60;DenyRuleNew&#x60;):**\n- &#x60;type&#x60; (string, required) — &#x60;domain&#x60; / &#x60;email&#x60; / &#x60;startswith&#x60; / &#x60;destination&#x60;.\n- &#x60;data&#x60; (string, required) — see &#x60;addRule&#x60; for type-specific validation.\n\n**Returns:** &#x60;&quot;Record updated successfully.&quot;&#x60;.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:** field-level errors on validation failure, &#x60;401&#x60;, &#x60;404&#x60;, &#x60;409 not active&#x60;.\n
     */
    @isTest
    private static void updateRuleTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerDenyRuleNew' => '',
            'id' => '',
            'rule' => 'null'
        };

        IntServer_Client client;
        IntServerMailApi api;
        IntServerGenericResponse response;
        IntServerGenericResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.updateRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.updateRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.updateRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.updateRule(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.updateRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.updateRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.updateRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.updateRule(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.updateRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.updateRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.updateRule(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.updateRule(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Search and paginate per-message Mail Baby delivery log entries
     *
     * Paginated search over ZoneMTA\&#39;s &#x60;mail_messagestore&#x60; joined with &#x60;mail_senderdelivered&#x60; and &#x60;mail_queuerelease&#x60;. Supports envelope, header, and metadata filters; sortable; choose recipient-level or message-level grouping. Use to investigate delivery issues, find specific messages by Message-ID, audit bounce rates, or feed an analytics dashboard. Sibling ops: &#x60;getStats&#x60;, &#x60;getMailDeliverability&#x60;, &#x60;delistBlock&#x60; (clear a block surfaced by a bounce).\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — &#x60;mail_id&#x60; from &#x60;getMailList&#x60; (omit to span all owned mail users — admin-only).\n\n**Query params:**\n- &#x60;from&#x60;, &#x60;to&#x60; (string) — envelope address, exact match.\n- &#x60;headerfrom&#x60;, &#x60;replyto&#x60; (string) — header address, exact match; validated as email.\n- &#x60;subject&#x60; (string) — LIKE match on subject.\n- &#x60;mailid&#x60; (string, 18–19 chars) — relay id, exact.\n- &#x60;messageId&#x60; (string) — Message-ID header, substring match.\n- &#x60;origin&#x60; (string) — submitter IP, exact.\n- &#x60;mx&#x60; (string) — destination MX hostname, LIKE.\n- &#x60;delivered&#x60; (integer 0/1).\n- &#x60;startDate&#x60;, &#x60;endDate&#x60; (Unix timestamp or &#x60;strtotime&#x60;-parseable string).\n- &#x60;skip&#x60; (integer, default 0), &#x60;limit&#x60; (integer 1–10000, default 100).\n- &#x60;sort&#x60; (&#x60;time&#x60;), &#x60;dir&#x60; (&#x60;asc&#x60;/&#x60;desc&#x60;, default &#x60;desc&#x60;).\n- &#x60;groupby&#x60; (&#x60;recipient&#x60; default — one row per delivery attempt; &#x60;message&#x60; — one row per &#x60;_id&#x60;).\n\n**Returns** (schema &#x60;MailLog&#x60;):\n&#x60;{total, skip, limit, emails: [{id, _id, from, to, subject, messageId, time, mxHostname, delivered, code, response, recipient, ...}]}&#x60;.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:** &#x60;400&#x60; bad input, &#x60;401&#x60;.\n
     */
    @isTest
    private static void viewMailLogTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => '',
            'id2' => 2604,
            'origin' => 1.2.3.4,
            'mx' => mx.google.com,
            'r_from' => me@sender.com,
            'to' => you@receiver.com,
            'subject' => Your order has shipped,
            'mailid' => 185997065c60008840,
            'messageId' => <abc123@yourdomain.com>,
            'replyto' => replies@sender.com,
            'headerfrom' => newsletter@sender.com,
            'delivered' => 1,
            'skip' => 0,
            'r_limit' => 100,
            'startDate' => 1641781008,
            'endDate' => 1673317008,
            'r_sort' => time,
            'dir' => desc,
            'groupby' => recipient
        };

        IntServer_Client client;
        IntServerMailApi api;
        IntServerMailLog response;
        IntServerMailLog expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerMailLog.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailLog.getExample();
        response = (IntServerMailLog) api.viewMailLog(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerMailLog.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailLog.getExample();
        response = (IntServerMailLog) api.viewMailLog(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerMailApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerMailLog.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerMailLog.getExample();
        response = (IntServerMailLog) api.viewMailLog(params);
        System.assertEquals(expectedResponse, response);
    }
}