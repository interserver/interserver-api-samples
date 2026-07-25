package com.interserver.model;

import groovy.transform.Canonical
import com.interserver.model.AccountInfoDataCcs;
import com.interserver.model.AccountInfoDataEmailSettings;
import com.interserver.model.AccountInfoDataExtra;
import com.interserver.model.AccountInfoDataFraudrecord;
import com.interserver.model.AccountInfoMaxMindResponse;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@Canonical
class AccountInfoData {
    
    String group
    
    String address
    
    String city
    
    String country
    
    String disableCc
    
    String fraudrecordScore
    
    String ima
    
    String name
    
    String paymentMethod
    
    String phone
    
    String pin
    
    String state
    
    String status
    
    String zip
    
    String accountId
    
    String accountLid
    
    String address2
    
    String affiliateDockDescription
    
    String affiliateDockTitle
    
    String affiliatePaymentMethod
    
    String affiliatePaypal
    
    String cc
    
    String ccAuto
    
    String ccExp
    
    String ccType
    
    String ccWhitelist
    
    AccountInfoDataCcs ccs
    
    String ccsAdded
    
    String company
    
    String currency
    
    String disableReinstall
    
    String disableReset
    
    String email
    
    String emailAbuse
    
    AccountInfoDataEmailSettings emailSettings
    
    AccountInfoDataExtra extra
    
    String facebookId
    
    String facebookUrl
    
    String firstname
    
    AccountInfoDataFraudrecord fraudrecord
    
    String githubId
    
    String githubUrl
    
    String googleId
    
    String googleUrl
    
    String innertellId
    
    String lastname
    
    String locale
    
    AccountInfoMaxMindResponse maxmind
    
    String maxmindScore
    
    String mbId
    
    String modernbillId
    
    String picture
    
    String referrerCoupon
    
    String resellerMarkup
    
    String username
    
    String sshKey
    
    String sshKeyWrapped
    
    String apiKey
    
    String apiKeyWrapped
    
    String _2faGoogleKey
    
    Boolean _2faGoogleEnabled
    
    Integer _2faGoogle
    
    String _2faGoogleSplit
    
    String _2faGoogleQr
}
