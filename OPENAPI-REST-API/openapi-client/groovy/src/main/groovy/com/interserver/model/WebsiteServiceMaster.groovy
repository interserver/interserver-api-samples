package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class WebsiteServiceMaster {
    /* Website ID for the service master */
    String websiteId
    /* Website name for the service master */
    String websiteName
    /* IP address for the service master */
    String websiteIp
    /* Website type for the service master */
    String websiteType
    /* Availability status for the service master */
    String websiteAvailable
    /* Hard drive size for the service master */
    String websiteHdsize
    /* Free hard drive space for the service master */
    String websiteHdfree
    /* Load for the service master */
    String websiteLoad
    /* Last update date for the service master */
    String websiteLastUpdate
    /* Maximum number of sites for the service master */
    String websiteMaxSites
    /* Order number for the service master */
    String websiteOrder
    /* Partitions for the service master */
    String websitePartitions
    /* DNS server 1 for the service master */
    String websiteDns1
    /* DNS server 2 for the service master */
    String websiteDns2
}
