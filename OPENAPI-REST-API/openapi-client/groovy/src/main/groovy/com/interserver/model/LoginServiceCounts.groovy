package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class LoginServiceCounts {
    /* The number of total VPS orders that have been placed in our billing system. */
    Integer vps
    /* The number of total website orders that have been placed in our billing system. */
    Integer websites
    /* The number of total server orders that have been placed in our billing system. */
    Integer servers
}
