package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class TicketsRow {
    
    String title
    
    String ticketmaskid
    
    String lastreplier
    
    String status
    
    String priority
    
    Integer totalReplies
    
    String lastactivity
    
    String departmenttitle
    
    Integer ticketid
    
    String canClose
    
    Object attachments = null
    
    String statusText
    
    Boolean checked
}
