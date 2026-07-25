package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.AccountInfoMaxMindResponseRiskScore;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class AccountInfoMaxMindResponse {
    
    String distance
    
    String countryMatch
    
    String countryCode
    
    String freeMail
    
    String anonymousProxy
    
    String score
    
    String binMatch
    
    String binCountry
    
    String err
    
    String proxyScore
    
    String ipRegion
    
    String ipCity
    
    String ipLatitude
    
    String ipLongitude
    
    String binName
    
    String ipIsp
    
    String ipOrg
    
    String binNameMatch
    
    String binPhoneMatch
    
    String binPhone
    
    String custPhoneInBillingLoc
    
    String highRiskCountry
    
    String queriesRemaining
    
    String cityPostalMatch
    
    String shipCityPostalMatch
    
    String maxmindID
    
    String ipAsnum
    
    String ipUserType
    
    String ipCountryConf
    
    String ipRegionConf
    
    String ipCityConf
    
    String ipPostalCode
    
    String ipPostalConf
    
    String ipAccuracyRadius
    
    String ipNetSpeedCell
    
    String ipMetroCode
    
    String ipAreaCode
    
    String ipTimeZone
    
    String ipRegionName
    
    String ipDomain
    
    String ipCountryName
    
    String ipContinentCode
    
    String ipCorporateProxy
    
    String carderEmail
    
    String highRiskUsername
    
    String highRiskPassword
    
    AccountInfoMaxMindResponseRiskScore riskScore
    
    String isTransProxy
    
    String prepaid
    
    String minfraudVersion
    
    String serviceLevel
    
    String explanation
    
    String femaleName
}
