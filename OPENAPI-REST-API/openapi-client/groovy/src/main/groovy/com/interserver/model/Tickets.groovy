package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.TicketsCountArray;
import com.interserver.model.TicketsRow;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class Tickets {
    
    String ima
    
    String custid
    
    String view
    
    Integer currentPage
    
    Integer limit
    
    Integer sortcol
    
    Integer sortdir
    
    Integer rowsOffset
    
    List<TicketsRow> tickets
    
    Integer pages
    
    Integer rowsTotal
    
    Integer inboxCount
    
    TicketsCountArray countArray
    
    String viewText
}
