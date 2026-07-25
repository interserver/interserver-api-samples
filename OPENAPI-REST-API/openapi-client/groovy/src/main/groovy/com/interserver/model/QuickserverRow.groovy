package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class QuickserverRow {
    /* The id of the qs. */
    String qsId
    /* The name of the qs. */
    String qsName
    /* The cost of the qs. */
    String cost
    /* The hostname of the qs. */
    String qsHostname
    /* The status of the qs. */
    String qsStatus
    /* The comment of the qs. */
    String qsComment
}
