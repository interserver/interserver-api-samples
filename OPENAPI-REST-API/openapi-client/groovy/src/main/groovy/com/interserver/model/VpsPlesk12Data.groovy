package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.VpsPleskLicense;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class VpsPlesk12Data {
    
    VpsPleskLicense admin
    
    VpsPleskLicense pro
    
    VpsPleskLicense host
}
