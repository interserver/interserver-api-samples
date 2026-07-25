package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class WebsitesOrderServiceOffer {
    /* The ID of the service offer. */
    String serviceOfferId
    /* The ID of the associated service. */
    String serviceId
    /* The introductory cost of the service offer. */
    String introCost
    /* The renewal cost of the service offer. */
    String renewalCost
    /* The introductory frequency of the service offer. */
    String introFrequency
    /* The renewal frequency of the service offer. */
    String renewalFrequency
    /* Indicates if coupons are allowed (1 for yes, 0 for no). */
    String allowCoupon
    /* The module of the service offer. */
    String serviceModule
    /* The creation timestamp of the service offer. */
    String createdAt
    /* The update timestamp of the service offer. */
    String updatedAt
    /* The deletion timestamp of the service offer. */
    String deletedAt
}
