package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.VPSTrafficDataDataSectionResponse;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class VpsTrafficDataSectionResponse {
    
    String name
    
    List<VPSTrafficDataDataSectionResponse> data
}
