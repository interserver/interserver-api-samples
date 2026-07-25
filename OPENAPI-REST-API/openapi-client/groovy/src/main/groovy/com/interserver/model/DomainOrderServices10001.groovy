package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class DomainOrderServices10001 {
    /* Service ID */
    String servicesId
    /* Service Name */
    String servicesName
    /* Service Cost */
    String servicesCost
    /* Currency of Service Cost */
    String servicesCurrency
    /* Service Category */
    String servicesCategory
    /* Buyable flag for Service */
    String servicesBuyable
    /* Service Type */
    String servicesType
    /* Field 1 of Service */
    String servicesField1
    /* Field 2 of Service */
    String servicesField2
    /* Module of Service */
    String servicesModule
    /* Hidden flag for Service */
    String servicesHidden
}
