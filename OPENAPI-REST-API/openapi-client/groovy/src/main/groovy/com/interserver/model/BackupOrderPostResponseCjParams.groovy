package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class BackupOrderPostResponseCjParams {
    
    String containerTagId
    
    String CID
    
    String OID
    
    String TYPE
    
    String ITEM1
    
    String AMT1
    
    Integer QTY1
    
    String CURRENCY
}
