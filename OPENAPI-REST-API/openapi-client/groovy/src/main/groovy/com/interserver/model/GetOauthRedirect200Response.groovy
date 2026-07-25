package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class GetOauthRedirect200Response {
    /* The URL to redirect the user to for OAuth authentication. */
    String redirectUrl
}
