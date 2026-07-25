package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class PostOauthCallback200Response {
    /* Whether the user was logged in to an existing account. */
    Boolean login
    /* Whether a new account was created. */
    Boolean signup
    /* Whether the OAuth provider was linked to an existing account. */
    Boolean linked
    /* The account ID associated with the OAuth login. */
    Integer accountId
    /* Error code if additional verification is needed (e.g. `2fa_required`). */
    String errorCode
}
