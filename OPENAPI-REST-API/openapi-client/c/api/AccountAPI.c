#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "AccountAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21


// Unlink a third-party OAuth/social provider (Google, GitHub, etc.) from the account
//
// DESTRUCTIVE: removes the linked provider's tokens from `accounts_ext` (rows where `account_key` IN (`{name}_id`,`{name}_url`)). After unlinking, that provider can no longer be used to log in or pre-fill profile data — the user must log in via password (and 2FA if enabled). Path param: `name` (case-insensitive provider key, e.g. `google`, `github`, `facebook`) — must be present in `getOauthConfig().providers`. No request body. Use when the customer wants to revoke a previously authorized social-login. Returns `{success:true, text:'OAuth Provider Unlinked.'}`. Errors: 400 `Invalid Provider Name.` if `name` not configured; 401 unauthenticated. Sibling ops: `logoutAccountOauth`, `getAccountInfo`, `updateAccountPassword`.
//
success_text_response_t*
AccountAPI_deleteAccountOauthName(apiClient_t *apiClient, char *name)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/account/oauth/{name}");

    if(!name)
        goto end;


    // Path Params
    long sizeOfPathParams_name = strlen(name)+3 + sizeof("{ name }") - 1;
    if(name == NULL) {
        goto end;
    }
    char* localVarToReplace_name = malloc(sizeOfPathParams_name);
    sprintf(localVarToReplace_name, "{%s}", "name");

    localVarPath = strReplace(localVarPath, localVarToReplace_name, name);


    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "DELETE");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","A response indicating the operation completed successfully with a text message.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Unauthorized");
    //}
    //nonprimitive not container
    success_text_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = success_text_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_name);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Disable two-factor authentication and remove the TOTP secret
//
// DESTRUCTIVE: removes the 2FA secret from `account_security` and clears the in-session secret cache. After success, only password authentication is required for future logins — security posture drops materially. No body, no path params. Use when the customer has lost their authenticator device or wants to re-enroll from scratch (call this, then `getAccountTfaSetup` -> `updateAccountTfa`). Returns `{success:true, text:'Google Two Factor Authentication is disabled successfully!'}`. Errors: 401 unauthenticated. Caveat: existing sessions remain valid; rotate `updateAccountPassword` if you suspect credential compromise. Sibling ops: `getAccountTfaSetup`, `updateAccountTfa`, `updateAccountPassword`.
//
success_text_response_t*
AccountAPI_deleteAccountTfa(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/account/2fa");




    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "DELETE");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","A response indicating the operation completed successfully with a text message.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Unauthorized");
    //}
    //nonprimitive not container
    success_text_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = success_text_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Remove one IP range from the account allow-list (PATCH on /account/iplimits)
//
// DESTRUCTIVE: deletes the matching `{start, end}` entry from `accounts.session_limit`. Method is PATCH (not DELETE) because the path collides with `updateAccountIpLimits`. Body: `{start, end}` — must exactly match an existing range (trim-equal on both bounds). Behaviour: if removing this range would leave an empty list, IP limiting is disabled and the account becomes accessible from any IP. If ranges remain but none cover the caller's source IP, the server auto-injects a /32 for the caller to prevent self-lockout (response text warns). MCP callers bypass via `X-API-APP: 1` header. Returns `{success:true, text:'IP Range deleted.'}`. Errors: 400/422 `Invalid IP Address` if `start`/`end` aren't valid IPs; 401 unauthenticated. Sibling ops: `updateAccountIpLimits`, `getAccountInfo`.
//
generic_response_t*
AccountAPI_deleteIpLimit(apiClient_t *apiClient, ip_limit_range_t *ip_limit_range)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = list_createList();
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/account/iplimits");





    // Body Param
    cJSON *localVarSingleItemJSON_ip_limit_range = NULL;
    if (ip_limit_range != NULL)
    {
        //not string, not binary
        localVarSingleItemJSON_ip_limit_range = ip_limit_range_convertToJSON(ip_limit_range);
        localVarBodyParameters = cJSON_Print(localVarSingleItemJSON_ip_limit_range);
        localVarBodyLength = strlen(localVarBodyParameters);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarContentType,"application/json"); //consumes
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "PATCH");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","IP Range removed.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Unauthorized");
    //}
    //nonprimitive not container
    generic_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = generic_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    list_freeList(localVarContentType);
    free(localVarPath);
    if (localVarSingleItemJSON_ip_limit_range) {
        cJSON_Delete(localVarSingleItemJSON_ip_limit_range);
        localVarSingleItemJSON_ip_limit_range = NULL;
    }
    free(localVarBodyParameters);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Read full account profile, billing address, and security settings
//
// Use to render the account-settings page or to verify current state before mutating with `updateAccountInfo`. No body, no path params. Returns: full profile (name, company, address1/2, city, state, zip, country, phone, email_invoices, email_abuse, gstin, locale, timezone), masked credit-card list (last-4 digits only — full PAN never returned), OAuth provider config (with secret keys stripped), feature toggles (`disable_reset`, `disable_reinstall`, `disable_*_notifications`), gravatar URL, language, country->currency map, and `enableLocales`/`enableCurrencies` UI flags. Timezone defaults to IP-derived value if unset, falling back to America/New_York. Errors: 401 if session invalid or expired. Sibling ops: `updateAccountInfo`, `getAccountTfaSetup`, `updateAccountFeatures`, `updateAccountIpLimits`.
//
account_info_t*
AccountAPI_getAccountInfo(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/account");




    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Your account information.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Unauthorized");
    //}
    //nonprimitive not container
    account_info_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = account_info_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Fetch TOTP secret to enroll a 2FA authenticator app (Google Authenticator etc.)
//
// Use as step 1 of 2FA enrollment. The 160-bit secret is generated on first call and cached in the session until the user completes (or abandons) setup. No body, no path params. Returns `{2fa_google_key, 2fa_google_split}` — render `2fa_google_key` as a QR code (otpauth://totp/My.InterServer:LID?secret=KEY) and display `2fa_google_split` (key chunked into 4-char groups, space-separated) for manual entry. After the user types the 6-digit code from their app, finalize enrollment with `updateAccountTfa`. Calling this multiple times before enrolling reuses the same in-session secret. Errors: 401 if session invalid. Sibling ops: `updateAccountTfa` (verify & enable), `deleteAccountTfa` (disable).
//
get_account_tfa_setup_200_response_t*
AccountAPI_getAccountTfaSetup(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/account/2fa");




    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Two-factor authentication setup data.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Unauthorized");
    //}
    //nonprimitive not container
    get_account_tfa_setup_200_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = get_account_tfa_setup_200_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Aggregate dashboard payload — service counts, recent activity, alerts
//
// Use to render the post-login client portal home/dashboard. No body, no params. Returns the structure produced by `getClientHomeData()` — counts of active services per module (vps, webhosting, domains, mail, ssl, licenses, backups, floating_ips, scrub_ips, quickservers, servers), recent invoices, payment due alerts, ticket activity summaries, abuse/maintenance announcements, and account-level banners. Designed for one-shot dashboard hydration so individual modules don't each issue list calls. Cached implementation lives in `function_requirements('client_home')` -> `getClientHomeData()`. Errors: 401 if session is invalid or expired (unauthenticated). Sibling ops: `getSearch` (autocomplete), `getAccountInfo`, plus per-module list ops like `getVpsList`, `getDomainsList`, `getBillingInvoices`.
//
home_t*
AccountAPI_getHome(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/home");




    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","General information for use on the home page.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Unauthorized");
    //}
    //nonprimitive not container
    home_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = home_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Global autocomplete across the caller's services, domains, and records
//
// Use to power the global search box in the client portal — typeahead across services, domains, hostnames, IPs, and ticket subjects scoped to the current account (cross-account leakage is impossible). No body, no path params. Query string is conventionally `q=` though the underlying `getSearchAutoComplete($custid)` may match against multiple fields. Returns a `SearchAutocompleteResponse` object grouping hits by category (vps, domains, websites, mail, tickets, invoices, etc.) so the UI can render section headers. Optimized for low latency — does NOT replace per-module list ops for paginated browsing. Errors: 401 unauthenticated. Sibling ops: `getHome`, `getAccountInfo`, plus per-module list ops (`getVpsList`, `getDomainsList`, `getMailList`, `getTicketsList`).
//
search_autocomplete_response_t*
AccountAPI_getSearch(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/search");




    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Search autocomplete results for the account.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Unauthorized");
    //}
    //nonprimitive not container
    search_autocomplete_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = search_autocomplete_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Destroy the current API/web session — token becomes unusable
//
// DESTRUCTIVE: invalidates the caller's session record and appsession bag. After this returns the session id can no longer authenticate requests; the client must discard it and prompt the user to log in again. Idempotent — calling with an already-invalid session returns `200` (no-op when `App::accounts()->data` is empty). API keys (`updateAccountApiKey`) and persistent OAuth links are NOT affected — only this session token. Sibling ops: `updateAccountPassword`, `updateAccountApiKey`, `logoutAccountOauth`, `deleteAccountOauthName`.  **Path/Query/Body:** None.  **Returns:** `{ success: true, text: 'Logged Out' }`.  **Side effects:** calls `App::session()->destroy()` only when `api_check_auth_limits()` passes for the current account, so a locked account is short-circuited gracefully without further error.  **Auth:** Session/API key.  **Errors:** - `401` — only on a completely malformed auth header.  **Related calls:** - **Re-login:** `submitLogin` or `getOauthRedirect`. - **Per-provider OAuth sign-out (does NOT invalidate the session):** `logoutAccountOauth`. 
//
success_text_response_t*
AccountAPI_logout(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/logout");




    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","A response indicating the operation completed successfully with a text message.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Unauthorized");
    //}
    //nonprimitive not container
    success_text_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = success_text_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Sign out of the upstream OAuth provider session (does not unlink the account)
//
// Soft de-authorization for a linked OAuth provider — terminates only the upstream provider session/cookie state. The account-level link in `accounts_ext` is preserved, so the user can log back in with that provider without re-linking. Path param: `name` (provider key, e.g. `google`, `github`). No request body. Use when forcing a fresh consent screen on next OAuth login, or after the user reports a stuck/stale provider session. NOT a substitute for `Logout` (which kills the MyAdmin session) and NOT a substitute for `deleteAccountOauthName` (which permanently severs the link). Returns `{success:true, text:'OAuth Provider Logged Out.'}`. Errors: 401 unauthenticated. Sibling ops: `deleteAccountOauthName`, `Logout`, `getAccountInfo`.
//
success_text_response_t*
AccountAPI_logoutAccountOauth(apiClient_t *apiClient, char *name)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/account/oauth/{name}/logout");

    if(!name)
        goto end;


    // Path Params
    long sizeOfPathParams_name = strlen(name)+3 + sizeof("{ name }") - 1;
    if(name == NULL) {
        goto end;
    }
    char* localVarToReplace_name = malloc(sizeOfPathParams_name);
    sprintf(localVarToReplace_name, "{%s}", "name");

    localVarPath = strReplace(localVarPath, localVarToReplace_name, name);


    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "GET");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","A response indicating the operation completed successfully with a text message.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Unauthorized");
    //}
    //nonprimitive not container
    success_text_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = success_text_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    free(localVarToReplace_name);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Rotate the account's REST/MCP API key — old key is invalidated immediately
//
// DESTRUCTIVE: generates a new 128-character random API key and overwrites the existing entry in `account_security` (type `api_key`, label `default`). The OLD key stops working the moment this returns — any scripts, MCP clients, or CI jobs using the previous key will start receiving 401 until updated. No body, no path params. Returns `{success:true, text:NEW_KEY}` — the plaintext key is returned ONCE in this response and is not retrievable later (only stored hashed-equivalent server-side for verification). Store immediately in a secret manager. Use after suspected credential leak, employee offboarding, or routine rotation. Errors: 401 unauthenticated. Sibling ops: `updateAccountPassword`, `updateAccountIpLimits`, `Logout`.
//
success_text_response_t*
AccountAPI_updateAccountApiKey(apiClient_t *apiClient)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = NULL;
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = NULL;
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/account/apikey");




    list_addElement(localVarHeaderType,"application/json"); //produces
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","A response indicating the operation completed successfully with a text message.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Unauthorized");
    //}
    //nonprimitive not container
    success_text_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = success_text_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Toggle account-wide safety locks for password reset and OS reinstall
//
// Updates account-level feature flags that gate destructive service operations across every VPS / dedicated / QuickServer the customer owns. Useful for production accounts that want belt-and-suspenders protection against accidental reinstalls or root-password resets via the panel/API. Changes take effect immediately for all subsequent service operations. Sibling ops: `getAccountInfo`, `updateAccountInfo`, `updateAccountIpLimits`.  **Body fields:** - `disable_reset` (bool, optional) — when `true`, blocks server / VPS root-password resets account-wide. - `disable_reinstall` (bool, optional) — when `true`, blocks OS reinstalls account-wide.  Submit either or both. Flags absent from the request default to `0` for the comparison and only persist if their value differs from the current stored value.  **Returns:** `{ success: true, text }`.  **Errors:** - `401` — unauthenticated. - `400` / `422` — `Nothing to update` when neither flag's value differs from current. 
//
success_text_response_t*
AccountAPI_updateAccountFeatures(apiClient_t *apiClient, int *disable_reset, int *disable_reinstall)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = list_createList();
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = list_createList();
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/account/features");





    // form parameters
    char *keyForm_disable_reset = NULL;
    int valueForm_disable_reset = 0;
    keyValuePair_t *keyPairForm_disable_reset = 0;
    if (disable_reset != NULL)
    {
        keyForm_disable_reset = strdup("disable_reset");
        valueForm_disable_reset = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueForm_disable_reset, MAX_NUMBER_LENGTH, "%d", *disable_reset);
        keyPairForm_disable_reset = keyValuePair_create(keyForm_disable_reset,&valueForm_disable_reset);
        list_addElement(localVarFormParameters,keyPairForm_disable_reset);
    }

    // form parameters
    char *keyForm_disable_reinstall = NULL;
    int valueForm_disable_reinstall = 0;
    keyValuePair_t *keyPairForm_disable_reinstall = 0;
    if (disable_reinstall != NULL)
    {
        keyForm_disable_reinstall = strdup("disable_reinstall");
        valueForm_disable_reinstall = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueForm_disable_reinstall, MAX_NUMBER_LENGTH, "%d", *disable_reinstall);
        keyPairForm_disable_reinstall = keyValuePair_create(keyForm_disable_reinstall,&valueForm_disable_reinstall);
        list_addElement(localVarFormParameters,keyPairForm_disable_reinstall);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarContentType,"multipart/form-data"); //consumes
    list_addElement(localVarContentType,"application/json"); //consumes
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","A response indicating the operation completed successfully with a text message.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Unauthorized");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 422) {
    //    printf("%s\n","Request was valid but did not contain updatable values.");
    //}
    //nonprimitive not container
    success_text_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = success_text_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    list_freeList(localVarFormParameters);
    list_freeList(localVarHeaderType);
    list_freeList(localVarContentType);
    free(localVarPath);
    if (keyForm_disable_reset) {
        free(keyForm_disable_reset);
        keyForm_disable_reset = NULL;
    }
    free(keyPairForm_disable_reset);
    if (keyForm_disable_reinstall) {
        free(keyForm_disable_reinstall);
        keyForm_disable_reinstall = NULL;
    }
    free(keyPairForm_disable_reinstall);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update contact and billing-address fields on the customer profile
//
// Use to change the customer's name, company, mailing address, phone, GSTIN, locale, timezone, or notification-email overrides (`email_invoices`, `email_abuse`). Submit only fields you want to change — partial updates supported. Required (must be non-empty if sent): `name`, `country`, `address`, `city`, `state`, `zip`, `phone`. Phone is normalized: parens, dashes, underscores stripped. Timezone must be a valid IANA identifier (e.g. `America/New_York`). Side effects: triggers FraudRecord + MaxMind risk re-scoring on first save, updates Kayako helpdesk username when `name` changes. Returns `{success:true}`. Errors: 401 missing-required field; 422 invalid timezone or empty payload. Sibling ops: `getAccountInfo`, `updateAccountFeatures`, `updateAccountPassword`.
//
success_text_response_t*
AccountAPI_updateAccountInfo(apiClient_t *apiClient, char *name, char *address, char *city, char *state, char *zip, char *country, char *phone, char *company, char *address2, char *locale, char *email_invoices, char *email_abuse, int *disable_reset, int *disable_reinstall, int *disable_server_notifications, int *disable_email_notifications, char *gstin)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = list_createList();
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = list_createList();
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/account");





    // form parameters
    char *keyForm_name = NULL;
    char * valueForm_name = 0;
    keyValuePair_t *keyPairForm_name = 0;
    if (name != NULL)
    {
        keyForm_name = strdup("name");
        valueForm_name = strdup((name));
        keyPairForm_name = keyValuePair_create(keyForm_name,valueForm_name);
        list_addElement(localVarFormParameters,keyPairForm_name);
    }

    // form parameters
    char *keyForm_company = NULL;
    char * valueForm_company = 0;
    keyValuePair_t *keyPairForm_company = 0;
    if (company != NULL)
    {
        keyForm_company = strdup("company");
        valueForm_company = strdup((company));
        keyPairForm_company = keyValuePair_create(keyForm_company,valueForm_company);
        list_addElement(localVarFormParameters,keyPairForm_company);
    }

    // form parameters
    char *keyForm_address = NULL;
    char * valueForm_address = 0;
    keyValuePair_t *keyPairForm_address = 0;
    if (address != NULL)
    {
        keyForm_address = strdup("address");
        valueForm_address = strdup((address));
        keyPairForm_address = keyValuePair_create(keyForm_address,valueForm_address);
        list_addElement(localVarFormParameters,keyPairForm_address);
    }

    // form parameters
    char *keyForm_address2 = NULL;
    char * valueForm_address2 = 0;
    keyValuePair_t *keyPairForm_address2 = 0;
    if (address2 != NULL)
    {
        keyForm_address2 = strdup("address2");
        valueForm_address2 = strdup((address2));
        keyPairForm_address2 = keyValuePair_create(keyForm_address2,valueForm_address2);
        list_addElement(localVarFormParameters,keyPairForm_address2);
    }

    // form parameters
    char *keyForm_city = NULL;
    char * valueForm_city = 0;
    keyValuePair_t *keyPairForm_city = 0;
    if (city != NULL)
    {
        keyForm_city = strdup("city");
        valueForm_city = strdup((city));
        keyPairForm_city = keyValuePair_create(keyForm_city,valueForm_city);
        list_addElement(localVarFormParameters,keyPairForm_city);
    }

    // form parameters
    char *keyForm_state = NULL;
    char * valueForm_state = 0;
    keyValuePair_t *keyPairForm_state = 0;
    if (state != NULL)
    {
        keyForm_state = strdup("state");
        valueForm_state = strdup((state));
        keyPairForm_state = keyValuePair_create(keyForm_state,valueForm_state);
        list_addElement(localVarFormParameters,keyPairForm_state);
    }

    // form parameters
    char *keyForm_zip = NULL;
    char * valueForm_zip = 0;
    keyValuePair_t *keyPairForm_zip = 0;
    if (zip != NULL)
    {
        keyForm_zip = strdup("zip");
        valueForm_zip = strdup((zip));
        keyPairForm_zip = keyValuePair_create(keyForm_zip,valueForm_zip);
        list_addElement(localVarFormParameters,keyPairForm_zip);
    }

    // form parameters
    char *keyForm_country = NULL;
    char * valueForm_country = 0;
    keyValuePair_t *keyPairForm_country = 0;
    if (country != NULL)
    {
        keyForm_country = strdup("country");
        valueForm_country = strdup((country));
        keyPairForm_country = keyValuePair_create(keyForm_country,valueForm_country);
        list_addElement(localVarFormParameters,keyPairForm_country);
    }

    // form parameters
    char *keyForm_phone = NULL;
    char * valueForm_phone = 0;
    keyValuePair_t *keyPairForm_phone = 0;
    if (phone != NULL)
    {
        keyForm_phone = strdup("phone");
        valueForm_phone = strdup((phone));
        keyPairForm_phone = keyValuePair_create(keyForm_phone,valueForm_phone);
        list_addElement(localVarFormParameters,keyPairForm_phone);
    }

    // form parameters
    char *keyForm_locale = NULL;
    char * valueForm_locale = 0;
    keyValuePair_t *keyPairForm_locale = 0;
    if (locale != NULL)
    {
        keyForm_locale = strdup("locale");
        valueForm_locale = strdup((locale));
        keyPairForm_locale = keyValuePair_create(keyForm_locale,valueForm_locale);
        list_addElement(localVarFormParameters,keyPairForm_locale);
    }

    // form parameters
    char *keyForm_email_invoices = NULL;
    char * valueForm_email_invoices = 0;
    keyValuePair_t *keyPairForm_email_invoices = 0;
    if (email_invoices != NULL)
    {
        keyForm_email_invoices = strdup("email_invoices");
        valueForm_email_invoices = strdup((email_invoices));
        keyPairForm_email_invoices = keyValuePair_create(keyForm_email_invoices,valueForm_email_invoices);
        list_addElement(localVarFormParameters,keyPairForm_email_invoices);
    }

    // form parameters
    char *keyForm_email_abuse = NULL;
    char * valueForm_email_abuse = 0;
    keyValuePair_t *keyPairForm_email_abuse = 0;
    if (email_abuse != NULL)
    {
        keyForm_email_abuse = strdup("email_abuse");
        valueForm_email_abuse = strdup((email_abuse));
        keyPairForm_email_abuse = keyValuePair_create(keyForm_email_abuse,valueForm_email_abuse);
        list_addElement(localVarFormParameters,keyPairForm_email_abuse);
    }

    // form parameters
    char *keyForm_disable_reset = NULL;
    char * valueForm_disable_reset = 0;
    keyValuePair_t *keyPairForm_disable_reset = 0;
    if (disable_reset != NULL)
    {
        keyForm_disable_reset = strdup("disable_reset");
        valueForm_disable_reset = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueForm_disable_reset, MAX_NUMBER_LENGTH, "%d", *disable_reset);
        keyPairForm_disable_reset = keyValuePair_create(keyForm_disable_reset,valueForm_disable_reset);
        list_addElement(localVarFormParameters,keyPairForm_disable_reset);
    }

    // form parameters
    char *keyForm_disable_reinstall = NULL;
    char * valueForm_disable_reinstall = 0;
    keyValuePair_t *keyPairForm_disable_reinstall = 0;
    if (disable_reinstall != NULL)
    {
        keyForm_disable_reinstall = strdup("disable_reinstall");
        valueForm_disable_reinstall = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueForm_disable_reinstall, MAX_NUMBER_LENGTH, "%d", *disable_reinstall);
        keyPairForm_disable_reinstall = keyValuePair_create(keyForm_disable_reinstall,valueForm_disable_reinstall);
        list_addElement(localVarFormParameters,keyPairForm_disable_reinstall);
    }

    // form parameters
    char *keyForm_disable_server_notifications = NULL;
    char * valueForm_disable_server_notifications = 0;
    keyValuePair_t *keyPairForm_disable_server_notifications = 0;
    if (disable_server_notifications != NULL)
    {
        keyForm_disable_server_notifications = strdup("disable_server_notifications");
        valueForm_disable_server_notifications = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueForm_disable_server_notifications, MAX_NUMBER_LENGTH, "%d", *disable_server_notifications);
        keyPairForm_disable_server_notifications = keyValuePair_create(keyForm_disable_server_notifications,valueForm_disable_server_notifications);
        list_addElement(localVarFormParameters,keyPairForm_disable_server_notifications);
    }

    // form parameters
    char *keyForm_disable_email_notifications = NULL;
    char * valueForm_disable_email_notifications = 0;
    keyValuePair_t *keyPairForm_disable_email_notifications = 0;
    if (disable_email_notifications != NULL)
    {
        keyForm_disable_email_notifications = strdup("disable_email_notifications");
        valueForm_disable_email_notifications = calloc(1,MAX_NUMBER_LENGTH);
        snprintf(valueForm_disable_email_notifications, MAX_NUMBER_LENGTH, "%d", *disable_email_notifications);
        keyPairForm_disable_email_notifications = keyValuePair_create(keyForm_disable_email_notifications,valueForm_disable_email_notifications);
        list_addElement(localVarFormParameters,keyPairForm_disable_email_notifications);
    }

    // form parameters
    char *keyForm_gstin = NULL;
    char * valueForm_gstin = 0;
    keyValuePair_t *keyPairForm_gstin = 0;
    if (gstin != NULL)
    {
        keyForm_gstin = strdup("gstin");
        valueForm_gstin = strdup((gstin));
        keyPairForm_gstin = keyValuePair_create(keyForm_gstin,valueForm_gstin);
        list_addElement(localVarFormParameters,keyPairForm_gstin);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarContentType,"multipart/form-data"); //consumes
    list_addElement(localVarContentType,"application/json"); //consumes
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","A response indicating the operation completed successfully with a text message.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Unauthorized");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 422) {
    //    printf("%s\n","Validation error while updating account data.");
    //}
    //nonprimitive not container
    success_text_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = success_text_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    list_freeList(localVarFormParameters);
    list_freeList(localVarHeaderType);
    list_freeList(localVarContentType);
    free(localVarPath);
    if (keyForm_name) {
        free(keyForm_name);
        keyForm_name = NULL;
    }
    if (valueForm_name) {
        free(valueForm_name);
        valueForm_name = NULL;
    }
    free(keyPairForm_name);
    if (keyForm_company) {
        free(keyForm_company);
        keyForm_company = NULL;
    }
    if (valueForm_company) {
        free(valueForm_company);
        valueForm_company = NULL;
    }
    free(keyPairForm_company);
    if (keyForm_address) {
        free(keyForm_address);
        keyForm_address = NULL;
    }
    if (valueForm_address) {
        free(valueForm_address);
        valueForm_address = NULL;
    }
    free(keyPairForm_address);
    if (keyForm_address2) {
        free(keyForm_address2);
        keyForm_address2 = NULL;
    }
    if (valueForm_address2) {
        free(valueForm_address2);
        valueForm_address2 = NULL;
    }
    free(keyPairForm_address2);
    if (keyForm_city) {
        free(keyForm_city);
        keyForm_city = NULL;
    }
    if (valueForm_city) {
        free(valueForm_city);
        valueForm_city = NULL;
    }
    free(keyPairForm_city);
    if (keyForm_state) {
        free(keyForm_state);
        keyForm_state = NULL;
    }
    if (valueForm_state) {
        free(valueForm_state);
        valueForm_state = NULL;
    }
    free(keyPairForm_state);
    if (keyForm_zip) {
        free(keyForm_zip);
        keyForm_zip = NULL;
    }
    if (valueForm_zip) {
        free(valueForm_zip);
        valueForm_zip = NULL;
    }
    free(keyPairForm_zip);
    if (keyForm_country) {
        free(keyForm_country);
        keyForm_country = NULL;
    }
    if (valueForm_country) {
        free(valueForm_country);
        valueForm_country = NULL;
    }
    free(keyPairForm_country);
    if (keyForm_phone) {
        free(keyForm_phone);
        keyForm_phone = NULL;
    }
    if (valueForm_phone) {
        free(valueForm_phone);
        valueForm_phone = NULL;
    }
    free(keyPairForm_phone);
    if (keyForm_locale) {
        free(keyForm_locale);
        keyForm_locale = NULL;
    }
    if (valueForm_locale) {
        free(valueForm_locale);
        valueForm_locale = NULL;
    }
    free(keyPairForm_locale);
    if (keyForm_email_invoices) {
        free(keyForm_email_invoices);
        keyForm_email_invoices = NULL;
    }
    if (valueForm_email_invoices) {
        free(valueForm_email_invoices);
        valueForm_email_invoices = NULL;
    }
    free(keyPairForm_email_invoices);
    if (keyForm_email_abuse) {
        free(keyForm_email_abuse);
        keyForm_email_abuse = NULL;
    }
    if (valueForm_email_abuse) {
        free(valueForm_email_abuse);
        valueForm_email_abuse = NULL;
    }
    free(keyPairForm_email_abuse);
    if (keyForm_disable_reset) {
        free(keyForm_disable_reset);
        keyForm_disable_reset = NULL;
    }
    free(keyPairForm_disable_reset);
    if (keyForm_disable_reinstall) {
        free(keyForm_disable_reinstall);
        keyForm_disable_reinstall = NULL;
    }
    free(keyPairForm_disable_reinstall);
    if (keyForm_disable_server_notifications) {
        free(keyForm_disable_server_notifications);
        keyForm_disable_server_notifications = NULL;
    }
    free(keyPairForm_disable_server_notifications);
    if (keyForm_disable_email_notifications) {
        free(keyForm_disable_email_notifications);
        keyForm_disable_email_notifications = NULL;
    }
    free(keyPairForm_disable_email_notifications);
    if (keyForm_gstin) {
        free(keyForm_gstin);
        keyForm_gstin = NULL;
    }
    if (valueForm_gstin) {
        free(valueForm_gstin);
        valueForm_gstin = NULL;
    }
    free(keyPairForm_gstin);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Add an IP CIDR/range to the account's API+web allow-list (lockout-safe)
//
// DESTRUCTIVE / LOCKOUT-RISK: appends an IP range to `accounts.session_limit`. Once ANY range exists, all `/apiv2` and panel access is restricted to matching source IPs. Body: `{start, end, restrict?}` — both IPv4 dotted-quad; `restrict` is `Web & API` (default) or `Only API`. Safety net: server checks the caller's IP against the resulting list and auto-appends a /32 for the caller if not already covered (response text warns about this). The MCP server sets header `X-API-APP: 1` which short-circuits the IP check entirely (see `api_check_auth_limits()`), so MCP tools keep working. Caveats: `192.168.1.0`-`192.168.1.255` is rejected as a placeholder. Returns `{success:true, text}`. Errors: 400/422 `Invalid IP Address`; 401 unauthenticated. Sibling ops: `deleteIpLimit`, `getAccountInfo`.
//
success_text_response_t*
AccountAPI_updateAccountIpLimits(apiClient_t *apiClient, char *start, char *end)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = list_createList();
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = list_createList();
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/account/iplimits");





    // form parameters
    char *keyForm_start = NULL;
    char * valueForm_start = 0;
    keyValuePair_t *keyPairForm_start = 0;
    if (start != NULL)
    {
        keyForm_start = strdup("start");
        valueForm_start = strdup((start));
        keyPairForm_start = keyValuePair_create(keyForm_start,valueForm_start);
        list_addElement(localVarFormParameters,keyPairForm_start);
    }

    // form parameters
    char *keyForm_end = NULL;
    char * valueForm_end = 0;
    keyValuePair_t *keyPairForm_end = 0;
    if (end != NULL)
    {
        keyForm_end = strdup("end");
        valueForm_end = strdup((end));
        keyPairForm_end = keyValuePair_create(keyForm_end,valueForm_end);
        list_addElement(localVarFormParameters,keyPairForm_end);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarContentType,"multipart/form-data"); //consumes
    list_addElement(localVarContentType,"application/json"); //consumes
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","A response indicating the operation completed successfully with a text message.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Unauthorized");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 422) {
    //    printf("%s\n","IP limit payload contains an invalid address.");
    //}
    //nonprimitive not container
    success_text_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = success_text_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    list_freeList(localVarFormParameters);
    list_freeList(localVarHeaderType);
    list_freeList(localVarContentType);
    free(localVarPath);
    if (keyForm_start) {
        free(keyForm_start);
        keyForm_start = NULL;
    }
    if (valueForm_start) {
        free(valueForm_start);
        valueForm_start = NULL;
    }
    free(keyPairForm_start);
    if (keyForm_end) {
        free(keyForm_end);
        keyForm_end = NULL;
    }
    if (valueForm_end) {
        free(valueForm_end);
        valueForm_end = NULL;
    }
    free(keyPairForm_end);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Change the account login password (verifies current, kills other sessions)
//
// DESTRUCTIVE: changes the account login password and invalidates all OTHER active sessions for this account. The current caller's session is preserved; API keys generated via `updateAccountApiKey` remain valid. Sibling ops: `updateAccountApiKey`, `Logout`, `updateAccountTfa`.  **Body fields:** - `currentpassword` (string, required) — verified via `auth::authenticate`. - `password` (string, required) — must pass `valid_password()` — 8–50 chars, at least one uppercase, one lowercase, one digit, and one of `_~-!@#$%^&*`. - `password2` (string, required) — must equal `password`.  **Returns:** `{ success: bool }` — flash messages on the response capture per-field errors.  **Side effects:** - Persists `md5(password)` to `accounts.account_passwd`. - Sends `password_change_notify.tpl` email to the account login id. - Destroys all other sessions for this account row-by-row.  **Errors:** - `401` — unauthenticated. - Flash `Current login password is mismatching` — bad `currentpassword`. - Flash `Confirm Password is mismatching` — `password` ≠ `password2`. - Flash password-policy violation message. 
//
text_response_t*
AccountAPI_updateAccountPassword(apiClient_t *apiClient, char *password)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = list_createList();
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = list_createList();
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/account/password");





    // form parameters
    char *keyForm_password = NULL;
    char * valueForm_password = 0;
    keyValuePair_t *keyPairForm_password = 0;
    if (password != NULL)
    {
        keyForm_password = strdup("password");
        valueForm_password = strdup((password));
        keyPairForm_password = keyValuePair_create(keyForm_password,valueForm_password);
        list_addElement(localVarFormParameters,keyPairForm_password);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarContentType,"multipart/form-data"); //consumes
    list_addElement(localVarContentType,"application/json"); //consumes
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Response with a text message field.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Unauthorized");
    //}
    //nonprimitive not container
    text_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = text_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    list_freeList(localVarFormParameters);
    list_freeList(localVarHeaderType);
    list_freeList(localVarContentType);
    free(localVarPath);
    if (keyForm_password) {
        free(keyForm_password);
        keyForm_password = NULL;
    }
    if (valueForm_password) {
        free(valueForm_password);
        valueForm_password = NULL;
    }
    free(keyPairForm_password);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Set the account-level SSH public key auto-installed on new VPS/dedicated orders
//
// Stores or replaces the SSH public key on `account_security` (type `ssh_key`, label `default`). On future VPS, dedicated server, or quickserver orders the activation flow can install this key into `~/.ssh/authorized_keys` for the root/sudo user, eliminating password-based SSH for the initial provisioning. Body: `{sshKey:string}` — full single-line OpenSSH public key (ssh-rsa/ssh-ed25519/ecdsa-sha2-* + base64 + optional comment). Newlines are stripped on save. Existing servers are NOT retroactively updated — only new orders pick this up. Use to set up key-based access ahead of order activation, or to rotate the canonical key. Returns `{success:true, text:'SSH Keys Updated.'}`. Errors: 401 unauthenticated. Sibling ops: `getAccountInfo`, `updateAccountPassword`, `updateAccountApiKey`.
//
success_text_response_t*
AccountAPI_updateAccountSshKey(apiClient_t *apiClient, char *ssh_key)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = list_createList();
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = list_createList();
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/account/sshkey");





    // form parameters
    char *keyForm_ssh_key = NULL;
    char * valueForm_ssh_key = 0;
    keyValuePair_t *keyPairForm_ssh_key = 0;
    if (ssh_key != NULL)
    {
        keyForm_ssh_key = strdup("ssh_key");
        valueForm_ssh_key = strdup((ssh_key));
        keyPairForm_ssh_key = keyValuePair_create(keyForm_ssh_key,valueForm_ssh_key);
        list_addElement(localVarFormParameters,keyPairForm_ssh_key);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarContentType,"multipart/form-data"); //consumes
    list_addElement(localVarContentType,"application/json"); //consumes
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","A response indicating the operation completed successfully with a text message.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Unauthorized");
    //}
    //nonprimitive not container
    success_text_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = success_text_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    list_freeList(localVarFormParameters);
    list_freeList(localVarHeaderType);
    list_freeList(localVarContentType);
    free(localVarPath);
    if (keyForm_ssh_key) {
        free(keyForm_ssh_key);
        keyForm_ssh_key = NULL;
    }
    if (valueForm_ssh_key) {
        free(valueForm_ssh_key);
        valueForm_ssh_key = NULL;
    }
    free(keyPairForm_ssh_key);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Verify TOTP code and enable two-factor authentication on the account
//
// Use as step 2 of 2FA enrollment, after `getAccountTfaSetup`. Body: `{2fa_google_code:string}` — the 6-digit code currently displayed by the user's authenticator app for the secret returned from `getAccountTfaSetup`. On verify success, the secret is persisted to `account_security` (type `2fa_google_key`, label `default`) and ALL OTHER active sessions for this account are invalidated (server destroys appsessions and sessions rows where session_id != current). The current session remains. Subsequent logins will require both password and a fresh TOTP code. Returns `{success:true, text}`. Errors: 401 unauthenticated; 422 `Invalid Code` if the TOTP doesn't match (clock skew, wrong app entry, or expired). Sibling ops: `getAccountTfaSetup`, `deleteAccountTfa`.
//
success_text_response_t*
AccountAPI_updateAccountTfa(apiClient_t *apiClient, char *_2fa_google_code)
{
    list_t    *localVarQueryParameters = NULL;
    list_t    *localVarHeaderParameters = NULL;
    list_t    *localVarFormParameters = list_createList();
    list_t *localVarHeaderType = list_createList();
    list_t *localVarContentType = list_createList();
    char      *localVarBodyParameters = NULL;
    size_t     localVarBodyLength = 0;

    // clear the error code from the previous api call
    apiClient->response_code = 0;

    // create the path
    char *localVarPath = strdup("/account/2fa");





    // form parameters
    char *keyForm__2fa_google_code = NULL;
    char * valueForm__2fa_google_code = 0;
    keyValuePair_t *keyPairForm__2fa_google_code = 0;
    if (_2fa_google_code != NULL)
    {
        keyForm__2fa_google_code = strdup("2fa_google_code");
        valueForm__2fa_google_code = strdup((_2fa_google_code));
        keyPairForm__2fa_google_code = keyValuePair_create(keyForm__2fa_google_code,valueForm__2fa_google_code);
        list_addElement(localVarFormParameters,keyPairForm__2fa_google_code);
    }
    list_addElement(localVarHeaderType,"application/json"); //produces
    list_addElement(localVarContentType,"multipart/form-data"); //consumes
    list_addElement(localVarContentType,"application/json"); //consumes
    apiClient_invoke(apiClient,
                    localVarPath,
                    localVarQueryParameters,
                    localVarHeaderParameters,
                    localVarFormParameters,
                    localVarHeaderType,
                    localVarContentType,
                    localVarBodyParameters,
                    localVarBodyLength,
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","A response indicating the operation completed successfully with a text message.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Unauthorized");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 422) {
    //    printf("%s\n","Provided two-factor verification code was invalid.");
    //}
    //nonprimitive not container
    success_text_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *AccountAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = success_text_response_parseFromJSON(AccountAPIlocalVarJSON);
        cJSON_Delete(AccountAPIlocalVarJSON);
        if(elementToReturn == NULL) {
            // return 0;
        }
    }

    //return type
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    list_freeList(localVarFormParameters);
    list_freeList(localVarHeaderType);
    list_freeList(localVarContentType);
    free(localVarPath);
    if (keyForm__2fa_google_code) {
        free(keyForm__2fa_google_code);
        keyForm__2fa_google_code = NULL;
    }
    if (valueForm__2fa_google_code) {
        free(valueForm__2fa_google_code);
        valueForm__2fa_google_code = NULL;
    }
    free(keyPairForm__2fa_google_code);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

