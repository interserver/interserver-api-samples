/*
 * mail_stats_type.h
 *
 * Statistics about the mail usage including volume by IP, To address, and From address; as well as total sent / delivered counts and cost.
 */

#ifndef _mail_stats_type_H_
#define _mail_stats_type_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct mail_stats_type_t mail_stats_type_t;

#include "mail_stats_type_volume.h"

// Enum TIME for mail_stats_type

typedef enum  { interserver_management_api_mail_stats_type_TIME_NULL = 0, interserver_management_api_mail_stats_type_TIME_all, interserver_management_api_mail_stats_type_TIME_billing, interserver_management_api_mail_stats_type_TIME_month, interserver_management_api_mail_stats_type_TIME__7d, interserver_management_api_mail_stats_type_TIME__24h, interserver_management_api_mail_stats_type_TIME_today, interserver_management_api_mail_stats_type_TIME__1h, interserver_management_api_mail_stats_type_TIME__11184809 } interserver_management_api_mail_stats_type_TIME_e;

char* mail_stats_type_time_ToString(interserver_management_api_mail_stats_type_TIME_e time);

interserver_management_api_mail_stats_type_TIME_e mail_stats_type_time_FromString(char* time);



typedef struct mail_stats_type_t {
    interserver_management_api_mail_stats_type_TIME_e time; //enum
    int *usage; //numeric
    char *currency; // string
    char *currency_symbol; // string
    double *cost; //numeric
    int *received; //numeric
    int *sent; //numeric
    struct mail_stats_type_volume_t *volume; //model

    int _library_owned; // Is the library responsible for freeing this object?
} mail_stats_type_t;

__attribute__((deprecated)) mail_stats_type_t *mail_stats_type_create(
    interserver_management_api_mail_stats_type_TIME_e time,
    int *usage,
    char *currency,
    char *currency_symbol,
    double *cost,
    int *received,
    int *sent,
    mail_stats_type_volume_t *volume
);

void mail_stats_type_free(mail_stats_type_t *mail_stats_type);

mail_stats_type_t *mail_stats_type_parseFromJSON(cJSON *mail_stats_typeJSON);

cJSON *mail_stats_type_convertToJSON(mail_stats_type_t *mail_stats_type);

#endif /* _mail_stats_type_H_ */

