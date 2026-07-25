#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "SSLCertificatesAPI.h"

#define MAX_NUMBER_LENGTH 16
#define MAX_BUFFER_LENGTH 4096
#define MAX_NUMBER_LENGTH_LONG 21


// Place a new SSL certificate order - creates invoice and queues issuance
//
// [DESTRUCTIVE] Use after putSsl returns continue=true to commit the SSL order. Body (form): frequency (default 12 months), service_type, hostname, csr, coupon_code, plus per-type vars/extra. Re-runs validate_buy_ssl then calls place_buy_ssl which creates the service row, generates invoice (iid/iids/real_iids), and returns serviceId, serviceCost, invoice_description. CA validation is async - issuance takes minutes to hours and may require DNS or email validation post-order. If validation fails, returns continue=false with errors and no charge. Returns 401 unauthenticated, 422 invalid input. Caveat: cert is not active until invoice paid AND CA validation completes. Poll status via getSslInfo; resend instructions via getSslWelcomeEmail.  Sibling ops: `getNewSsl` (catalog), `putSsl` (validate), `getSslInfo` (poll), `getSslInvoices`, `initiatePayment` (settle invoice), `getSslWelcomeEmail`, `sslCancel`.
//
service_order_post_response_t*
SSLCertificatesAPI_addSsl(apiClient_t *apiClient, ssl_order_request_t *ssl_order_request)
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
    char *localVarPath = strdup("/ssl/order");





    // Body Param
    cJSON *localVarSingleItemJSON_ssl_order_request = NULL;
    if (ssl_order_request != NULL)
    {
        //not string, not binary
        localVarSingleItemJSON_ssl_order_request = ssl_order_request_convertToJSON(ssl_order_request);
        localVarBodyParameters = cJSON_Print(localVarSingleItemJSON_ssl_order_request);
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
                    "POST");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Order placed successfully. Use the invoice ID to proceed to payment via &#x60;/billing/pay/{method}/{invoices}&#x60; or view the invoice at &#x60;/billing/invoices/{id}&#x60;.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Unauthorized");
    //}
    //nonprimitive not container
    service_order_post_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *SSLCertificatesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = service_order_post_response_parseFromJSON(SSLCertificatesAPIlocalVarJSON);
        cJSON_Delete(SSLCertificatesAPIlocalVarJSON);
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
    if (localVarSingleItemJSON_ssl_order_request) {
        cJSON_Delete(localVarSingleItemJSON_ssl_order_request);
        localVarSingleItemJSON_ssl_order_request = NULL;
    }
    free(localVarBodyParameters);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Get available SSL certificate packages and pricing for placing a new order
//
// Use before addSsl to discover which DV/OV/EV certificate types and validation tiers are buyable, plus their costs. Returns object with packageCosts (services_id keyed map of float costs) and serviceTypes (full list of SSL product offerings from the get_service_types event). No parameters required - prices are in the customer's currency. Returns 401 if unauthenticated. Show these to the customer to pick a service_type, then call putSsl to dry-run validation (hostname, CSR, coupon) without charging, then addSsl to commit. Costs do not include taxes or applied coupons — putSsl returns the actual computed price with discounts.  Sibling ops: `putSsl` (validate), `addSsl` (commit), `getSslList` (existing certs), `getSslInfo` (per-cert).
//
object_t*
SSLCertificatesAPI_getNewSsl(apiClient_t *apiClient)
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
    char *localVarPath = strdup("/ssl/order");




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
    //    printf("%s\n","Available SSL certificate types and pricing for ordering.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Unauthorized");
    //}
    //nonprimitive not container
    object_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *SSLCertificatesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = object_parseFromJSON(SSLCertificatesAPIlocalVarJSON);
        cJSON_Delete(SSLCertificatesAPIlocalVarJSON);
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

// Get full details for one SSL certificate by id - status, expiration, links
//
// Use to inspect a single SSL cert after locating its id via getSslList. Path param id (integer, required) is the ssl_id; cross-account ids return 404 (get_service enforces ownership). Returns the ViewSSL detail payload: hostname, service_type, status, expiration, company, plus client_links (rewrite/reissue/install actions available to the customer). admin_links, settings, csrf are stripped from client responses. Returns 401 unauthenticated, 404 if id not owned by the session customer. Reissue/rekey/install actions surfaced in client_links are time-sensitive and may require fresh DNS validation. Pair with getSslInvoices for billing history, getSslWelcomeEmail to resend, sslCancel to terminate, updateSslInfo to modify settings.  Sibling ops: `updateSslInfo`, `getSslInvoices`, `getSslWelcomeEmail`, `sslCancel`, `getSslList`.
//
object_t*
SSLCertificatesAPI_getSslInfo(apiClient_t *apiClient, int *id)
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
    char *localVarPath = strdup("/ssl/{id}");



    // Path Params
    long sizeOfPathParams_id =  + sizeof("{ id }") - 1;
    if(id == 0){
        goto end;
    }
    char* localVarToReplace_id = malloc(sizeOfPathParams_id);
    snprintf(localVarToReplace_id, sizeOfPathParams_id, "{%s}", "id");

    char localVarBuff_id[256];
    snprintf(localVarBuff_id, sizeof localVarBuff_id, "%ld", (long)*id);

    localVarPath = strReplace(localVarPath, localVarToReplace_id, localVarBuff_id);



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
    //    printf("%s\n","Detailed SSL certificate information.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Unauthorized");
    //}
    //nonprimitive not container
    object_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *SSLCertificatesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = object_parseFromJSON(SSLCertificatesAPIlocalVarJSON);
        cJSON_Delete(SSLCertificatesAPIlocalVarJSON);
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
    free(localVarToReplace_id);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// List all billing invoices and charges tied to one SSL certificate by id
//
// Use to retrieve the full invoice history for a single SSL cert - initial order, renewals, and any addon charges. Path param id (integer, required) is the ssl_id; ownership is enforced via get_service so cross-account ids return an Invalid Service error. Returns ChargeInvoiceRows: success bool plus invoices array of charge/invoice rows with iid, date, cost, status (paid/unpaid/refunded), and description. Returns 401 unauthenticated, 400 if the id resolves to no service. Useful for auditing renewals before sslCancel, reconciling payment failures, or showing the customer their billing history.  Sibling ops: `getSslInfo`, `sslCancel`, `getSslWelcomeEmail`, `getBillingInvoice` (per-invoice detail), `initiatePayment` (settle unpaid).
//
charge_invoice_rows_t*
SSLCertificatesAPI_getSslInvoices(apiClient_t *apiClient, int *id)
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
    char *localVarPath = strdup("/ssl/{id}/invoices");



    // Path Params
    long sizeOfPathParams_id =  + sizeof("{ id }") - 1;
    if(id == 0){
        goto end;
    }
    char* localVarToReplace_id = malloc(sizeOfPathParams_id);
    snprintf(localVarToReplace_id, sizeOfPathParams_id, "{%s}", "id");

    char localVarBuff_id[256];
    snprintf(localVarBuff_id, sizeof localVarBuff_id, "%ld", (long)*id);

    localVarPath = strReplace(localVarPath, localVarToReplace_id, localVarBuff_id);



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
    //    printf("%s\n","Get Invoices response");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Unauthorized");
    //}
    //nonprimitive not container
    charge_invoice_rows_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *SSLCertificatesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = charge_invoice_rows_parseFromJSON(SSLCertificatesAPIlocalVarJSON);
        cJSON_Delete(SSLCertificatesAPIlocalVarJSON);
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
    free(localVarToReplace_id);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// List all SSL certificates on the authenticated customer account with status and hostname
//
// Use to enumerate every SSL certificate (DV/OV/EV) the current customer owns before drilling into a specific cert. Returns an array of SslRow objects with id, hostname, services_name (package), status (pending/active/expired/canceled), and company. No query parameters - results are auto-scoped to the session account_id. Empty array if customer has no certs. Returns 401 if unauthenticated. Pair the returned id with getSslInfo for full details, getSslInvoices for billing, getSslWelcomeEmail to resend credentials, sslCancel to terminate, or addSsl to order a new cert. Status values may be stale relative to CA - issuance/validation can take minutes to hours after order.  Sibling ops: `getSslInfo`, `getNewSsl` (catalog), `addSsl` (order new cert).
//
void
SSLCertificatesAPI_getSslList(apiClient_t *apiClient)
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
    char *localVarPath = strdup("/ssl");




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
    //    printf("%s\n","The listing of &#x60;SSL&#x60; services on your account.");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Unauthorized");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 0) {
    //    printf("%s\n","Default response");
    //}
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    
    free(localVarPath);

}

// Resend the SSL welcome email with cert credentials and install instructions
//
// Use when a customer lost the original welcome email containing CSR submission steps, validation links, or installation guidance for an active SSL cert. Path param id (integer, required) is the ssl_id. Triggers the module's ssl_welcome_email function to re-send to the account's email on file. Returns SuccessTextResponse: text='Welcome Email has been resent.' Returns 401 unauthenticated, 404 if id not found or not owned by session customer ('Invalid Service Passed'), 409 if cert status is not 'active' (pending/canceled/expired certs do not have a welcome email to resend). Caveat: cannot change the destination email - update the account profile first if the customer's address has changed.  Sibling ops: `getSslInfo` (verify status), `sslCancel` (terminate), `updateAccountInfo` (change email first).
//
success_text_response_t*
SSLCertificatesAPI_getSslWelcomeEmail(apiClient_t *apiClient, int *id)
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
    char *localVarPath = strdup("/ssl/{id}/welcome_email");



    // Path Params
    long sizeOfPathParams_id =  + sizeof("{ id }") - 1;
    if(id == 0){
        goto end;
    }
    char* localVarToReplace_id = malloc(sizeOfPathParams_id);
    snprintf(localVarToReplace_id, sizeOfPathParams_id, "{%s}", "id");

    char localVarBuff_id[256];
    snprintf(localVarBuff_id, sizeof localVarBuff_id, "%ld", (long)*id);

    localVarPath = strReplace(localVarPath, localVarToReplace_id, localVarBuff_id);



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
        cJSON *SSLCertificatesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = success_text_response_parseFromJSON(SSLCertificatesAPIlocalVarJSON);
        cJSON_Delete(SSLCertificatesAPIlocalVarJSON);
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
    free(localVarToReplace_id);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Validate an SSL certificate order without charging - dry-run before addSsl
//
// Use after getNewSsl and before addSsl to verify hostname, CSR, service_type, frequency, and coupon_code are acceptable without creating an invoice or charging the customer. Body params (form): frequency (months, default 12), service_type, hostname, csr, coupon_code, plus extra/vars per cert type. Returns continue (bool), errors (array), serviceType, serviceCost (after coupon), originalCost, hostname, couponCode. If continue=false the errors array explains what to fix - typical issues are invalid hostname/CSR mismatch, expired coupon, or unsupported service_type. Returns 401 if unauthenticated, 422 on validation failure semantics. No state is mutated. Always run this before addSsl to prevent failed charges. Sibling ops: `getNewSsl` (catalog), `addSsl` (commit).
//
void
SSLCertificatesAPI_putSsl(apiClient_t *apiClient, ssl_order_request_t *ssl_order_request)
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
    char *localVarPath = strdup("/ssl/order");





    // Body Param
    cJSON *localVarSingleItemJSON_ssl_order_request = NULL;
    if (ssl_order_request != NULL)
    {
        //not string, not binary
        localVarSingleItemJSON_ssl_order_request = ssl_order_request_convertToJSON(ssl_order_request);
        localVarBodyParameters = cJSON_Print(localVarSingleItemJSON_ssl_order_request);
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
                    "PUT");

    // uncomment below to debug the error response
    //if (apiClient->response_code == 200) {
    //    printf("%s\n","Validate SSL Order response");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Unauthorized");
    //}
    //No return type
end:
    if (apiClient->dataReceived) {
        free(apiClient->dataReceived);
        apiClient->dataReceived = NULL;
        apiClient->dataReceivedLen = 0;
    }
    
    
    
    list_freeList(localVarHeaderType);
    list_freeList(localVarContentType);
    free(localVarPath);
    if (localVarSingleItemJSON_ssl_order_request) {
        cJSON_Delete(localVarSingleItemJSON_ssl_order_request);
        localVarSingleItemJSON_ssl_order_request = NULL;
    }
    free(localVarBodyParameters);

}

// Cancel an SSL certificate service - stops renewals at end of billing cycle
//
// [DESTRUCTIVE] Use to cancel a customer-owned SSL cert. Path param id (integer, required) is the ssl_id. Cancellation marks the service for non-renewal - the cert stays valid until its current paid period ends, after which auto-billing stops. The CA-issued certificate itself is NOT revoked by this call (file a separate revocation request if needed). Returns SSLCancelResponse with success bool and text. Returns 401 unauthenticated, 404 if id not owned by session customer, error if the cancel_service hook fails. Caveat: irreversible at the billing level - re-enabling requires a new addSsl order. Verify the right cert with getSslInfo and confirm no unpaid charges via getSslInvoices first.  Sibling ops: `getSslInfo` (verify cert), `getSslInvoices` (check unpaid), `addSsl` (re-order).
//
ssl_cancel_200_response_t*
SSLCertificatesAPI_sslCancel(apiClient_t *apiClient, int *id)
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
    char *localVarPath = strdup("/ssl/{id}");



    // Path Params
    long sizeOfPathParams_id =  + sizeof("{ id }") - 1;
    if(id == 0){
        goto end;
    }
    char* localVarToReplace_id = malloc(sizeOfPathParams_id);
    snprintf(localVarToReplace_id, sizeOfPathParams_id, "{%s}", "id");

    char localVarBuff_id[256];
    snprintf(localVarBuff_id, sizeof localVarBuff_id, "%ld", (long)*id);

    localVarPath = strReplace(localVarPath, localVarToReplace_id, localVarBuff_id);



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
    //    printf("%s\n","SSL Cancel");
    //}
    // uncomment below to debug the error response
    //if (apiClient->response_code == 401) {
    //    printf("%s\n","Unauthorized");
    //}
    //nonprimitive not container
    ssl_cancel_200_response_t *elementToReturn = NULL;
    if(apiClient->response_code >= 200 && apiClient->response_code < 300) {
        cJSON *SSLCertificatesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = ssl_cancel_200_response_parseFromJSON(SSLCertificatesAPIlocalVarJSON);
        cJSON_Delete(SSLCertificatesAPIlocalVarJSON);
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
    free(localVarToReplace_id);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

// Update mutable settings on an existing SSL certificate order by id
//
// Use to modify mutable fields on a customer-owned SSL cert (e.g. contact info, renewal preferences, hostname or CSR data depending on cert state and CA rules). Path param id (string/int, required) is the ssl_id. Body params depend on the cert package and which fields the underlying service supports - inspect getSslInfo client_links first to see which actions are exposed. Returns SuccessTextResponse on success. Returns 401 unauthenticated, 404 if id not owned, 409 if cert state forbids the change (e.g. canceled or pending CA validation), 422 on invalid field values. Caveat: changes that affect the certificate identity (hostname, CSR) typically trigger a reissue with the CA which is time-sensitive and may require new DNS or email validation.  Sibling ops: `getSslInfo` (read), `sslCancel` (terminate), `getSslWelcomeEmail`.
//
success_text_response_t*
SSLCertificatesAPI_updateSslInfo(apiClient_t *apiClient, char *id)
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
    char *localVarPath = strdup("/ssl/{id}");

    if(!id)
        goto end;


    // Path Params
    long sizeOfPathParams_id = strlen(id)+3 + sizeof("{ id }") - 1;
    if(id == NULL) {
        goto end;
    }
    char* localVarToReplace_id = malloc(sizeOfPathParams_id);
    sprintf(localVarToReplace_id, "{%s}", "id");

    localVarPath = strReplace(localVarPath, localVarToReplace_id, id);


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
        cJSON *SSLCertificatesAPIlocalVarJSON = cJSON_Parse(apiClient->dataReceived);
        elementToReturn = success_text_response_parseFromJSON(SSLCertificatesAPIlocalVarJSON);
        cJSON_Delete(SSLCertificatesAPIlocalVarJSON);
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
    free(localVarToReplace_id);
    return elementToReturn;
end:
    free(localVarPath);
    return NULL;

}

