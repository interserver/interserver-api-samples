package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.Modules;
import com.interserver.model.ServiceCategories;
import com.interserver.model.ServiceTypes;
import com.interserver.model.Services;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ServicesInfo {
    
    Modules modules
    
    Services services
    
    ServiceTypes serviceTypes
    
    ServiceCategories serviceCategories
}
