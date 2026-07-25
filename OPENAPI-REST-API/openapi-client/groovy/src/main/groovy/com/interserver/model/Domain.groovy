package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.BackupExtraInfoTables;
import com.interserver.model.DomainAllInfo;
import com.interserver.model.DomainBillingDetails;
import com.interserver.model.DomainBillingExtra;
import com.interserver.model.DomainClientLink;
import com.interserver.model.DomainContactDetails;
import com.interserver.model.DomainServiceInfo;
import com.interserver.model.DomainServiceType;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

@Canonical
class Domain {
    
    DomainServiceInfo serviceInfo
    
    Map<String, DomainServiceType> serviceTypes
    
    List<DomainClientLink> clientLinks
    
    DomainBillingDetails billingDetails
    
    String custCurrency
    
    String custCurrencySymbol
    
    DomainBillingExtra serviceExtra
    
    BackupExtraInfoTables extraInfoTables
    
    DomainServiceType serviceType
    
    DomainContactDetails contactDetails
    
    String pwarning
    
    String transferInfo
    
    Boolean errors
    
    List<String> domainLogs
    
    DomainAllInfo allInfo
    
    String registrarStatus
    
    String locked
    
    String whoisPrivacy
    
    String autoRenew
}
