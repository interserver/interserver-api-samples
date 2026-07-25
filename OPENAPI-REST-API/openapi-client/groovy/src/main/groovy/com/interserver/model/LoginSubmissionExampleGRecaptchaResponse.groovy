package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.LoginSubmissionExampleGRecaptchaResponseDep;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class LoginSubmissionExampleGRecaptchaResponse {
    
    Boolean vIsShallow
    
    LoginSubmissionExampleGRecaptchaResponseDep dep
    
    Boolean vIsRef
    
    String rawValue
    
    String value
}
