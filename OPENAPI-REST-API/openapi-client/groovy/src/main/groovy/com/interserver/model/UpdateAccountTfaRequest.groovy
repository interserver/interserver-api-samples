package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class UpdateAccountTfaRequest {
    /* The 6-digit verification code from your authenticator app. */
    String _2faGoogleCode
}
