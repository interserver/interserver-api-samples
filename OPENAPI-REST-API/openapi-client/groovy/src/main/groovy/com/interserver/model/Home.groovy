package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.HomeDetails;
import com.interserver.model.HomeServices;
import com.interserver.model.HomeTicketStatus;
import com.interserver.model.HomeTicketStatusView;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class Home {
    /* Last login IP. */
    String lastLoginIp
    /* Last login time. */
    String lastLogin
    /* Currency symbol. */
    String currency
    /* Amount with currency. */
    String amount
    /* Number of invoices. */
    Integer invoiceList
    /* Balance with currency. */
    String balance
    /* Users full name. */
    String fullName
    /* User email address. */
    String email
    /* List of tickets. */
    List<String> tickets
    
    HomeTicketStatus ticketStatus
    
    HomeTicketStatusView ticketStatusView
    
    HomeDetails details
    
    HomeServices services
    /* Affiliate amount with currency. */
    String AFFILIATE_AMOUNT
}
