package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class PostOauthCallbackRequest {
    /* The OAuth provider name (e.g. `Google`). */
    String provider
}
