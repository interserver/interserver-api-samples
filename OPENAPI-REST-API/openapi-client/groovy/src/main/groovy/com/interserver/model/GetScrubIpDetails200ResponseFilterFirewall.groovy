package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.GetScrubIpDetails200ResponseFilterFirewallFiltersInner;
import com.interserver.model.GetScrubIpDetails200ResponseFilterFirewallRulesInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class GetScrubIpDetails200ResponseFilterFirewall {
    
    List<GetScrubIpDetails200ResponseFilterFirewallRulesInner> rules
    
    List<GetScrubIpDetails200ResponseFilterFirewallFiltersInner> filters
    
    Integer scrubEnabled
}
