package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.HomeServicesLicensesLinks;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class HomeServicesLicenses {
    
    HomeServicesLicensesLinks links
    /* Number of licenses. */
    Integer count
}
