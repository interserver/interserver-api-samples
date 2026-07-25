package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class VpsOrderPutResponse {
    
    Boolean _continue
    
    List<Object> errors
    
    Integer couponCode
    
    Integer serviceCost
    
    Integer sliceCost
    
    Integer serviceType
    
    Integer repeatSliceCost
    
    Integer originalSliceCost
    
    Integer originalCost
    
    Integer repeatServiceCost
    
    Integer monthlyServiceCost
    
    String custid
    
    String os
    
    String slices
    
    String platform
    
    String controlpanel
    
    Integer period
    
    Integer location
    
    String version
    
    String hostname
    
    String coupon
    
    String rootpass
}
