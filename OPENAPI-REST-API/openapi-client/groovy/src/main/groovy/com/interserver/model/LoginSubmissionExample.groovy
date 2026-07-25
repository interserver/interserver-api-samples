package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.LoginSubmissionExampleGRecaptchaResponse;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class LoginSubmissionExample {
    
    String login
    
    String passwd
    
    String remember
    
    LoginSubmissionExampleGRecaptchaResponse gRecaptchaResponse
    /* Two Factor Authentication Response. */
    String tfa
}
