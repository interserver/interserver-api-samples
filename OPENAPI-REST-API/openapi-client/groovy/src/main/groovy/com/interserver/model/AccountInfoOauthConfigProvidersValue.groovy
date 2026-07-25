package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class AccountInfoOauthConfigProvidersValue {
    
    Boolean enabled
    
    Boolean linked
    
    String account
    
    String url
}
