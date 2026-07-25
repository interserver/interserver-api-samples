package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class QueueResponse {
    /* Response text */
    String text
    /* The Queue ID attached to the action. */
    Integer queueId
}
