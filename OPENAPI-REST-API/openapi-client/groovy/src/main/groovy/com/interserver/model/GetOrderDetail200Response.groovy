package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.GetOrderDetail200ResponseIpsInner;
import com.interserver.model.GetOrderDetail200ResponsePackageCosts;
import com.interserver.model.GetOrderDetail200ResponseServiceTypesInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class GetOrderDetail200Response {
    
    GetOrderDetail200ResponsePackageCosts packageCosts
    
    List<GetOrderDetail200ResponseServiceTypesInner> serviceTypes
    
    List<GetOrderDetail200ResponseIpsInner> ips
}
