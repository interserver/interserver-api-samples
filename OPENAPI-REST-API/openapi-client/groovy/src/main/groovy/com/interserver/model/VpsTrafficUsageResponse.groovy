package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.VpsTrafficTotalsSectionResponse;
import com.interserver.model.VpsTrafficUsageAverageResponse;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class VpsTrafficUsageResponse {
    
    VpsTrafficTotalsSectionResponse current
    
    VpsTrafficTotalsSectionResponse peak
    
    VpsTrafficUsageAverageResponse average
}
