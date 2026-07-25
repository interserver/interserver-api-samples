package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class VpsTemplateRow {
    
    String templateId
    
    String templateType
    
    String templateOs
    
    String templateVersion
    
    String templateBits
    
    String templateFile
    
    String templateAvailable
    
    String templateName
    
    String templateDir
}
