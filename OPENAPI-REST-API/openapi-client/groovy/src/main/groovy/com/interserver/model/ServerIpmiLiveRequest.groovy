package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ServerIpmiLiveRequest {
    /* Your IP Address you wish to connect to the IPMI system from. */
    String ip
    /* Asset ID */
    Integer asset
}
