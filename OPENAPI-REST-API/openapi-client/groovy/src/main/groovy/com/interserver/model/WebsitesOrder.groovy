package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.WebsitesOrderJsonServiceOffers;
import com.interserver.model.WebsitesOrderJsonServices;
import com.interserver.model.WebsitesOrderPackages;
import com.interserver.model.WebsitesOrderPackges;
import com.interserver.model.WebsitesOrderServiceOffers;
import com.interserver.model.WebsitesOrderServiceTypes;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class WebsitesOrder {
    /* Step description */
    String step
    /* Website description */
    String website
    /* Period description */
    Integer period
    /* Service offer ID description */
    Integer serviceOfferId
    
    WebsitesOrderPackages packages
    /* Enable domain registering description */
    Boolean enableDomainRegistering
    
    WebsitesOrderJsonServices jsonServices
    
    WebsitesOrderJsonServiceOffers jsonServiceOffers
    
    WebsitesOrderServiceTypes serviceTypes
    
    WebsitesOrderServiceOffers serviceOffers
    
    WebsitesOrderPackges packges
}
