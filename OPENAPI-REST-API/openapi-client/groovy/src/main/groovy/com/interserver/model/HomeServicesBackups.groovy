package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class HomeServicesBackups {
    /* List of backup links. */
    List<String> links
    /* Number of backups. */
    Integer count
}
