package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class QsOrderRequest {
    /* QuickServer plan/server id from getNewQs. */
    Integer server
    /* Root password for the QuickServer. */
    String password
    /* Terms-of-service acceptance. Must be true to place the order. */
    Boolean tos
    /* OS template file name from getNewQs (falls back to a default if unrecognized). */
    String os = ""
    /* Free-form note saved on the service row. */
    String comment = ""
}
