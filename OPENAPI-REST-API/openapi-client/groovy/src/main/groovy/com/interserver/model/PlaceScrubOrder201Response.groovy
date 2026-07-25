package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.PlaceScrubOrder201ResponseOrderDetails;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class PlaceScrubOrder201Response {
    
    Boolean success
    
    String text
    
    PlaceScrubOrder201ResponseOrderDetails orderDetails
}
