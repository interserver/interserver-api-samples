@isTest
private class IntServerAccountApiTest {
    /**
     * Unlink a third-party OAuth/social provider (Google, GitHub, etc.) from the account
     *
     * DESTRUCTIVE: removes the linked provider\&#39;s tokens from &#x60;accounts_ext&#x60; (rows where &#x60;account_key&#x60; IN (&#x60;{name}_id&#x60;,&#x60;{name}_url&#x60;)). After unlinking, that provider can no longer be used to log in or pre-fill profile data — the user must log in via password (and 2FA if enabled). Path param: &#x60;name&#x60; (case-insensitive provider key, e.g. &#x60;google&#x60;, &#x60;github&#x60;, &#x60;facebook&#x60;) — must be present in &#x60;getOauthConfig().providers&#x60;. No request body. Use when the customer wants to revoke a previously authorized social-login. Returns &#x60;{success:true, text:\&#39;OAuth Provider Unlinked.\&#39;}&#x60;. Errors: 400 &#x60;Invalid Provider Name.&#x60; if &#x60;name&#x60; not configured; 401 unauthenticated. Sibling ops: &#x60;logoutAccountOauth&#x60;, &#x60;getAccountInfo&#x60;, &#x60;updateAccountPassword&#x60;.
     */
    @isTest
    private static void deleteAccountOauthNameTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'name' => 'null'
        };

        IntServer_Client client;
        IntServerAccountApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.deleteAccountOauthName(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.deleteAccountOauthName(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.deleteAccountOauthName(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.deleteAccountOauthName(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.deleteAccountOauthName(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.deleteAccountOauthName(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Disable two-factor authentication and remove the TOTP secret
     *
     * DESTRUCTIVE: removes the 2FA secret from &#x60;account_security&#x60; and clears the in-session secret cache. After success, only password authentication is required for future logins — security posture drops materially. No body, no path params. Use when the customer has lost their authenticator device or wants to re-enroll from scratch (call this, then &#x60;getAccountTfaSetup&#x60; -&gt; &#x60;updateAccountTfa&#x60;). Returns &#x60;{success:true, text:\&#39;Google Two Factor Authentication is disabled successfully!\&#39;}&#x60;. Errors: 401 unauthenticated. Caveat: existing sessions remain valid; rotate &#x60;updateAccountPassword&#x60; if you suspect credential compromise. Sibling ops: &#x60;getAccountTfaSetup&#x60;, &#x60;updateAccountTfa&#x60;, &#x60;updateAccountPassword&#x60;.
     */
    @isTest
    private static void deleteAccountTfaTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        IntServer_Client client;
        IntServerAccountApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.deleteAccountTfa();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.deleteAccountTfa();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.deleteAccountTfa();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.deleteAccountTfa();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.deleteAccountTfa();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.deleteAccountTfa();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Remove one IP range from the account allow-list (PATCH on /account/iplimits)
     *
     * DESTRUCTIVE: deletes the matching &#x60;{start, end}&#x60; entry from &#x60;accounts.session_limit&#x60;. Method is PATCH (not DELETE) because the path collides with &#x60;updateAccountIpLimits&#x60;. Body: &#x60;{start, end}&#x60; — must exactly match an existing range (trim-equal on both bounds). Behaviour: if removing this range would leave an empty list, IP limiting is disabled and the account becomes accessible from any IP. If ranges remain but none cover the caller\&#39;s source IP, the server auto-injects a /32 for the caller to prevent self-lockout (response text warns). MCP callers bypass via &#x60;X-API-APP: 1&#x60; header. Returns &#x60;{success:true, text:\&#39;IP Range deleted.\&#39;}&#x60;. Errors: 400/422 &#x60;Invalid IP Address&#x60; if &#x60;start&#x60;/&#x60;end&#x60; aren\&#39;t valid IPs; 401 unauthenticated. Sibling ops: &#x60;updateAccountIpLimits&#x60;, &#x60;getAccountInfo&#x60;.
     */
    @isTest
    private static void deleteIpLimitTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerIpLimitRange' => ''
        };

        IntServer_Client client;
        IntServerAccountApi api;
        IntServerGenericResponse response;
        IntServerGenericResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.deleteIpLimit(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.deleteIpLimit(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.deleteIpLimit(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.deleteIpLimit(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.deleteIpLimit(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGenericResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGenericResponse.getExample();
        response = (IntServerGenericResponse) api.deleteIpLimit(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Read full account profile, billing address, and security settings
     *
     * Use to render the account-settings page or to verify current state before mutating with &#x60;updateAccountInfo&#x60;. No body, no path params. Returns: full profile (name, company, address1/2, city, state, zip, country, phone, email_invoices, email_abuse, gstin, locale, timezone), masked credit-card list (last-4 digits only — full PAN never returned), OAuth provider config (with secret keys stripped), feature toggles (&#x60;disable_reset&#x60;, &#x60;disable_reinstall&#x60;, &#x60;disable_*_notifications&#x60;), gravatar URL, language, country-&gt;currency map, and &#x60;enableLocales&#x60;/&#x60;enableCurrencies&#x60; UI flags. Timezone defaults to IP-derived value if unset, falling back to America/New_York. Errors: 401 if session invalid or expired. Sibling ops: &#x60;updateAccountInfo&#x60;, &#x60;getAccountTfaSetup&#x60;, &#x60;updateAccountFeatures&#x60;, &#x60;updateAccountIpLimits&#x60;.
     */
    @isTest
    private static void getAccountInfoTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        IntServer_Client client;
        IntServerAccountApi api;
        IntServerAccountInfo response;
        IntServerAccountInfo expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerAccountInfo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerAccountInfo.getExample();
        response = (IntServerAccountInfo) api.getAccountInfo();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerAccountInfo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerAccountInfo.getExample();
        response = (IntServerAccountInfo) api.getAccountInfo();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerAccountInfo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerAccountInfo.getExample();
        response = (IntServerAccountInfo) api.getAccountInfo();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerAccountInfo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerAccountInfo.getExample();
        response = (IntServerAccountInfo) api.getAccountInfo();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerAccountInfo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerAccountInfo.getExample();
        response = (IntServerAccountInfo) api.getAccountInfo();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerAccountInfo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerAccountInfo.getExample();
        response = (IntServerAccountInfo) api.getAccountInfo();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Fetch TOTP secret to enroll a 2FA authenticator app (Google Authenticator etc.)
     *
     * Use as step 1 of 2FA enrollment. The 160-bit secret is generated on first call and cached in the session until the user completes (or abandons) setup. No body, no path params. Returns &#x60;{2fa_google_key, 2fa_google_split}&#x60; — render &#x60;2fa_google_key&#x60; as a QR code (otpauth://totp/My.InterServer:LID?secret&#x3D;KEY) and display &#x60;2fa_google_split&#x60; (key chunked into 4-char groups, space-separated) for manual entry. After the user types the 6-digit code from their app, finalize enrollment with &#x60;updateAccountTfa&#x60;. Calling this multiple times before enrolling reuses the same in-session secret. Errors: 401 if session invalid. Sibling ops: &#x60;updateAccountTfa&#x60; (verify &amp; enable), &#x60;deleteAccountTfa&#x60; (disable).
     */
    @isTest
    private static void getAccountTfaSetupTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        IntServer_Client client;
        IntServerAccountApi api;
        IntServerGetAccountTfaSetup200Respon response;
        IntServerGetAccountTfaSetup200Respon expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerGetAccountTfaSetup200Respon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGetAccountTfaSetup200Respon.getExample();
        response = (IntServerGetAccountTfaSetup200Respon) api.getAccountTfaSetup();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGetAccountTfaSetup200Respon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGetAccountTfaSetup200Respon.getExample();
        response = (IntServerGetAccountTfaSetup200Respon) api.getAccountTfaSetup();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerGetAccountTfaSetup200Respon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGetAccountTfaSetup200Respon.getExample();
        response = (IntServerGetAccountTfaSetup200Respon) api.getAccountTfaSetup();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGetAccountTfaSetup200Respon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGetAccountTfaSetup200Respon.getExample();
        response = (IntServerGetAccountTfaSetup200Respon) api.getAccountTfaSetup();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerGetAccountTfaSetup200Respon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGetAccountTfaSetup200Respon.getExample();
        response = (IntServerGetAccountTfaSetup200Respon) api.getAccountTfaSetup();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGetAccountTfaSetup200Respon.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGetAccountTfaSetup200Respon.getExample();
        response = (IntServerGetAccountTfaSetup200Respon) api.getAccountTfaSetup();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Aggregate dashboard payload — service counts, recent activity, alerts
     *
     * Use to render the post-login client portal home/dashboard. No body, no params. Returns the structure produced by &#x60;getClientHomeData()&#x60; — counts of active services per module (vps, webhosting, domains, mail, ssl, licenses, backups, floating_ips, scrub_ips, quickservers, servers), recent invoices, payment due alerts, ticket activity summaries, abuse/maintenance announcements, and account-level banners. Designed for one-shot dashboard hydration so individual modules don\&#39;t each issue list calls. Cached implementation lives in &#x60;function_requirements(\&#39;client_home\&#39;)&#x60; -&gt; &#x60;getClientHomeData()&#x60;. Errors: 401 if session is invalid or expired (unauthenticated). Sibling ops: &#x60;getSearch&#x60; (autocomplete), &#x60;getAccountInfo&#x60;, plus per-module list ops like &#x60;getVpsList&#x60;, &#x60;getDomainsList&#x60;, &#x60;getBillingInvoices&#x60;.
     */
    @isTest
    private static void getHomeTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        IntServer_Client client;
        IntServerAccountApi api;
        IntServerHome response;
        IntServerHome expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerHome.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerHome.getExample();
        response = (IntServerHome) api.getHome();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerHome.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerHome.getExample();
        response = (IntServerHome) api.getHome();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerHome.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerHome.getExample();
        response = (IntServerHome) api.getHome();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerHome.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerHome.getExample();
        response = (IntServerHome) api.getHome();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerHome.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerHome.getExample();
        response = (IntServerHome) api.getHome();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerHome.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerHome.getExample();
        response = (IntServerHome) api.getHome();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Global autocomplete across the caller\&#39;s services, domains, and records
     *
     * Use to power the global search box in the client portal — typeahead across services, domains, hostnames, IPs, and ticket subjects scoped to the current account (cross-account leakage is impossible). No body, no path params. Query string is conventionally &#x60;q&#x3D;&#x60; though the underlying &#x60;getSearchAutoComplete($custid)&#x60; may match against multiple fields. Returns a &#x60;SearchAutocompleteResponse&#x60; object grouping hits by category (vps, domains, websites, mail, tickets, invoices, etc.) so the UI can render section headers. Optimized for low latency — does NOT replace per-module list ops for paginated browsing. Errors: 401 unauthenticated. Sibling ops: &#x60;getHome&#x60;, &#x60;getAccountInfo&#x60;, plus per-module list ops (&#x60;getVpsList&#x60;, &#x60;getDomainsList&#x60;, &#x60;getMailList&#x60;, &#x60;getTicketsList&#x60;).
     */
    @isTest
    private static void getSearchTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        IntServer_Client client;
        IntServerAccountApi api;
        IntServerSearchAutocompleteResponse response;
        IntServerSearchAutocompleteResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSearchAutocompleteResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSearchAutocompleteResponse.getExample();
        response = (IntServerSearchAutocompleteResponse) api.getSearch();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSearchAutocompleteResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSearchAutocompleteResponse.getExample();
        response = (IntServerSearchAutocompleteResponse) api.getSearch();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSearchAutocompleteResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSearchAutocompleteResponse.getExample();
        response = (IntServerSearchAutocompleteResponse) api.getSearch();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSearchAutocompleteResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSearchAutocompleteResponse.getExample();
        response = (IntServerSearchAutocompleteResponse) api.getSearch();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSearchAutocompleteResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSearchAutocompleteResponse.getExample();
        response = (IntServerSearchAutocompleteResponse) api.getSearch();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSearchAutocompleteResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSearchAutocompleteResponse.getExample();
        response = (IntServerSearchAutocompleteResponse) api.getSearch();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Destroy the current API/web session — token becomes unusable
     *
     * DESTRUCTIVE: invalidates the caller\&#39;s session record and appsession bag. After this returns the session id can no longer authenticate requests; the client must discard it and prompt the user to log in again. Idempotent — calling with an already-invalid session returns &#x60;200&#x60; (no-op when &#x60;App::accounts()-&gt;data&#x60; is empty). API keys (&#x60;updateAccountApiKey&#x60;) and persistent OAuth links are NOT affected — only this session token. Sibling ops: &#x60;updateAccountPassword&#x60;, &#x60;updateAccountApiKey&#x60;, &#x60;logoutAccountOauth&#x60;, &#x60;deleteAccountOauthName&#x60;.\n\n**Path/Query/Body:** None.\n\n**Returns:** &#x60;{ success: true, text: \&#39;Logged Out\&#39; }&#x60;.\n\n**Side effects:** calls &#x60;App::session()-&gt;destroy()&#x60; only when &#x60;api_check_auth_limits()&#x60; passes for the current account, so a locked account is short-circuited gracefully without further error.\n\n**Auth:** Session/API key.\n\n**Errors:**\n- &#x60;401&#x60; — only on a completely malformed auth header.\n\n**Related calls:**\n- **Re-login:** &#x60;submitLogin&#x60; or &#x60;getOauthRedirect&#x60;.\n- **Per-provider OAuth sign-out (does NOT invalidate the session):** &#x60;logoutAccountOauth&#x60;.\n
     */
    @isTest
    private static void logoutTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        IntServer_Client client;
        IntServerAccountApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.logout();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.logout();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.logout();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.logout();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.logout();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.logout();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Sign out of the upstream OAuth provider session (does not unlink the account)
     *
     * Soft de-authorization for a linked OAuth provider — terminates only the upstream provider session/cookie state. The account-level link in &#x60;accounts_ext&#x60; is preserved, so the user can log back in with that provider without re-linking. Path param: &#x60;name&#x60; (provider key, e.g. &#x60;google&#x60;, &#x60;github&#x60;). No request body. Use when forcing a fresh consent screen on next OAuth login, or after the user reports a stuck/stale provider session. NOT a substitute for &#x60;Logout&#x60; (which kills the MyAdmin session) and NOT a substitute for &#x60;deleteAccountOauthName&#x60; (which permanently severs the link). Returns &#x60;{success:true, text:\&#39;OAuth Provider Logged Out.\&#39;}&#x60;. Errors: 401 unauthenticated. Sibling ops: &#x60;deleteAccountOauthName&#x60;, &#x60;Logout&#x60;, &#x60;getAccountInfo&#x60;.
     */
    @isTest
    private static void logoutAccountOauthTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'name' => 'null'
        };

        IntServer_Client client;
        IntServerAccountApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.logoutAccountOauth(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.logoutAccountOauth(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.logoutAccountOauth(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.logoutAccountOauth(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.logoutAccountOauth(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.logoutAccountOauth(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Rotate the account\&#39;s REST/MCP API key — old key is invalidated immediately
     *
     * DESTRUCTIVE: generates a new 128-character random API key and overwrites the existing entry in &#x60;account_security&#x60; (type &#x60;api_key&#x60;, label &#x60;default&#x60;). The OLD key stops working the moment this returns — any scripts, MCP clients, or CI jobs using the previous key will start receiving 401 until updated. No body, no path params. Returns &#x60;{success:true, text:NEW_KEY}&#x60; — the plaintext key is returned ONCE in this response and is not retrievable later (only stored hashed-equivalent server-side for verification). Store immediately in a secret manager. Use after suspected credential leak, employee offboarding, or routine rotation. Errors: 401 unauthenticated. Sibling ops: &#x60;updateAccountPassword&#x60;, &#x60;updateAccountIpLimits&#x60;, &#x60;Logout&#x60;.
     */
    @isTest
    private static void updateAccountApiKeyTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        IntServer_Client client;
        IntServerAccountApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountApiKey();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountApiKey();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountApiKey();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountApiKey();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountApiKey();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountApiKey();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Toggle account-wide safety locks for password reset and OS reinstall
     *
     * Updates account-level feature flags that gate destructive service operations across every VPS / dedicated / QuickServer the customer owns. Useful for production accounts that want belt-and-suspenders protection against accidental reinstalls or root-password resets via the panel/API. Changes take effect immediately for all subsequent service operations. Sibling ops: &#x60;getAccountInfo&#x60;, &#x60;updateAccountInfo&#x60;, &#x60;updateAccountIpLimits&#x60;.\n\n**Body fields:**\n- &#x60;disable_reset&#x60; (bool, optional) — when &#x60;true&#x60;, blocks server / VPS root-password resets account-wide.\n- &#x60;disable_reinstall&#x60; (bool, optional) — when &#x60;true&#x60;, blocks OS reinstalls account-wide.\n\nSubmit either or both. Flags absent from the request default to &#x60;0&#x60; for the comparison and only persist if their value differs from the current stored value.\n\n**Returns:** &#x60;{ success: true, text }&#x60;.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n- &#x60;400&#x60; / &#x60;422&#x60; — &#x60;Nothing to update&#x60; when neither flag\&#39;s value differs from current.\n
     */
    @isTest
    private static void updateAccountFeaturesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'disableReset' => '',
            'disableReinstall' => ''
        };

        IntServer_Client client;
        IntServerAccountApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountFeatures(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountFeatures(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountFeatures(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountFeatures(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountFeatures(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountFeatures(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountFeatures(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountFeatures(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountFeatures(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Update contact and billing-address fields on the customer profile
     *
     * Use to change the customer\&#39;s name, company, mailing address, phone, GSTIN, locale, timezone, or notification-email overrides (&#x60;email_invoices&#x60;, &#x60;email_abuse&#x60;). Submit only fields you want to change — partial updates supported. Required (must be non-empty if sent): &#x60;name&#x60;, &#x60;country&#x60;, &#x60;address&#x60;, &#x60;city&#x60;, &#x60;state&#x60;, &#x60;zip&#x60;, &#x60;phone&#x60;. Phone is normalized: parens, dashes, underscores stripped. Timezone must be a valid IANA identifier (e.g. &#x60;America/New_York&#x60;). Side effects: triggers FraudRecord + MaxMind risk re-scoring on first save, updates Kayako helpdesk username when &#x60;name&#x60; changes. Returns &#x60;{success:true}&#x60;. Errors: 401 missing-required field; 422 invalid timezone or empty payload. Sibling ops: &#x60;getAccountInfo&#x60;, &#x60;updateAccountFeatures&#x60;, &#x60;updateAccountPassword&#x60;.
     */
    @isTest
    private static void updateAccountInfoTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(201);
        res.setStatus('Created');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'name' => 'null',
            'address' => 'null',
            'city' => 'null',
            'state' => 'null',
            'zip' => 'null',
            'country' => 'null',
            'phone' => 'null',
            'company' => 'null',
            'address2' => 'null',
            'locale' => 'null',
            'emailInvoices' => 'null',
            'emailAbuse' => 'null',
            'disableReset' => '',
            'disableReinstall' => '',
            'disableServerNotifications' => '',
            'disableEmailNotifications' => '',
            'gstin' => 'null'
        };

        IntServer_Client client;
        IntServerAccountApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountInfo(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountInfo(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountInfo(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountInfo(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Add an IP CIDR/range to the account\&#39;s API+web allow-list (lockout-safe)
     *
     * DESTRUCTIVE / LOCKOUT-RISK: appends an IP range to &#x60;accounts.session_limit&#x60;. Once ANY range exists, all &#x60;/apiv2&#x60; and panel access is restricted to matching source IPs. Body: &#x60;{start, end, restrict?}&#x60; — both IPv4 dotted-quad; &#x60;restrict&#x60; is &#x60;Web &amp; API&#x60; (default) or &#x60;Only API&#x60;. Safety net: server checks the caller\&#39;s IP against the resulting list and auto-appends a /32 for the caller if not already covered (response text warns about this). The MCP server sets header &#x60;X-API-APP: 1&#x60; which short-circuits the IP check entirely (see &#x60;api_check_auth_limits()&#x60;), so MCP tools keep working. Caveats: &#x60;192.168.1.0&#x60;-&#x60;192.168.1.255&#x60; is rejected as a placeholder. Returns &#x60;{success:true, text}&#x60;. Errors: 400/422 &#x60;Invalid IP Address&#x60;; 401 unauthenticated. Sibling ops: &#x60;deleteIpLimit&#x60;, &#x60;getAccountInfo&#x60;.
     */
    @isTest
    private static void updateAccountIpLimitsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'start' => 'null',
            'r_end' => 'null'
        };

        IntServer_Client client;
        IntServerAccountApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountIpLimits(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountIpLimits(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountIpLimits(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountIpLimits(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountIpLimits(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountIpLimits(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountIpLimits(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountIpLimits(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountIpLimits(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Change the account login password (verifies current, kills other sessions)
     *
     * DESTRUCTIVE: changes the account login password and invalidates all OTHER active sessions for this account. The current caller\&#39;s session is preserved; API keys generated via &#x60;updateAccountApiKey&#x60; remain valid. Sibling ops: &#x60;updateAccountApiKey&#x60;, &#x60;Logout&#x60;, &#x60;updateAccountTfa&#x60;.\n\n**Body fields:**\n- &#x60;currentpassword&#x60; (string, required) — verified via &#x60;auth::authenticate&#x60;.\n- &#x60;password&#x60; (string, required) — must pass &#x60;valid_password()&#x60; — 8–50 chars, at least one uppercase, one lowercase, one digit, and one of &#x60;_~-!@#$%^&amp;*&#x60;.\n- &#x60;password2&#x60; (string, required) — must equal &#x60;password&#x60;.\n\n**Returns:** &#x60;{ success: bool }&#x60; — flash messages on the response capture per-field errors.\n\n**Side effects:**\n- Persists &#x60;md5(password)&#x60; to &#x60;accounts.account_passwd&#x60;.\n- Sends &#x60;password_change_notify.tpl&#x60; email to the account login id.\n- Destroys all other sessions for this account row-by-row.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n- Flash &#x60;Current login password is mismatching&#x60; — bad &#x60;currentpassword&#x60;.\n- Flash &#x60;Confirm Password is mismatching&#x60; — &#x60;password&#x60; ≠ &#x60;password2&#x60;.\n- Flash password-policy violation message.\n
     */
    @isTest
    private static void updateAccountPasswordTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'password' => 'null'
        };

        IntServer_Client client;
        IntServerAccountApi api;
        IntServerTextResponse response;
        IntServerTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.updateAccountPassword(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.updateAccountPassword(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.updateAccountPassword(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.updateAccountPassword(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.updateAccountPassword(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerTextResponse.getExample();
        response = (IntServerTextResponse) api.updateAccountPassword(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Set the account-level SSH public key auto-installed on new VPS/dedicated orders
     *
     * Stores or replaces the SSH public key on &#x60;account_security&#x60; (type &#x60;ssh_key&#x60;, label &#x60;default&#x60;). On future VPS, dedicated server, or quickserver orders the activation flow can install this key into &#x60;~/.ssh/authorized_keys&#x60; for the root/sudo user, eliminating password-based SSH for the initial provisioning. Body: &#x60;{sshKey:string}&#x60; — full single-line OpenSSH public key (ssh-rsa/ssh-ed25519/ecdsa-sha2-* + base64 + optional comment). Newlines are stripped on save. Existing servers are NOT retroactively updated — only new orders pick this up. Use to set up key-based access ahead of order activation, or to rotate the canonical key. Returns &#x60;{success:true, text:\&#39;SSH Keys Updated.\&#39;}&#x60;. Errors: 401 unauthenticated. Sibling ops: &#x60;getAccountInfo&#x60;, &#x60;updateAccountPassword&#x60;, &#x60;updateAccountApiKey&#x60;.
     */
    @isTest
    private static void updateAccountSshKeyTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'sshKey' => 'null'
        };

        IntServer_Client client;
        IntServerAccountApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountSshKey(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountSshKey(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountSshKey(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountSshKey(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountSshKey(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountSshKey(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Verify TOTP code and enable two-factor authentication on the account
     *
     * Use as step 2 of 2FA enrollment, after &#x60;getAccountTfaSetup&#x60;. Body: &#x60;{2fa_google_code:string}&#x60; — the 6-digit code currently displayed by the user\&#39;s authenticator app for the secret returned from &#x60;getAccountTfaSetup&#x60;. On verify success, the secret is persisted to &#x60;account_security&#x60; (type &#x60;2fa_google_key&#x60;, label &#x60;default&#x60;) and ALL OTHER active sessions for this account are invalidated (server destroys appsessions and sessions rows where session_id !&#x3D; current). The current session remains. Subsequent logins will require both password and a fresh TOTP code. Returns &#x60;{success:true, text}&#x60;. Errors: 401 unauthenticated; 422 &#x60;Invalid Code&#x60; if the TOTP doesn\&#39;t match (clock skew, wrong app entry, or expired). Sibling ops: &#x60;getAccountTfaSetup&#x60;, &#x60;deleteAccountTfa&#x60;.
     */
    @isTest
    private static void updateAccountTfaTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            '' => 'null'
        };

        IntServer_Client client;
        IntServerAccountApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountTfa(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountTfa(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountTfa(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountTfa(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountTfa(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountTfa(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerAccountApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountTfa(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountTfa(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateAccountTfa(params);
        System.assertEquals(expectedResponse, response);
    }
}