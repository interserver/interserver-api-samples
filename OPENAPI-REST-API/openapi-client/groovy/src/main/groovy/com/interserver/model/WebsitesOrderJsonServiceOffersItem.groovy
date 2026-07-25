package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class WebsitesOrderJsonServiceOffersItem {
    /* Service offer ID */
    String serviceOfferId
    /* Service ID */
    String serviceId
    /* Introductory cost */
    Integer introCost
    /* Renewal cost */
    Integer renewalCost
    /* Introductory frequency */
    String introFrequency
    /* Renewal frequency */
    String renewalFrequency
    /* Allow coupon */
    String allowCoupon
    /* Service module */
    String serviceModule
    /* Creation date */
    String createdAt
    /* Update date */
    String updatedAt
    /* Deletion date */
    String deletedAt
    /* Currency symbol */
    String currencySymbol
}
