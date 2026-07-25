package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.DomainAdminContact;
import com.interserver.model.DomainOwnerContact;
import com.interserver.model.DomainTechContact;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class DomainAllInfoAttributesContactSet {
    
    DomainOwnerContact owner
    
    DomainAdminContact admin
    
    DomainTechContact tech
}
