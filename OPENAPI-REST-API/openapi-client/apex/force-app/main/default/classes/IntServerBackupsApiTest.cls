@isTest
private class IntServerBackupsApiTest {
    /**
     * Place a new off-site backup storage order and generate the invoice
     *
     * Step 3 of the backup-storage order flow. Revalidates via &#x60;validate_buy_storage()&#x60;, then calls &#x60;place_buy_storage()&#x60; which creates a &#x60;backups&#x60; service row, a &#x60;repeat_invoices&#x60; recurring entry, and the first &#x60;invoices&#x60; row. **Real billable order — call &#x60;validateBackupOrder&#x60; first.** Service is provisioned only after the invoice is paid. Sibling ops: &#x60;getNewBackup&#x60; (catalog), &#x60;validateBackupOrder&#x60; (quote), &#x60;getBackupInvoices&#x60; (billing history), &#x60;initiatePayment&#x60; (settle).\n\n**Body fields** (JSON or multipart):\n- &#x60;serviceType&#x60; (integer, required) — &#x60;services_id&#x60; from &#x60;getNewBackup&#x60;.\n- &#x60;coupon&#x60; (string, optional) — coupon code.\n- &#x60;period&#x60; (integer, optional, default &#x60;1&#x60;) — billing months.\n- &#x60;comment&#x60; (string, optional) — saved on the order row.\n\n**Returns** (on success): &#x60;{ continue: true, total_cost, iid, iids, real_iids, serviceId, invoice_description, cj_params }&#x60; — feed &#x60;real_iids&#x60; into &#x60;initiatePayment&#x60;. On validation failure: &#x60;{ continue: false, errors: [...] }&#x60; with HTTP 200.\n\n**Auth:** Session/API key.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n- &#x60;422&#x60; inside &#x60;errors[]&#x60; — coupon/plan/duplicate-hostname validation.\n- Explicit error text when no backend storage server is available for assignment.\n\n**Side effects:** new rows in &#x60;backups&#x60;, &#x60;repeat_invoices&#x60;, &#x60;invoices&#x60;; queued provisioning kicks off only after payment.\n\n**Related calls:**\n- **Prerequisite:** &#x60;validateBackupOrder&#x60;.\n- **Pay:** &#x60;getBillingInvoice&#x60; → &#x60;initiatePayment&#x60;.\n- **Poll status:** &#x60;getBackupInfo&#x60; (until &#x60;backup_status&#x3D;\&#39;active\&#39;&#x60;).\n
     */
    @isTest
    private static void addBackupTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'validateOnly' => '',
            'serviceType' => '',
            'coupon' => 'null'
        };

        IntServer_Client client;
        IntServerBackupsApi api;
        IntServerBackupOrderPostResponse response;
        IntServerBackupOrderPostResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerBackupsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerBackupOrderPostResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBackupOrderPostResponse.getExample();
        response = (IntServerBackupOrderPostResponse) api.addBackup(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerBackupOrderPostResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBackupOrderPostResponse.getExample();
        response = (IntServerBackupOrderPostResponse) api.addBackup(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerBackupsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerBackupOrderPostResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBackupOrderPostResponse.getExample();
        response = (IntServerBackupOrderPostResponse) api.addBackup(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerBackupOrderPostResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBackupOrderPostResponse.getExample();
        response = (IntServerBackupOrderPostResponse) api.addBackup(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerBackupsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerBackupOrderPostResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBackupOrderPostResponse.getExample();
        response = (IntServerBackupOrderPostResponse) api.addBackup(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerBackupOrderPostResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBackupOrderPostResponse.getExample();
        response = (IntServerBackupOrderPostResponse) api.addBackup(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Cancel an off-site backup storage subscription
     *
     * DESTRUCTIVE. Use to terminate a backup-storage subscription. Delegates to &#x60;CancelService::go($id)&#x60; with module &#x60;backups&#x60;, which marks the service for cancellation and stops future recurring billing; data on the storage backend may become inaccessible at end of cycle. Path param: &#x60;id&#x60; from &#x60;getBackupsList&#x60;. No body.\nReturns &#x60;BackupsCancelResponse&#x60;. Caveats: irreversible — a new order via &#x60;addBackup&#x60; is required to restore service, with a new IP/username and no migration of prior data. Does NOT delete VPS/QS/webhosting in-place snapshots (those live under their own tags). Errors: HTTP 401 unauthenticated; HTTP 404 if &#x60;id&#x60; is not owned by the caller; HTTP 409 if the service is already cancelled or pending cancellation.\nSiblings: &#x60;addBackup&#x60;, &#x60;getBackupInfo&#x60;, &#x60;getBackupInvoices&#x60;.
     */
    @isTest
    private static void cancelBackupTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerBackupsApi api;
        IntServerCancelBackup200Response response;
        IntServerCancelBackup200Response expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerBackupsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerCancelBackup200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCancelBackup200Response.getExample();
        response = (IntServerCancelBackup200Response) api.cancelBackup(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCancelBackup200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCancelBackup200Response.getExample();
        response = (IntServerCancelBackup200Response) api.cancelBackup(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerBackupsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerCancelBackup200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCancelBackup200Response.getExample();
        response = (IntServerCancelBackup200Response) api.cancelBackup(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCancelBackup200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCancelBackup200Response.getExample();
        response = (IntServerCancelBackup200Response) api.cancelBackup(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerBackupsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerCancelBackup200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCancelBackup200Response.getExample();
        response = (IntServerCancelBackup200Response) api.cancelBackup(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCancelBackup200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCancelBackup200Response.getExample();
        response = (IntServerCancelBackup200Response) api.cancelBackup(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get details of a specific off-site backup storage service
     *
     * Use to fetch the full management view for one backup-storage subscription. Path param: &#x60;id&#x60; (backup service ID from &#x60;getBackupsList&#x60;). No body.\nReturns &#x60;serviceInfo&#x60; (with &#x60;backup_username&#x60;, &#x60;backup_ip&#x60;, &#x60;backup_status&#x60;, &#x60;backup_quota&#x60;, &#x60;backup_type&#x60;, &#x60;backup_invoice&#x60;), plus &#x60;billingDetails&#x60;, &#x60;extraInfoTables&#x60;, &#x60;package&#x60;, &#x60;custCurrency&#x60;, and &#x60;client_links&#x60; (rewritten to surface the link target rather than the raw queue URL). &#x60;admin_links&#x60;, internal &#x60;settings&#x60;, and &#x60;csrf&#x60; are stripped. Errors: HTTP 401 unauthenticated; HTTP 404 if &#x60;id&#x60; does not belong to the caller (cross-account access blocked by &#x60;get_service&#x60;).\nSiblings: &#x60;getBackupLogin&#x60; (open storage panel session), &#x60;getBackupInvoices&#x60;, &#x60;getBackupsWelcomeEmail&#x60;, &#x60;cancelBackup&#x60;, &#x60;updateBackupInfo&#x60;.
     */
    @isTest
    private static void getBackupInfoTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerBackupsApi api;
        IntServerBackup response;
        IntServerBackup expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerBackupsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerBackup.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBackup.getExample();
        response = (IntServerBackup) api.getBackupInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerBackup.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBackup.getExample();
        response = (IntServerBackup) api.getBackupInfo(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerBackupsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerBackup.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBackup.getExample();
        response = (IntServerBackup) api.getBackupInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerBackup.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBackup.getExample();
        response = (IntServerBackup) api.getBackupInfo(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerBackupsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerBackup.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBackup.getExample();
        response = (IntServerBackup) api.getBackupInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerBackup.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBackup.getExample();
        response = (IntServerBackup) api.getBackupInfo(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List invoices for a single backup-storage subscription
     *
     * Use to retrieve all invoices tied to one off-site backup storage service — useful for confirming billing status, locating an unpaid invoice to pay, or reconciling renewals. Path param: &#x60;id&#x60; from &#x60;getBackupsList&#x60;. Delegates to the shared &#x60;InvoicesList::go()&#x60; handler with module &#x60;backups&#x60;. No body.\nReturns &#x60;ChargeInvoiceRows&#x60; (array of invoice rows with &#x60;invoices_id&#x60;, status, amount, dates). Feed &#x60;invoices_id&#x60; into &#x60;getBillingInvoice&#x60; for full detail or &#x60;/billing/pay/{method}/{invoices}&#x60; to settle an unpaid invoice. For the account-wide invoice list use the Billing tag instead. Errors: HTTP 401 unauthenticated; HTTP 404 if &#x60;id&#x60; is not owned by the caller.\nSiblings: &#x60;getBackupInfo&#x60;, &#x60;addBackup&#x60;.
     */
    @isTest
    private static void getBackupInvoicesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerBackupsApi api;
        IntServerChargeInvoiceRows response;
        IntServerChargeInvoiceRows expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerBackupsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getBackupInvoices(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getBackupInvoices(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerBackupsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getBackupInvoices(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getBackupInvoices(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerBackupsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getBackupInvoices(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerChargeInvoiceRows.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerChargeInvoiceRows.getExample();
        response = (IntServerChargeInvoiceRows) api.getBackupInvoices(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Open a single sign-on session URL for the backup storage panel
     *
     * Use to drop the customer straight into the off-site backup storage management panel without a separate login prompt. Calls &#x60;get_storage_session($id)&#x60; to mint a one-shot session URL; treat the URL as short-lived and credentials-equivalent — do not log or share.\nPath param: &#x60;id&#x60; from &#x60;getBackupsList&#x60;. No body. Returns &#x60;BackupLoginResponse&#x60; (&#x60;success&#x60;, session URL/token, optional connection hints). On &#x60;success&#x3D;false&#x60; the handler returns &#x60;json_error(text)&#x60; (HTTP 400) with the upstream reason. Errors: HTTP 401 unauthenticated; HTTP 404 if &#x60;id&#x60; is not owned by the caller; backend errors when the storage server is unreachable.\nSiblings: &#x60;getBackupInfo&#x60; (SFTP &#x60;backup_username&#x60;/&#x60;backup_ip&#x60; for direct connections), &#x60;getBackupsWelcomeEmail&#x60; (resend setup credentials).
     */
    @isTest
    private static void getBackupLoginTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerBackupsApi api;
        IntServerBackupLoginResponse response;
        IntServerBackupLoginResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerBackupsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerBackupLoginResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBackupLoginResponse.getExample();
        response = (IntServerBackupLoginResponse) api.getBackupLogin(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerBackupLoginResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBackupLoginResponse.getExample();
        response = (IntServerBackupLoginResponse) api.getBackupLogin(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerBackupsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerBackupLoginResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBackupLoginResponse.getExample();
        response = (IntServerBackupLoginResponse) api.getBackupLogin(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerBackupLoginResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBackupLoginResponse.getExample();
        response = (IntServerBackupLoginResponse) api.getBackupLogin(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerBackupsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerBackupLoginResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBackupLoginResponse.getExample();
        response = (IntServerBackupLoginResponse) api.getBackupLogin(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerBackupLoginResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBackupLoginResponse.getExample();
        response = (IntServerBackupLoginResponse) api.getBackupLogin(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List off-site backup storage subscriptions on the authenticated account
     *
     * Use when enumerating all off-site backup storage services (SFTP-style remote storage subscriptions) on the authenticated customer\&#39;s account. NOT for VPS/QS/webhosting in-place snapshots — those live under their own tags (&#x60;getVpsBackups&#x60;, &#x60;getQsBackups&#x60;, &#x60;getWebsitesBackups&#x60;). No query params, no body.\nReturns an array of rows; each row carries &#x60;backup_id&#x60;, &#x60;backup_name&#x60;, &#x60;backup_username&#x60;, &#x60;backup_status&#x60;, &#x60;services_name&#x60; (plan), and &#x60;backup_cost&#x60; (recurring price from &#x60;repeat_invoices&#x60;). Use &#x60;backup_id&#x60; as the path &#x60;{id}&#x60; for &#x60;getBackupInfo&#x60;, &#x60;getBackupLogin&#x60;, &#x60;getBackupInvoices&#x60;, &#x60;getBackupsWelcomeEmail&#x60;, &#x60;cancelBackup&#x60;. Errors: HTTP 401 if unauthenticated. Empty array when the customer has no backup services.\nSiblings: &#x60;getBackupInfo&#x60;, &#x60;getNewBackup&#x60;, &#x60;addBackup&#x60;.
     */
    @isTest
    private static void getBackupsListTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        IntServer_Client client;
        IntServerBackupsApi api;
        List<IntServerBackupRow> response;
        List<IntServerBackupRow> expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerBackupsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<IntServerBackupRow>{IntServerBackupRow.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerBackupRow>{IntServerBackupRow.getExample()};
        response = (List<IntServerBackupRow>) api.getBackupsList();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<IntServerBackupRow>{IntServerBackupRow.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerBackupRow>{IntServerBackupRow.getExample()};
        response = (List<IntServerBackupRow>) api.getBackupsList();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerBackupsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<IntServerBackupRow>{IntServerBackupRow.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerBackupRow>{IntServerBackupRow.getExample()};
        response = (List<IntServerBackupRow>) api.getBackupsList();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<IntServerBackupRow>{IntServerBackupRow.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerBackupRow>{IntServerBackupRow.getExample()};
        response = (List<IntServerBackupRow>) api.getBackupsList();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerBackupsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<IntServerBackupRow>{IntServerBackupRow.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerBackupRow>{IntServerBackupRow.getExample()};
        response = (List<IntServerBackupRow>) api.getBackupsList();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<IntServerBackupRow>{IntServerBackupRow.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerBackupRow>{IntServerBackupRow.getExample()};
        response = (List<IntServerBackupRow>) api.getBackupsList();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Resend the welcome email for an off-site backup storage service
     *
     * Use when the original welcome email was lost or never arrived. Resends connection credentials (SFTP host, username, quota) and setup instructions to the account email by invoking the module\&#39;s &#x60;backup_welcome_email($id)&#x60; helper.\nPath param: &#x60;id&#x60; from &#x60;getBackupsList&#x60;. No body. Returns &#x60;SuccessTextResponse&#x60; with &#x60;text&#x3D;\&#39;Welcome Email has been resent.\&#39;&#x60;. Caveats: only works while the service is &#x60;active&#x60;; cancelled/pending services will return 409. Email is sent to the customer-of-record on file — there is no override recipient parameter. Errors: HTTP 401 unauthenticated; HTTP 404 if &#x60;id&#x60; is not owned by the caller (&#x60;Invalid Service Passed&#x60;); HTTP 409 if &#x60;backup_status&#x60; is not &#x60;active&#x60; (&#x60;Service is not active&#x60;).\nSiblings: &#x60;getBackupLogin&#x60;, &#x60;getBackupInfo&#x60;.
     */
    @isTest
    private static void getBackupsWelcomeEmailTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerBackupsApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerBackupsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getBackupsWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getBackupsWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerBackupsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getBackupsWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getBackupsWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerBackupsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getBackupsWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.getBackupsWelcomeEmail(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Get backup-storage order form metadata and pricing tiers
     *
     * Use before placing an off-site backup storage order to fetch the available plans, their service-type IDs, and per-tier pricing needed to render an order form. No params, no body.\nReturns &#x60;{ packageCosts, serviceTypes }&#x60; — &#x60;packageCosts&#x60; is a map of &#x60;services_id&#x60; → recurring cost (from &#x60;services&#x60; where &#x60;services_module&#x3D;\&#39;backups\&#39;&#x60; and &#x60;services_buyable&#x3D;1&#x60;); &#x60;serviceTypes&#x60; is the dispatcher output of &#x60;run_event(\&#39;get_service_types\&#39;, true, \&#39;backups\&#39;)&#x60; describing each tier. Pass the chosen &#x60;services_id&#x60; as &#x60;serviceType&#x60; to &#x60;validateBackupOrder&#x60; (PUT) for a price preview, then to &#x60;addBackup&#x60; (POST) to commit. Errors: HTTP 401 if unauthenticated.\nSiblings: &#x60;validateBackupOrder&#x60;, &#x60;addBackup&#x60;, &#x60;getBackupsList&#x60;.
     */
    @isTest
    private static void getNewBackupTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        IntServer_Client client;
        IntServerBackupsApi api;
        IntServerBackupsOrder response;
        IntServerBackupsOrder expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerBackupsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerBackupsOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBackupsOrder.getExample();
        response = (IntServerBackupsOrder) api.getNewBackup();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerBackupsOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBackupsOrder.getExample();
        response = (IntServerBackupsOrder) api.getNewBackup();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerBackupsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerBackupsOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBackupsOrder.getExample();
        response = (IntServerBackupsOrder) api.getNewBackup();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerBackupsOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBackupsOrder.getExample();
        response = (IntServerBackupsOrder) api.getNewBackup();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerBackupsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerBackupsOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBackupsOrder.getExample();
        response = (IntServerBackupsOrder) api.getNewBackup();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerBackupsOrder.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBackupsOrder.getExample();
        response = (IntServerBackupsOrder) api.getNewBackup();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Update stored metadata for a backup-storage subscription
     *
     * Use to update non-billing metadata (e.g. stored credentials, comment, hostname) on an existing off-site backup storage service. Path param: &#x60;id&#x60; from &#x60;getBackupsList&#x60;. Body fields are forwarded to the same &#x60;View::go()&#x60; handler as the GET; consult the order form for accepted keys.\nReturns the standard &#x60;SuccessTextResponse&#x60;. Caveats: this endpoint does NOT change the plan, quota, or billing — those require cancel + reorder via &#x60;cancelBackup&#x60; and &#x60;addBackup&#x60;. It also does NOT trigger any backend SFTP credential rotation. Errors: HTTP 401 unauthenticated; HTTP 404 if &#x60;id&#x60; is not owned by the caller; HTTP 422 on invalid input.\nSiblings: &#x60;getBackupInfo&#x60;, &#x60;cancelBackup&#x60;, &#x60;getBackupLogin&#x60;.
     */
    @isTest
    private static void updateBackupInfoTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerBackupsApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerBackupsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateBackupInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateBackupInfo(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerBackupsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateBackupInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateBackupInfo(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerBackupsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateBackupInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateBackupInfo(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Validate a backup-storage order and preview pricing without charging
     *
     * Use to dry-run a backup order — runs &#x60;validate_buy_storage()&#x60; to compute final price, apply any coupon, and surface validation errors before the customer commits. No invoice is created and no service is provisioned.\nBody (JSON or multipart): &#x60;serviceType&#x60; (services_id from &#x60;getNewBackup&#x60;), optional &#x60;coupon&#x60;, &#x60;period&#x60; (months, default 1), &#x60;comment&#x60;. Returns &#x60;{ continue, errors, serviceType, serviceCost, originalCost, repeatServiceCost, hostname, password, coupon, couponCode }&#x60;. Use the response to render a confirmation screen, then call &#x60;addBackup&#x60; (POST same path) to place the order. Errors: HTTP 401 unauthenticated; HTTP 422 surfaced inside &#x60;errors[]&#x60; (invalid coupon, ineligible plan, duplicate hostname).\nSiblings: &#x60;addBackup&#x60;, &#x60;getNewBackup&#x60;.
     */
    @isTest
    private static void validateBackupOrderTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'validateOnly' => '',
            'serviceType' => '',
            'coupon' => 'null'
        };

        IntServer_Client client;
        IntServerBackupsApi api;
        IntServerBackupOrderPutResponse response;
        IntServerBackupOrderPutResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerBackupsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerBackupOrderPutResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBackupOrderPutResponse.getExample();
        response = (IntServerBackupOrderPutResponse) api.validateBackupOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerBackupOrderPutResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBackupOrderPutResponse.getExample();
        response = (IntServerBackupOrderPutResponse) api.validateBackupOrder(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerBackupsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerBackupOrderPutResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBackupOrderPutResponse.getExample();
        response = (IntServerBackupOrderPutResponse) api.validateBackupOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerBackupOrderPutResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBackupOrderPutResponse.getExample();
        response = (IntServerBackupOrderPutResponse) api.validateBackupOrder(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerBackupsApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerBackupOrderPutResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBackupOrderPutResponse.getExample();
        response = (IntServerBackupOrderPutResponse) api.validateBackupOrder(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerBackupOrderPutResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerBackupOrderPutResponse.getExample();
        response = (IntServerBackupOrderPutResponse) api.validateBackupOrder(params);
        System.assertEquals(expectedResponse, response);
    }
}