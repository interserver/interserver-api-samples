package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.LoginServiceCounts;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class LoginInfo {
    /* A base64 encoded image to use for rendering the alternateive captcha. */
    String captcha
    
    LoginServiceCounts counts
    /* A logo image url. */
    String logo
    /* The desired langauge to render the site with. */
    String language
}
