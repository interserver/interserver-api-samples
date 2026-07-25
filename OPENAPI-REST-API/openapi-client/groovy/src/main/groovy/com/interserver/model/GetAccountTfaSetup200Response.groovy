package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class GetAccountTfaSetup200Response {
    /* Base64-encoded secret key for TOTP setup. */
    String _2faGoogleKey
    /* Human-readable formatted key (chunks of 4 characters). */
    String _2faGoogleSplit
}
