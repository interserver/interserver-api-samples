package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class GetAccountLocales200ResponseValue {
    /* English display name of the locale. */
    String name
    /* Display name of the locale in its own language. */
    String localName
}
