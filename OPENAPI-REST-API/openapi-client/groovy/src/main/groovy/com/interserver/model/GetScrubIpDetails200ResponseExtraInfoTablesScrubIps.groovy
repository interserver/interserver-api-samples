package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class GetScrubIpDetails200ResponseExtraInfoTablesScrubIps {
    
    String title
    
    List<GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner> rows
}
