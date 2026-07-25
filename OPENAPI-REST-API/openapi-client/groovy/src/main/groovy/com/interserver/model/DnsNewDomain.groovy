package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class DnsNewDomain {
    /* The domain name. */
    String domain
    /* IP Address to point the domain to. */
    String ip
}
