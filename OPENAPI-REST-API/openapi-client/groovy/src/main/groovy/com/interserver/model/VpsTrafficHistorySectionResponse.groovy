package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.VpsTrafficHistorySectionDataResponse;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class VpsTrafficHistorySectionResponse {
    
    List<VpsTrafficHistorySectionDataResponse> data
    
    List<OffsetDateTime> times
}
