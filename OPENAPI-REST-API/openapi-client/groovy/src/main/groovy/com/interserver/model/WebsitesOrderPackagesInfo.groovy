package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class WebsitesOrderPackagesInfo {
    /* The ID of the package. */
    String servicesId
    /* The name of the package. */
    String servicesName
    /* The cost of the package. */
    String servicesCost
    /* The category of the package. */
    String servicesCategory
    /* Indicates if the package is buyable (1 for yes, 0 for no). */
    String servicesBuyable
    /* The type of the package. */
    String servicesType
    /* The module of the package. */
    String servicesModule
    /* Description of the package. */
    String servicesDescription
    /* Additional field 1 for the package. */
    String servicesField1
    /* Additional field 2 for the package. */
    String servicesField2
    /* HTML content for the package. */
    String servicesHtml
    /* URL for more information about the package. */
    String servicesMoreinfoUrl
    /* Indicates if the package is hidden (1 for yes, 0 for no). */
    String servicesHidden
}
