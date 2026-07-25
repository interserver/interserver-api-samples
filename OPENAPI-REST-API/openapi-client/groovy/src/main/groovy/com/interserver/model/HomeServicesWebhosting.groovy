package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.HomeServicesWebhostingLinks;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class HomeServicesWebhosting {
    
    HomeServicesWebhostingLinks links
    /* Number of web hosting services. */
    Integer count
}
