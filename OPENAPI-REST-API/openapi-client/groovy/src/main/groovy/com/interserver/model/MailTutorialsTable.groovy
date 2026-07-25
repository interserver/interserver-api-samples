package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.MailTutorialsTableRow;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class MailTutorialsTable {
    /* The title of the tutorials table. */
    String title
    /* The rows of the tutorials table. */
    List<MailTutorialsTableRow> rows
}
