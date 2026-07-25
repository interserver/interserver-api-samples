package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.QuickserverAddons;
import com.interserver.model.QuickserverIpInfo;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class QuickserverExtraInfoTables {
    
    QuickserverIpInfo ipInfo
    
    QuickserverAddons addons
}
