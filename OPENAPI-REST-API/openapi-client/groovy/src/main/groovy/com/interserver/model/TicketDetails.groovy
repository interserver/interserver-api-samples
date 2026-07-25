package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class TicketDetails {
    
    Integer ticketid
    
    String ticketmaskid
    
    String department
    
    String status
    
    String priority
    
    String subject
    
    String createdOn
    
    String updatedOn
}
