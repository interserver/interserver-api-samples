package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.VpsIPInfoRow;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class VpsIPInfo {
    /* Title of the table */
    String title
    
    List<VpsIPInfoRow> rows
}
