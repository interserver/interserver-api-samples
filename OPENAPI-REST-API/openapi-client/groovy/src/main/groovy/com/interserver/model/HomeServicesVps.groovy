package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.HomeServicesVpsLinks;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class HomeServicesVps {
    
    HomeServicesVpsLinks links
    /* Number of VPS services. */
    Integer count
}
