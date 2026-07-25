package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.BackupIPInfoRow;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class BackupIPInfo {
    /* Title of the IP information table. */
    String title
    
    List<BackupIPInfoRow> rows
}
