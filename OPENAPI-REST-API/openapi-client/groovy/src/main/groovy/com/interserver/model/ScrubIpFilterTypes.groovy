package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.ScrubIpFilterTypesFiltersValue;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.HashMap;

@Canonical
class ScrubIpFilterTypes {
    
    Boolean success
    
    Map<String, ScrubIpFilterTypesFiltersValue> filters
}
