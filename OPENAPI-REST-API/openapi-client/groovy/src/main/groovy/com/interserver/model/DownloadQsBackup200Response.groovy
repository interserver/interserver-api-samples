package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class DownloadQsBackup200Response {
    
    String text
    /* A pre-signed download URL valid for 24 hours. */
    String url
}
