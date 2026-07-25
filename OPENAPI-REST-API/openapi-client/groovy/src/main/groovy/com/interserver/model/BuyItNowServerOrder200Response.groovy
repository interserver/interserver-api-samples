package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.BuyItNowServerOrder200ResponseBandwidthInner;
import com.interserver.model.BuyItNowServerOrder200ResponseCpInner;
import com.interserver.model.BuyItNowServerOrder200ResponseIpsInner;
import com.interserver.model.BuyItNowServerOrder200ResponseOsInner;
import com.interserver.model.BuyItNowServerOrder200ResponseRaidInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class BuyItNowServerOrder200Response {
    
    List<BuyItNowServerOrder200ResponseBandwidthInner> bandwidth
    
    List<BuyItNowServerOrder200ResponseIpsInner> ips
    
    List<BuyItNowServerOrder200ResponseOsInner> os
    
    List<BuyItNowServerOrder200ResponseCpInner> cp
    
    List<BuyItNowServerOrder200ResponseRaidInner> raid
}
