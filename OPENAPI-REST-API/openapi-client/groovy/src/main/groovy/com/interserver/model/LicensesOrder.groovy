package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.LicensesOrderPackageCosts;
import com.interserver.model.LicensesOrderServiceCategories;
import com.interserver.model.LicensesOrderServiceTypes;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class LicensesOrder {
    
    LicensesOrderServiceCategories serviceCategories
    
    LicensesOrderPackageCosts packageCosts
    
    LicensesOrderServiceTypes serviceTypes
}
