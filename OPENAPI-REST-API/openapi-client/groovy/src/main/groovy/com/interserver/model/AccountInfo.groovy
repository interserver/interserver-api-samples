package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.AccountInfoCountryCurrencies;
import com.interserver.model.AccountInfoData;
import com.interserver.model.AccountInfoLimits;
import com.interserver.model.AccountInfoOauthConfig;
import com.interserver.model.AccountInfoOauthproviders;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;

@Canonical
class AccountInfo {
    
    String custid
    
    String ima
    
    AccountInfoData data
    
    String ip
    
    AccountInfoOauthproviders oauthproviders
    
    AccountInfoOauthConfig oauthconfig
    
    List<String> oauthadapters
    
    AccountInfoLimits limits
    
    String language
    
    AccountInfoCountryCurrencies countryCurrencies
    
    Boolean enableLocales
    
    Boolean enableCurrencies
    
    String gravatar
}
