@isTest
private class IntServerDNSApiTest {
    /**
     * Create a new authoritative DNS zone seeded with apex A + NS + SOA records
     *
     * Creates a new authoritative zone in PowerDNS for this account and seeds it with a default record set: apex &#x60;A&#x60; record pointing at &#x60;ip&#x60;, &#x60;NS&#x60; records for InterServer\&#39;s &#x60;cdns1.interserver.net&#x60; / &#x60;cdns2.interserver.net&#x60; anycast resolvers, and an &#x60;SOA&#x60;. Served immediately by InterServer\&#39;s nameservers via supermaster propagation. **Important:** this only creates the hosted zone — the customer must still point their registrar\&#39;s nameservers at &#x60;cdns1.interserver.net&#x60; / &#x60;cdns2.interserver.net&#x60; for queries to resolve through this zone (use &#x60;updateDomainNameservers&#x60; if the domain is registered through InterServer). Sibling ops: &#x60;getDnsList&#x60;, &#x60;getDnsDomain&#x60;, &#x60;addDnsRecord&#x60;, &#x60;updateDomainNameservers&#x60;.\n\n**Body fields (form or JSON, schema &#x60;DnsNewDomain&#x60;):**\n- &#x60;domain&#x60; (string, required) — FQDN of the zone (e.g. &#x60;example.com&#x60;).\n- &#x60;ip&#x60; (string, required) — IPv4 address for the apex A record.\n\n**Returns:** &#x60;SuccessTextResponse&#x60; — status text confirming the zone was created.\n\n**Side effects:**\n- Inserts &#x60;domains&#x60; row scoped to session &#x60;account_id&#x60;.\n- Inserts default &#x60;records&#x60; rows: apex &#x60;A&#x60;, two &#x60;NS&#x60;, one &#x60;SOA&#x60;.\n\n**Auth:** Session/API key.\n\n**Errors:**\n- &#x60;400&#x60; — missing &#x60;domain&#x60; or &#x60;ip&#x60;.\n- &#x60;401&#x60; — unauthenticated.\n- &#x60;409&#x60; — zone already exists.\n\n**Related calls:**\n- **Find new zone id:** &#x60;getDnsList&#x60;.\n- **Add more records:** &#x60;addDnsRecord&#x60;.\n- **Update registrar nameservers:** &#x60;updateDomainNameservers&#x60; (Domains tag).\n\n**Example request:**\n&#x60;&#x60;&#x60;json\n{ &quot;domain&quot;: &quot;mydomain.com&quot;, &quot;ip&quot;: &quot;203.0.113.42&quot; }\n&#x60;&#x60;&#x60;\n
     */
    @isTest
    private static void addDnsDomainTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(201);
        res.setStatus('Created');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'domain' => 'null',
            'ip' => 'null'
        };

        IntServer_Client client;
        IntServerDNSApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerDNSApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.addDnsDomain(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.addDnsDomain(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDNSApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.addDnsDomain(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.addDnsDomain(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDNSApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.addDnsDomain(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.addDnsDomain(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Add a DNS record (A, AAAA, MX, TXT, CNAME, NS, SRV, CAA, ...) to a zone
     *
     * Adds a single record to the zone identified by path &#x60;id&#x60;. Type is validated against the global &#x60;$rtypes&#x60; allowlist (A, AAAA, CNAME, MX, TXT, NS, SRV, CAA, PTR, SPF, TLSA, etc.); content is validated against the record type by &#x60;validate_input()&#x60;. The record goes live on PowerDNS immediately; resolvers honor the existing TTL on any cached answer. Sibling ops: &#x60;getDnsDomain&#x60; (find record id afterward), &#x60;updateDnsRecord&#x60;, &#x60;deleteDnsRecord&#x60;.\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — zone ID from &#x60;getDnsList.id&#x60;.\n\n**Body fields (form or JSON, schema &#x60;DnsNewRecord&#x60;):**\n- &#x60;name&#x60; (string, required) — FQDN of the record (must be at or below the zone apex).\n- &#x60;type&#x60; (string, required) — &#x60;A&#x60; / &#x60;AAAA&#x60; / &#x60;CNAME&#x60; / &#x60;MX&#x60; / &#x60;TXT&#x60; / &#x60;NS&#x60; / &#x60;SRV&#x60; / &#x60;CAA&#x60; / &#x60;PTR&#x60; / &#x60;SPF&#x60; / &#x60;TLSA&#x60; (must be in &#x60;$rtypes&#x60;).\n- &#x60;content&#x60; (string, required) — value matching &#x60;type&#x60; syntax (IPv4 for A, IPv6 for AAAA, hostname for CNAME/NS/MX, free text for TXT).\n- &#x60;ttl&#x60; (integer, optional, default 86400) — seconds.\n- &#x60;prio&#x60; (integer, optional, default 0) — priority (MX/SRV only).\n\n**Returns:** &#x60;{success: true, text: &quot;Record added&quot;}&#x60;.\n\n**Auth:** Session/API key. Zone ownership enforced.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n- &#x60;Type must be one of: ...&#x60; — &#x60;type&#x60; not in allowlist.\n- &#x60;invalid or missing domain or record id&#x60; — zone not found / not owned.\n- Content-format validation failure (&#x60;text&#x60; describes the issue).\n\n**Related calls:**\n- **Find new record id:** &#x60;getDnsDomain&#x60;.\n- **Edit later:** &#x60;updateDnsRecord&#x60;.\n- **Delete:** &#x60;deleteDnsRecord&#x60;.\n
     */
    @isTest
    private static void addDnsRecordTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'name' => 'null',
            'type' => '',
            'content' => 'null',
            'id' => 472,
            'ttl' => '',
            'prio' => ''
        };

        IntServer_Client client;
        IntServerDNSApi api;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerDNSApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.addDnsRecord(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDNSApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.addDnsRecord(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDNSApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = ;
        response = () api.addDnsRecord(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Permanently delete a DNS zone and every record it contains
     *
     * Removes the zone identified by path &#x60;id&#x60; AND every record it contains from PowerDNS in a single transaction. **Permanent — no soft-delete, no undo.** Any service relying on these records (web, mail, SPF/DKIM, third-party domain verifications, ACME challenges) will start failing as resolver caches expire (per-record TTL, default 86400s). **Note:** this only deletes the hosted zone on InterServer\&#39;s nameservers — it does not affect registrar delegation. If &#x60;cdns1&#x60;/&#x60;cdns2&#x60; are still delegated at the registrar, queries will return NXDOMAIN/SERVFAIL until delegation is changed or the zone is recreated. Sibling ops: &#x60;deleteDnsRecord&#x60; (delete one record only), &#x60;addDnsDomain&#x60; (recreate), &#x60;updateDomainNameservers&#x60; (change registrar delegation).\n\n**Path param:**\n- &#x60;id&#x60; (string, required) — zone ID from &#x60;getDnsList&#x60;.\n\n**Returns:** &#x60;{success: true, text: &quot;Domain deleted&quot;}&#x60;.\n\n**Side effects:**\n- Deletes every &#x60;records&#x60; row with &#x60;domain_id&#x3D;{id}&#x60;.\n- Deletes the &#x60;domains&#x60; row.\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n- &#x60;invalid or missing domain or record id&#x60; — zone not found / not owned.\n\n**Related calls:**\n- **Delete one record only:** &#x60;deleteDnsRecord&#x60;.\n- **Recreate the zone:** &#x60;addDnsDomain&#x60;.\n- **Update registrar delegation:** &#x60;updateDomainNameservers&#x60; (Domains tag).\n
     */
    @isTest
    private static void deleteDnsDomainTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => 'null'
        };

        IntServer_Client client;
        IntServerDNSApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerDNSApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.deleteDnsDomain(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.deleteDnsDomain(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDNSApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.deleteDnsDomain(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.deleteDnsDomain(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDNSApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.deleteDnsDomain(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.deleteDnsDomain(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Permanently delete one DNS record from a zone — zone itself is preserved
     *
     * Removes the record identified by &#x60;recordId&#x60; from zone &#x60;domainId&#x60;. The zone itself remains intact — only the one record is dropped. **Permanent** — applied to PowerDNS immediately, but resolvers continue to answer with cached values until the previous TTL expires. Use to surgically remove an A/AAAA/MX/TXT etc. record; to drop the entire zone and all its records, use &#x60;deleteDnsDomain&#x60;. Sibling ops: &#x60;getDnsDomain&#x60; (verify after deletion), &#x60;deleteDnsDomain&#x60;, &#x60;updateDnsRecord&#x60;.\n\n**Path params:**\n- &#x60;domainId&#x60; (integer, required) — zone ID from &#x60;getDnsList.id&#x60;.\n- &#x60;recordId&#x60; (integer, required) — record ID from &#x60;getDnsDomain.id&#x60;.\n\n**Returns:** &#x60;{success: true, text: &quot;domain record deleted&quot;}&#x60;.\n\n**Auth:** Session/API key. Zone ownership enforced via &#x60;get_dns_domain($domainId)&#x60;.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n- &#x60;invalid or missing domain or record id&#x60; — zone/record not found or not owned.\n- &#x60;error removing domain record&#x60; — underlying DB delete failed.\n\n**Related calls:**\n- **Verify after delete:** &#x60;getDnsDomain&#x60;.\n- **Recreate:** &#x60;addDnsRecord&#x60;.\n- **Delete entire zone instead:** &#x60;deleteDnsDomain&#x60;.\n
     */
    @isTest
    private static void deleteDnsRecordTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'domainId' => '',
            'recordId' => ''
        };

        IntServer_Client client;
        IntServerDNSApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerDNSApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.deleteDnsRecord(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.deleteDnsRecord(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDNSApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.deleteDnsRecord(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.deleteDnsRecord(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDNSApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.deleteDnsRecord(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.deleteDnsRecord(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List every DNS record in one zone with the IDs needed to edit or delete them
     *
     * Returns the full record set for the specified PowerDNS zone (NS, A, AAAA, CNAME, MX, TXT, SRV, CAA, SOA, etc.) in a single response. Ownership is enforced via &#x60;get_dns_domain($id)&#x60; against the session account — cross-account access returns an error rather than 200. Use a returned record &#x60;id&#x60; together with the zone &#x60;id&#x60; to call &#x60;updateDnsRecord&#x60; or &#x60;deleteDnsRecord&#x60;. Sibling ops: &#x60;getDnsList&#x60;, &#x60;addDnsRecord&#x60;, &#x60;updateDnsRecord&#x60;, &#x60;deleteDnsRecord&#x60;, &#x60;deleteDnsDomain&#x60;.\n\n**Path param:**\n- &#x60;id&#x60; (integer, required) — zone ID from &#x60;getDnsList.id&#x60;.\n\n**Returns:** Array of &#x60;DnsRecord&#x60;:\n- &#x60;id&#x60; (string) — record ID; pass to &#x60;updateDnsRecord&#x60; / &#x60;deleteDnsRecord&#x60;.\n- &#x60;domain_id&#x60; (string) — parent zone ID.\n- &#x60;name&#x60; (string) — FQDN of the record (apex or subdomain).\n- &#x60;type&#x60; (string) — &#x60;A&#x60; / &#x60;AAAA&#x60; / &#x60;CNAME&#x60; / &#x60;MX&#x60; / &#x60;TXT&#x60; / &#x60;NS&#x60; / &#x60;SRV&#x60; / &#x60;CAA&#x60; / &#x60;SOA&#x60; / &#x60;PTR&#x60; / &#x60;SPF&#x60; / &#x60;TLSA&#x60;.\n- &#x60;content&#x60; (string) — record value (IP for A/AAAA, hostname for CNAME/NS/MX, free text for TXT, etc.).\n- &#x60;ttl&#x60; (string) — seconds; default 86400.\n- &#x60;prio&#x60; (string) — priority for MX/SRV (&#x60;0&#x60; for non-priority records).\n- &#x60;disabled&#x60; (string &#x60;0&#x60;/&#x60;1&#x60;), &#x60;ordername&#x60; (string), &#x60;auth&#x60; (string &#x60;0&#x60;/&#x60;1&#x60;).\n\n**Auth:** Session/API key. Ownership enforced.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n- &#x60;invalid or missing domain or record id&#x60; — zone not found or owned by another account.\n\n**Related calls:**\n- **Add a record:** &#x60;addDnsRecord&#x60; (POST same path).\n- **Update a record:** &#x60;updateDnsRecord&#x60; (&#x60;POST /dns/{domainId}/{recordId}&#x60;).\n- **Delete a record:** &#x60;deleteDnsRecord&#x60;.\n- **Delete the whole zone:** &#x60;deleteDnsDomain&#x60; (DELETE same path).\n
     */
    @isTest
    private static void getDnsDomainTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'id' => ''
        };

        IntServer_Client client;
        IntServerDNSApi api;
        List<IntServerDnsRecord> response;
        List<IntServerDnsRecord> expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerDNSApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<IntServerDnsRecord>{IntServerDnsRecord.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerDnsRecord>{IntServerDnsRecord.getExample()};
        response = (List<IntServerDnsRecord>) api.getDnsDomain(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<IntServerDnsRecord>{IntServerDnsRecord.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerDnsRecord>{IntServerDnsRecord.getExample()};
        response = (List<IntServerDnsRecord>) api.getDnsDomain(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDNSApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<IntServerDnsRecord>{IntServerDnsRecord.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerDnsRecord>{IntServerDnsRecord.getExample()};
        response = (List<IntServerDnsRecord>) api.getDnsDomain(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<IntServerDnsRecord>{IntServerDnsRecord.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerDnsRecord>{IntServerDnsRecord.getExample()};
        response = (List<IntServerDnsRecord>) api.getDnsDomain(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDNSApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<IntServerDnsRecord>{IntServerDnsRecord.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerDnsRecord>{IntServerDnsRecord.getExample()};
        response = (List<IntServerDnsRecord>) api.getDnsDomain(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<IntServerDnsRecord>{IntServerDnsRecord.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerDnsRecord>{IntServerDnsRecord.getExample()};
        response = (List<IntServerDnsRecord>) api.getDnsDomain(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * List DNS zones hosted on the account with each zone\&#39;s apex A-record IP
     *
     * Returns every PowerDNS-hosted authoritative zone owned by the authenticated account, one row per zone, with the IP from the apex &#x60;A&#x60; record. Canonical entry point for discovering zone IDs before reading or editing records. The list is filtered server-side by session &#x60;account_id&#x60; — cross-account zones are never returned. Empty array means the account holds no zones (not an error). **Note:** this is the hosted DNS zone list, not registrar delegation — use the Domains tag\&#39;s &#x60;updateDomainNameservers&#x60; to point a registered domain at &#x60;cdns1.interserver.net&#x60;/&#x60;cdns2.interserver.net&#x60;. Sibling ops: &#x60;getDnsDomain&#x60;, &#x60;addDnsDomain&#x60;, &#x60;addDnsRecord&#x60;, &#x60;deleteDnsDomain&#x60;.\n\n**Path/Query/Body:** None.\n\n**Returns:** Array of &#x60;DnsListItem&#x60;:\n- &#x60;id&#x60; (integer) — zone ID; pass to &#x60;getDnsDomain&#x60; / &#x60;addDnsRecord&#x60; / &#x60;deleteDnsDomain&#x60;.\n- &#x60;name&#x60; (string) — zone FQDN (e.g. &#x60;example.com&#x60;).\n- &#x60;content&#x60; (string) — IP from the apex &#x60;A&#x60; record matching the zone name (empty when no apex A exists yet).\n\n**Auth:** Session/API key.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n\n**Related calls:**\n- **Per-zone record list:** &#x60;getDnsDomain&#x60;.\n- **Add a zone:** &#x60;addDnsDomain&#x60;.\n- **Add a record to an existing zone:** &#x60;addDnsRecord&#x60;.\n- **Registrar delegation:** &#x60;getDomainNameservers&#x60; / &#x60;updateDomainNameservers&#x60; (Domains tag).\n
     */
    @isTest
    private static void getDnsListTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        IntServer_Client client;
        IntServerDNSApi api;
        List<IntServerDnsListItem> response;
        List<IntServerDnsListItem> expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerDNSApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<IntServerDnsListItem>{IntServerDnsListItem.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerDnsListItem>{IntServerDnsListItem.getExample()};
        response = (List<IntServerDnsListItem>) api.getDnsList();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<IntServerDnsListItem>{IntServerDnsListItem.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerDnsListItem>{IntServerDnsListItem.getExample()};
        response = (List<IntServerDnsListItem>) api.getDnsList();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDNSApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<IntServerDnsListItem>{IntServerDnsListItem.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerDnsListItem>{IntServerDnsListItem.getExample()};
        response = (List<IntServerDnsListItem>) api.getDnsList();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<IntServerDnsListItem>{IntServerDnsListItem.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerDnsListItem>{IntServerDnsListItem.getExample()};
        response = (List<IntServerDnsListItem>) api.getDnsList();
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDNSApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(new List<IntServerDnsListItem>{IntServerDnsListItem.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerDnsListItem>{IntServerDnsListItem.getExample()};
        response = (List<IntServerDnsListItem>) api.getDnsList();
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(new List<IntServerDnsListItem>{IntServerDnsListItem.getExample()});
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = new List<IntServerDnsListItem>{IntServerDnsListItem.getExample()};
        response = (List<IntServerDnsListItem>) api.getDnsList();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * Replace values on an existing DNS record (name, type, content, ttl, priority)
     *
     * Replaces the record identified by &#x60;recordId&#x60; within zone &#x60;domainId&#x60; with new values. **TTL caveat:** the change is written to PowerDNS immediately, but already-cached resolver answers persist until the previous record\&#39;s TTL expires — plan TTL down ahead of a clean cutover. Type is validated against the global &#x60;$rtypes&#x60; allowlist; content is validated against the record type. Sibling ops: &#x60;getDnsDomain&#x60; (read), &#x60;addDnsRecord&#x60; (create), &#x60;deleteDnsRecord&#x60;.\n\n**Path params:**\n- &#x60;domainId&#x60; (integer, required) — zone ID from &#x60;getDnsList.id&#x60;.\n- &#x60;recordId&#x60; (integer, required) — record ID from &#x60;getDnsDomain.id&#x60;.\n\n**Body fields (form or JSON, schema &#x60;DnsUpdateRecord&#x60;):**\n- &#x60;name&#x60; (string, required) — FQDN at/below zone apex.\n- &#x60;type&#x60; (string, required) — one of the allowed PowerDNS types.\n- &#x60;content&#x60; (string, required) — value matching &#x60;type&#x60;.\n- &#x60;ttl&#x60; (integer, required) — seconds.\n- &#x60;prio&#x60; (integer, required) — MX/SRV priority (&#x60;0&#x60; otherwise).\n\n**Returns:** &#x60;{success: true, text: &quot;domain record updated&quot;}&#x60;.\n\n**Auth:** Session/API key. Zone ownership enforced.\n\n**Errors:**\n- &#x60;401&#x60; — unauthenticated.\n- &#x60;Type must be one of: ...&#x60; — &#x60;type&#x60; not in &#x60;$rtypes&#x60;.\n- &#x60;invalid or missing domain or record id&#x60; — zone/record not found / not owned.\n- Content-format validation text — &#x60;validate_input()&#x60; failure.\n\n**Related calls:**\n- **Read first:** &#x60;getDnsDomain&#x60;.\n- **Delete:** &#x60;deleteDnsRecord&#x60;.\n- **Create new:** &#x60;addDnsRecord&#x60;.\n
     */
    @isTest
    private static void updateDnsRecordTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'domainId' => '',
            'recordId' => '',
            'name' => 'null',
            'type' => '',
            'content' => 'null',
            'ttl' => 'null',
            'prio' => 'null',
            'disabled' => 'null',
            'ordername' => 'null',
            'auth' => 'null'
        };

        IntServer_Client client;
        IntServerDNSApi api;
        IntServerSuccessTextResponse response;
        IntServerSuccessTextResponse expectedResponse;
        String js = '';

        client = new IntServer_Client();
        api = new IntServerDNSApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdCookieAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateDnsRecord(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateDnsRecord(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDNSApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('apiKeyAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateDnsRecord(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateDnsRecord(params);
        System.assertEquals(expectedResponse, response);
        client = new IntServer_Client();
        api = new IntServerDNSApi(client);
        ((OAS.ApiKeyAuth)client.getAuthentication('sessionIdHeaderAuth')).setApiKey('foo-bar-api-key');


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateDnsRecord(params);
        System.assertEquals(expectedResponse, response);


        js = JSON.serialize(IntServerSuccessTextResponse.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = IntServerSuccessTextResponse.getExample();
        response = (IntServerSuccessTextResponse) api.updateDnsRecord(params);
        System.assertEquals(expectedResponse, response);
    }
}