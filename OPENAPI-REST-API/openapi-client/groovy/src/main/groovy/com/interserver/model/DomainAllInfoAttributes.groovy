package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.DomainAllInfoAttributesContactSet;
import com.interserver.model.DomainNameServer;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class DomainAllInfoAttributes {
    
    DomainAllInfoAttributesContactSet contactSet
    
    String registryCreatedate
    
    String registryExpiredate
    
    String tldData
    
    String letExpire
    
    String autoRenew
    
    String sponsoringRsp
    
    String gdprConsentStatus
    
    List<DomainNameServer> nameserverList
    
    String registryUpdatedate
    
    String affiliateId
    
    String expiredate
}
