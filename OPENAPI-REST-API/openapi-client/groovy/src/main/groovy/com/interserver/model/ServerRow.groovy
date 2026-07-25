package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ServerRow {
    /* The id of the server. */
    String serverId
    /* The account lid of the server. */
    String accountLid
    /* The hostname of the server. */
    String serverHostname
    /* The status of the server. */
    String serverStatus
}
