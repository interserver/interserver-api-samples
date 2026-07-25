package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class WebsiteOrderPutRequest {
    /* Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist. */
    String hostname
    /* Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable). */
    Integer packageId
    /* Control-panel admin password. If blank, a random password is generated server-side. */
    String rootpass = ""
    /* Billing cycle in months (1 / 6 / 12 / 24 / 36). */
    Integer period = 1
    /* Coupon code. */
    String coupon = ""
    /* Promo bundle id from getNewWebsite.serviceOffers. */
    Integer serviceOfferId = 0
    /* Auto-installer id (0 = none). */
    Integer script = 0
    /* Free-form note saved on the service row. */
    String comment = ""
    /* When true and enableDomainRegistering=true from the catalog, also registers/transfers the domain through the order. */
    Boolean registerDomain = false
}
