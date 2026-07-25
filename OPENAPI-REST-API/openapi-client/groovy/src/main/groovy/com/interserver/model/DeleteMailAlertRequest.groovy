package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class DeleteMailAlertRequest {
    /* The ID of the alert to delete. */
    Integer alertId
}
