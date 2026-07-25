package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.BackupsOrderPackageCosts;
import com.interserver.model.BackupsOrderServiceTypes;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class BackupsOrder {
    
    BackupsOrderPackageCosts packageCosts
    
    BackupsOrderServiceTypes serviceTypes
}
