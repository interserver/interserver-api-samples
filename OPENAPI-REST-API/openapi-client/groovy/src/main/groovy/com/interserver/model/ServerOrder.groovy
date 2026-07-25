package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.ServerOrderBandwidthLi;
import com.interserver.model.ServerOrderConfigIds;
import com.interserver.model.ServerOrderCpLi;
import com.interserver.model.ServerOrderCpuLi;
import com.interserver.model.ServerOrderFieldLabels;
import com.interserver.model.ServerOrderFormValues;
import com.interserver.model.ServerOrderIpsLi;
import com.interserver.model.ServerOrderMemoryLi;
import com.interserver.model.ServerOrderOsLi;
import com.interserver.model.ServerOrderRAID;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class ServerOrder {
    
    ServerOrderFormValues formValues
    
    ServerOrderConfigIds configIds
    /* Number of CPUs for the server order. */
    Integer cpu
    
    ServerOrderFieldLabels fieldLabel
    
    ServerOrderCpuLi cpuLi
    
    ServerOrderMemoryLi memoryLi
    
    ServerOrderBandwidthLi bandwidthLi
    
    ServerOrderIpsLi ipsLi
    
    ServerOrderOsLi osLi
    
    ServerOrderCpLi cpLi
    /* RAID options for the server order. */
    List<ServerOrderRAID> raidLi
}
