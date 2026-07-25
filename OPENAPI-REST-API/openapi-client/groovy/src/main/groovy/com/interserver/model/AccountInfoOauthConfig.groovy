package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.AccountInfoOauthConfigProviders;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class AccountInfoOauthConfig {
    
    String callback
    
    AccountInfoOauthConfigProviders providers
}
