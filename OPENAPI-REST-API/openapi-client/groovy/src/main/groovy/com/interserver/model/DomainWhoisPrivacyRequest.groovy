package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class DomainWhoisPrivacyRequest {
    /* Action to perform (enable or disableCancel). */
    String func
    /* CSRF token if the API requires it for the account. */
    String csrfToken
    
    String domainFirstname
    
    String domainLastname
    
    String domainEmail
    
    String domainAddress
    
    String domainAddress2
    
    String domainAddress3
    
    String domainCity
    
    String domainState
    
    String domainZip
    
    String domainCountry
    
    String domainPhone
    
    String domainFax
    
    String domainCompany
    
    String domainExtra
}
