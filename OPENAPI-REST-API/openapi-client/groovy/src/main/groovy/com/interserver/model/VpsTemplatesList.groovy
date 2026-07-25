package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.VpsTemplateRow;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class VpsTemplatesList {
    /* A listing of the templates. */
    List<VpsTemplateRow> templates
}
