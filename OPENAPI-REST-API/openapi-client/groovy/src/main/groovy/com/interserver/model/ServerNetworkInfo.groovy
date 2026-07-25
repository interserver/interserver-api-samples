package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.ServerNetworkInfoAssets;
import com.interserver.model.ServerNetworkInfoSwitchports;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class ServerNetworkInfo {
    /* List of VLANs. */
    List<String> vlans
    /* List of IPv6 VLANs. */
    List<String> vlans6
    
    ServerNetworkInfoAssets assets
    
    ServerNetworkInfoSwitchports switchports
}
