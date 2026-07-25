package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.BackupOrderPostResponseCjParams;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class BackupOrderPostResponse {
    
    Boolean _continue
    
    List<String> errors
    
    String totalCost
    
    String iid
    
    List<String> iids
    
    List<String> realIids
    
    Integer serviceId
    
    String invoiceDescription
    
    BackupOrderPostResponseCjParams cjParams
}
