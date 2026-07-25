package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.DomainOrderServices;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class DomainOrder {
    /* Cost of Whois Privacy */
    String whoisPrivacyCost
    
    DomainOrderServices services
    /* Map of TLDs to domain service IDs. */
    Object tldServices
}
