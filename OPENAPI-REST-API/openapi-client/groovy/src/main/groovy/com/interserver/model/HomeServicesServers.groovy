package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.HomeServicesServersLinks;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class HomeServicesServers {
    
    HomeServicesServersLinks links
    /* Number of servers. */
    Integer count
}
