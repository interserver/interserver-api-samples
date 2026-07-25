package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.PlaceScrubOrder201ResponseOrderDetailsCjParams;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class PlaceScrubOrder201ResponseOrderDetails {
    
    Integer totalCost
    
    Integer serviceId
    
    Integer invoiceId
    
    String invoiceDescription
    
    PlaceScrubOrder201ResponseOrderDetailsCjParams cjParams
}
