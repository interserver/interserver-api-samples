@isTest
private class IntServerPublicApiTest {
    /**
     * List enabled currency codes accepted for billing and preferences
     *
     * Populates a currency selector on signup, billing-preferences, or invoice-display forms. Public — no auth required. The list changes only when an admin enables/disables a currency — cache client-side. Sibling ops: &#x60;getCountries&#x60;, &#x60;getTimezones&#x60;, &#x60;getAccountLocales&#x60;, plus the billing-preference endpoints under &#x60;/account/_*&#x60; and &#x60;/billing/_*&#x60;.\n\n**Path/Query/Body:** None.\n\n**Returns:** flat JSON array of ISO-4217 currency codes — e.g. &#x60;[&quot;USD&quot;, &quot;EUR&quot;, &quot;GBP&quot;, &quot;INR&quot;]&#x60;. Sourced from rows in the &#x60;currencies&#x60; table where &#x60;currency_enabled&#x3D;1&#x60;, in the natural row order. The endpoint returns codes only — for symbols, decimals, or exchange rates use a separate currency-detail endpoint or a static client-side map.\n\n**Auth:** None.\n\n**Errors:** No documented error path.\n\n**Related calls:**\n- **Apply to account profile:** &#x60;updateAccountInfo&#x60;.\n- **Other preference catalogs:** &#x60;getCountries&#x60;, &#x60;getTimezones&#x60;, &#x60;getAccountLocales&#x60;.\n
     */
    @isTest
    private static void getAccountCurrenciesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        IntServer_Client client;
        IntServerPublicApi api;
        List<String> response;
        List<String> expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<String>{''});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<String>{''};
        response = (List<String>) api.getAccountCurrencies();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<String>{''});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<String>{''};
        response = (List<String>) api.getAccountCurrencies();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<String>{''});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<String>{''};
        response = (List<String>) api.getAccountCurrencies();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<String>{''});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<String>{''};
        response = (List<String>) api.getAccountCurrencies();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<String>{''});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<String>{''};
        response = (List<String>) api.getAccountCurrencies();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<String>{''});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<String>{''};
        response = (List<String>) api.getAccountCurrencies();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List supported UI locales with English and native display names
     *
     * Renders the language-picker for account preferences or login pages. Public — no auth required. Cross-references PHP\&#39;s Punic locale data with &#x60;locale/google_langs.php&#x60; so only locales with Google Translate support are returned. Result is essentially static — cache client-side. Sibling ops: &#x60;getCountries&#x60;, &#x60;getTimezones&#x60;, &#x60;getAccountCurrencies&#x60;, &#x60;updateAccountInfo&#x60; (consumes the chosen locale).\n\n**Path/Query/Body:** None.\n\n**Returns:** JSON object keyed by BCP-47-style locale code, with &#x60;{ name, local_name }&#x60; per entry — e.g.\n\n    {\n      &quot;en&quot;: { &quot;name&quot;: &quot;English&quot;, &quot;local_name&quot;: &quot;English&quot; },\n      &quot;es&quot;: { &quot;name&quot;: &quot;Spanish&quot;, &quot;local_name&quot;: &quot;español&quot; },\n      &quot;fr&quot;: { &quot;name&quot;: &quot;French&quot;, &quot;local_name&quot;: &quot;français&quot; }\n    }\n\n&#x60;name&#x60; is the English label; &#x60;local_name&#x60; is the locale\&#39;s name in its own language (good for accessibility and avoiding the wrong-script problem).\n\n**Auth:** None.\n\n**Errors:** No documented error path.\n\n**Related calls:**\n- **Apply to account profile:** &#x60;updateAccountInfo&#x60; (sets &#x60;locale&#x60;).\n- **Other preference catalogs:** &#x60;getCountries&#x60;, &#x60;getTimezones&#x60;, &#x60;getAccountCurrencies&#x60;.\n
     */
    @isTest
    private static void getAccountLocalesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        IntServer_Client client;
        IntServerPublicApi api;
        Map<String, IntServerGetAccountLocales200Respons> response;
        Map<String, IntServerGetAccountLocales200Respons> expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new Map<String, IntServerGetAccountLocales200Respons>{'key'=>IntServerGetAccountLocales200Respons.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new Map<String, IntServerGetAccountLocales200Respons>{'key'=>IntServerGetAccountLocales200Respons.getExample()};
        response = (Map<String, IntServerGetAccountLocales200Respons>) api.getAccountLocales();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new Map<String, IntServerGetAccountLocales200Respons>{'key'=>IntServerGetAccountLocales200Respons.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new Map<String, IntServerGetAccountLocales200Respons>{'key'=>IntServerGetAccountLocales200Respons.getExample()};
        response = (Map<String, IntServerGetAccountLocales200Respons>) api.getAccountLocales();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new Map<String, IntServerGetAccountLocales200Respons>{'key'=>IntServerGetAccountLocales200Respons.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new Map<String, IntServerGetAccountLocales200Respons>{'key'=>IntServerGetAccountLocales200Respons.getExample()};
        response = (Map<String, IntServerGetAccountLocales200Respons>) api.getAccountLocales();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Fetch a base64 JPEG captcha challenge for human verification
     *
     * Fetches a fresh captcha challenge image to display before submitting &#x60;submitSignup&#x60; (or any unauthenticated form that needs human verification). Public endpoint — no authentication required. Sibling ops: &#x60;getLoginInfo&#x60; (returns a captcha alongside other login-page data), &#x60;submitSignup&#x60; (consumes the answer), &#x60;submitLogin&#x60;.\n\n**Path/Query/Body:** None.\n\n**Returns:** &#x60;{ captcha: string }&#x60; — &#x60;captcha&#x60; is a &#x60;data:image/jpeg;base64,...&#x60; URL ready to drop into an &#x60;&lt;img src&gt;&#x60;.\n\n**Side effects:** the phrase is stored server-side in &#x60;$_SESSION[\&#39;captcha\&#39;]&#x60; (also aliased to the signup-flow key &#x60;$_SESSION[\&#39;captchaSignup\&#39;]&#x60; and forgot-password key &#x60;$_SESSION[\&#39;captchaFP\&#39;]&#x60;). The browser must send the same &#x60;PHPSESSID&#x60; cookie back when posting the answer.\n\n**Charset:** 8 chars from &#x60;3456789ABCDEFGHJKLMNPQRSTWXY&#x60; — no ambiguous &#x60;0&#x60;/&#x60;1&#x60;/&#x60;I&#x60;/&#x60;O&#x60;/&#x60;2&#x60;/&#x60;Z&#x60;.\n\n**Related calls:**\n- **Consumers:** &#x60;submitSignup&#x60;, &#x60;submitLogin&#x60;.\n- **One-shot login bootstrap:** &#x60;getLoginInfo&#x60;.\nanswer in &#x60;captcha&#x60; field).\n
     */
    @isTest
    private static void getCaptchaTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        IntServer_Client client;
        IntServerPublicApi api;
        IntServerCaptchaResponse response;
        IntServerCaptchaResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerCaptchaResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCaptchaResponse.getExample();
        response = (IntServerCaptchaResponse) api.getCaptcha();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCaptchaResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCaptchaResponse.getExample();
        response = (IntServerCaptchaResponse) api.getCaptcha();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerCaptchaResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCaptchaResponse.getExample();
        response = (IntServerCaptchaResponse) api.getCaptcha();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCaptchaResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCaptchaResponse.getExample();
        response = (IntServerCaptchaResponse) api.getCaptcha();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerCaptchaResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCaptchaResponse.getExample();
        response = (IntServerCaptchaResponse) api.getCaptcha();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerCaptchaResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerCaptchaResponse.getExample();
        response = (IntServerCaptchaResponse) api.getCaptcha();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List enabled countries keyed by ISO-2/ISO-3/numeric code
     *
     * Populates country dropdowns in account registration, billing-address forms, and domain/whois contact forms. Public — no auth required. Disabled countries (e.g. embargoed jurisdictions) are excluded — admins toggle this in &#x60;country_t.enabled&#x60;. Sibling ops: &#x60;getTimezones&#x60;, &#x60;getAccountLocales&#x60;, &#x60;getAccountCurrencies&#x60;, &#x60;updateAccountInfo&#x60; (consumes the chosen country).\n\n**Query parameters:**\n- &#x60;fetch_by&#x60; (string, optional) — one of &#x60;iso2&#x60; (default; two-letter codes like &#x60;US&#x60;, &#x60;GB&#x60;), &#x60;iso3&#x60; (three-letter like &#x60;USA&#x60;, &#x60;GBR&#x60;), or &#x60;numcode&#x60; (UN M49 numeric like &#x60;840&#x60;). Any other value silently falls back to &#x60;iso2&#x60;.\n\n**Body:** None.\n\n**Returns:** JSON object mapping the chosen key format to the country\&#39;s short name — e.g. &#x60;{ &quot;AF&quot;: &quot;Afghanistan&quot;, &quot;US&quot;: &quot;United States&quot;, &quot;ZW&quot;: &quot;Zimbabwe&quot; }&#x60;. Sourced from the &#x60;country_t&#x60; table, filtered to &#x60;enabled&#x3D;1&#x60;, ordered alphabetically by &#x60;short_name&#x60;.\n\n**Auth:** None.\n\n**Errors:** No documented error path.\n\n**Related calls:**\n- **Apply to account profile:** &#x60;updateAccountInfo&#x60;.\n- **Other preference catalogs:** &#x60;getTimezones&#x60;, &#x60;getAccountLocales&#x60;, &#x60;getAccountCurrencies&#x60;.\n
     */
    @isTest
    private static void getCountriesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'fetchBy' => iso2
        };

        IntServer_Client client;
        IntServerPublicApi api;
        Object response;
        Object expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(null);
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = null;
        response = (Object) api.getCountries(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(null);
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = null;
        response = (Object) api.getCountries(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(null);
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = null;
        response = (Object) api.getCountries(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Discover available modules, service packages, categories, and types
     *
     * Enumerates what services this MyAdmin install sells before placing orders or building a signup UI. Public — no auth required. Sibling ops: &#x60;getNewVps&#x60;, &#x60;getNewWebsite&#x60;, &#x60;getNewMail&#x60;, &#x60;getNewSsl&#x60;, &#x60;getNewLicense&#x60;, &#x60;getNewBackup&#x60;, &#x60;getNewQs&#x60;, &#x60;getNewServer&#x60; — each module\&#39;s catalog op for buyable-package details.\n\n**Path/Query/Body:** None.\n\n**Returns:** &#x60;{ modules, services, serviceTypes, serviceCategories }&#x60;.\n- &#x60;modules&#x60; (array) — enabled plugin modules (&#x60;vps&#x60;, &#x60;webhosting&#x60;, &#x60;domains&#x60;, &#x60;ssl&#x60;, etc.).\n- &#x60;services&#x60; (object) — map of &#x60;services_id&#x60; → row from the &#x60;services&#x60; table, filtered to &#x60;services_buyable&#x3D;1 AND services_hidden&#x3D;0&#x60;, with &#x60;services_ourcost&#x60; / &#x60;services_hidden&#x60; stripped, and &#x60;services_id&#x60; / &#x60;services_category&#x60; / &#x60;services_type&#x60; cast to int and &#x60;services_cost&#x60; cast to float.\n- &#x60;serviceTypes&#x60; (object) — joins service rows to human-readable type names.\n- &#x60;serviceCategories&#x60; (object) — joins service rows to category names.\n\n**Auth:** None.\n\n**Errors:** No documented error path; 401 only if a stricter auth layer is added upstream.\n\n**Related calls:**\n- **Module-specific order catalog:** &#x60;getNewVps&#x60;, &#x60;getNewWebsite&#x60;, &#x60;getNewMail&#x60;, &#x60;getNewSsl&#x60;, &#x60;getNewLicense&#x60;, &#x60;getNewBackup&#x60;, &#x60;getNewQs&#x60;, &#x60;getNewServer&#x60;.\n- **Deeper health probe:** &#x60;pingServer&#x60;.\n
     */
    @isTest
    private static void getInfoTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        IntServer_Client client;
        IntServerPublicApi api;
        IntServerServicesInfo response;
        IntServerServicesInfo expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServicesInfo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServicesInfo.getExample();
        response = (IntServerServicesInfo) api.getInfo();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServicesInfo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServicesInfo.getExample();
        response = (IntServerServicesInfo) api.getInfo();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServicesInfo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServicesInfo.getExample();
        response = (IntServerServicesInfo) api.getInfo();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServicesInfo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServicesInfo.getExample();
        response = (IntServerServicesInfo) api.getInfo();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerServicesInfo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServicesInfo.getExample();
        response = (IntServerServicesInfo) api.getInfo();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerServicesInfo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerServicesInfo.getExample();
        response = (IntServerServicesInfo) api.getInfo();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Fetch logo, captcha, language, and stats for rendering a login page
     *
     * Bootstraps an unauthenticated login page in one round-trip — branding logo, fresh captcha challenge, auto-detected user language, and live counts of VPS / websites / servers managed by the system (often used as marketing stats). Public — no auth required. Sibling ops: &#x60;submitLogin&#x60; (consume the captcha), &#x60;getCaptcha&#x60; (refresh captcha only), &#x60;getAccountLocales&#x60;, &#x60;submitSignup&#x60;.\n\n**Path/Query/Body:** None.\n\n**Returns** &#x60;{ logo, captcha, language, counts }&#x60;:\n- &#x60;logo&#x60; (string) — URL; uses the &#x60;LOGO&#x60; constant or a default.\n- &#x60;captcha&#x60; (string) — &#x60;data:image/jpeg;base64,...&#x60; image; phrase is stored server-side under &#x60;$_SESSION[\&#39;captcha\&#39;]&#x60; (also aliased to &#x60;$_SESSION[\&#39;captchaSignup\&#39;]&#x60; and &#x60;$_SESSION[\&#39;captchaFP\&#39;]&#x60;) — the browser\&#39;s &#x60;PHPSESSID&#x60; cookie carries the phrase to &#x60;submitLogin&#x60; / &#x60;submitSignup&#x60;.\n- &#x60;language&#x60; (string) — BCP-47 locale (e.g. &#x60;en-US&#x60;).\n- &#x60;counts&#x60; (object) — &#x60;{ vps: int, websites: int, servers: int }&#x60; from live &#x60;SELECT COUNT(*)&#x60; on the underlying tables.\n\n**Auth:** None.\n\n**Errors:** &#x60;403&#x60; per &#x60;LoginResponseError&#x60; if a stricter login gate is configured upstream.\n\n**Related calls:**\n- **Next:** &#x60;submitLogin&#x60; (login form post) or &#x60;submitSignup&#x60; (new account).\n- **Captcha refresh only:** &#x60;getCaptcha&#x60;.\n- **OAuth alternative:** &#x60;getOauthRedirect&#x60;.\n
     */
    @isTest
    private static void getLoginInfoTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        IntServer_Client client;
        IntServerPublicApi api;
        IntServerLoginInfo response;
        IntServerLoginInfo expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerLoginInfo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerLoginInfo.getExample();
        response = (IntServerLoginInfo) api.getLoginInfo();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerLoginInfo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerLoginInfo.getExample();
        response = (IntServerLoginInfo) api.getLoginInfo();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerLoginInfo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerLoginInfo.getExample();
        response = (IntServerLoginInfo) api.getLoginInfo();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerLoginInfo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerLoginInfo.getExample();
        response = (IntServerLoginInfo) api.getLoginInfo();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerLoginInfo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerLoginInfo.getExample();
        response = (IntServerLoginInfo) api.getLoginInfo();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerLoginInfo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerLoginInfo.getExample();
        response = (IntServerLoginInfo) api.getLoginInfo();
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
        IntServerPublicApi api;
        IntServerBuyItNowList response;
        IntServerBuyItNowList expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
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
        api = new IntServerPublicApi(client);
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
        api = new IntServerPublicApi(client);
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
     * Begin OAuth login flow — redirect user to provider for authentication
     *
     * Use as step 1 of social login. Navigate the browser (typically a popup) to &#x60;/apiv2/oauth?provider&#x3D;X&#x60; so the provider authenticates the user, then handle the postMessage from the popup. Public — no auth required.\nQuery params: &#x60;provider&#x60; (required, case-sensitive: &#x60;Google&#x60;/&#x60;GitHub&#x60;/&#x60;Facebook&#x60;/&#x60;Twitter&#x60;), &#x60;origin&#x60; (optional, opener window origin used to target postMessage instead of &#x60;*&#x60;).\nThe endpoint redirects directly to the provider rather than returning JSON. After the provider callback, the popup posts one of: &#x60;oauth_success&#x60; (logged in), &#x60;oauth_2fa_required&#x60; (call &#x60;patchOauthTwoFactor&#x60; with the &#x60;oauth_token&#x60;), &#x60;oauth_link_required&#x60; (call &#x60;postOauthCallback&#x60; to link or create), or &#x60;oauth_error&#x60;.\nSiblings: &#x60;postOauthCallback&#x60;, &#x60;patchOauthTwoFactor&#x60;, &#x60;submitLogin&#x60; (password flow).
     */
    @isTest
    private static void getOauthRedirectTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'provider' => 'null'
        };

        IntServer_Client client;
        IntServerPublicApi api;
        IntServerGetOauthRedirect200Response response;
        IntServerGetOauthRedirect200Response expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerGetOauthRedirect200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGetOauthRedirect200Response.getExample();
        response = (IntServerGetOauthRedirect200Response) api.getOauthRedirect(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGetOauthRedirect200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGetOauthRedirect200Response.getExample();
        response = (IntServerGetOauthRedirect200Response) api.getOauthRedirect(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerGetOauthRedirect200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGetOauthRedirect200Response.getExample();
        response = (IntServerGetOauthRedirect200Response) api.getOauthRedirect(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGetOauthRedirect200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGetOauthRedirect200Response.getExample();
        response = (IntServerGetOauthRedirect200Response) api.getOauthRedirect(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerGetOauthRedirect200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGetOauthRedirect200Response.getExample();
        response = (IntServerGetOauthRedirect200Response) api.getOauthRedirect(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerGetOauthRedirect200Response.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerGetOauthRedirect200Response.getExample();
        response = (IntServerGetOauthRedirect200Response) api.getOauthRedirect(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List all PHP timezone identifiers usable on accounts and services
     *
     * Populates a timezone picker for account preferences or for VPS / QuickServer timezone changes. Public — no auth required. Backed by PHP\&#39;s &#x60;DateTimeZone::listIdentifiers()&#x60; so the catalog is large (~400+ zones, including deprecated aliases like &#x60;US/Eastern&#x60;). Result is fixed for a given PHP build — cache aggressively client-side. Sibling ops: &#x60;postVpsChangeTimezone&#x60;, &#x60;postQsChangeTimezone&#x60;, &#x60;getCountries&#x60;, &#x60;getAccountLocales&#x60;, &#x60;getAccountCurrencies&#x60;.\n\n**Path/Query/Body:** None.\n\n**Returns:** flat JSON array of stable IANA tz strings, e.g. &#x60;[&quot;Africa/Abidjan&quot;, &quot;America/New_York&quot;, &quot;Asia/Tokyo&quot;, &quot;Europe/London&quot;, &quot;UTC&quot;]&#x60;. Values are usable verbatim on the timezone-change endpoints; no translation or country-grouping is performed here.\n\n**Auth:** None.\n\n**Errors:** No documented error path under normal operation.\n\n**Related calls:**\n- **Apply selection to a service:** &#x60;postVpsChangeTimezone&#x60; (&#x60;/vps/{id}/change_timezone&#x60;), &#x60;postQsChangeTimezone&#x60; (&#x60;/qs/{id}/change_timezone&#x60;).\n- **Apply to account profile:** &#x60;updateAccountInfo&#x60; (sets &#x60;timezone&#x60;).\n- **Other preference catalogs:** &#x60;getCountries&#x60;, &#x60;getAccountLocales&#x60;, &#x60;getAccountCurrencies&#x60;.\n
     */
    @isTest
    private static void getTimezonesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        IntServer_Client client;
        IntServerPublicApi api;
        List<String> response;
        List<String> expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<String>{''});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<String>{''};
        response = (List<String>) api.getTimezones();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<String>{''});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<String>{''};
        response = (List<String>) api.getTimezones();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<String>{''});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<String>{''};
        response = (List<String>) api.getTimezones();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Submit 2FA code to finish OAuth login when account has 2FA enabled
     *
     * Final step of the OAuth login flow when the account has 2FA enabled. Called after &#x60;postOauthCallback&#x60; (or the popup\&#39;s &#x60;window.postMessage()&#x60; handshake) returned &#x60;2fa_required&#x60;. Verifies the TOTP against the account\&#39;s stored Google Authenticator secret and creates the session. Public — no auth required. Sibling ops: &#x60;postOauthCallback&#x60; (prior step), &#x60;getOauthRedirect&#x60; (entry point), &#x60;getAccountTfaSetup&#x60; (enroll 2FA), &#x60;submitLogin&#x60;.\n\n**Body fields** (JSON or form):\n- &#x60;code&#x60; (string, required) — 6-digit TOTP from the authenticator app.\n- &#x60;account_id&#x60; (integer, required) — returned by the prior &#x60;postOauthCallback&#x60;.\n- &#x60;oauth_token&#x60; (string, optional) — signed token from the original &#x60;postMessage&#x60; payload, type &#x60;2fa&#x60;, 10-minute expiry. When present, its embedded OAuth profile data is merged into the account (name / picture / phone / address) for any fields still empty.\n\n**Returns:** &#x60;{ login: true, sessionId, account_id, account_lid, ima, name, gravatar }&#x60;.\n\n**Errors:**\n- &#x60;400&#x60; — invalid / expired &#x60;oauth_token&#x60; or no pending verification.\n- &#x60;401&#x60; — invalid 2FA code.\n- &#x60;409&#x60; — 2FA not enabled on the account.\n- &#x60;422&#x60; — missing &#x60;code&#x60;.\n\n**Related calls:**\n- **Prerequisite:** &#x60;postOauthCallback&#x60;.\n- **Enroll 2FA on the account first:** &#x60;getAccountTfaSetup&#x60; → &#x60;updateAccountTfa&#x60;.\n- **Alternate login:** &#x60;submitLogin&#x60;.\n
     */
    @isTest
    private static void patchOauthTwoFactorTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerPatchOauthTwoFactorRequest' => ''
        };

        IntServer_Client client;
        IntServerPublicApi api;
        IntServerPatchOauthTwoFactor200Respo response;
        IntServerPatchOauthTwoFactor200Respo expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerPatchOauthTwoFactor200Respo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerPatchOauthTwoFactor200Respo.getExample();
        response = (IntServerPatchOauthTwoFactor200Respo) api.patchOauthTwoFactor(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerPatchOauthTwoFactor200Respo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerPatchOauthTwoFactor200Respo.getExample();
        response = (IntServerPatchOauthTwoFactor200Respo) api.patchOauthTwoFactor(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerPatchOauthTwoFactor200Respo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerPatchOauthTwoFactor200Respo.getExample();
        response = (IntServerPatchOauthTwoFactor200Respo) api.patchOauthTwoFactor(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerPatchOauthTwoFactor200Respo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerPatchOauthTwoFactor200Respo.getExample();
        response = (IntServerPatchOauthTwoFactor200Respo) api.patchOauthTwoFactor(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerPatchOauthTwoFactor200Respo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerPatchOauthTwoFactor200Respo.getExample();
        response = (IntServerPatchOauthTwoFactor200Respo) api.patchOauthTwoFactor(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerPatchOauthTwoFactor200Respo.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerPatchOauthTwoFactor200Respo.getExample();
        response = (IntServerPatchOauthTwoFactor200Respo) api.patchOauthTwoFactor(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Liveness check — returns the JSON string &quot;pong&quot; to confirm API is up
     *
     * Trivial GET that returns the JSON string &#x60;&quot;pong&quot;&#x60; so AI agents and monitors can verify the API endpoint is reachable. Public — no auth required, no params, no body. Does not exercise the database, queue, or any plugin modules. Sibling ops: &#x60;getInfo&#x60; (richer probe that touches MySQL).\n\n**Path/Query/Body:** None.\n\n**Returns:** JSON-encoded string &#x60;&quot;pong&quot;&#x60; with HTTP 200.\n\n**Auth:** None (public endpoint).\n\n**Errors:** No documented error path under normal operation — a non-200 or absent response indicates the API is down, the host is unreachable, or upstream routing is broken.\n\n**Use when:**\n- Bootstrapping a new client and want to confirm the API is reachable.\n- Smoke-testing in CI/health-check pipelines.\n- Diagnosing connectivity issues before higher-cost calls.\n\n**Related calls:**\n- **Deeper health probe:** &#x60;getInfo&#x60; (exercises the DB layer).\n
     */
    @isTest
    private static void pingServerTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        IntServer_Client client;
        IntServerPublicApi api;
        String response;
        String expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize('');
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = '';
        response = (String) api.pingServer();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize('');
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = '';
        response = (String) api.pingServer();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize('');
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = '';
        response = (String) api.pingServer();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Complete OAuth login by linking provider to existing or new account
     *
     * Step 3 of the OAuth login flow. Called after &#x60;getOauthRedirect&#x60; returned &#x60;oauth_link_required&#x60; via the popup\&#39;s &#x60;window.postMessage()&#x60;. Either links the OAuth identity to an existing account (verifying password) or creates a new account. Public — no auth required. Sibling ops: &#x60;patchOauthTwoFactor&#x60; (2FA follow-up), &#x60;getOauthRedirect&#x60; (start the flow), &#x60;submitSignup&#x60;, &#x60;submitLogin&#x60;.\n\n**Body fields** (JSON or form):\n- &#x60;oauth_token&#x60; (string, required) — signed token from the popup\&#39;s &#x60;window.postMessage()&#x60; payload; 10-minute expiry.\n- &#x60;login&#x60; (string, required) — email.\n- &#x60;password&#x60; (string, required).\n- &#x60;create&#x60; (boolean, optional) — set &#x60;true&#x60; to create a new account instead of linking.\n- &#x60;email_confirmation&#x60; (string, conditional) — 8-char code emailed on the first &#x60;create&#x3D;true&#x60; attempt; server returns 422 &#x60;email_verification_required&#x60; until provided.\n- &#x60;tfa&#x60; (string, conditional) — 6-digit TOTP when the existing account has 2FA enabled (after the first attempt returns 422 &#x60;2fa_required&#x60;).\n\n**Returns:** &#x60;{ login|signup|linked: true, sessionId, account_id, account_lid, ima, name, gravatar }&#x60;.\n\n**Errors:**\n- &#x60;400&#x60; — invalid / expired &#x60;oauth_token&#x60;.\n- &#x60;401&#x60; — bad password or wrong 2FA code.\n- &#x60;409&#x60; — account already exists (when &#x60;create: true&#x60;).\n- &#x60;422&#x60; — missing field; &#x60;email_verification_required&#x60;; &#x60;2fa_required&#x60;.\n\n**Related calls:**\n- **Prerequisite:** &#x60;getOauthRedirect&#x60; to initiate the popup flow.\n- **Follow-up when 2FA required:** &#x60;patchOauthTwoFactor&#x60;.\n- **Alternate entry points:** &#x60;submitLogin&#x60;, &#x60;submitSignup&#x60;.\n
     */
    @isTest
    private static void postOauthCallbackTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'provider' => 'null',
            'intServerPostOauthCallbackRequest' => ''
        };

        IntServer_Client client;
        IntServerPublicApi api;
        IntServerPostOauthCallback200Respons response;
        IntServerPostOauthCallback200Respons expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerPostOauthCallback200Respons.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerPostOauthCallback200Respons.getExample();
        response = (IntServerPostOauthCallback200Respons) api.postOauthCallback(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerPostOauthCallback200Respons.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerPostOauthCallback200Respons.getExample();
        response = (IntServerPostOauthCallback200Respons) api.postOauthCallback(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerPostOauthCallback200Respons.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerPostOauthCallback200Respons.getExample();
        response = (IntServerPostOauthCallback200Respons) api.postOauthCallback(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerPostOauthCallback200Respons.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerPostOauthCallback200Respons.getExample();
        response = (IntServerPostOauthCallback200Respons) api.postOauthCallback(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerPostOauthCallback200Respons.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerPostOauthCallback200Respons.getExample();
        response = (IntServerPostOauthCallback200Respons) api.postOauthCallback(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerPostOauthCallback200Respons.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerPostOauthCallback200Respons.getExample();
        response = (IntServerPostOauthCallback200Respons) api.postOauthCallback(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Authenticate with email + password and return a session token
     *
     * Primary password→session-token exchange. Pass the returned session id back as the &#x60;sessionid&#x60; HTTP header on subsequent calls. Public — no auth required. Sibling ops: &#x60;getLoginInfo&#x60; (captcha + branding), &#x60;getOauthRedirect&#x60; (social login), &#x60;submitSignup&#x60;, &#x60;updateAccountApiKey&#x60; (rotate API key once logged in).\n\n**Body fields** (JSON or form):\n- &#x60;login&#x60; (string, required) — email.\n- &#x60;passwd&#x60; (string, required) — password.\n- &#x60;tfa&#x60; (string, conditional) — 6-digit TOTP when the account has 2FA enabled.\n- &#x60;verify&#x60; (string, conditional) — 8-char email-confirmation code returned via email when logging in from a new IP. Triggered automatically when the IP has no &#x60;acquittal&#x60; trial record yet (see &#x60;Trial&#x60; ORM, type &#x60;verify_email&#x60;).\n- &#x60;remember&#x60; (boolean / &#x60;\&#39;true\&#39;&#x60; / &#x60;\&#39;yes\&#39;&#x60; / &#x60;\&#39;1\&#39;&#x60;, optional) — extends cookie lifetime.\n\n**Returns:** &#x60;{ sessionId, account_id, account_lid, ima, name, gravatar }&#x60;. The &#x60;sessionId&#x60; value is the credential to send on every subsequent authenticated request.\n\n**Errors:**\n- &#x60;401&#x60; — bad credentials or wrong 2FA / verify code.\n- &#x60;422&#x60; — missing &#x60;login&#x60; / &#x60;passwd&#x60; / &#x60;tfa&#x60; / &#x60;verify&#x60;; response body\&#39;s &#x60;field&#x60; indicates which input is required next.\n- &#x60;429&#x60; — too many failed attempts (login-log rate-limit) or max code retries reached.\n\n**Related calls:**\n- **Prerequisite:** &#x60;getLoginInfo&#x60; to fetch the captcha challenge and counts.\n- **Alternate:** &#x60;getOauthRedirect&#x60; → &#x60;postOauthCallback&#x60; for social login.\n- **After login:** &#x60;updateAccountApiKey&#x60;.\n
     */
    @isTest
    private static void submitLoginTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'login' => 'null',
            'passwd' => 'null',
            'remember' => 'null',
            'gRecaptchaResponse' => '',
            'tfa' => 'null'
        };

        IntServer_Client client;
        IntServerPublicApi api;
        IntServerLoginSuccessResponse response;
        IntServerLoginSuccessResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerLoginSuccessResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerLoginSuccessResponse.getExample();
        response = (IntServerLoginSuccessResponse) api.submitLogin(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerLoginSuccessResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerLoginSuccessResponse.getExample();
        response = (IntServerLoginSuccessResponse) api.submitLogin(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerLoginSuccessResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerLoginSuccessResponse.getExample();
        response = (IntServerLoginSuccessResponse) api.submitLogin(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerLoginSuccessResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerLoginSuccessResponse.getExample();
        response = (IntServerLoginSuccessResponse) api.submitLogin(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerLoginSuccessResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerLoginSuccessResponse.getExample();
        response = (IntServerLoginSuccessResponse) api.submitLogin(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerLoginSuccessResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerLoginSuccessResponse.getExample();
        response = (IntServerLoginSuccessResponse) api.submitLogin(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Create a new customer account (email + password + captcha + ToS)
     *
     * First step of the signup flow before adding payment or services. Public — no auth required. The account is created in &#x60;pending&#x60; state and moved to &#x60;active&#x60; once the email-confirmation code is verified; an &#x60;account.activated&#x60; event then fires (welcome email + admin notification). MaxMind GeoIP populates &#x60;country&#x60; from the client IP. Sibling ops: &#x60;submitLogin&#x60;, &#x60;getCaptcha&#x60;, &#x60;getLoginInfo&#x60;, &#x60;addBillingPrepay&#x60;, plus the &#x60;add*&#x60; service ops to follow up after signup.\n\n**Body fields** (JSON or form):\n- &#x60;login&#x60; (string, required) — email; must be valid and not an alias like &#x60;+tag&#x60; or dotted gmail.\n- &#x60;passwd&#x60; (string, required) — 4–64 chars.\n- &#x60;tos&#x60; (truthy, required) — &#x60;yes&#x60; / &#x60;true&#x60; / &#x60;1&#x60;.\n- &#x60;captcha&#x60; (string, required) — answer to the phrase from &#x60;getCaptcha&#x60; or &#x60;getLoginInfo&#x60; (server reads the phrase from &#x60;$_SESSION[\&#39;captchaSignup\&#39;]&#x60;).\n- &#x60;email_confirmation&#x60; (string, conditional) — 8-char code emailed on the first attempt; server returns &#x60;400 { field: \&#39;email_confirmation\&#39; }&#x60; until provided.\n- &#x60;remember&#x60; (boolean / &#x60;\&#39;true\&#39;&#x60; / &#x60;\&#39;yes\&#39;&#x60; / &#x60;\&#39;1\&#39;&#x60;, optional) — 256-day cookie.\n\n**Returns:** &#x60;{ sessionId, account_id, account_lid, ima }&#x60;.\n\n**Errors:**\n- &#x60;400&#x60; — missing or invalid &#x60;login&#x60; / &#x60;passwd&#x60; / &#x60;tos&#x60; / &#x60;captcha&#x60; / &#x60;email_confirmation&#x60;; blocked-domain or aliased-email; account already exists.\n- &#x60;402&#x60; per &#x60;LoginResponseError&#x60; — signup gate misconfigured upstream.\n\n**Related calls:**\n- **Prerequisite:** &#x60;getCaptcha&#x60; or &#x60;getLoginInfo&#x60;.\n- **After signup:** &#x60;submitLogin&#x60;, &#x60;addBillingPrepay&#x60;, plus any &#x60;add*&#x60; order op.\n
     */
    @isTest
    private static void submitSignupTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'intServerLoginSubmissionExample' => {"login":"user@domain.com","passwd":"mypassword","remember":"true","g-recaptcha-response":{"__v_isShallow":false,"dep":{"w":0,"n":0},"__v_isRef":true,"_rawValue":"zzzzz","_value":"zzzzz"}}
        };

        IntServer_Client client;
        IntServerPublicApi api;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.submitSignup(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.submitSignup(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerPublicApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.submitSignup(params);
        System.assertEquals(expectedResponse, response);
    }
}