package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class PatchOauthTwoFactorRequest {
    /* The account ID returned from the POST callback. */
    Integer accountId
    /* The 6-digit two-factor authentication code. */
    String code
}
