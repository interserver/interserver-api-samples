package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class LicenseServiceType {
    /* Service ID */
    String servicesId
    /* Service name */
    String servicesName
    /* Service cost */
    String servicesCost
    /* Service category */
    String servicesCategory
    /* Buyable status */
    String servicesBuyable
    /* Service type */
    String servicesType
    /* Service field 1 */
    String servicesField1
    /* Service field 2 */
    String servicesField2
    /* Service module */
    String servicesModule
}
