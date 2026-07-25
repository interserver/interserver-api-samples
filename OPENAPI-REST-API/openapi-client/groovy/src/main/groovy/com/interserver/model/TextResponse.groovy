package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class TextResponse {
    /* Response text */
    String text
    /* Response message */
    String message
}
