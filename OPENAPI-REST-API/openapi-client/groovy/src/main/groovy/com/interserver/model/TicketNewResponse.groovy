package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class TicketNewResponse {
    
    String text
    
    Boolean success
    
    Integer ticketId
}
