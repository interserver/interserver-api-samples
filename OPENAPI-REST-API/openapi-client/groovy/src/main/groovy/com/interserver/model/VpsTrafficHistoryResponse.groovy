package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.VpsTrafficHistorySectionResponse;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class VpsTrafficHistoryResponse {
    
    VpsTrafficHistorySectionResponse hour
    
    VpsTrafficHistorySectionResponse day
}
