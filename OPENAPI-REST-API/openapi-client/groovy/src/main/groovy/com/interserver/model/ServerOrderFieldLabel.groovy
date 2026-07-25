package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ServerOrderFieldLabel {
    /* Name of the field label. */
    String name
    /* Active status of the field label. */
    Integer active
}
