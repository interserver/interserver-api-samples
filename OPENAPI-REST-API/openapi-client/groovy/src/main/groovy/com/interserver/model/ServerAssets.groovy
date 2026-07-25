package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class ServerAssets {
    /* The title of the assets. */
    String title
    /* The size of the assets. */
    Integer size
    /* The type of the assets. */
    String type
    /* The header of the assets table. */
    List<String> header
    /* The rows of the assets table. */
    List<List<String>> rows
}
