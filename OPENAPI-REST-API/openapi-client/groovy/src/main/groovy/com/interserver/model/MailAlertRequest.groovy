package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class MailAlertRequest {
    /* Alert type identifier. */
    String type
    /* Alert value or threshold. */
    String value
    /* Email address to notify. */
    String to
    /* Whether the alert is enabled. */
    String enabled
}
