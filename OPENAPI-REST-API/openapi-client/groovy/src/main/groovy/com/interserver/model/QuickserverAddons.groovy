package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.QuickserverAddonsRow;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class QuickserverAddons {
    /* Table title */
    String title
    
    List<QuickserverAddonsRow> rows
}
