// TODO: better import syntax?
import {BaseAPIRequestFactory, RequiredError, COLLECTION_FORMATS} from './baseapi';
import {Configuration} from '../configuration';
import {RequestContext, HttpMethod, ResponseContext, HttpFile, HttpInfo} from '../http/http';
import {ObjectSerializer} from '../models/ObjectSerializer';
import {ApiException} from './exception';
import {canConsumeForm, isCodeInRange} from '../util';
import {SecurityAuthentication} from '../auth/auth';


import { BuyItNowList } from '../models/BuyItNowList';
import { CaptchaResponse } from '../models/CaptchaResponse';
import { GetAccountInfo401Response } from '../models/GetAccountInfo401Response';
import { GetAccountLocales200ResponseValue } from '../models/GetAccountLocales200ResponseValue';
import { GetOauthRedirect200Response } from '../models/GetOauthRedirect200Response';
import { LoginErrorResponse } from '../models/LoginErrorResponse';
import { LoginInfo } from '../models/LoginInfo';
import { LoginSubmissionExample } from '../models/LoginSubmissionExample';
import { LoginSubmissionExampleGRecaptchaResponse } from '../models/LoginSubmissionExampleGRecaptchaResponse';
import { LoginSuccessResponse } from '../models/LoginSuccessResponse';
import { PatchOauthTwoFactor200Response } from '../models/PatchOauthTwoFactor200Response';
import { PatchOauthTwoFactorRequest } from '../models/PatchOauthTwoFactorRequest';
import { PostOauthCallback200Response } from '../models/PostOauthCallback200Response';
import { PostOauthCallbackRequest } from '../models/PostOauthCallbackRequest';
import { ServicesInfo } from '../models/ServicesInfo';

/**
 * no description
 */
export class PublicApiRequestFactory extends BaseAPIRequestFactory {

    /**
     * Populates a currency selector on signup, billing-preferences, or invoice-display forms. Public — no auth required. The list changes only when an admin enables/disables a currency — cache client-side. Sibling ops: `getCountries`, `getTimezones`, `getAccountLocales`, plus the billing-preference endpoints under `/account/_*` and `/billing/_*`.  **Path/Query/Body:** None.  **Returns:** flat JSON array of ISO-4217 currency codes — e.g. `[\"USD\", \"EUR\", \"GBP\", \"INR\"]`. Sourced from rows in the `currencies` table where `currency_enabled=1`, in the natural row order. The endpoint returns codes only — for symbols, decimals, or exchange rates use a separate currency-detail endpoint or a static client-side map.  **Auth:** None.  **Errors:** No documented error path.  **Related calls:** - **Apply to account profile:** `updateAccountInfo`. - **Other preference catalogs:** `getCountries`, `getTimezones`, `getAccountLocales`. 
     * List enabled currency codes accepted for billing and preferences
     */
    public async getAccountCurrencies(_options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // Path Params
        const localVarPath = '/account/currencies';

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
     * Renders the language-picker for account preferences or login pages. Public — no auth required. Cross-references PHP\'s Punic locale data with `locale/google_langs.php` so only locales with Google Translate support are returned. Result is essentially static — cache client-side. Sibling ops: `getCountries`, `getTimezones`, `getAccountCurrencies`, `updateAccountInfo` (consumes the chosen locale).  **Path/Query/Body:** None.  **Returns:** JSON object keyed by BCP-47-style locale code, with `{ name, local_name }` per entry — e.g.      {       \"en\": { \"name\": \"English\", \"local_name\": \"English\" },       \"es\": { \"name\": \"Spanish\", \"local_name\": \"español\" },       \"fr\": { \"name\": \"French\", \"local_name\": \"français\" }     }  `name` is the English label; `local_name` is the locale\'s name in its own language (good for accessibility and avoiding the wrong-script problem).  **Auth:** None.  **Errors:** No documented error path.  **Related calls:** - **Apply to account profile:** `updateAccountInfo` (sets `locale`). - **Other preference catalogs:** `getCountries`, `getTimezones`, `getAccountCurrencies`. 
     * List supported UI locales with English and native display names
     */
    public async getAccountLocales(_options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // Path Params
        const localVarPath = '/account/locales';

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
     * Fetches a fresh captcha challenge image to display before submitting `submitSignup` (or any unauthenticated form that needs human verification). Public endpoint — no authentication required. Sibling ops: `getLoginInfo` (returns a captcha alongside other login-page data), `submitSignup` (consumes the answer), `submitLogin`.  **Path/Query/Body:** None.  **Returns:** `{ captcha: string }` — `captcha` is a `data:image/jpeg;base64,...` URL ready to drop into an `<img src>`.  **Side effects:** the phrase is stored server-side in `$_SESSION[\'captcha\']` (also aliased to the signup-flow key `$_SESSION[\'captchaSignup\']` and forgot-password key `$_SESSION[\'captchaFP\']`). The browser must send the same `PHPSESSID` cookie back when posting the answer.  **Charset:** 8 chars from `3456789ABCDEFGHJKLMNPQRSTWXY` — no ambiguous `0`/`1`/`I`/`O`/`2`/`Z`.  **Related calls:** - **Consumers:** `submitSignup`, `submitLogin`. - **One-shot login bootstrap:** `getLoginInfo`. answer in `captcha` field). 
     * Fetch a base64 JPEG captcha challenge for human verification
     */
    public async getCaptcha(_options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // Path Params
        const localVarPath = '/captcha';

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
     * Populates country dropdowns in account registration, billing-address forms, and domain/whois contact forms. Public — no auth required. Disabled countries (e.g. embargoed jurisdictions) are excluded — admins toggle this in `country_t.enabled`. Sibling ops: `getTimezones`, `getAccountLocales`, `getAccountCurrencies`, `updateAccountInfo` (consumes the chosen country).  **Query parameters:** - `fetch_by` (string, optional) — one of `iso2` (default; two-letter codes like `US`, `GB`), `iso3` (three-letter like `USA`, `GBR`), or `numcode` (UN M49 numeric like `840`). Any other value silently falls back to `iso2`.  **Body:** None.  **Returns:** JSON object mapping the chosen key format to the country\'s short name — e.g. `{ \"AF\": \"Afghanistan\", \"US\": \"United States\", \"ZW\": \"Zimbabwe\" }`. Sourced from the `country_t` table, filtered to `enabled=1`, ordered alphabetically by `short_name`.  **Auth:** None.  **Errors:** No documented error path.  **Related calls:** - **Apply to account profile:** `updateAccountInfo`. - **Other preference catalogs:** `getTimezones`, `getAccountLocales`, `getAccountCurrencies`. 
     * List enabled countries keyed by ISO-2/ISO-3/numeric code
     * @param fetchBy Get countries by iso2 or iso3 or numcode
     */
    public async getCountries(fetchBy?: 'iso2' | 'iso3' | 'numcode', _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;


        // Path Params
        const localVarPath = '/account/countries';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (fetchBy !== undefined) {
            requestContext.setQueryParam("fetch_by", ObjectSerializer.serialize(fetchBy, "'iso2' | 'iso3' | 'numcode'", ""));
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
     * Enumerates what services this MyAdmin install sells before placing orders or building a signup UI. Public — no auth required. Sibling ops: `getNewVps`, `getNewWebsite`, `getNewMail`, `getNewSsl`, `getNewLicense`, `getNewBackup`, `getNewQs`, `getNewServer` — each module\'s catalog op for buyable-package details.  **Path/Query/Body:** None.  **Returns:** `{ modules, services, serviceTypes, serviceCategories }`. - `modules` (array) — enabled plugin modules (`vps`, `webhosting`, `domains`, `ssl`, etc.). - `services` (object) — map of `services_id` → row from the `services` table, filtered to `services_buyable=1 AND services_hidden=0`, with `services_ourcost` / `services_hidden` stripped, and `services_id` / `services_category` / `services_type` cast to int and `services_cost` cast to float. - `serviceTypes` (object) — joins service rows to human-readable type names. - `serviceCategories` (object) — joins service rows to category names.  **Auth:** None.  **Errors:** No documented error path; 401 only if a stricter auth layer is added upstream.  **Related calls:** - **Module-specific order catalog:** `getNewVps`, `getNewWebsite`, `getNewMail`, `getNewSsl`, `getNewLicense`, `getNewBackup`, `getNewQs`, `getNewServer`. - **Deeper health probe:** `pingServer`. 
     * Discover available modules, service packages, categories, and types
     */
    public async getInfo(_options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // Path Params
        const localVarPath = '/info';

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
     * Bootstraps an unauthenticated login page in one round-trip — branding logo, fresh captcha challenge, auto-detected user language, and live counts of VPS / websites / servers managed by the system (often used as marketing stats). Public — no auth required. Sibling ops: `submitLogin` (consume the captcha), `getCaptcha` (refresh captcha only), `getAccountLocales`, `submitSignup`.  **Path/Query/Body:** None.  **Returns** `{ logo, captcha, language, counts }`: - `logo` (string) — URL; uses the `LOGO` constant or a default. - `captcha` (string) — `data:image/jpeg;base64,...` image; phrase is stored server-side under `$_SESSION[\'captcha\']` (also aliased to `$_SESSION[\'captchaSignup\']` and `$_SESSION[\'captchaFP\']`) — the browser\'s `PHPSESSID` cookie carries the phrase to `submitLogin` / `submitSignup`. - `language` (string) — BCP-47 locale (e.g. `en-US`). - `counts` (object) — `{ vps: int, websites: int, servers: int }` from live `SELECT COUNT(*)` on the underlying tables.  **Auth:** None.  **Errors:** `403` per `LoginResponseError` if a stricter login gate is configured upstream.  **Related calls:** - **Next:** `submitLogin` (login form post) or `submitSignup` (new account). - **Captcha refresh only:** `getCaptcha`. - **OAuth alternative:** `getOauthRedirect`. 
     * Fetch logo, captcha, language, and stats for rendering a login page
     */
    public async getLoginInfo(_options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // Path Params
        const localVarPath = '/login';

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
     * Use to browse pre-built dedicated servers ready for immediate provisioning (Rapid Deploy / marketplace). No params, no body. Pulls live inventory from `mynew.interserver.net/ajax/server_a.php`. Returns: array of `{ server_id, cpu: [model, {img,type,speed,num_cpus,num_cores}], memory, disk, bandwidth, ips, location, price }`. The `server_id` is the marketplace asset id — feed it into `buyItNowServerOrder` (GET options for asset `?a=<id>`) and `placeBuyNowServer` (POST to commit). Errors: 401 if session expired. Sibling ops: `buyItNowServerOrder` (configure asset), `placeBuyNowServer` (purchase), `getNewServer`/`addServer` (custom-spec build, not pre-built), `getServerList` (already-owned servers).
     * List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing
     */
    public async getMPServers(_options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // Path Params
        const localVarPath = '/buy_now_servers_list';

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
     * Use as step 1 of social login. Navigate the browser (typically a popup) to `/apiv2/oauth?provider=X` so the provider authenticates the user, then handle the postMessage from the popup. Public — no auth required. Query params: `provider` (required, case-sensitive: `Google`/`GitHub`/`Facebook`/`Twitter`), `origin` (optional, opener window origin used to target postMessage instead of `*`). The endpoint redirects directly to the provider rather than returning JSON. After the provider callback, the popup posts one of: `oauth_success` (logged in), `oauth_2fa_required` (call `patchOauthTwoFactor` with the `oauth_token`), `oauth_link_required` (call `postOauthCallback` to link or create), or `oauth_error`. Siblings: `postOauthCallback`, `patchOauthTwoFactor`, `submitLogin` (password flow).
     * Begin OAuth login flow — redirect user to provider for authentication
     * @param provider The OAuth provider name (e.g. &#x60;Google&#x60;).
     */
    public async getOauthRedirect(provider: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'provider' is not null or undefined
        if (provider === null || provider === undefined) {
            throw new RequiredError("PublicApi", "getOauthRedirect", "provider");
        }


        // Path Params
        const localVarPath = '/oauth';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (provider !== undefined) {
            requestContext.setQueryParam("provider", ObjectSerializer.serialize(provider, "string", ""));
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
     * Populates a timezone picker for account preferences or for VPS / QuickServer timezone changes. Public — no auth required. Backed by PHP\'s `DateTimeZone::listIdentifiers()` so the catalog is large (~400+ zones, including deprecated aliases like `US/Eastern`). Result is fixed for a given PHP build — cache aggressively client-side. Sibling ops: `postVpsChangeTimezone`, `postQsChangeTimezone`, `getCountries`, `getAccountLocales`, `getAccountCurrencies`.  **Path/Query/Body:** None.  **Returns:** flat JSON array of stable IANA tz strings, e.g. `[\"Africa/Abidjan\", \"America/New_York\", \"Asia/Tokyo\", \"Europe/London\", \"UTC\"]`. Values are usable verbatim on the timezone-change endpoints; no translation or country-grouping is performed here.  **Auth:** None.  **Errors:** No documented error path under normal operation.  **Related calls:** - **Apply selection to a service:** `postVpsChangeTimezone` (`/vps/{id}/change_timezone`), `postQsChangeTimezone` (`/qs/{id}/change_timezone`). - **Apply to account profile:** `updateAccountInfo` (sets `timezone`). - **Other preference catalogs:** `getCountries`, `getAccountLocales`, `getAccountCurrencies`. 
     * List all PHP timezone identifiers usable on accounts and services
     */
    public async getTimezones(_options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // Path Params
        const localVarPath = '/account/timezones';

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
     * Final step of the OAuth login flow when the account has 2FA enabled. Called after `postOauthCallback` (or the popup\'s `window.postMessage()` handshake) returned `2fa_required`. Verifies the TOTP against the account\'s stored Google Authenticator secret and creates the session. Public — no auth required. Sibling ops: `postOauthCallback` (prior step), `getOauthRedirect` (entry point), `getAccountTfaSetup` (enroll 2FA), `submitLogin`.  **Body fields** (JSON or form): - `code` (string, required) — 6-digit TOTP from the authenticator app. - `account_id` (integer, required) — returned by the prior `postOauthCallback`. - `oauth_token` (string, optional) — signed token from the original `postMessage` payload, type `2fa`, 10-minute expiry. When present, its embedded OAuth profile data is merged into the account (name / picture / phone / address) for any fields still empty.  **Returns:** `{ login: true, sessionId, account_id, account_lid, ima, name, gravatar }`.  **Errors:** - `400` — invalid / expired `oauth_token` or no pending verification. - `401` — invalid 2FA code. - `409` — 2FA not enabled on the account. - `422` — missing `code`.  **Related calls:** - **Prerequisite:** `postOauthCallback`. - **Enroll 2FA on the account first:** `getAccountTfaSetup` → `updateAccountTfa`. - **Alternate login:** `submitLogin`. 
     * Submit 2FA code to finish OAuth login when account has 2FA enabled
     * @param patchOauthTwoFactorRequest 
     */
    public async patchOauthTwoFactor(patchOauthTwoFactorRequest: PatchOauthTwoFactorRequest, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'patchOauthTwoFactorRequest' is not null or undefined
        if (patchOauthTwoFactorRequest === null || patchOauthTwoFactorRequest === undefined) {
            throw new RequiredError("PublicApi", "patchOauthTwoFactor", "patchOauthTwoFactorRequest");
        }


        // Path Params
        const localVarPath = '/oauth';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.PATCH);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        // Body Params
        const contentType = ObjectSerializer.getPreferredMediaType([
            "application/json",
        
            "multipart/form-data"
        ]);
        requestContext.setHeaderParam("Content-Type", contentType);
        const serializedBody = ObjectSerializer.stringify(
            ObjectSerializer.serialize(patchOauthTwoFactorRequest, "PatchOauthTwoFactorRequest", ""),
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
     * Trivial GET that returns the JSON string `\"pong\"` so AI agents and monitors can verify the API endpoint is reachable. Public — no auth required, no params, no body. Does not exercise the database, queue, or any plugin modules. Sibling ops: `getInfo` (richer probe that touches MySQL).  **Path/Query/Body:** None.  **Returns:** JSON-encoded string `\"pong\"` with HTTP 200.  **Auth:** None (public endpoint).  **Errors:** No documented error path under normal operation — a non-200 or absent response indicates the API is down, the host is unreachable, or upstream routing is broken.  **Use when:** - Bootstrapping a new client and want to confirm the API is reachable. - Smoke-testing in CI/health-check pipelines. - Diagnosing connectivity issues before higher-cost calls.  **Related calls:** - **Deeper health probe:** `getInfo` (exercises the DB layer). 
     * Liveness check — returns the JSON string \"pong\" to confirm API is up
     */
    public async pingServer(_options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // Path Params
        const localVarPath = '/ping';

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
     * Step 3 of the OAuth login flow. Called after `getOauthRedirect` returned `oauth_link_required` via the popup\'s `window.postMessage()`. Either links the OAuth identity to an existing account (verifying password) or creates a new account. Public — no auth required. Sibling ops: `patchOauthTwoFactor` (2FA follow-up), `getOauthRedirect` (start the flow), `submitSignup`, `submitLogin`.  **Body fields** (JSON or form): - `oauth_token` (string, required) — signed token from the popup\'s `window.postMessage()` payload; 10-minute expiry. - `login` (string, required) — email. - `password` (string, required). - `create` (boolean, optional) — set `true` to create a new account instead of linking. - `email_confirmation` (string, conditional) — 8-char code emailed on the first `create=true` attempt; server returns 422 `email_verification_required` until provided. - `tfa` (string, conditional) — 6-digit TOTP when the existing account has 2FA enabled (after the first attempt returns 422 `2fa_required`).  **Returns:** `{ login|signup|linked: true, sessionId, account_id, account_lid, ima, name, gravatar }`.  **Errors:** - `400` — invalid / expired `oauth_token`. - `401` — bad password or wrong 2FA code. - `409` — account already exists (when `create: true`). - `422` — missing field; `email_verification_required`; `2fa_required`.  **Related calls:** - **Prerequisite:** `getOauthRedirect` to initiate the popup flow. - **Follow-up when 2FA required:** `patchOauthTwoFactor`. - **Alternate entry points:** `submitLogin`, `submitSignup`. 
     * Complete OAuth login by linking provider to existing or new account
     * @param provider The OAuth provider name (e.g. &#x60;Google&#x60;).
     * @param postOauthCallbackRequest 
     */
    public async postOauthCallback(provider: string, postOauthCallbackRequest?: PostOauthCallbackRequest, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'provider' is not null or undefined
        if (provider === null || provider === undefined) {
            throw new RequiredError("PublicApi", "postOauthCallback", "provider");
        }



        // Path Params
        const localVarPath = '/oauth';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (provider !== undefined) {
            requestContext.setQueryParam("provider", ObjectSerializer.serialize(provider, "string", ""));
        }


        // Body Params
        const contentType = ObjectSerializer.getPreferredMediaType([
            "application/json",
        
            "multipart/form-data"
        ]);
        requestContext.setHeaderParam("Content-Type", contentType);
        const serializedBody = ObjectSerializer.stringify(
            ObjectSerializer.serialize(postOauthCallbackRequest, "PostOauthCallbackRequest", ""),
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
     * Primary password→session-token exchange. Pass the returned session id back as the `sessionid` HTTP header on subsequent calls. Public — no auth required. Sibling ops: `getLoginInfo` (captcha + branding), `getOauthRedirect` (social login), `submitSignup`, `updateAccountApiKey` (rotate API key once logged in).  **Body fields** (JSON or form): - `login` (string, required) — email. - `passwd` (string, required) — password. - `tfa` (string, conditional) — 6-digit TOTP when the account has 2FA enabled. - `verify` (string, conditional) — 8-char email-confirmation code returned via email when logging in from a new IP. Triggered automatically when the IP has no `acquittal` trial record yet (see `Trial` ORM, type `verify_email`). - `remember` (boolean / `\'true\'` / `\'yes\'` / `\'1\'`, optional) — extends cookie lifetime.  **Returns:** `{ sessionId, account_id, account_lid, ima, name, gravatar }`. The `sessionId` value is the credential to send on every subsequent authenticated request.  **Errors:** - `401` — bad credentials or wrong 2FA / verify code. - `422` — missing `login` / `passwd` / `tfa` / `verify`; response body\'s `field` indicates which input is required next. - `429` — too many failed attempts (login-log rate-limit) or max code retries reached.  **Related calls:** - **Prerequisite:** `getLoginInfo` to fetch the captcha challenge and counts. - **Alternate:** `getOauthRedirect` → `postOauthCallback` for social login. - **After login:** `updateAccountApiKey`. 
     * Authenticate with email + password and return a session token
     * @param login 
     * @param passwd 
     * @param remember 
     * @param gRecaptchaResponse 
     * @param tfa Two Factor Authentication Response.
     */
    public async submitLogin(login: string, passwd: string, remember?: string, gRecaptchaResponse?: LoginSubmissionExampleGRecaptchaResponse, tfa?: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'login' is not null or undefined
        if (login === null || login === undefined) {
            throw new RequiredError("PublicApi", "submitLogin", "login");
        }


        // verify required parameter 'passwd' is not null or undefined
        if (passwd === null || passwd === undefined) {
            throw new RequiredError("PublicApi", "submitLogin", "passwd");
        }





        // Path Params
        const localVarPath = '/login';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Form Params
        const useForm = canConsumeForm([
            'multipart/form-data',
            'application/json',
        ]);

        let localVarFormParams
        if (useForm) {
            localVarFormParams = new FormData();
        } else {
            localVarFormParams = new URLSearchParams();
        }

        if (login !== undefined) {
             // TODO: replace .append with .set
             localVarFormParams.append('login', login as any);
        }
        if (passwd !== undefined) {
             // TODO: replace .append with .set
             localVarFormParams.append('passwd', passwd as any);
        }
        if (remember !== undefined) {
             // TODO: replace .append with .set
             localVarFormParams.append('remember', remember as any);
        }
        if (gRecaptchaResponse !== undefined) {
             // TODO: replace .append with .set
             localVarFormParams.append('g-recaptcha-response', gRecaptchaResponse as any);
        }
        if (tfa !== undefined) {
             // TODO: replace .append with .set
             localVarFormParams.append('tfa', tfa as any);
        }

        requestContext.setBody(localVarFormParams);

        if(!useForm) {
            const contentType = ObjectSerializer.getPreferredMediaType([
                "multipart/form-data",
            
                "application/json"
            ]);
            requestContext.setHeaderParam("Content-Type", contentType);
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
     * First step of the signup flow before adding payment or services. Public — no auth required. The account is created in `pending` state and moved to `active` once the email-confirmation code is verified; an `account.activated` event then fires (welcome email + admin notification). MaxMind GeoIP populates `country` from the client IP. Sibling ops: `submitLogin`, `getCaptcha`, `getLoginInfo`, `addBillingPrepay`, plus the `add*` service ops to follow up after signup.  **Body fields** (JSON or form): - `login` (string, required) — email; must be valid and not an alias like `+tag` or dotted gmail. - `passwd` (string, required) — 4–64 chars. - `tos` (truthy, required) — `yes` / `true` / `1`. - `captcha` (string, required) — answer to the phrase from `getCaptcha` or `getLoginInfo` (server reads the phrase from `$_SESSION[\'captchaSignup\']`). - `email_confirmation` (string, conditional) — 8-char code emailed on the first attempt; server returns `400 { field: \'email_confirmation\' }` until provided. - `remember` (boolean / `\'true\'` / `\'yes\'` / `\'1\'`, optional) — 256-day cookie.  **Returns:** `{ sessionId, account_id, account_lid, ima }`.  **Errors:** - `400` — missing or invalid `login` / `passwd` / `tos` / `captcha` / `email_confirmation`; blocked-domain or aliased-email; account already exists. - `402` per `LoginResponseError` — signup gate misconfigured upstream.  **Related calls:** - **Prerequisite:** `getCaptcha` or `getLoginInfo`. - **After signup:** `submitLogin`, `addBillingPrepay`, plus any `add*` order op. 
     * Create a new customer account (email + password + captcha + ToS)
     * @param loginSubmissionExample 
     */
    public async submitSignup(loginSubmissionExample?: LoginSubmissionExample, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;


        // Path Params
        const localVarPath = '/signup';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.POST);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")


        // Body Params
        const contentType = ObjectSerializer.getPreferredMediaType([
            "application/json"
        ]);
        requestContext.setHeaderParam("Content-Type", contentType);
        const serializedBody = ObjectSerializer.stringify(
            ObjectSerializer.serialize(loginSubmissionExample, "LoginSubmissionExample", ""),
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

export class PublicApiResponseProcessor {

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getAccountCurrencies
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getAccountCurrenciesWithHttpInfo(response: ResponseContext): Promise<HttpInfo<Array<string> >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: Array<string> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Array<string>", ""
            ) as Array<string>;
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
            const body: Array<string> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Array<string>", ""
            ) as Array<string>;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getAccountLocales
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getAccountLocalesWithHttpInfo(response: ResponseContext): Promise<HttpInfo<{ [key: string]: GetAccountLocales200ResponseValue; } >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: { [key: string]: GetAccountLocales200ResponseValue; } = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "{ [key: string]: GetAccountLocales200ResponseValue; }", ""
            ) as { [key: string]: GetAccountLocales200ResponseValue; };
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
            const body: { [key: string]: GetAccountLocales200ResponseValue; } = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "{ [key: string]: GetAccountLocales200ResponseValue; }", ""
            ) as { [key: string]: GetAccountLocales200ResponseValue; };
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getCaptcha
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getCaptchaWithHttpInfo(response: ResponseContext): Promise<HttpInfo<CaptchaResponse >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: CaptchaResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "CaptchaResponse", ""
            ) as CaptchaResponse;
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
            const body: CaptchaResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "CaptchaResponse", ""
            ) as CaptchaResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getCountries
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getCountriesWithHttpInfo(response: ResponseContext): Promise<HttpInfo<any >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: any = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "any", ""
            ) as any;
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
            const body: any = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "any", ""
            ) as any;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getInfo
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getInfoWithHttpInfo(response: ResponseContext): Promise<HttpInfo<ServicesInfo >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: ServicesInfo = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ServicesInfo", ""
            ) as ServicesInfo;
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
            const body: ServicesInfo = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ServicesInfo", ""
            ) as ServicesInfo;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getLoginInfo
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getLoginInfoWithHttpInfo(response: ResponseContext): Promise<HttpInfo<LoginInfo >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: LoginInfo = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "LoginInfo", ""
            ) as LoginInfo;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            const body: LoginErrorResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "LoginErrorResponse", ""
            ) as LoginErrorResponse;
            throw new ApiException<LoginErrorResponse>(response.httpStatusCode, "Error response to a login request.", body, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: LoginInfo = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "LoginInfo", ""
            ) as LoginInfo;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getMPServers
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getMPServersWithHttpInfo(response: ResponseContext): Promise<HttpInfo<BuyItNowList >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: BuyItNowList = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "BuyItNowList", ""
            ) as BuyItNowList;
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
            const body: BuyItNowList = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "BuyItNowList", ""
            ) as BuyItNowList;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getOauthRedirect
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getOauthRedirectWithHttpInfo(response: ResponseContext): Promise<HttpInfo<GetOauthRedirect200Response >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: GetOauthRedirect200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetOauthRedirect200Response", ""
            ) as GetOauthRedirect200Response;
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
            const body: GetOauthRedirect200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetOauthRedirect200Response", ""
            ) as GetOauthRedirect200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to getTimezones
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async getTimezonesWithHttpInfo(response: ResponseContext): Promise<HttpInfo<Array<string> >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: Array<string> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Array<string>", ""
            ) as Array<string>;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: Array<string> = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "Array<string>", ""
            ) as Array<string>;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to patchOauthTwoFactor
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async patchOauthTwoFactorWithHttpInfo(response: ResponseContext): Promise<HttpInfo<PatchOauthTwoFactor200Response >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: PatchOauthTwoFactor200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "PatchOauthTwoFactor200Response", ""
            ) as PatchOauthTwoFactor200Response;
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
            const body: PatchOauthTwoFactor200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "PatchOauthTwoFactor200Response", ""
            ) as PatchOauthTwoFactor200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to pingServer
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async pingServerWithHttpInfo(response: ResponseContext): Promise<HttpInfo<string >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: string = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "string", ""
            ) as string;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            const body: GetAccountInfo401Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "GetAccountInfo401Response", ""
            ) as GetAccountInfo401Response;
            throw new ApiException<GetAccountInfo401Response>(response.httpStatusCode, "Unauthorized", body, response.headers);
        }
        if (isCodeInRange("0", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Something is wrong", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: string = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "string", ""
            ) as string;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to postOauthCallback
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async postOauthCallbackWithHttpInfo(response: ResponseContext): Promise<HttpInfo<PostOauthCallback200Response >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: PostOauthCallback200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "PostOauthCallback200Response", ""
            ) as PostOauthCallback200Response;
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
            const body: PostOauthCallback200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "PostOauthCallback200Response", ""
            ) as PostOauthCallback200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to submitLogin
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async submitLoginWithHttpInfo(response: ResponseContext): Promise<HttpInfo<LoginSuccessResponse >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: LoginSuccessResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "LoginSuccessResponse", ""
            ) as LoginSuccessResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("402", response.httpStatusCode)) {
            const body: LoginErrorResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "LoginErrorResponse", ""
            ) as LoginErrorResponse;
            throw new ApiException<LoginErrorResponse>(response.httpStatusCode, "Error response to a login request.", body, response.headers);
        }
        if (isCodeInRange("0", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Default response", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: LoginSuccessResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "LoginSuccessResponse", ""
            ) as LoginSuccessResponse;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Buffer | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to submitSignup
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async submitSignupWithHttpInfo(response: ResponseContext): Promise<HttpInfo<void >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, undefined);
        }
        if (isCodeInRange("402", response.httpStatusCode)) {
            const body: LoginErrorResponse = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "LoginErrorResponse", ""
            ) as LoginErrorResponse;
            throw new ApiException<LoginErrorResponse>(response.httpStatusCode, "Error response to a login request.", body, response.headers);
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

}
