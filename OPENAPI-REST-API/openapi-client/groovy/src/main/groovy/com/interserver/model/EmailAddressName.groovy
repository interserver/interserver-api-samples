package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class EmailAddressName {
    /* The email address. */
    String email
    /* Name to use for the sending contact. */
    String name
}
