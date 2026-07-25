package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class MailAttachment {
    /* The filename of the attached file. */
    String filename
    /* The file contents base64 encoded */
    String data
}
