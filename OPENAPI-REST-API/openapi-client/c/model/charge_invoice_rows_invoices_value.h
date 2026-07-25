/*
 * charge_invoice_rows_invoices_value.h
 *
 * 
 */

#ifndef _charge_invoice_rows_invoices_value_H_
#define _charge_invoice_rows_invoices_value_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct charge_invoice_rows_invoices_value_t charge_invoice_rows_invoices_value_t;

#include "charge_invoice_rows_invoices_value_paid_invoices_value.h"

// Enum INVOICESPAID for charge_invoice_rows_invoices_value

typedef enum  { interserver_management_api_charge_invoice_rows_invoices_value_INVOICESPAID_NULL = 0, interserver_management_api_charge_invoice_rows_invoices_value_INVOICESPAID__0, interserver_management_api_charge_invoice_rows_invoices_value_INVOICESPAID__1, interserver_management_api_charge_invoice_rows_invoices_value_INVOICESPAID__11184809 } interserver_management_api_charge_invoice_rows_invoices_value_INVOICESPAID_e;

char* charge_invoice_rows_invoices_value_invoices_paid_ToString(interserver_management_api_charge_invoice_rows_invoices_value_INVOICESPAID_e invoices_paid);

interserver_management_api_charge_invoice_rows_invoices_value_INVOICESPAID_e charge_invoice_rows_invoices_value_invoices_paid_FromString(char* invoices_paid);



typedef struct charge_invoice_rows_invoices_value_t {
    double *invoices_id; //numeric
    char *invoices_description; // string
    double *invoices_amount; //numeric
    char *invoices_date; // string
    double *invoices_paid; //numeric
    char *invoices_due_date; // string
    char *invoices_currency; // string
    char *currency_symbol; // string
    char *invoices_date_formatted; // string
    list_t* paid_invoices; //map

    int _library_owned; // Is the library responsible for freeing this object?
} charge_invoice_rows_invoices_value_t;

__attribute__((deprecated)) charge_invoice_rows_invoices_value_t *charge_invoice_rows_invoices_value_create(
    double *invoices_id,
    char *invoices_description,
    double *invoices_amount,
    char *invoices_date,
    double *invoices_paid,
    char *invoices_due_date,
    char *invoices_currency,
    char *currency_symbol,
    char *invoices_date_formatted,
    list_t* paid_invoices
);

void charge_invoice_rows_invoices_value_free(charge_invoice_rows_invoices_value_t *charge_invoice_rows_invoices_value);

charge_invoice_rows_invoices_value_t *charge_invoice_rows_invoices_value_parseFromJSON(cJSON *charge_invoice_rows_invoices_valueJSON);

cJSON *charge_invoice_rows_invoices_value_convertToJSON(charge_invoice_rows_invoices_value_t *charge_invoice_rows_invoices_value);

#endif /* _charge_invoice_rows_invoices_value_H_ */

