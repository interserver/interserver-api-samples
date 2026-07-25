package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.VpsBillingDetails;
import com.interserver.model.VpsCPData;
import com.interserver.model.VpsClientLink;
import com.interserver.model.VpsDAData;
import com.interserver.model.VpsExtraInfoTables;
import com.interserver.model.VpsPlesk12Data;
import com.interserver.model.VpsServiceAddons;
import com.interserver.model.VpsServiceExtra;
import com.interserver.model.VpsServiceInfo;
import com.interserver.model.VpsServiceMaster;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.jackson.nullable.JsonNullable;

@Canonical
class Vps {
    
    VpsServiceInfo serviceInfo
    
    List<VpsClientLink> clientLinks
    
    VpsBillingDetails billingDetails
    
    String custCurrency
    
    String custCurrencySymbol
    
    VpsServiceMaster serviceMaster
    
    String _package
    
    VpsServiceExtra serviceExtra
    
    VpsExtraInfoTables extraInfoTables
    
    String module
    
    String token
    
    Integer daLink
    
    Integer srLink
    
    VpsCPData cpData
    
    VpsDAData daData
    
    VpsPlesk12Data plesk12Data
    
    VpsServiceAddons serviceAddons
    
    String osTemplate
    
    Object cpuGraphData = null
}
