package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class ServersBuyNowError {
    /* Always false for error responses. */
    Boolean success
    /* Human-readable error summary. */
    String text
    /* List of specific validation error messages. */
    List<String> errors
}
