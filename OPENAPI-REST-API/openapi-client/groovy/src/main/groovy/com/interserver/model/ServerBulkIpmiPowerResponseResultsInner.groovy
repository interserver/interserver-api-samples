package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ServerBulkIpmiPowerResponseResultsInner {
    /* Server ID this result corresponds to. */
    Integer id
    /* Asset ID that was queried for the server (omitted on errors before asset selection). */
    Integer asset
    /* IPMI power-status output for this server. */
    String text
    /* Error message for this server, if processing failed (mutually exclusive with `text`). */
    String error
}
