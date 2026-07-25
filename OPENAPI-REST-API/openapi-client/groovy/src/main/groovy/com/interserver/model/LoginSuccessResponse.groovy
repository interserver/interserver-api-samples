package com.interserver.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class LoginSuccessResponse {
    
    String sessionId
    
    Integer accountId
    
    String accountLid
    
    String ima
    
    String gravatar
}
