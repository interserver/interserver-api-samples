package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.TicketCustomFieldDetails;
import com.interserver.model.TicketDetails;
import com.interserver.model.TicketPostDetails;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ViewTicketResponse {
    
    Boolean success
    
    TicketDetails ticket
    
    TicketCustomFieldDetails ticketCustomFields
    
    TicketPostDetails ticketPosts
}
