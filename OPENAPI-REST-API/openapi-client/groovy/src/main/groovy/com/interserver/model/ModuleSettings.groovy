package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class ModuleSettings {
    
    Integer SERVICE_ID_OFFSET
    
    Boolean USE_REPEAT_INVOICE
    
    Boolean USE_PACKAGES
    
    Integer BILLING_DAYS_OFFSET
    
    String IMGNAME
    
    Integer REPEAT_BILLING_METHOD
    
    Integer DELETE_PENDING_DAYS
    
    Integer SUSPEND_DAYS
    
    Integer SUSPEND_WARNING_DAYS
    
    String TITLE
    
    String MENUNAME
    
    String EMAIL_FROM
    
    String TBLNAME
    
    String TABLE
    
    String TITLE_FIELD
    
    String PREFIX
    
    String TITLE_FIELD2
    
    String TITLE_FIELD3
}
