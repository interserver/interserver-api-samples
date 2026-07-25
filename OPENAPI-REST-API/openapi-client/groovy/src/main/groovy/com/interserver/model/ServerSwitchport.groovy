package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class ServerSwitchport {
    /* Unique identifier for the switchport. */
    Integer switchportId
    /* Unique identifier for the switch associated with the switchport. */
    String switchId
    /* Name of the switch associated with the switchport. */
    String _switch
    /* Port name on the switch. */
    String port
    /* Blade name associated with the port. */
    String blade
    /* Port identifier. */
    String justport
    /* Identifier for the graph associated with the switchport. */
    String graphId
    /* Unique identifier of the asset associated with the switchport. */
    Integer assetId
    /* List of VLANs associated with the switchport. */
    List<String> vlans
    /* List of IPv6 VLANs associated with the switchport. */
    List<String> vlans6
}
