package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.VpsTrafficDataSectionResponse;
import com.interserver.model.VpsTrafficHistoryResponse;
import com.interserver.model.VpsTrafficTotalsResposne;
import com.interserver.model.VpsTrafficUsageResponse;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class VpsTrafficResponse {
    
    String name
    
    String target
    
    Integer interval
    
    VpsTrafficHistoryResponse history
    
    OffsetDateTime last
    
    List<OffsetDateTime> times
    
    VpsTrafficTotalsResposne totals
    
    VpsTrafficUsageResponse usage
    
    List<VpsTrafficDataSectionResponse> data
}
