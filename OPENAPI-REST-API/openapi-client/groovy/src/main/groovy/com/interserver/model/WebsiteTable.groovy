package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.WebsiteTableRow;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class WebsiteTable {
    /* Title of the table */
    String title
    
    List<WebsiteTableRow> rows
}
