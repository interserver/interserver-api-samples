package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.HomeServicesDomainsLinks;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class HomeServicesDomains {
    
    HomeServicesDomainsLinks links
    /* Number of domains. */
    Integer count
}
