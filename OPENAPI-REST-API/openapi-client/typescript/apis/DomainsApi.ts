// TODO: better import syntax?
import {BaseAPIRequestFactory, RequiredError, COLLECTION_FORMATS} from './baseapi';
import {Configuration} from '../configuration';
import {RequestContext, HttpMethod, ResponseContext, HttpFile, HttpInfo} from '../http/http';
import {ObjectSerializer} from '../models/ObjectSerializer';
import {ApiException} from './exception';
import {canConsumeForm, isCodeInRange} from '../util';
import {SecurityAuthentication} from '../auth/auth';


import { CancelDomain200Response } from '../models/CancelDomain200Response';
import { ChargeInvoiceRows } from '../models/ChargeInvoiceRows';
import { Domain } from '../models/Domain';
import { DomainContactDetails } from '../models/DomainContactDetails';
import { DomainDnssecRecords } from '../models/DomainDnssecRecords';
import { DomainDnssecRequest } from '../models/DomainDnssecRequest';
import { DomainLookupResponse } from '../models/DomainLookupResponse';
import { DomainNameserverGetResponse } from '../models/DomainNameserverGetResponse';
import { DomainNameserverPostRequest } from '../models/DomainNameserverPostRequest';
import { DomainNameserverPutRequest } from '../models/DomainNameserverPutRequest';
import { DomainOrder } from '../models/DomainOrder';
import { DomainOrderRequest } from '../models/DomainOrderRequest';
import { DomainRow } from '../models/DomainRow';
import { DomainSearchResponse } from '../models/DomainSearchResponse';
import { DomainWhoisPrivacyRequest } from '../models/DomainWhoisPrivacyRequest';
import { GetAccountInfo401Response } from '../models/GetAccountInfo401Response';
import { ServiceOrderPostResponse } from '../models/ServiceOrderPostResponse';
import { SuccessTextResponse } from '../models/SuccessTextResponse';
import { TextResponse } from '../models/TextResponse';

/**
 * no description
 */
export class DomainsApiRequestFactory extends BaseAPIRequestFactory {

    /**
     * Places a new domain registration or transfer order. Resolves the TLD to a `services_id`, runs `validate_buy_domain()` (hostname, TLD service, fields, coupon, whois-privacy add-on), then calls `place_buy_domain()` to create the `Repeat_Invoice` recurring billing row, generate the initial `invoices` row, and (when `whois_privacy=enable`) an additional add-on `Repeat_Invoice` for privacy. **Real money** — call `putDomains` then `patchDomains` first to preview and validate. Sibling ops: `getDomainLookup`, `getNewDomain`, `putDomains`, `patchDomains`, `initiatePayment`.  **Body fields (JSON or form):** - `hostname` (string, required) — FQDN to register or transfer. - `type` (string, optional, default `register`) — `register` or `transfer`. - `whois_privacy` (string, optional) — `enable` to add the privacy add-on (separate recurring invoice). - `coupon` (string, optional) — coupon code. - All per-TLD contact/registration fields from `putDomains.domainFields` (registrant contact details, TLD-specific fields like nexus codes, EPP `auth_info` for transfers, etc.).  **Returns** (schema `ServiceOrderPostResponse`): `{total_cost, iid, iids, real_iids, serviceid (new domain_id), invoice_description, cj_params, payUrl}` — pass `real_iids` to `initiatePayment` to fund the order.  **Side effects:** - Inserts `domains` service row in `pending` status. - Inserts `repeat_invoices` row for recurring renewal. - Inserts `invoices` row for the first-period charge. - When `whois_privacy=enable`: inserts a separate add-on `repeat_invoices` row + its initial invoice. - For transfers: stores `auth_info` and marks `service_extra` as `transfer`.  **Auth:** Session/API key.  **Errors:** - `400 Missing hostname parameter`. - `400 Unable to determine service type for this domain TLD.`. - `401` — unauthenticated. - `422` — validation failure (e.g. coupon invalid, required TLD field missing, hostname not registerable). Response body is the combined `errors` array from `validate_buy_domain()`.  **Related calls:** - **Prerequisites:** `getDomainLookup` → `getNewDomain` → `putDomains` → `patchDomains`. - **Pay:** `initiatePayment` with `real_iids`. - **Verify activation:** `getDomainInfo` (poll for `domain_status=\'active\'`). - **Track in-progress transfer:** `getDomainTransfer`. - **For pending transfers needing EPP/auth_info:** `updateDomainContact` (set `auth_info`).  **Example happy path (register):** ```text GET /apiv2/domains/lookup/example.com           -> available, pricing, fields PUT /apiv2/domains/order { hostname, type }     -> domainFields PATCH /apiv2/domains/order { hostname, ...fields } -> \"success\" POST /apiv2/domains/order { hostname, type, ...fields } -> { serviceid, real_iids } GET /apiv2/billing/pay/cc/{real_iids[0]}        -> pay GET /apiv2/domains/{serviceid}                  -> poll until domain_status==\"active\" ``` 
     * Place a new domain registration or transfer order, generate billing invoice
     * @param domainOrderRequest 
     */
    public async addDomain(domainOrderRequest: DomainOrderRequest, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'domainOrderRequest' is not null or undefined
        if (domainOrderRequest === null || domainOrderRequest === undefined) {
            throw new RequiredError("DomainsApi", "addDomain", "domainOrderRequest");
        }


        // Path Params
        const localVarPath = '/domains/order';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        // Body Params
        const contentType = ObjectSerializer.getPreferredMediaType([
            "application/json"
        ]);
        requestContext.setHeaderParam("Content-Type", contentType);
        const serializedBody = ObjectSerializer.stringify(
            ObjectSerializer.serialize(domainOrderRequest, "DomainOrderRequest", ""),
            contentType
        );
        requestContext.setBody(serializedBody);

        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdCookieAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["apiKeyAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdHeaderAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _config?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Registers one or more DNSSEC DS records at the registrar. Body uses parallel arrays indexed per record. **Propagation caveat:** DNSSEC publication is asynchronous at the registry — a 200 here does not guarantee the records have propagated; re-call `getDomainDnssec` to verify. **Sets, not adds:** this replaces the full DS record set in one transaction; to remove all DS records use `deleteDomainDnssec`. Sibling ops: `getDomainDnssec`, `deleteDomainDnssec`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Body fields (JSON or multipart, parallel arrays — `algorithm[0]` pairs with `key_tag[0]`, etc., schema `DomainDnssecRequest`):** - `algorithm[]` (integer) — DNSKEY algorithm (e.g. 8 = RSASHA256, 13 = ECDSAP256SHA256). - `key_tag[]` (integer) — must be < 65536. - `digest_type[]` (integer) — `1` (SHA-1, 40 hex chars), `2` (SHA-256, 64), `3` (GOST, 64), `4` (SHA-384, 96). - `digest[]` (string) — hex digest; length must match `digest_type[i]`.  **Returns:** `SuccessTextResponse` on registrar confirmation.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `domain_status != \"active\"` or registrar refused. - `422` — `key_tag >= 65536` or digest length mismatch.  **Related calls:** - **Verify propagation:** `getDomainDnssec`. - **Clear all records:** `deleteDomainDnssec`. 
     * Register DNSSEC DS records on the domain at OpenSRS
     * @param id The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;.
     * @param domainDnssecRequest 
     */
    public async addDomainDnssec(id: number, domainDnssecRequest: DomainDnssecRequest, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("DomainsApi", "addDomainDnssec", "id");
        }


        // verify required parameter 'domainDnssecRequest' is not null or undefined
        if (domainDnssecRequest === null || domainDnssecRequest === undefined) {
            throw new RequiredError("DomainsApi", "addDomainDnssec", "domainDnssecRequest");
        }


        // Path Params
        const localVarPath = '/domains/{id}/dnssec'
            .replace('{id}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        // Body Params
        const contentType = ObjectSerializer.getPreferredMediaType([
            "application/json",
        
            "multipart/form-data"
        ]);
        requestContext.setHeaderParam("Content-Type", contentType);
        const serializedBody = ObjectSerializer.stringify(
            ObjectSerializer.serialize(domainDnssecRequest, "DomainDnssecRequest", ""),
            contentType
        );
        requestContext.setBody(serializedBody);

        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdCookieAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["apiKeyAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdHeaderAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _config?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Adds a registered nameserver (host + glue IP) for the domain at the registrar via `opensrs_create_nameserver`. Use when running your own authoritative nameservers under the domain itself (e.g. `ns1.example.com`, `ns2.example.com`). **Glue records, not delegation:** this registers the host\'s IP at the registry; the domain\'s delegation must separately point at these names via `updateDomainNameservers`. Sibling ops: `getDomainNameservers`, `updateDomainNameservers`, `deleteDomainNameserver`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Body fields (schema `DomainNameserverPostRequest`):** - `name` (string, required) — FQDN of the nameserver (e.g. `ns1.example.com`). Validated by `valid_hostname()`. - `ipAddress` (string, required) — IPv4 address. Validated by `validIp()`.  **Returns:** `SuccessTextResponse` on success.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `domain_status != \"active\"`. - `422` — invalid hostname or IP, or registrar refused.  **Related calls:** - **Verify glue record:** `getDomainNameservers`. - **Use this nameserver in delegation:** `updateDomainNameservers`. 
     * Register a new nameserver host with glue IP at the registry (registered nameserver)
     * @param id The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;.
     * @param domainNameserverPostRequest 
     */
    public async addDomainNameserver(id: number, domainNameserverPostRequest: DomainNameserverPostRequest, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("DomainsApi", "addDomainNameserver", "id");
        }


        // verify required parameter 'domainNameserverPostRequest' is not null or undefined
        if (domainNameserverPostRequest === null || domainNameserverPostRequest === undefined) {
            throw new RequiredError("DomainsApi", "addDomainNameserver", "domainNameserverPostRequest");
        }


        // Path Params
        const localVarPath = '/domains/{id}/nameservers'
            .replace('{id}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        // Body Params
        const contentType = ObjectSerializer.getPreferredMediaType([
            "application/json",
        
            "multipart/form-data"
        ]);
        requestContext.setHeaderParam("Content-Type", contentType);
        const serializedBody = ObjectSerializer.stringify(
            ObjectSerializer.serialize(domainNameserverPostRequest, "DomainNameserverPostRequest", ""),
            contentType
        );
        requestContext.setBody(serializedBody);

        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdCookieAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["apiKeyAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdHeaderAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _config?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Stops billing and auto-renewal for a domain in the customer account by setting the service to `canceled` via the shared `Billing\\CancelService::go($id)` flow with `module=\'domains\'`. **Important:** this only stops billing on InterServer\'s side — the domain registration at the registrar (OpenSRS) typically remains active until its current expiration date. To release the domain back to the public pool, let it expire OR submit a release request via support ticket. Sibling ops: `getDomainInfo` (verify status), `getDomainsList`, `postDomainRenewal` (re-activate before expiry).  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Returns:** `DomainsCancelResponse` — confirmation envelope.  **Side effects:** - Sets `domain_status=\'canceled\'`. - Marks the `repeat_invoices` row non-renewing — no future renewal invoices generated. - Does **not** call the registrar — the registration remains active at OpenSRS until natural expiry.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — already canceled.  **Related calls:** - **Re-activate before expiry:** `postDomainRenewal`. - **Verify status:** `getDomainInfo`. - **Sibling cancels on other modules:** `VPSCancel`, `mailCancel`, `webhostingCancel`, etc. (same `CancelService` handler). 
     * Cancel a domain order in the billing system to stop auto-renewals
     * @param id The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;.
     */
    public async cancelDomain(id: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("DomainsApi", "cancelDomain", "id");
        }


        // Path Params
        const localVarPath = '/domains/{id}'
            .replace('{id}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.DELETE);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdCookieAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["apiKeyAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdHeaderAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _config?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Disables DNSSEC at the registrar by removing the entire DS record set in one call. **Propagation caveat:** DNSSEC removal can fail at the registry even after a 200 response — propagation is asynchronous; re-check with `getDomainDnssec` to confirm. To remove records selectively, replace the set via `addDomainDnssec` instead. Sibling ops: `getDomainDnssec`, `addDomainDnssec`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Body:** None — removes the full DS record set.  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `domain_status != \"active\"`. - Registrar error surfaced as 4xx.  **Related calls:** - **Verify propagation:** `getDomainDnssec`. - **Replace records selectively:** `addDomainDnssec`. 
     * Clear all DNSSEC DS records on the domain (disable DNSSEC at the registrar)
     * @param id The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;.
     */
    public async deleteDomainDnssec(id: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("DomainsApi", "deleteDomainDnssec", "id");
        }


        // Path Params
        const localVarPath = '/domains/{id}/dnssec'
            .replace('{id}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.DELETE);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdCookieAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["apiKeyAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdHeaderAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _config?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Removes a single registered nameserver entry from the domain at the registrar. Handler first calls OpenSRS `nsGet` to resolve the entry by index, then `nsDelete`. Per-entry — to replace the full delegation set use `updateDomainNameservers` instead. Sibling ops: `getDomainNameservers`, `addDomainNameserver`, `updateDomainNameservers`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Query params:** - `index` (integer, required) — zero-based index from `getDomainNameservers` array — or alternatively pass `name` + `ip` to target by value.  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `domain_status != \"active\"`. - `422` — `index` out of range or `name`/`ip` not provided. - Registrar errors surfaced as 4xx.  **Related calls:** - **List candidates:** `getDomainNameservers`. - **Replace delegation entirely:** `updateDomainNameservers`. 
     * Remove one registered nameserver glue record from the domain
     * @param id The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;.
     * @param index The index of the registered nameserver from the registered nameservers list to delete.  
     */
    public async deleteDomainNameserver(id: number, index: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("DomainsApi", "deleteDomainNameserver", "id");
        }


        // verify required parameter 'index' is not null or undefined
        if (index === null || index === undefined) {
            throw new RequiredError("DomainsApi", "deleteDomainNameserver", "index");
        }


        // Path Params
        const localVarPath = '/domains/{id}/nameservers'
            .replace('{id}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.DELETE);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (index !== undefined) {
            requestContext.setQueryParam("index", ObjectSerializer.serialize(index, "number", ""));
        }


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdCookieAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["apiKeyAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdHeaderAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _config?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Returns the current contact field set (registrant/admin/tech/billing) with current values for the domain — schema and values mirror what was set at registration. For pending transfer services, the response also includes a `transfer` selector and the EPP `auth_info` code so the client can resubmit. Read-only. Sibling ops: `updateDomainContact` (push changes to OpenSRS), `getDomainInfo`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Returns** (schema `DomainContactDetails`): - `firstname`, `lastname`, `email`. - `address`, `address2`, `address3`, `city`, `state`, `zip`, `country`. - `phone`, `fax` (E.164 format expected). - `company` (optional). - `auth_info` (string) — EPP/transfer code (present on transfer services). - `transfer` (string `yes`/`no`) — selector for pending transfer services.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller.  **Related calls:** - **Update:** `updateDomainContact`. - **Transfer status:** `getDomainTransfer`. 
     * Read the current registrant/admin/tech/billing contact field set for a domain
     * @param id The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;.
     */
    public async getDomainContact(id: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("DomainsApi", "getDomainContact", "id");
        }


        // Path Params
        const localVarPath = '/domains/{id}/contact'
            .replace('{id}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdCookieAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["apiKeyAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdHeaderAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _config?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Returns the DNSSEC DS record set currently registered for the domain at OpenSRS. Empty array means DNSSEC is not configured. Use to mirror existing settings or as a baseline before `addDomainDnssec` (which replaces the set). Sibling ops: `addDomainDnssec`, `deleteDomainDnssec`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Returns** (schema `DomainDnssecRecords`): - `records` (array) — DS entries:   - `algorithm` (integer) — DNSKEY algorithm (e.g. 8 for RSASHA256, 13 for ECDSAP256SHA256).   - `key_tag` (integer, < 65536).   - `digest_type` (integer) — `1` (SHA-1), `2` (SHA-256), `3` (GOST), `4` (SHA-384).   - `digest` (string, hex) — length depends on `digest_type`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `domain_status != \"active\"`.  **Related calls:** - **Replace records:** `addDomainDnssec`. - **Clear all records:** `deleteDomainDnssec`. 
     * Read the DNSSEC DS record set currently registered with the registrar
     * @param id The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;.
     */
    public async getDomainDnssec(id: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("DomainsApi", "getDomainDnssec", "id");
        }


        // Path Params
        const localVarPath = '/domains/{id}/dnssec'
            .replace('{id}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdCookieAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["apiKeyAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdHeaderAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _config?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Returns the full `ViewDomain` payload for one domain — billing summary, registration status, lock state, expiry date, contact summary, and `client_links` for related dashboard actions. Read-only. Internal `admin_links`, `settings`, `csrf` are stripped before return. Use to render a domain detail page, verify ownership before mutating, or poll `domain_status` after `addDomain`. Sibling ops: `getDomainContact`, `getDomainNameservers`, `getDomainDnssec`, `getDomainWhoisPrivacy`, `getDomainInvoices`, `updateDomainInfo`, `CancelDomain`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Returns** (schema `Domain`): - `serviceInfo` — `domain_id`, `domain_hostname`, `domain_status`, `domain_expire_date`, lock state, registrar metadata. - `serviceType` — TLD service row. - `client_links` (array) — `{name, link, icon}` for renew/transfer/contact/DNSSEC/whois-privacy actions. URLs pre-resolved.  **Auth:** Session/API key. Ownership enforced via `domain_custid`.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller.  **Related calls:** - **Contact:** `getDomainContact` / `updateDomainContact`. - **Nameservers:** `getDomainNameservers` / `updateDomainNameservers`. - **DNSSEC:** `getDomainDnssec` / `addDomainDnssec` / `deleteDomainDnssec`. - **Whois privacy:** `getDomainWhoisPrivacy` / `updateDomainWhoisPrivacy`. - **Billing:** `getDomainInvoices`, `getDomainRenewal` / `postDomainRenewal`. - **Transfer status:** `getDomainTransfer`. - **Cancel:** `CancelDomain`. 
     * Read full billing, registrar, and service detail for one domain
     * @param id The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;.
     */
    public async getDomainInfo(id: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("DomainsApi", "getDomainInfo", "id");
        }


        // Path Params
        const localVarPath = '/domains/{id}'
            .replace('{id}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdCookieAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["apiKeyAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdHeaderAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _config?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Returns the billing history for one domain — initial registration/transfer invoice, recurring renewal invoices, Whois privacy add-on invoices. Extends `Billing\\InvoicesList::go()` with `module=\'domains\'`. Use to render a per-domain billing-history view or find an unpaid renewal/privacy invoice to pass to `initiatePayment`. Sibling ops: `getDomainInfo`, `postDomainRenewal`, `updateDomainWhoisPrivacy`, `initiatePayment`, `getBillingInvoice`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Returns:** `ChargeInvoiceRows` — array of `{id, amount, paid, description, date, due_date, currency, module: \"domains\", service: <id>}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid Service` — `id` not owned by caller.  **Related calls:** - **Pay an unpaid invoice:** `initiatePayment`. - **Renew:** `postDomainRenewal`. - **Account-wide history:** `getBillingInvoices`. 
     * List all billing invoices scoped to one domain order
     * @param id The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;.
     */
    public async getDomainInvoices(id: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("DomainsApi", "getDomainInvoices", "id");
        }


        // Path Params
        const localVarPath = '/domains/{id}/invoices'
            .replace('{id}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdCookieAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["apiKeyAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdHeaderAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _config?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Looks up a single FQDN against OpenSRS: returns availability, premium-name flag, current new/renewal/transfer prices, per-TLD order field metadata, and multi-currency quotes. **Public** endpoint — no auth required (rate-limited via `domainlookup` cache). Repeated lookups within a short window may return cached results from the `domainlookup` table. Use as step 1 of an order: discover availability and pricing, then call `addDomain` to commit. Sibling ops: `getDomainSearch` (suggestions), `getNewDomain` (catalog), `addDomain`, `postDomainSearch`.  **Path param:** - `name` (string, required) — full FQDN (e.g. `example.com`).  **Returns** (schema `DomainLookupResponse`): - `available` (bool) — registerable now. - `premium` (bool) — premium-name pricing (often > $100). - `website` (bool) — same hostname is already a webhosting service on this account. - `domain_service` (bool) — same hostname is already a domain on this account. - `service` (object) — `services_id`, `services_name`, `services_cost`, `services_field1` (TLD), `services_module`. - `whois_privacy` (bool) — privacy add-on available for this TLD. - `new`, `renewal`, `transfer` (float) — base USD prices (with profit markup). - `fields` (object) — per-TLD order form schema (labels, options, current account values). - `currencies` (object) — `{<code>: {services_cost, new, renewal, transfer}}` converted to each enabled currency.  **Auth:** Public (no auth required).  **Errors:** - `422 Invalid Domain` — `valid_domain()` rejected input.  **Related calls:** - **Brainstorm alternatives:** `getDomainSearch`. - **Place order:** `addDomain` with the resolved `service.services_id` and `fields`. - **TLD catalog:** `getNewDomain`. 
     * Check availability, premium status, and pricing for a specific domain
     * @param name The full domain name to look up (for example &#x60;example.com&#x60;).
     */
    public async getDomainLookup(name: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'name' is not null or undefined
        if (name === null || name === undefined) {
            throw new RequiredError("DomainsApi", "getDomainLookup", "name");
        }


        // Path Params
        const localVarPath = '/domains/lookup/{name}'
            .replace('{name}', encodeURIComponent(String(name)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdCookieAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["apiKeyAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdHeaderAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _config?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Returns the registered-nameserver / glue-record entries currently set for the domain at OpenSRS. **Important distinction:** these are *registered nameservers* (`host.example.com` + glue IP records the registrant has created at the registry), NOT the domain\'s delegation NS records. To replace the delegation set, use `updateDomainNameservers`. Empty array means no glue records are registered. Sibling ops: `addDomainNameserver`, `updateDomainNameservers`, `deleteDomainNameserver`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Returns** (schema `DomainNameserverGetResponse`): - Array of `{name, ipaddress, sortorder}` — use the zero-based array index when calling `deleteDomainNameserver` with `index`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `domain_status != \"active\"`. - `5xx` — registrar communication failure.  **Related calls:** - **Add glue record:** `addDomainNameserver`. - **Replace delegation set:** `updateDomainNameservers`. - **Remove glue record:** `deleteDomainNameserver`. 
     * List registered nameserver hosts and glue IP addresses for a domain
     * @param id The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;.
     */
    public async getDomainNameservers(id: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("DomainsApi", "getDomainNameservers", "id");
        }


        // Path Params
        const localVarPath = '/domains/{id}/nameservers'
            .replace('{id}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdCookieAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["apiKeyAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdHeaderAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _config?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Returns renewal pricing, current expiry, Whois privacy availability, and whether an unpaid renewal invoice already exists for the domain. Use before triggering `postDomainRenewal` to render a renewal form and prevent duplicate invoices. Costs are converted to the customer\'s preferred currency. Sibling ops: `postDomainRenewal`, `getDomainInvoices`, `getDomainInfo`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Returns:** - `renewCost` (float) — renewal cost in `currency`. - `whoisCost` (float) — Whois privacy renewal cost. - `whoisAvailable` (bool) — privacy supported on this TLD. - `currency` (string), `currencySymbol` (string). - `expiryDate` (string). - `alreadyInvoiced` (bool) — a renewal `Repeat_Invoice` already produced an invoice. - `invoicePaid` (bool) — whether that invoice is paid. - `tld` (string).  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `domain_status != \"active\"`. - `4xx` — renewal not available for this TLD.  **Related calls:** - **Submit renewal:** `postDomainRenewal`. - **Pay existing renewal invoice:** `getDomainInvoices` → `initiatePayment`. 
     * Read renewal pricing, expiry, and whether a renewal invoice already exists
     * @param id The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;.
     */
    public async getDomainRenewal(id: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("DomainsApi", "getDomainRenewal", "id");
        }


        // Path Params
        const localVarPath = '/domains/{id}/renew'
            .replace('{id}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdCookieAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["apiKeyAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdHeaderAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _config?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Returns registrar-suggested alternatives plus bulk availability data from OpenSRS for the supplied search term. Useful when a customer is brainstorming names. Pair with `getDomainLookup` to get full pricing and per-TLD order fields for any specific chosen result. Sibling ops: `postDomainSearch`, `getDomainLookup`, `getNewDomain`, `addDomain`.  **Path param:** - `name` (string, required) — search term (e.g. `example` or `example.com`).  **Returns** (schema `DomainSearchResponse`): - `success` (bool) — registrar call succeeded. - `response_text` (string) — registrar response message. - `response_time` (float) — registrar latency (seconds). - `lookup` (array) — exact-match availability across the searched TLD set. - `suggest` (array) — registrar\'s recommended alternative names with availability. - `tlds` (array) — TLDs queried.  **Auth:** Public.  **Errors:** - `422 Invalid Search Response!` — registrar returned no usable results.  **Related calls:** - **Single-domain detail:** `getDomainLookup`. - **One-shot order preview from a search term:** `postDomainSearch`. 
     * Get registrar-suggested domain alternatives and bulk availability for a search term
     * @param name The base domain name to search (for example &#x60;example&#x60; or &#x60;example.com&#x60;).
     */
    public async getDomainSearch(name: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'name' is not null or undefined
        if (name === null || name === undefined) {
            throw new RequiredError("DomainsApi", "getDomainSearch", "name");
        }


        // Path Params
        const localVarPath = '/domains/search/{name}'
            .replace('{name}', encodeURIComponent(String(name)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdCookieAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["apiKeyAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdHeaderAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _config?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Returns the OpenSRS transfer state for a domain order flagged as a transfer in `service_extra`. Use to poll an in-progress transfer; `pending_owner` means the customer must click the approval link in the email sent by OpenSRS to the registrant. Sibling ops: `postDomainTransfer` (re-poll), `getDomainContact` (set `auth_info`), `addDomain` (initiate new transfer).  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Returns:** - When not a transfer: `{transfer: false, message: \"...\"}`. - When a transfer: `{transfer: true, info: {status, statusText, type, transferrable, reason}}` where `status` is one of:   - `pending` — submitted to OpenSRS, awaiting state change.   - `pending_owner` — **customer action required** (approve the OpenSRS email).   - `pending_admin` — InterServer staff review.   - `pending_registry` — registry processing.   - `declined` — transfer rejected (see `reason`).   - `completed` — transfer landed.   - `undef` — unknown.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `domain_status != \"active\"`. - Registrar communication failures returned as errors.  **Related calls:** - **Re-poll:** `postDomainTransfer`. - **Update auth_info:** `updateDomainContact`. - **Initiate new transfer:** `addDomain` with `type=transfer`. 
     * Read OpenSRS transfer status for an in-progress domain transfer order
     * @param id The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;.
     */
    public async getDomainTransfer(id: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("DomainsApi", "getDomainTransfer", "id");
        }


        // Path Params
        const localVarPath = '/domains/{id}/transfer'
            .replace('{id}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdCookieAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["apiKeyAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdHeaderAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _config?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Returns Whois privacy state for the domain — whether the TLD supports privacy, whether it\'s currently enabled at OpenSRS, and the add-on cost. Some TLDs (e.g. `.us`, `.uk`, country-code variants) do not allow privacy regardless of pricing. Sibling op: `updateDomainWhoisPrivacy` (order/enable/disable).  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Returns:** - `available` (bool) — privacy supported for this TLD (via `get_domain_tld_whois_privacy()`). - `cost` (float) — annual privacy cost in `currency`. - `currency` (string), `currencySymbol` (string). - `whoisPrivacy` (string enum) — `enabled` / `disabled` (live OpenSRS state). - `repeatInvoice` (object|null) — current privacy add-on `Repeat_Invoice` row, if one exists.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller.  **Related calls:** - **Order/enable/disable:** `updateDomainWhoisPrivacy`. - **Billing:** `getDomainInvoices`. 
     * Read Whois privacy availability, current state, and add-on pricing for a domain
     * @param id The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;.
     */
    public async getDomainWhoisPrivacy(id: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("DomainsApi", "getDomainWhoisPrivacy", "id");
        }


        // Path Params
        const localVarPath = '/domains/{id}/whois'
            .replace('{id}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdCookieAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["apiKeyAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdHeaderAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _config?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Enumerates every domain registration owned by the authenticated customer — hostname, expiry, recurring cost, status. The canonical entry point for finding a `domain_id` to pass into other Domains endpoints. Empty array means the account has no domains (not an error). Sibling ops: `getDomainInfo`, `getNewDomain`, `getDomainLookup`, `addDomain`, `CancelDomain`.  **Path/Query/Body:** None.  **Returns:** Array of `DomainRow`: - `domain_id` (string) — canonical id; pass to every `/domains/{id}/_*` endpoint. - `domain_hostname` (string) — registered FQDN. - `domain_expire_date` (string ISO 8601 or empty) — registry expiry; empty when not yet activated or unknown. - `cost` (decimal string) — recurring renewal cost in the domain\'s billing currency. - `domain_status` (string enum) — `pending` / `active` / `expired` / `canceled` / `pending-transfer`.  **Auth:** Session/API key. Filtered by `domain_custid`.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Per-domain detail:** `getDomainInfo`. - **Manage:** `getDomainContact` / `updateDomainContact`, `getDomainNameservers` / `updateDomainNameservers`, `getDomainDnssec` / `addDomainDnssec`, `getDomainWhoisPrivacy` / `updateDomainWhoisPrivacy`. - **Renew / transfer:** `getDomainRenewal` / `postDomainRenewal`, `getDomainTransfer`. - **Order a new domain:** `getDomainLookup` → `getNewDomain` → `addDomain`. - **Cancel:** `CancelDomain`. 
     * List every domain registration on the account with billing and registration metadata
     */
    public async getDomainsList(_options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // Path Params
        const localVarPath = '/domains';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdCookieAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["apiKeyAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdHeaderAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _config?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Resends the domain welcome email (registration details, management instructions, EPP code where applicable) to the customer\'s address on file. Idempotent — safe to call multiple times. Sibling welcome-email endpoints: `getVpsWelcomeEmail`, `getWebsitesWelcomeEmail`, `getMailWelcomeEmail`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Body:** None.  **Returns:** `{text: \"Welcome Email has been resent.\"}`.  **Side effects:** - Sends an email to the account\'s billing email address.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid Service Passed` — `id` not owned by caller. - `409 Service is not active` — `domain_status != \"active\"`.  **Related calls:** - **Domain detail:** `getDomainInfo`. - **Contact info:** `getDomainContact`. 
     * Resend the domain welcome email with registration details and management instructions
     * @param id The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;.
     */
    public async getDomainsWelcomeEmail(id: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("DomainsApi", "getDomainsWelcomeEmail", "id");
        }


        // Path Params
        const localVarPath = '/domains/{id}/welcome_email'
            .replace('{id}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdCookieAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["apiKeyAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdHeaderAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _config?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Returns the catalog of buyable TLD services and the base Whois-privacy add-on pricing. Use to resolve a hostname\'s TLD to a `service_id` for ordering, or to render a TLD picker. Pair with `getDomainLookup` for per-domain pricing and `addDomain` to commit. Sibling ops: `getDomainLookup`, `putDomains`, `patchDomains`, `addDomain`.  **Path/Query/Body:** None.  **Returns** (schema `DomainOrder`): - `whoisPrivacyCost` (float) — base per-year privacy cost (`OPENSRS_PRIVACY_COST` constant). - `whoisPrivacyCostTotal` (object) — privacy cost per TLD multiplied by that TLD\'s term length: `{<tld>: <total-cost>}`. - `services` (object) — `{<services_id>: {services_name, services_cost, services_field1 (tld), ...}}`. `services_ourcost` is stripped. - `tldServices` (object) — TLD → `services_id` lookup map (e.g. `{\"com\": 100, \"net\": 101, \"io\": 234}`).  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Per-domain pricing:** `getDomainLookup`. - **Preview order fields:** `putDomains`. - **Validate fields:** `patchDomains`. - **Place order:** `addDomain`. 
     * Read the buyable domain TLD service catalog and Whois privacy pricing
     */
    public async getNewDomain(_options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // Path Params
        const localVarPath = '/domains/order';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdCookieAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["apiKeyAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdHeaderAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _config?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Validates posted contact/registration field values via `validate_domain_fields()`. Enforces per-TLD requirements (nexus codes, postal formats, registrant org rules, EPP `auth_info` syntax for transfers, etc.). Use as the last step before `addDomain` to surface form errors cheaply. No commit — no invoice, no service record. Sibling ops: `putDomains`, `addDomain`, `getDomainLookup`, `getNewDomain`.  **Body fields:** - `hostname` (string, required). - `type` (string, optional, default `register`) — `register` or `transfer`. - All per-TLD fields from `putDomains.domainFields`.  **Returns:** `\"success\"` (string) when all fields validate; otherwise an `errors` object describing the failing fields and per-field validation messages.  **Auth:** Session/API key.  **Errors:** - `400 Missing hostname parameter`. - `400 Unable to determine service type for this domain TLD.`. - `401` — unauthenticated. - Validation error object — fields-level failures.  **Related calls:** - **Schema:** `putDomains` (returns the field set to validate). - **Commit:** `addDomain`. 
     * Validate posted domain-order field values before committing — dry run
     * @param domainOrderRequest 
     */
    public async patchDomains(domainOrderRequest: DomainOrderRequest, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'domainOrderRequest' is not null or undefined
        if (domainOrderRequest === null || domainOrderRequest === undefined) {
            throw new RequiredError("DomainsApi", "patchDomains", "domainOrderRequest");
        }


        // Path Params
        const localVarPath = '/domains/order';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.PATCH);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        // Body Params
        const contentType = ObjectSerializer.getPreferredMediaType([
            "application/json"
        ]);
        requestContext.setHeaderParam("Content-Type", contentType);
        const serializedBody = ObjectSerializer.stringify(
            ObjectSerializer.serialize(domainOrderRequest, "DomainOrderRequest", ""),
            contentType
        );
        requestContext.setBody(serializedBody);

        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdCookieAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["apiKeyAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdHeaderAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _config?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Generates a renewal invoice for the domain (and optionally the Whois privacy add-on). Updates the domain\'s `Repeat_Invoice` cost/frequency/currency to the current price, then calls `Repeat_Invoice::invoice()` to produce a fresh invoice. **Real money.** If a prior unpaid renewal invoice already exists, returns an error directing the user to pay that one instead — prevents double-billing. Renewal is not supported for some TLDs. Sibling ops: `getDomainRenewal`, `getDomainInvoices`, `initiatePayment`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Body fields:** - `whois_privacy` (string, optional) — `enable` to add or keep the privacy add-on; otherwise the existing privacy `Repeat_Invoice` is marked `deleted=1` on renewal.  **Returns:** `{text, invoices, invoiceIds, payUrl}` — pass `invoiceIds` to `initiatePayment` to settle.  **Side effects:** - Updates `repeat_invoices` cost/frequency/currency. - Inserts a new `invoices` row for the renewal period. - When `whois_privacy=enable`: extends the privacy add-on `repeat_invoices` and creates its renewal invoice. - When `whois_privacy` not enabled: marks the existing privacy `repeat_invoices` row `deleted=1`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `domain_status != \"active\"`, or unpaid renewal invoice already exists, or already-paid renewal exists. - Registrar errors surfaced as 4xx.  **Related calls:** - **Preview:** `getDomainRenewal`. - **Pay:** `initiatePayment` with the returned `invoiceIds`. - **Cancel auto-renew:** `CancelDomain`. 
     * Submit a domain renewal request and generate the renewal invoice
     * @param id The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;.
     */
    public async postDomainRenewal(id: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("DomainsApi", "postDomainRenewal", "id");
        }


        // Path Params
        const localVarPath = '/domains/{id}/renew'
            .replace('{id}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdCookieAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["apiKeyAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdHeaderAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _config?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Returns the complete order-form payload — pricing, service catalog entry, per-TLD order fields — for the hostname in a single POST. Equivalent to calling `getDomainLookup` + `getNewDomain` + `putDomains` and merging the results, but with one round-trip. The path `name` is moved server-side into `$_POST[\'hostname\']` and passed to `getOrderDomainData(true)`. Sibling ops: `getDomainSearch`, `getDomainLookup`, `getNewDomain`, `addDomain`.  **Path param:** - `name` (string, required) — hostname (e.g. `example.com`).  **Body:** None.  **Returns:** Combined order-data response — pricing, service catalog entry, form fields ready to populate for `addDomain`.  **Auth:** Session/API key (path is `client_api`, but called publicly).  **Errors:** - `4xx` — hostname cannot be resolved to a TLD service.  **Related calls:** - **Place order:** `addDomain` with the returned fields. 
     * Get the full order form data for a hostname in one round-trip (search → order preview)
     * @param name The base domain name to search (for example &#x60;example&#x60; or &#x60;example.com&#x60;).
     */
    public async postDomainSearch(name: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'name' is not null or undefined
        if (name === null || name === undefined) {
            throw new RequiredError("DomainsApi", "postDomainSearch", "name");
        }


        // Path Params
        const localVarPath = '/domains/search/{name}'
            .replace('{name}', encodeURIComponent(String(name)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdCookieAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["apiKeyAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdHeaderAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _config?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Re-polls OpenSRS transfer state. Behaves identically to `getDomainTransfer` (same `go()` handler) — provided so dashboards can refresh via a form-action pattern. **This endpoint does not initiate transfers** — to start a transfer, use `addDomain` with `type=transfer`. Sibling ops: `getDomainTransfer`, `addDomain` (initiate), `getDomainContact` (set `auth_info`).  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Body:** None.  **Returns:** Same payload as `getDomainTransfer`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `domain_status != \"active\"`.  **Related calls:** - **Read:** `getDomainTransfer`. - **Initiate new transfer:** `addDomain` with `type=transfer`. 
     * Re-poll OpenSRS transfer status for a domain order via POST
     * @param id The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;.
     */
    public async postDomainTransfer(id: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("DomainsApi", "postDomainTransfer", "id");
        }


        // Path Params
        const localVarPath = '/domains/{id}/transfer'
            .replace('{id}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdCookieAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["apiKeyAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdHeaderAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _config?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Pre-flight that returns the per-TLD field schema required to register or transfer the supplied hostname. The schema varies significantly by TLD: `.us` requires nexus codes, `.ca` requires CIRA legal type, `.eu` has residency rules, `.fr` requires VAT for orgs, etc. Values pre-populate from the account profile when possible. No commit — use `patchDomains` to validate filled values, then `addDomain` to place the order. Sibling ops: `getNewDomain`, `getDomainLookup`, `patchDomains`, `addDomain`.  **Body fields:** - `hostname` (string, required) — FQDN. - `type` (string, optional, default `register`) — `register` or `transfer`. - `coupon` (string, optional) — coupon code.  **Returns:** `{domainFields: {<field_name>: {label, type, options, value, required, ...}}}` — schema for the dynamic order form.  **Auth:** Session/API key.  **Errors:** - `400 Missing hostname parameter`. - `400 Unable to determine service type for this domain TLD.` — unknown TLD. - `401` — unauthenticated.  **Related calls:** - **Catalog first:** `getNewDomain`. - **Validate filled values:** `patchDomains`. - **Place order:** `addDomain`. 
     * Preview per-TLD field requirements for a domain order — no commit
     * @param domainOrderRequest 
     */
    public async putDomains(domainOrderRequest: DomainOrderRequest, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'domainOrderRequest' is not null or undefined
        if (domainOrderRequest === null || domainOrderRequest === undefined) {
            throw new RequiredError("DomainsApi", "putDomains", "domainOrderRequest");
        }


        // Path Params
        const localVarPath = '/domains/order';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.PUT);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        // Body Params
        const contentType = ObjectSerializer.getPreferredMediaType([
            "application/json"
        ]);
        requestContext.setHeaderParam("Content-Type", contentType);
        const serializedBody = ObjectSerializer.stringify(
            ObjectSerializer.serialize(domainOrderRequest, "DomainOrderRequest", ""),
            contentType
        );
        requestContext.setBody(serializedBody);

        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdCookieAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["apiKeyAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdHeaderAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _config?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Pushes updated contact data to the registrar via OpenSRS `provModify`, applied to admin/tech/billing/owner contact roles via `also_apply_to`. Active services apply changes immediately at the registrar; pending services may trigger `queue_process_payment` when the order is paid. **Domain must not be locked** — locked domains return an error directing the user to unlock first. **Note:** registrant-name changes on some TLDs (e.g. `.com`, `.net`) require a 60-day transfer lock per ICANN rules. Sibling ops: `getDomainContact`, `getDomainInfo`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Body fields (JSON or multipart, schema `DomainContactDetails`):** Same fields returned by `getDomainContact`: `firstname`, `lastname`, `email`, `address`/`2`/`3`, `city`, `state`, `zip`, `country`, `phone`, `fax`, `company`, optional `auth_info`, optional `transfer`.  **Returns:** `SuccessTextResponse`.  **Side effects:** - Calls OpenSRS `provModify` with `also_apply_to=admin,tech,billing,owner`. - May trigger ICANN 60-day transfer lock for registrant-name changes on legacy TLDs.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — domain is locked (unlock first). - Registrar error (e.g. OpenSRS error code 465 / 466) surfaced as 4xx.  **Related calls:** - **Read first:** `getDomainContact`. - **Transfer status:** `getDomainTransfer`. 
     * Update registrant/admin contact details and push them to OpenSRS
     * @param id The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;.
     * @param domainContactDetails 
     */
    public async updateDomainContact(id: number, domainContactDetails: DomainContactDetails, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("DomainsApi", "updateDomainContact", "id");
        }


        // verify required parameter 'domainContactDetails' is not null or undefined
        if (domainContactDetails === null || domainContactDetails === undefined) {
            throw new RequiredError("DomainsApi", "updateDomainContact", "domainContactDetails");
        }


        // Path Params
        const localVarPath = '/domains/{id}/contact'
            .replace('{id}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        // Body Params
        const contentType = ObjectSerializer.getPreferredMediaType([
            "application/json",
        
            "multipart/form-data"
        ]);
        requestContext.setHeaderParam("Content-Type", contentType);
        const serializedBody = ObjectSerializer.stringify(
            ObjectSerializer.serialize(domainContactDetails, "DomainContactDetails", ""),
            contentType
        );
        requestContext.setBody(serializedBody);

        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdCookieAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["apiKeyAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdHeaderAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _config?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Account-level write-back hook for the domain service record. Runs the same `View::go()` handler as `getDomainInfo` — it does NOT push registrar-side changes by itself. **For specific changes use the dedicated endpoints** — they push to OpenSRS where appropriate. Sibling ops: `getDomainInfo`, `updateDomainContact`, `updateDomainNameservers`, `addDomainDnssec`, `updateDomainWhoisPrivacy`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Body:** Form fields matching the domain service record.  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller.  **Prefer these dedicated endpoints:** - **Registrant/admin contact:** `updateDomainContact` (pushes to OpenSRS). - **Nameservers:** `updateDomainNameservers`, `addDomainNameserver`, `deleteDomainNameserver`. - **DNSSEC:** `addDomainDnssec`, `deleteDomainDnssec`. - **Whois privacy:** `updateDomainWhoisPrivacy`. - **Renew:** `postDomainRenewal`. - **Cancel:** `CancelDomain`. 
     * POST mutation hook for the domain detail page (use dedicated ops where possible)
     * @param id The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;.
     */
    public async updateDomainInfo(id: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("DomainsApi", "updateDomainInfo", "id");
        }


        // Path Params
        const localVarPath = '/domains/{id}'
            .replace('{id}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdCookieAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["apiKeyAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdHeaderAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _config?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Atomically replaces the domain\'s authoritative-nameserver delegation list via OpenSRS `nsAdvancedUpdt` with `op_type=assign`. **Domain must be unlocked.** Use this to switch DNS providers (e.g. point at InterServer `cdns1`/`cdns2`, Cloudflare, AWS Route53, etc.). **Replaces the full set in one call** — partial updates are not supported through this endpoint. To register a new glue record (host + IP) at the registry, use `addDomainNameserver`. Sibling ops: `getDomainNameservers`, `addDomainNameserver`, `deleteDomainNameserver`, `addDnsDomain` (host a zone at InterServer).  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Body fields (JSON or multipart, schema `DomainNameserverPutRequest`):** - `nameserver[]` (array of strings, required) — FQDN strings (e.g. `[\"ns1.example.com\", \"ns2.example.com\"]`). Trimmed; empty entries dropped server-side.  **Returns:** `SuccessTextResponse` on registrar `is_success=1`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `domain_status != \"active\"` or domain locked. - Registrar errors surfaced as 4xx.  **Related calls:** - **Read current set:** `getDomainNameservers`. - **Register a glue record:** `addDomainNameserver`. - **Host the DNS zone at InterServer:** `addDnsDomain` (DNS tag). 
     * Replace the full authoritative-nameserver delegation list at the registrar
     * @param id The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;.
     * @param domainNameserverPutRequest 
     */
    public async updateDomainNameservers(id: number, domainNameserverPutRequest: DomainNameserverPutRequest, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("DomainsApi", "updateDomainNameservers", "id");
        }


        // verify required parameter 'domainNameserverPutRequest' is not null or undefined
        if (domainNameserverPutRequest === null || domainNameserverPutRequest === undefined) {
            throw new RequiredError("DomainsApi", "updateDomainNameservers", "domainNameserverPutRequest");
        }


        // Path Params
        const localVarPath = '/domains/{id}/nameservers'
            .replace('{id}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.PUT);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        // Body Params
        const contentType = ObjectSerializer.getPreferredMediaType([
            "application/json",
        
            "multipart/form-data"
        ]);
        requestContext.setHeaderParam("Content-Type", contentType);
        const serializedBody = ObjectSerializer.stringify(
            ObjectSerializer.serialize(domainNameserverPutRequest, "DomainNameserverPutRequest", ""),
            contentType
        );
        requestContext.setBody(serializedBody);

        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdCookieAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["apiKeyAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdHeaderAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _config?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Manages the Whois privacy add-on. Behavior branches on `action`: - **`order`**: creates an add-on `Repeat_Invoice` and emits the first invoice; pass the returned `payUrl` to the customer or use `initiatePayment` with `invoiceId`. **Real money.** - **`enable`**: activates Whois privacy at OpenSRS — call after the invoice is paid (calls `post_payment_processing_new`). - **`disableCancel`**: disables Whois privacy at OpenSRS and marks the add-on `Repeat_Invoice` `deleted=1`. - **(no action)**: returns current state — same shape as `getDomainWhoisPrivacy`.  Sibling ops: `getDomainWhoisPrivacy`, `getDomainInvoices`, `initiatePayment`.  **Path param:** - `id` (integer, required) — `domain_id` from `getDomainsList`.  **Body fields (JSON or multipart, schema `DomainWhoisPrivacyRequest`):** - `action` (string, optional) — one of `order` / `enable` / `disableCancel`. Omit for status.  **Returns:** (varies by action) - `order`: `{text, invoiceId, repeatInvoiceId, payUrl}`. - `enable` / `disableCancel`: `{text}`. - No action: `{whoisPrivacy, cost, currency, currencySymbol}`.  **Side effects:** - `order`: inserts add-on `repeat_invoices` + `invoices` rows. - `enable`: OpenSRS `provModify` with privacy=on; calls `post_payment_processing_new`. - `disableCancel`: OpenSRS `provModify` with privacy=off; marks add-on `repeat_invoices.deleted=1`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `domain_status != \"active\"` or TLD doesn\'t support privacy. - `4xx` — no add-on found for `enable` / `disableCancel`.  **Related calls:** - **Read state:** `getDomainWhoisPrivacy`. - **Pay the order invoice:** `initiatePayment` (`method=cc|paypal|...`). - **Renew with privacy:** `postDomainRenewal` with `whois_privacy=enable`. 
     * Order, enable, or cancel the Whois privacy add-on for a domain
     * @param id The domain service ID. Use &#x60;domain_id&#x60; from &#x60;GET /domains&#x60;.
     * @param domainWhoisPrivacyRequest 
     */
    public async updateDomainWhoisPrivacy(id: number, domainWhoisPrivacyRequest: DomainWhoisPrivacyRequest, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("DomainsApi", "updateDomainWhoisPrivacy", "id");
        }


        // verify required parameter 'domainWhoisPrivacyRequest' is not null or undefined
        if (domainWhoisPrivacyRequest === null || domainWhoisPrivacyRequest === undefined) {
            throw new RequiredError("DomainsApi", "updateDomainWhoisPrivacy", "domainWhoisPrivacyRequest");
        }


        // Path Params
        const localVarPath = '/domains/{id}/whois'
            .replace('{id}', encodeURIComponent(String(id)));

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        // Body Params
        const contentType = ObjectSerializer.getPreferredMediaType([
            "application/json",
        
            "multipart/form-data"
        ]);
        requestContext.setHeaderParam("Content-Type", contentType);
        const serializedBody = ObjectSerializer.stringify(
            ObjectSerializer.serialize(domainWhoisPrivacyRequest, "DomainWhoisPrivacyRequest", ""),
            contentType
        );
        requestContext.setBody(serializedBody);

        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdCookieAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["apiKeyAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["sessionIdHeaderAuth"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _config?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

}

export class DomainsApiResponseProcessor {

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to addDomain
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async addDomainWithHttpInfo(response: ResponseContext): Promise<HttpInfo<ServiceOrderPostResponse >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: ServiceOrderPostResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ServiceOrderPostResponse", ""
            ) as ServiceOrderPostResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: GetAccountInfo401Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetAccountInfo401Response", ""
            ) as GetAccountInfo401Response;
            throw new ApiException<GetAccountInfo401Response>(response.httpStatusCode, "Unauthorized", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: ServiceOrderPostResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ServiceOrderPostResponse", ""
            ) as ServiceOrderPostResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to addDomainDnssec
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async addDomainDnssecWithHttpInfo(response: ResponseContext): Promise<HttpInfo<SuccessTextResponse >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SuccessTextResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SuccessTextResponse", ""
            ) as SuccessTextResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: GetAccountInfo401Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetAccountInfo401Response", ""
            ) as GetAccountInfo401Response;
            throw new ApiException<GetAccountInfo401Response>(response.httpStatusCode, "Unauthorized", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: SuccessTextResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SuccessTextResponse", ""
            ) as SuccessTextResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to addDomainNameserver
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async addDomainNameserverWithHttpInfo(response: ResponseContext): Promise<HttpInfo<TextResponse >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: TextResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "TextResponse", ""
            ) as TextResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: GetAccountInfo401Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetAccountInfo401Response", ""
            ) as GetAccountInfo401Response;
            throw new ApiException<GetAccountInfo401Response>(response.httpStatusCode, "Unauthorized", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: TextResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "TextResponse", ""
            ) as TextResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to cancelDomain
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async cancelDomainWithHttpInfo(response: ResponseContext): Promise<HttpInfo<CancelDomain200Response >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: CancelDomain200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "CancelDomain200Response", ""
            ) as CancelDomain200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: GetAccountInfo401Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetAccountInfo401Response", ""
            ) as GetAccountInfo401Response;
            throw new ApiException<GetAccountInfo401Response>(response.httpStatusCode, "Unauthorized", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: CancelDomain200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "CancelDomain200Response", ""
            ) as CancelDomain200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to deleteDomainDnssec
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async deleteDomainDnssecWithHttpInfo(response: ResponseContext): Promise<HttpInfo<SuccessTextResponse >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SuccessTextResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SuccessTextResponse", ""
            ) as SuccessTextResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: GetAccountInfo401Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetAccountInfo401Response", ""
            ) as GetAccountInfo401Response;
            throw new ApiException<GetAccountInfo401Response>(response.httpStatusCode, "Unauthorized", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: SuccessTextResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SuccessTextResponse", ""
            ) as SuccessTextResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to deleteDomainNameserver
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async deleteDomainNameserverWithHttpInfo(response: ResponseContext): Promise<HttpInfo<TextResponse >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: TextResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "TextResponse", ""
            ) as TextResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: GetAccountInfo401Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetAccountInfo401Response", ""
            ) as GetAccountInfo401Response;
            throw new ApiException<GetAccountInfo401Response>(response.httpStatusCode, "Unauthorized", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: TextResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "TextResponse", ""
            ) as TextResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getDomainContact
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getDomainContactWithHttpInfo(response: ResponseContext): Promise<HttpInfo<DomainContactDetails >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: DomainContactDetails = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "DomainContactDetails", ""
            ) as DomainContactDetails;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: GetAccountInfo401Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetAccountInfo401Response", ""
            ) as GetAccountInfo401Response;
            throw new ApiException<GetAccountInfo401Response>(response.httpStatusCode, "Unauthorized", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: DomainContactDetails = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "DomainContactDetails", ""
            ) as DomainContactDetails;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getDomainDnssec
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getDomainDnssecWithHttpInfo(response: ResponseContext): Promise<HttpInfo<DomainDnssecRecords >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: DomainDnssecRecords = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "DomainDnssecRecords", ""
            ) as DomainDnssecRecords;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: GetAccountInfo401Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetAccountInfo401Response", ""
            ) as GetAccountInfo401Response;
            throw new ApiException<GetAccountInfo401Response>(response.httpStatusCode, "Unauthorized", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: DomainDnssecRecords = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "DomainDnssecRecords", ""
            ) as DomainDnssecRecords;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getDomainInfo
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getDomainInfoWithHttpInfo(response: ResponseContext): Promise<HttpInfo<Domain >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: Domain = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Domain", ""
            ) as Domain;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: GetAccountInfo401Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetAccountInfo401Response", ""
            ) as GetAccountInfo401Response;
            throw new ApiException<GetAccountInfo401Response>(response.httpStatusCode, "Unauthorized", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: Domain = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Domain", ""
            ) as Domain;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getDomainInvoices
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getDomainInvoicesWithHttpInfo(response: ResponseContext): Promise<HttpInfo<ChargeInvoiceRows >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: ChargeInvoiceRows = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ChargeInvoiceRows", ""
            ) as ChargeInvoiceRows;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: GetAccountInfo401Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetAccountInfo401Response", ""
            ) as GetAccountInfo401Response;
            throw new ApiException<GetAccountInfo401Response>(response.httpStatusCode, "Unauthorized", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: ChargeInvoiceRows = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ChargeInvoiceRows", ""
            ) as ChargeInvoiceRows;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getDomainLookup
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getDomainLookupWithHttpInfo(response: ResponseContext): Promise<HttpInfo<DomainLookupResponse >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: DomainLookupResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "DomainLookupResponse", ""
            ) as DomainLookupResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: GetAccountInfo401Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetAccountInfo401Response", ""
            ) as GetAccountInfo401Response;
            throw new ApiException<GetAccountInfo401Response>(response.httpStatusCode, "Unauthorized", body, response.headers);
        }
        if (isCodeInRange("422", response.httpStatusCode)) {
            const body: TextResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "TextResponse", ""
            ) as TextResponse;
            throw new ApiException<TextResponse>(response.httpStatusCode, "The domain input was invalid.", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: DomainLookupResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "DomainLookupResponse", ""
            ) as DomainLookupResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getDomainNameservers
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getDomainNameserversWithHttpInfo(response: ResponseContext): Promise<HttpInfo<DomainNameserverGetResponse >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: DomainNameserverGetResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "DomainNameserverGetResponse", ""
            ) as DomainNameserverGetResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: GetAccountInfo401Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetAccountInfo401Response", ""
            ) as GetAccountInfo401Response;
            throw new ApiException<GetAccountInfo401Response>(response.httpStatusCode, "Unauthorized", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: DomainNameserverGetResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "DomainNameserverGetResponse", ""
            ) as DomainNameserverGetResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getDomainRenewal
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getDomainRenewalWithHttpInfo(response: ResponseContext): Promise<HttpInfo<SuccessTextResponse >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SuccessTextResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SuccessTextResponse", ""
            ) as SuccessTextResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: GetAccountInfo401Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetAccountInfo401Response", ""
            ) as GetAccountInfo401Response;
            throw new ApiException<GetAccountInfo401Response>(response.httpStatusCode, "Unauthorized", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: SuccessTextResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SuccessTextResponse", ""
            ) as SuccessTextResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getDomainSearch
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getDomainSearchWithHttpInfo(response: ResponseContext): Promise<HttpInfo<DomainSearchResponse >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: DomainSearchResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "DomainSearchResponse", ""
            ) as DomainSearchResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: GetAccountInfo401Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetAccountInfo401Response", ""
            ) as GetAccountInfo401Response;
            throw new ApiException<GetAccountInfo401Response>(response.httpStatusCode, "Unauthorized", body, response.headers);
        }
        if (isCodeInRange("404", response.httpStatusCode)) {
            const body: TextResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "TextResponse", ""
            ) as TextResponse;
            throw new ApiException<TextResponse>(response.httpStatusCode, "No search suggestions or registrar response available.", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: DomainSearchResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "DomainSearchResponse", ""
            ) as DomainSearchResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getDomainTransfer
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getDomainTransferWithHttpInfo(response: ResponseContext): Promise<HttpInfo<SuccessTextResponse >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SuccessTextResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SuccessTextResponse", ""
            ) as SuccessTextResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: GetAccountInfo401Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetAccountInfo401Response", ""
            ) as GetAccountInfo401Response;
            throw new ApiException<GetAccountInfo401Response>(response.httpStatusCode, "Unauthorized", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: SuccessTextResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SuccessTextResponse", ""
            ) as SuccessTextResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getDomainWhoisPrivacy
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getDomainWhoisPrivacyWithHttpInfo(response: ResponseContext): Promise<HttpInfo<SuccessTextResponse >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SuccessTextResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SuccessTextResponse", ""
            ) as SuccessTextResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: GetAccountInfo401Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetAccountInfo401Response", ""
            ) as GetAccountInfo401Response;
            throw new ApiException<GetAccountInfo401Response>(response.httpStatusCode, "Unauthorized", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: SuccessTextResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SuccessTextResponse", ""
            ) as SuccessTextResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getDomainsList
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getDomainsListWithHttpInfo(response: ResponseContext): Promise<HttpInfo<Array<DomainRow> >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: Array<DomainRow> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Array<DomainRow>", ""
            ) as Array<DomainRow>;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: GetAccountInfo401Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetAccountInfo401Response", ""
            ) as GetAccountInfo401Response;
            throw new ApiException<GetAccountInfo401Response>(response.httpStatusCode, "Unauthorized", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: Array<DomainRow> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Array<DomainRow>", ""
            ) as Array<DomainRow>;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getDomainsWelcomeEmail
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getDomainsWelcomeEmailWithHttpInfo(response: ResponseContext): Promise<HttpInfo<SuccessTextResponse >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SuccessTextResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SuccessTextResponse", ""
            ) as SuccessTextResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: GetAccountInfo401Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetAccountInfo401Response", ""
            ) as GetAccountInfo401Response;
            throw new ApiException<GetAccountInfo401Response>(response.httpStatusCode, "Unauthorized", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: SuccessTextResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SuccessTextResponse", ""
            ) as SuccessTextResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getNewDomain
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getNewDomainWithHttpInfo(response: ResponseContext): Promise<HttpInfo<DomainOrder >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: DomainOrder = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "DomainOrder", ""
            ) as DomainOrder;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: GetAccountInfo401Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetAccountInfo401Response", ""
            ) as GetAccountInfo401Response;
            throw new ApiException<GetAccountInfo401Response>(response.httpStatusCode, "Unauthorized", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: DomainOrder = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "DomainOrder", ""
            ) as DomainOrder;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to patchDomains
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async patchDomainsWithHttpInfo(response: ResponseContext): Promise<HttpInfo<void >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, undefined);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: GetAccountInfo401Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetAccountInfo401Response", ""
            ) as GetAccountInfo401Response;
            throw new ApiException<GetAccountInfo401Response>(response.httpStatusCode, "Unauthorized", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: void = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "void", ""
            ) as void;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to postDomainRenewal
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async postDomainRenewalWithHttpInfo(response: ResponseContext): Promise<HttpInfo<SuccessTextResponse >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SuccessTextResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SuccessTextResponse", ""
            ) as SuccessTextResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: GetAccountInfo401Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetAccountInfo401Response", ""
            ) as GetAccountInfo401Response;
            throw new ApiException<GetAccountInfo401Response>(response.httpStatusCode, "Unauthorized", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: SuccessTextResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SuccessTextResponse", ""
            ) as SuccessTextResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to postDomainSearch
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async postDomainSearchWithHttpInfo(response: ResponseContext): Promise<HttpInfo<void >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, undefined);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: GetAccountInfo401Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetAccountInfo401Response", ""
            ) as GetAccountInfo401Response;
            throw new ApiException<GetAccountInfo401Response>(response.httpStatusCode, "Unauthorized", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: void = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "void", ""
            ) as void;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to postDomainTransfer
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async postDomainTransferWithHttpInfo(response: ResponseContext): Promise<HttpInfo<SuccessTextResponse >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SuccessTextResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SuccessTextResponse", ""
            ) as SuccessTextResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: GetAccountInfo401Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetAccountInfo401Response", ""
            ) as GetAccountInfo401Response;
            throw new ApiException<GetAccountInfo401Response>(response.httpStatusCode, "Unauthorized", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: SuccessTextResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SuccessTextResponse", ""
            ) as SuccessTextResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to putDomains
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async putDomainsWithHttpInfo(response: ResponseContext): Promise<HttpInfo<void >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, undefined);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: GetAccountInfo401Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetAccountInfo401Response", ""
            ) as GetAccountInfo401Response;
            throw new ApiException<GetAccountInfo401Response>(response.httpStatusCode, "Unauthorized", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: void = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "void", ""
            ) as void;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to updateDomainContact
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async updateDomainContactWithHttpInfo(response: ResponseContext): Promise<HttpInfo<SuccessTextResponse >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SuccessTextResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SuccessTextResponse", ""
            ) as SuccessTextResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: GetAccountInfo401Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetAccountInfo401Response", ""
            ) as GetAccountInfo401Response;
            throw new ApiException<GetAccountInfo401Response>(response.httpStatusCode, "Unauthorized", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: SuccessTextResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SuccessTextResponse", ""
            ) as SuccessTextResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to updateDomainInfo
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async updateDomainInfoWithHttpInfo(response: ResponseContext): Promise<HttpInfo<SuccessTextResponse >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SuccessTextResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SuccessTextResponse", ""
            ) as SuccessTextResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: GetAccountInfo401Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetAccountInfo401Response", ""
            ) as GetAccountInfo401Response;
            throw new ApiException<GetAccountInfo401Response>(response.httpStatusCode, "Unauthorized", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: SuccessTextResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SuccessTextResponse", ""
            ) as SuccessTextResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to updateDomainNameservers
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async updateDomainNameserversWithHttpInfo(response: ResponseContext): Promise<HttpInfo<TextResponse >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: TextResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "TextResponse", ""
            ) as TextResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: GetAccountInfo401Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetAccountInfo401Response", ""
            ) as GetAccountInfo401Response;
            throw new ApiException<GetAccountInfo401Response>(response.httpStatusCode, "Unauthorized", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: TextResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "TextResponse", ""
            ) as TextResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to updateDomainWhoisPrivacy
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async updateDomainWhoisPrivacyWithHttpInfo(response: ResponseContext): Promise<HttpInfo<SuccessTextResponse >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SuccessTextResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SuccessTextResponse", ""
            ) as SuccessTextResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: GetAccountInfo401Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetAccountInfo401Response", ""
            ) as GetAccountInfo401Response;
            throw new ApiException<GetAccountInfo401Response>(response.httpStatusCode, "Unauthorized", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: SuccessTextResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SuccessTextResponse", ""
            ) as SuccessTextResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

}
