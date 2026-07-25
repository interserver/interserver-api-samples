package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class CaptchaResponse {
    /* The base64 encoded captcha image. */
    String captcha
}
