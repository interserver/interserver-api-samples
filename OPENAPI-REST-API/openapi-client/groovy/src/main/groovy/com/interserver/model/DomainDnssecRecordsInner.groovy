package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class DomainDnssecRecordsInner {
    
    String algorithm
    
    String digestType
    
    String digest
    
    String keyTag
}
