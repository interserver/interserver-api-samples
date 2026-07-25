package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class PostWebsiteMigration200Response {
    /* Confirmation message. */
    String text
    /* The support ticket ID created for tracking the migration. Use this with `/tickets/{id}` to check migration progress. */
    Integer ticket
}
