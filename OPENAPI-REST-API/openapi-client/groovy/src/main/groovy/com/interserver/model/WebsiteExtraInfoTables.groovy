package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.WebsiteTable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class WebsiteExtraInfoTables {
    
    WebsiteTable links
    
    WebsiteTable preview
    
    WebsiteTable dns
}
