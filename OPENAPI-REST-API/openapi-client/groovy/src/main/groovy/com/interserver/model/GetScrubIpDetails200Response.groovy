package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.GetScrubIpDetails200ResponseBillingDetails;
import com.interserver.model.GetScrubIpDetails200ResponseClientLinksInner;
import com.interserver.model.GetScrubIpDetails200ResponseExtraInfoTables;
import com.interserver.model.GetScrubIpDetails200ResponseFilterFirewall;
import com.interserver.model.GetScrubIpDetails200ResponseServiceInfo;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class GetScrubIpDetails200Response {
    
    GetScrubIpDetails200ResponseServiceInfo serviceInfo
    
    List<GetScrubIpDetails200ResponseClientLinksInner> clientLinks
    
    GetScrubIpDetails200ResponseBillingDetails billingDetails
    
    String custCurrency
    
    String custCurrencySymbol
    
    String _package
    
    GetScrubIpDetails200ResponseExtraInfoTables extraInfoTables
    
    GetScrubIpDetails200ResponseFilterFirewall filterFirewall
}
