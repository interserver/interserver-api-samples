package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.ServerBillingDetails;
import com.interserver.model.ServerClientLink;
import com.interserver.model.ServerExtraInfoTables;
import com.interserver.model.ServerLocations;
import com.interserver.model.ServerNetworkInfo;
import com.interserver.model.ServerServiceInfo;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class Server {
    
    Boolean ipmiAuth
    
    List<ServerClientLink> clientLinks
    
    ServerBillingDetails billingDetails
    
    String custCurrency
    
    String custCurrencySymbol
    
    String _package
    
    List<String> serviceExtra
    
    ServerLocations locations
    
    ServerNetworkInfo networkInfo
    
    ServerExtraInfoTables extraInfoTables
    
    ServerServiceInfo serviceInfo
}
