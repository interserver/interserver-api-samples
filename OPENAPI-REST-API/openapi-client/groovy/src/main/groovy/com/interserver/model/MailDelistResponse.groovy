package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class MailDelistResponse {
    /* Mail service ID. */
    Integer id
    /* Local blocklist entries. */
    List<Object> local
    /* MailBaby trap block entries. */
    List<Object> mbtrap
    /* Subject-based block entries. */
    List<Object> subject
    /* Manually blocked entries. */
    List<Object> manual
}
