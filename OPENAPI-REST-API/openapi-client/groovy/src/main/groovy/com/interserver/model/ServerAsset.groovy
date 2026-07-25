package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.ServerLease;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class ServerAsset {
    /* Unique identifier for the asset. */
    Integer id
    /* Order identifier for the asset. */
    String orderId
    /* Hostname associated with the asset. */
    String hostname
    /* Status of the asset. */
    String status
    /* Primary IPv4 address of the asset. */
    String primaryIpv4
    /* Primary IPv6 address of the asset. */
    String primaryIpv6
    /* Datacenter identifier for the asset. */
    String datacenter
    /* Type identifier for the asset. */
    String typeId
    /* Asset tag associated with the asset. */
    String assetTag
    /* Rack identifier for the asset. */
    String rack
    /* Row identifier for the asset. */
    String row
    /* Column identifier for the asset. */
    String col
    /* Starting unit identifier for the asset. */
    String unitStart
    /* Ending unit identifier for the asset. */
    String unitEnd
    /* Subunit identifier for the asset. */
    String unitSub
    /* IPMI MAC address associated with the asset. */
    String ipmiMac
    /* IPMI IP address associated with the asset. */
    String ipmiIp
    /* IPMI working status associated with the asset. */
    String ipmiWorking
    /* Company associated with the asset. */
    String company
    /* Comments associated with the asset. */
    String comments
    /* Make of the asset. */
    String make
    /* Model of the asset. */
    String model
    /* Description of the asset. */
    String description
    /* Customer identifier for the asset. */
    String customerId
    /* External identifier for the asset. */
    String externalId
    /* Billing status of the asset. */
    String billingStatus
    /* Overdue status of the asset. */
    String overdue
    /* Asset identifier for the asset. */
    String assetId
    /* Name of the asset. */
    String assetName
    /* Rack identifier for the asset. */
    String rackId
    /* Rack name associated with the asset. */
    String rackName
    /* Location of the rack associated with the asset. */
    String rackLocation
    /* Size of the rack associated with the asset. */
    String rackSize
    /* X-coordinate of the asset within the rack. */
    String rackX
    /* Y-coordinate of the asset within the rack. */
    String rackY
    /* List of switchports associated with the asset. */
    List<Integer> switchports
    /* List of VLANs associated with the asset. */
    List<String> vlans
    /* List of IPv6 VLANs associated with the asset. */
    List<String> vlans6
    
    ServerLease lease
    /* MAC address associated with the asset. */
    String mac
    /* IPMI admin username associated with the asset. */
    String ipmiAdminUsername
    /* IPMI admin password associated with the asset. */
    String ipmiAdminPassword
    /* IPMI client username associated with the asset. */
    String ipmiClientUsername
    /* IPMI client password associated with the asset. */
    String ipmiClientPassword
    /* IPMI update status associated with the asset. */
    String ipmiUpdated
    /* Timestamp of asset creation. */
    String createTimestamp
    /* Timestamp of asset update. */
    String updateTimestamp
    /* Comment associated with the asset. */
    String comment
}
