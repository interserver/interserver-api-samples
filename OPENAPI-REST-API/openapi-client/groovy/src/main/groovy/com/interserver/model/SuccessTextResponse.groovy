package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class SuccessTextResponse {
    /* Indicates whether or not the command was successful or not. */
    Boolean success
    /* Text associated with the response. */
    String text
    /* Optional Action relating to the response. */
    String action
}
