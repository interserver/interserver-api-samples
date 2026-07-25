package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.BuyItNowRowCpuInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

@Canonical
class BuyItNowRow {
    /* Unique server ID. Use this as `server_id` in `POST /servers/order/buy_now_server`. */
    String serverId
    
    List<BuyItNowRowCpuInner> cpu
    
    String memory
    
    Map<String, String> disk
    
    String bandwidth
    
    String ips
    
    String location
    
    Integer price
}
