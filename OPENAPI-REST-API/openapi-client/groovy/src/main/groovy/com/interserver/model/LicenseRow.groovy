package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.time.OffsetDateTime;

@Canonical
class LicenseRow {
    /* The id of the license. */
    String licenseId
    /* The hostname of the license. */
    String licenseHostname
    /* The ip of the license. */
    String licenseIp
    /* The services name of the license. */
    String servicesName
    /* The cost of the license. */
    String cost
    /* The status of the license. */
    String licenseStatus
    /* The invoices paid of the license. */
    String invoicesPaid
    /* The invoices date of the license. */
    OffsetDateTime invoicesDate
}
