package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.VpsTrafficTotalsSectionResponse;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class VpsTrafficTotalsResposne {
    
    VpsTrafficTotalsSectionResponse day
    
    VpsTrafficTotalsSectionResponse month
    
    VpsTrafficTotalsSectionResponse year
    
    VpsTrafficTotalsSectionResponse all
}
