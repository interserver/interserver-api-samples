package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class TemplateRequest {
    /* OS Template Filename */
    String template
    /* Password for this account. */
    String localPassword
    /* Password for Root / Administrator Account. */
    String password
}
