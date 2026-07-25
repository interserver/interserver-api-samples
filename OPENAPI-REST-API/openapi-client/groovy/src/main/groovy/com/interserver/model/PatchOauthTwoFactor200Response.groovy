package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class PatchOauthTwoFactor200Response {
    /* Whether the 2FA verification succeeded and the user is now logged in. */
    Boolean login
}
