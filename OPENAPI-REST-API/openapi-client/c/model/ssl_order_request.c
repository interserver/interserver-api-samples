#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "ssl_order_request.h"


char* ssl_order_request_csr_type_ToString(interserver_management_api_ssl_order_request_CSRTYPE_e csr_type) {
    char* csr_typeArray[] =  { "NULL", "generated", "provided" };
    return csr_typeArray[csr_type];
}

interserver_management_api_ssl_order_request_CSRTYPE_e ssl_order_request_csr_type_FromString(char* csr_type){
    int stringToReturn = 0;
    char *csr_typeArray[] =  { "NULL", "generated", "provided" };
    size_t sizeofArray = sizeof(csr_typeArray) / sizeof(csr_typeArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(csr_type, csr_typeArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

static ssl_order_request_t *ssl_order_request_create_internal(
    int *ssl,
    char *hostname,
    char *approver_email,
    int *frequency,
    char *coupon,
    interserver_management_api_ssl_order_request_CSRTYPE_e csr_type,
    char *csr,
    char *firstname,
    char *lastname,
    char *email,
    char *address,
    char *city,
    char *state,
    char *zip,
    char *country,
    char *phone,
    char *company,
    char *department,
    char *agency,
    char *business_category
    ) {
    ssl_order_request_t *ssl_order_request_local_var = malloc(sizeof(ssl_order_request_t));
    if (!ssl_order_request_local_var) {
        return NULL;
    }
    memset(ssl_order_request_local_var, 0, sizeof(ssl_order_request_t));
    ssl_order_request_local_var->_library_owned = 1;
    ssl_order_request_local_var->ssl = ssl;
    ssl_order_request_local_var->hostname = hostname;
    ssl_order_request_local_var->approver_email = approver_email;
    ssl_order_request_local_var->frequency = frequency;
    ssl_order_request_local_var->coupon = coupon;
    ssl_order_request_local_var->csr_type = csr_type;
    ssl_order_request_local_var->csr = csr;
    ssl_order_request_local_var->firstname = firstname;
    ssl_order_request_local_var->lastname = lastname;
    ssl_order_request_local_var->email = email;
    ssl_order_request_local_var->address = address;
    ssl_order_request_local_var->city = city;
    ssl_order_request_local_var->state = state;
    ssl_order_request_local_var->zip = zip;
    ssl_order_request_local_var->country = country;
    ssl_order_request_local_var->phone = phone;
    ssl_order_request_local_var->company = company;
    ssl_order_request_local_var->department = department;
    ssl_order_request_local_var->agency = agency;
    ssl_order_request_local_var->business_category = business_category;
    return ssl_order_request_local_var;
}

__attribute__((deprecated)) ssl_order_request_t *ssl_order_request_create(
    int *ssl,
    char *hostname,
    char *approver_email,
    int *frequency,
    char *coupon,
    interserver_management_api_ssl_order_request_CSRTYPE_e csr_type,
    char *csr,
    char *firstname,
    char *lastname,
    char *email,
    char *address,
    char *city,
    char *state,
    char *zip,
    char *country,
    char *phone,
    char *company,
    char *department,
    char *agency,
    char *business_category
    ) {
    int *ssl_copy = NULL;
    if (ssl) {
        ssl_copy = malloc(sizeof(int));
        if (ssl_copy) *ssl_copy = *ssl;
    }
    int *frequency_copy = NULL;
    if (frequency) {
        frequency_copy = malloc(sizeof(int));
        if (frequency_copy) *frequency_copy = *frequency;
    }
    ssl_order_request_t *result = ssl_order_request_create_internal (
        ssl_copy,
        hostname,
        approver_email,
        frequency_copy,
        coupon,
        csr_type,
        csr,
        firstname,
        lastname,
        email,
        address,
        city,
        state,
        zip,
        country,
        phone,
        company,
        department,
        agency,
        business_category
        );
    if (!result) {
        free(ssl_copy);
        free(frequency_copy);
    }
    return result;
}

void ssl_order_request_free(ssl_order_request_t *ssl_order_request) {
    if(NULL == ssl_order_request){
        return ;
    }
    if(ssl_order_request->_library_owned != 1){
        fprintf(stderr, "WARNING: %s() does NOT free objects allocated by the user\n", "ssl_order_request_free");
        return ;
    }
    listEntry_t *listEntry;
    if (ssl_order_request->ssl) {
        free(ssl_order_request->ssl);
        ssl_order_request->ssl = NULL;
    }
    if (ssl_order_request->hostname) {
        free(ssl_order_request->hostname);
        ssl_order_request->hostname = NULL;
    }
    if (ssl_order_request->approver_email) {
        free(ssl_order_request->approver_email);
        ssl_order_request->approver_email = NULL;
    }
    if (ssl_order_request->frequency) {
        free(ssl_order_request->frequency);
        ssl_order_request->frequency = NULL;
    }
    if (ssl_order_request->coupon) {
        free(ssl_order_request->coupon);
        ssl_order_request->coupon = NULL;
    }
    if (ssl_order_request->csr) {
        free(ssl_order_request->csr);
        ssl_order_request->csr = NULL;
    }
    if (ssl_order_request->firstname) {
        free(ssl_order_request->firstname);
        ssl_order_request->firstname = NULL;
    }
    if (ssl_order_request->lastname) {
        free(ssl_order_request->lastname);
        ssl_order_request->lastname = NULL;
    }
    if (ssl_order_request->email) {
        free(ssl_order_request->email);
        ssl_order_request->email = NULL;
    }
    if (ssl_order_request->address) {
        free(ssl_order_request->address);
        ssl_order_request->address = NULL;
    }
    if (ssl_order_request->city) {
        free(ssl_order_request->city);
        ssl_order_request->city = NULL;
    }
    if (ssl_order_request->state) {
        free(ssl_order_request->state);
        ssl_order_request->state = NULL;
    }
    if (ssl_order_request->zip) {
        free(ssl_order_request->zip);
        ssl_order_request->zip = NULL;
    }
    if (ssl_order_request->country) {
        free(ssl_order_request->country);
        ssl_order_request->country = NULL;
    }
    if (ssl_order_request->phone) {
        free(ssl_order_request->phone);
        ssl_order_request->phone = NULL;
    }
    if (ssl_order_request->company) {
        free(ssl_order_request->company);
        ssl_order_request->company = NULL;
    }
    if (ssl_order_request->department) {
        free(ssl_order_request->department);
        ssl_order_request->department = NULL;
    }
    if (ssl_order_request->agency) {
        free(ssl_order_request->agency);
        ssl_order_request->agency = NULL;
    }
    if (ssl_order_request->business_category) {
        free(ssl_order_request->business_category);
        ssl_order_request->business_category = NULL;
    }
    free(ssl_order_request);
}

cJSON *ssl_order_request_convertToJSON(ssl_order_request_t *ssl_order_request) {
    cJSON *item = cJSON_CreateObject();

    // ssl_order_request->ssl
    if (!ssl_order_request->ssl) {
        goto fail;
    }
    if(cJSON_AddNumberToObject(item, "ssl", *ssl_order_request->ssl) == NULL) {
    goto fail; //Numeric
    }


    // ssl_order_request->hostname
    if (!ssl_order_request->hostname) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "hostname", ssl_order_request->hostname) == NULL) {
    goto fail; //String
    }


    // ssl_order_request->approver_email
    if (!ssl_order_request->approver_email) {
        goto fail;
    }
    if(cJSON_AddStringToObject(item, "approver_email", ssl_order_request->approver_email) == NULL) {
    goto fail; //String
    }


    // ssl_order_request->frequency
    if(ssl_order_request->frequency) {
    if(cJSON_AddNumberToObject(item, "frequency", *ssl_order_request->frequency) == NULL) {
    goto fail; //Numeric
    }
    }


    // ssl_order_request->coupon
    if(ssl_order_request->coupon) {
    if(cJSON_AddStringToObject(item, "coupon", ssl_order_request->coupon) == NULL) {
    goto fail; //String
    }
    }


    // ssl_order_request->csr_type
    if(ssl_order_request->csr_type != interserver_management_api_ssl_order_request_CSRTYPE_NULL) {
    if(cJSON_AddStringToObject(item, "csr_type", ssl_order_request_csr_type_ToString(ssl_order_request->csr_type)) == NULL)
    {
    goto fail; //Enum
    }
    }


    // ssl_order_request->csr
    if(ssl_order_request->csr) {
    if(cJSON_AddStringToObject(item, "csr", ssl_order_request->csr) == NULL) {
    goto fail; //String
    }
    }


    // ssl_order_request->firstname
    if(ssl_order_request->firstname) {
    if(cJSON_AddStringToObject(item, "firstname", ssl_order_request->firstname) == NULL) {
    goto fail; //String
    }
    }


    // ssl_order_request->lastname
    if(ssl_order_request->lastname) {
    if(cJSON_AddStringToObject(item, "lastname", ssl_order_request->lastname) == NULL) {
    goto fail; //String
    }
    }


    // ssl_order_request->email
    if(ssl_order_request->email) {
    if(cJSON_AddStringToObject(item, "email", ssl_order_request->email) == NULL) {
    goto fail; //String
    }
    }


    // ssl_order_request->address
    if(ssl_order_request->address) {
    if(cJSON_AddStringToObject(item, "address", ssl_order_request->address) == NULL) {
    goto fail; //String
    }
    }


    // ssl_order_request->city
    if(ssl_order_request->city) {
    if(cJSON_AddStringToObject(item, "city", ssl_order_request->city) == NULL) {
    goto fail; //String
    }
    }


    // ssl_order_request->state
    if(ssl_order_request->state) {
    if(cJSON_AddStringToObject(item, "state", ssl_order_request->state) == NULL) {
    goto fail; //String
    }
    }


    // ssl_order_request->zip
    if(ssl_order_request->zip) {
    if(cJSON_AddStringToObject(item, "zip", ssl_order_request->zip) == NULL) {
    goto fail; //String
    }
    }


    // ssl_order_request->country
    if(ssl_order_request->country) {
    if(cJSON_AddStringToObject(item, "country", ssl_order_request->country) == NULL) {
    goto fail; //String
    }
    }


    // ssl_order_request->phone
    if(ssl_order_request->phone) {
    if(cJSON_AddStringToObject(item, "phone", ssl_order_request->phone) == NULL) {
    goto fail; //String
    }
    }


    // ssl_order_request->company
    if(ssl_order_request->company) {
    if(cJSON_AddStringToObject(item, "company", ssl_order_request->company) == NULL) {
    goto fail; //String
    }
    }


    // ssl_order_request->department
    if(ssl_order_request->department) {
    if(cJSON_AddStringToObject(item, "department", ssl_order_request->department) == NULL) {
    goto fail; //String
    }
    }


    // ssl_order_request->agency
    if(ssl_order_request->agency) {
    if(cJSON_AddStringToObject(item, "agency", ssl_order_request->agency) == NULL) {
    goto fail; //String
    }
    }


    // ssl_order_request->business_category
    if(ssl_order_request->business_category) {
    if(cJSON_AddStringToObject(item, "business_category", ssl_order_request->business_category) == NULL) {
    goto fail; //String
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

ssl_order_request_t *ssl_order_request_parseFromJSON(cJSON *ssl_order_requestJSON){

    ssl_order_request_t *ssl_order_request_local_var = NULL;

    // define the local variable for ssl_order_request->ssl
    int *ssl_local_var = NULL;

    char *hostname_local_str = NULL;

    char *approver_email_local_str = NULL;

    // define the local variable for ssl_order_request->frequency
    int *frequency_local_var = NULL;

    char *coupon_local_str = NULL;

    char *csr_local_str = NULL;

    char *firstname_local_str = NULL;

    char *lastname_local_str = NULL;

    char *email_local_str = NULL;

    char *address_local_str = NULL;

    char *city_local_str = NULL;

    char *state_local_str = NULL;

    char *zip_local_str = NULL;

    char *country_local_str = NULL;

    char *phone_local_str = NULL;

    char *company_local_str = NULL;

    char *department_local_str = NULL;

    char *agency_local_str = NULL;

    char *business_category_local_str = NULL;

    // ssl_order_request->ssl
    cJSON *ssl = cJSON_GetObjectItemCaseSensitive(ssl_order_requestJSON, "ssl");
    if (cJSON_IsNull(ssl)) {
        ssl = NULL;
    }
    if (!ssl) {
        goto end;
    }

    
    if(!cJSON_IsNumber(ssl))
    {
    goto end; //Numeric
    }
    ssl_local_var = malloc(sizeof(int));
    if(!ssl_local_var)
    {
        goto end;
    }
    *ssl_local_var = ssl->valuedouble;

    // ssl_order_request->hostname
    cJSON *hostname = cJSON_GetObjectItemCaseSensitive(ssl_order_requestJSON, "hostname");
    if (cJSON_IsNull(hostname)) {
        hostname = NULL;
    }
    if (!hostname) {
        goto end;
    }

    
    if(!cJSON_IsString(hostname))
    {
    goto end; //String
    }

    // ssl_order_request->approver_email
    cJSON *approver_email = cJSON_GetObjectItemCaseSensitive(ssl_order_requestJSON, "approver_email");
    if (cJSON_IsNull(approver_email)) {
        approver_email = NULL;
    }
    if (!approver_email) {
        goto end;
    }

    
    if(!cJSON_IsString(approver_email))
    {
    goto end; //String
    }

    // ssl_order_request->frequency
    cJSON *frequency = cJSON_GetObjectItemCaseSensitive(ssl_order_requestJSON, "frequency");
    if (cJSON_IsNull(frequency)) {
        frequency = NULL;
    }
    if (frequency) { 
    if(!cJSON_IsNumber(frequency))
    {
    goto end; //Numeric
    }
    frequency_local_var = malloc(sizeof(int));
    if(!frequency_local_var)
    {
        goto end;
    }
    *frequency_local_var = frequency->valuedouble;
    }

    // ssl_order_request->coupon
    cJSON *coupon = cJSON_GetObjectItemCaseSensitive(ssl_order_requestJSON, "coupon");
    if (cJSON_IsNull(coupon)) {
        coupon = NULL;
    }
    if (coupon) { 
    if(!cJSON_IsString(coupon) && !cJSON_IsNull(coupon))
    {
    goto end; //String
    }
    }

    // ssl_order_request->csr_type
    cJSON *csr_type = cJSON_GetObjectItemCaseSensitive(ssl_order_requestJSON, "csr_type");
    if (cJSON_IsNull(csr_type)) {
        csr_type = NULL;
    }
    interserver_management_api_ssl_order_request_CSRTYPE_e csr_typeVariable;
    if (csr_type) { 
    if(!cJSON_IsString(csr_type))
    {
    goto end; //Enum
    }
    csr_typeVariable = ssl_order_request_csr_type_FromString(csr_type->valuestring);
    }

    // ssl_order_request->csr
    cJSON *csr = cJSON_GetObjectItemCaseSensitive(ssl_order_requestJSON, "csr");
    if (cJSON_IsNull(csr)) {
        csr = NULL;
    }
    if (csr) { 
    if(!cJSON_IsString(csr) && !cJSON_IsNull(csr))
    {
    goto end; //String
    }
    }

    // ssl_order_request->firstname
    cJSON *firstname = cJSON_GetObjectItemCaseSensitive(ssl_order_requestJSON, "firstname");
    if (cJSON_IsNull(firstname)) {
        firstname = NULL;
    }
    if (firstname) { 
    if(!cJSON_IsString(firstname) && !cJSON_IsNull(firstname))
    {
    goto end; //String
    }
    }

    // ssl_order_request->lastname
    cJSON *lastname = cJSON_GetObjectItemCaseSensitive(ssl_order_requestJSON, "lastname");
    if (cJSON_IsNull(lastname)) {
        lastname = NULL;
    }
    if (lastname) { 
    if(!cJSON_IsString(lastname) && !cJSON_IsNull(lastname))
    {
    goto end; //String
    }
    }

    // ssl_order_request->email
    cJSON *email = cJSON_GetObjectItemCaseSensitive(ssl_order_requestJSON, "email");
    if (cJSON_IsNull(email)) {
        email = NULL;
    }
    if (email) { 
    if(!cJSON_IsString(email) && !cJSON_IsNull(email))
    {
    goto end; //String
    }
    }

    // ssl_order_request->address
    cJSON *address = cJSON_GetObjectItemCaseSensitive(ssl_order_requestJSON, "address");
    if (cJSON_IsNull(address)) {
        address = NULL;
    }
    if (address) { 
    if(!cJSON_IsString(address) && !cJSON_IsNull(address))
    {
    goto end; //String
    }
    }

    // ssl_order_request->city
    cJSON *city = cJSON_GetObjectItemCaseSensitive(ssl_order_requestJSON, "city");
    if (cJSON_IsNull(city)) {
        city = NULL;
    }
    if (city) { 
    if(!cJSON_IsString(city) && !cJSON_IsNull(city))
    {
    goto end; //String
    }
    }

    // ssl_order_request->state
    cJSON *state = cJSON_GetObjectItemCaseSensitive(ssl_order_requestJSON, "state");
    if (cJSON_IsNull(state)) {
        state = NULL;
    }
    if (state) { 
    if(!cJSON_IsString(state) && !cJSON_IsNull(state))
    {
    goto end; //String
    }
    }

    // ssl_order_request->zip
    cJSON *zip = cJSON_GetObjectItemCaseSensitive(ssl_order_requestJSON, "zip");
    if (cJSON_IsNull(zip)) {
        zip = NULL;
    }
    if (zip) { 
    if(!cJSON_IsString(zip) && !cJSON_IsNull(zip))
    {
    goto end; //String
    }
    }

    // ssl_order_request->country
    cJSON *country = cJSON_GetObjectItemCaseSensitive(ssl_order_requestJSON, "country");
    if (cJSON_IsNull(country)) {
        country = NULL;
    }
    if (country) { 
    if(!cJSON_IsString(country) && !cJSON_IsNull(country))
    {
    goto end; //String
    }
    }

    // ssl_order_request->phone
    cJSON *phone = cJSON_GetObjectItemCaseSensitive(ssl_order_requestJSON, "phone");
    if (cJSON_IsNull(phone)) {
        phone = NULL;
    }
    if (phone) { 
    if(!cJSON_IsString(phone) && !cJSON_IsNull(phone))
    {
    goto end; //String
    }
    }

    // ssl_order_request->company
    cJSON *company = cJSON_GetObjectItemCaseSensitive(ssl_order_requestJSON, "company");
    if (cJSON_IsNull(company)) {
        company = NULL;
    }
    if (company) { 
    if(!cJSON_IsString(company) && !cJSON_IsNull(company))
    {
    goto end; //String
    }
    }

    // ssl_order_request->department
    cJSON *department = cJSON_GetObjectItemCaseSensitive(ssl_order_requestJSON, "department");
    if (cJSON_IsNull(department)) {
        department = NULL;
    }
    if (department) { 
    if(!cJSON_IsString(department) && !cJSON_IsNull(department))
    {
    goto end; //String
    }
    }

    // ssl_order_request->agency
    cJSON *agency = cJSON_GetObjectItemCaseSensitive(ssl_order_requestJSON, "agency");
    if (cJSON_IsNull(agency)) {
        agency = NULL;
    }
    if (agency) { 
    if(!cJSON_IsString(agency) && !cJSON_IsNull(agency))
    {
    goto end; //String
    }
    }

    // ssl_order_request->business_category
    cJSON *business_category = cJSON_GetObjectItemCaseSensitive(ssl_order_requestJSON, "business_category");
    if (cJSON_IsNull(business_category)) {
        business_category = NULL;
    }
    if (business_category) { 
    if(!cJSON_IsString(business_category) && !cJSON_IsNull(business_category))
    {
    goto end; //String
    }
    }


    if (hostname && !cJSON_IsNull(hostname)) hostname_local_str = strdup(hostname->valuestring);
    if (approver_email && !cJSON_IsNull(approver_email)) approver_email_local_str = strdup(approver_email->valuestring);
    if (coupon && !cJSON_IsNull(coupon)) coupon_local_str = strdup(coupon->valuestring);
    if (csr && !cJSON_IsNull(csr)) csr_local_str = strdup(csr->valuestring);
    if (firstname && !cJSON_IsNull(firstname)) firstname_local_str = strdup(firstname->valuestring);
    if (lastname && !cJSON_IsNull(lastname)) lastname_local_str = strdup(lastname->valuestring);
    if (email && !cJSON_IsNull(email)) email_local_str = strdup(email->valuestring);
    if (address && !cJSON_IsNull(address)) address_local_str = strdup(address->valuestring);
    if (city && !cJSON_IsNull(city)) city_local_str = strdup(city->valuestring);
    if (state && !cJSON_IsNull(state)) state_local_str = strdup(state->valuestring);
    if (zip && !cJSON_IsNull(zip)) zip_local_str = strdup(zip->valuestring);
    if (country && !cJSON_IsNull(country)) country_local_str = strdup(country->valuestring);
    if (phone && !cJSON_IsNull(phone)) phone_local_str = strdup(phone->valuestring);
    if (company && !cJSON_IsNull(company)) company_local_str = strdup(company->valuestring);
    if (department && !cJSON_IsNull(department)) department_local_str = strdup(department->valuestring);
    if (agency && !cJSON_IsNull(agency)) agency_local_str = strdup(agency->valuestring);
    if (business_category && !cJSON_IsNull(business_category)) business_category_local_str = strdup(business_category->valuestring);

    ssl_order_request_local_var = ssl_order_request_create_internal (
        ssl_local_var,
        hostname_local_str,
        approver_email_local_str,
        frequency_local_var,
        coupon_local_str,
        csr_type ? csr_typeVariable : interserver_management_api_ssl_order_request_CSRTYPE_NULL,
        csr_local_str,
        firstname_local_str,
        lastname_local_str,
        email_local_str,
        address_local_str,
        city_local_str,
        state_local_str,
        zip_local_str,
        country_local_str,
        phone_local_str,
        company_local_str,
        department_local_str,
        agency_local_str,
        business_category_local_str
        );

    if (!ssl_order_request_local_var) {
        goto end;
    }

    return ssl_order_request_local_var;
end:
    if (ssl_local_var) {
        free(ssl_local_var);
        ssl_local_var = NULL;
    }
    if (hostname_local_str) {
        free(hostname_local_str);
        hostname_local_str = NULL;
    }
    if (approver_email_local_str) {
        free(approver_email_local_str);
        approver_email_local_str = NULL;
    }
    if (frequency_local_var) {
        free(frequency_local_var);
        frequency_local_var = NULL;
    }
    if (coupon_local_str) {
        free(coupon_local_str);
        coupon_local_str = NULL;
    }
    if (csr_local_str) {
        free(csr_local_str);
        csr_local_str = NULL;
    }
    if (firstname_local_str) {
        free(firstname_local_str);
        firstname_local_str = NULL;
    }
    if (lastname_local_str) {
        free(lastname_local_str);
        lastname_local_str = NULL;
    }
    if (email_local_str) {
        free(email_local_str);
        email_local_str = NULL;
    }
    if (address_local_str) {
        free(address_local_str);
        address_local_str = NULL;
    }
    if (city_local_str) {
        free(city_local_str);
        city_local_str = NULL;
    }
    if (state_local_str) {
        free(state_local_str);
        state_local_str = NULL;
    }
    if (zip_local_str) {
        free(zip_local_str);
        zip_local_str = NULL;
    }
    if (country_local_str) {
        free(country_local_str);
        country_local_str = NULL;
    }
    if (phone_local_str) {
        free(phone_local_str);
        phone_local_str = NULL;
    }
    if (company_local_str) {
        free(company_local_str);
        company_local_str = NULL;
    }
    if (department_local_str) {
        free(department_local_str);
        department_local_str = NULL;
    }
    if (agency_local_str) {
        free(agency_local_str);
        agency_local_str = NULL;
    }
    if (business_category_local_str) {
        free(business_category_local_str);
        business_category_local_str = NULL;
    }
    return NULL;

}
