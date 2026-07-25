package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class HomeTicketStatus {
    /* Count of open tickets. */
    Integer open
    /* Count of tickets on hold. */
    Integer onHold
}
