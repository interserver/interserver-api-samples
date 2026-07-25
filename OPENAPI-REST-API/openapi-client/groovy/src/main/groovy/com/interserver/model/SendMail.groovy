package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class SendMail {
    /* The Contact whom is the primary recipient of this email. */
    String to
    /* The contact whom is the this email is from. */
    String from
    /* The subject or title of the email */
    String subject
    /* The main email contents. */
    String body
}
