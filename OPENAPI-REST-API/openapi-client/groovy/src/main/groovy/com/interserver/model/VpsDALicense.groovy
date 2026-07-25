package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class VpsDALicense {
    /* License tier name. */
    String name
    /* License tier sub-name. */
    String subName
    /* Monthly cost in cents. */
    Integer cost
    /* Image path for the disabled state icon. */
    String imgDisabled
    /* Image path for the active state icon. */
    String imgActive
}
