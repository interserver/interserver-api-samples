package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.QuickserverBillingDetails;
import com.interserver.model.QuickserverClientLink;
import com.interserver.model.QuickserverExtraInfoTables;
import com.interserver.model.QuickserverServiceExtra;
import com.interserver.model.QuickserverServiceInfo;
import com.interserver.model.QuickserverServiceMaster;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class Quickserver {
    
    QuickserverServiceInfo serviceInfo
    
    List<QuickserverClientLink> clientLinks
    
    QuickserverBillingDetails billingDetails
    /* Currency of the customer */
    String custCurrency
    /* Currency symbol of the customer */
    String custCurrencySymbol
    
    QuickserverServiceMaster serviceMaster
    /* Package name */
    String _package
    /* Operating system template */
    String osTemplate
    
    QuickserverServiceExtra serviceExtra
    
    QuickserverExtraInfoTables extraInfoTables
    /* CPU graph data */
    String cpuGraphData
    /* Bandwidth x-axis data */
    String bandwidthXaxis
    /* Bandwidth y-axis data */
    String bandwidthYaxis
    /* Module information */
    String module
    /* Authentication token */
    String token
    /* Used disk space */
    String serviceDiskUsed
    /* Total disk space */
    String serviceDiskTotal
    /* Disk usage percentage */
    BigDecimal diskPercentage
    /* Memory information */
    String memory
    /* HDD information */
    String hdd
    
    List<String> serviceOverviewExtra
}
