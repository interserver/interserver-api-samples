package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.AccountInfoDataCcs;
import com.interserver.myadmin.model.AccountInfoDataEmailSettings;
import com.interserver.myadmin.model.AccountInfoDataExtra;
import com.interserver.myadmin.model.AccountInfoDataFraudrecord;
import com.interserver.myadmin.model.AccountInfoMaxMindResponse;
import io.swagger.v3.oas.annotations.media.Schema;
import org.springframework.validation.annotation.Validated;
import org.openapitools.jackson.nullable.JsonNullable;
import io.swagger.configuration.NotUndefined;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.Nulls;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * Detailed account profile data including contact info, billing, API keys, and security settings.
 */
@Schema(description = "Detailed account profile data including contact info, billing, API keys, and security settings.")
@Validated
@NotUndefined



public class AccountInfoData   {
  @JsonProperty("group")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String group = null;

  @JsonProperty("address")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String address = null;

  @JsonProperty("city")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String city = null;

  @JsonProperty("country")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String country = null;

  @JsonProperty("disable_cc")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String disableCc = null;

  @JsonProperty("fraudrecord_score")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String fraudrecordScore = null;

  @JsonProperty("ima")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ima = null;

  @JsonProperty("name")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String name = null;

  @JsonProperty("payment_method")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String paymentMethod = null;

  @JsonProperty("phone")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String phone = null;

  @JsonProperty("pin")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String pin = null;

  @JsonProperty("state")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String state = null;

  @JsonProperty("status")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String status = null;

  @JsonProperty("zip")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String zip = null;

  @JsonProperty("account_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String accountId = null;

  @JsonProperty("account_lid")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String accountLid = null;

  @JsonProperty("address2")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String address2 = null;

  @JsonProperty("affiliate_dock_description")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String affiliateDockDescription = null;

  @JsonProperty("affiliate_dock_title")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String affiliateDockTitle = null;

  @JsonProperty("affiliate_payment_method")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String affiliatePaymentMethod = null;

  @JsonProperty("affiliate_paypal")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String affiliatePaypal = null;

  @JsonProperty("cc")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String cc = null;

  @JsonProperty("cc_auto")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ccAuto = null;

  @JsonProperty("cc_exp")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ccExp = null;

  @JsonProperty("cc_type")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ccType = null;

  @JsonProperty("cc_whitelist")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ccWhitelist = null;

  @JsonProperty("ccs")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private AccountInfoDataCcs ccs = null;

  @JsonProperty("ccs_added")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ccsAdded = null;

  @JsonProperty("company")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String company = null;

  @JsonProperty("currency")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String currency = null;

  @JsonProperty("disable_reinstall")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String disableReinstall = null;

  @JsonProperty("disable_reset")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String disableReset = null;

  @JsonProperty("email")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String email = null;

  @JsonProperty("email_abuse")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String emailAbuse = null;

  @JsonProperty("email_settings")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private AccountInfoDataEmailSettings emailSettings = null;

  @JsonProperty("extra")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private AccountInfoDataExtra extra = null;

  @JsonProperty("facebook_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String facebookId = null;

  @JsonProperty("facebook_url")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String facebookUrl = null;

  @JsonProperty("firstname")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String firstname = null;

  @JsonProperty("fraudrecord")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private AccountInfoDataFraudrecord fraudrecord = null;

  @JsonProperty("github_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String githubId = null;

  @JsonProperty("github_url")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String githubUrl = null;

  @JsonProperty("google_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String googleId = null;

  @JsonProperty("google_url")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String googleUrl = null;

  @JsonProperty("innertell_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String innertellId = null;

  @JsonProperty("lastname")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String lastname = null;

  @JsonProperty("locale")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String locale = null;

  @JsonProperty("maxmind")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private AccountInfoMaxMindResponse maxmind = null;

  @JsonProperty("maxmind_score")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String maxmindScore = null;

  @JsonProperty("mb_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String mbId = null;

  @JsonProperty("modernbill_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String modernbillId = null;

  @JsonProperty("picture")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String picture = null;

  @JsonProperty("referrer_coupon")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String referrerCoupon = null;

  @JsonProperty("reseller_markup")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String resellerMarkup = null;

  @JsonProperty("username")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String username = null;

  @JsonProperty("ssh_key")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String sshKey = null;

  @JsonProperty("ssh_key_wrapped")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String sshKeyWrapped = null;

  @JsonProperty("api_key")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String apiKey = null;

  @JsonProperty("api_key_wrapped")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String apiKeyWrapped = null;

  @JsonProperty("2fa_google_key")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String _2faGoogleKey = null;

  @JsonProperty("2fa_google_enabled")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Boolean _2faGoogleEnabled = null;

  @JsonProperty("2fa_google")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer _2faGoogle = null;

  @JsonProperty("2fa_google_split")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String _2faGoogleSplit = null;

  @JsonProperty("2fa_google_qr")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String _2faGoogleQr = null;


  public AccountInfoData group(String group) { 

    this.group = group;
    return this;
  }

  /**
   * Get group
   * @return group
   **/
  
  @Schema(description = "")
  
  public String getGroup() {  
    return group;
  }



  public void setGroup(String group) { 
    this.group = group;
  }

  public AccountInfoData address(String address) { 

    this.address = address;
    return this;
  }

  /**
   * Get address
   * @return address
   **/
  
  @Schema(description = "")
  
  public String getAddress() {  
    return address;
  }



  public void setAddress(String address) { 
    this.address = address;
  }

  public AccountInfoData city(String city) { 

    this.city = city;
    return this;
  }

  /**
   * Get city
   * @return city
   **/
  
  @Schema(description = "")
  
  public String getCity() {  
    return city;
  }



  public void setCity(String city) { 
    this.city = city;
  }

  public AccountInfoData country(String country) { 

    this.country = country;
    return this;
  }

  /**
   * Get country
   * @return country
   **/
  
  @Schema(description = "")
  
  public String getCountry() {  
    return country;
  }



  public void setCountry(String country) { 
    this.country = country;
  }

  public AccountInfoData disableCc(String disableCc) { 

    this.disableCc = disableCc;
    return this;
  }

  /**
   * Get disableCc
   * @return disableCc
   **/
  
  @Schema(description = "")
  
  public String getDisableCc() {  
    return disableCc;
  }



  public void setDisableCc(String disableCc) { 
    this.disableCc = disableCc;
  }

  public AccountInfoData fraudrecordScore(String fraudrecordScore) { 

    this.fraudrecordScore = fraudrecordScore;
    return this;
  }

  /**
   * Get fraudrecordScore
   * @return fraudrecordScore
   **/
  
  @Schema(description = "")
  
  public String getFraudrecordScore() {  
    return fraudrecordScore;
  }



  public void setFraudrecordScore(String fraudrecordScore) { 
    this.fraudrecordScore = fraudrecordScore;
  }

  public AccountInfoData ima(String ima) { 

    this.ima = ima;
    return this;
  }

  /**
   * Get ima
   * @return ima
   **/
  
  @Schema(description = "")
  
  public String getIma() {  
    return ima;
  }



  public void setIma(String ima) { 
    this.ima = ima;
  }

  public AccountInfoData name(String name) { 

    this.name = name;
    return this;
  }

  /**
   * Get name
   * @return name
   **/
  
  @Schema(description = "")
  
  public String getName() {  
    return name;
  }



  public void setName(String name) { 
    this.name = name;
  }

  public AccountInfoData paymentMethod(String paymentMethod) { 

    this.paymentMethod = paymentMethod;
    return this;
  }

  /**
   * Get paymentMethod
   * @return paymentMethod
   **/
  
  @Schema(description = "")
  
  public String getPaymentMethod() {  
    return paymentMethod;
  }



  public void setPaymentMethod(String paymentMethod) { 
    this.paymentMethod = paymentMethod;
  }

  public AccountInfoData phone(String phone) { 

    this.phone = phone;
    return this;
  }

  /**
   * Get phone
   * @return phone
   **/
  
  @Schema(description = "")
  
  public String getPhone() {  
    return phone;
  }



  public void setPhone(String phone) { 
    this.phone = phone;
  }

  public AccountInfoData pin(String pin) { 

    this.pin = pin;
    return this;
  }

  /**
   * Get pin
   * @return pin
   **/
  
  @Schema(description = "")
  
  public String getPin() {  
    return pin;
  }



  public void setPin(String pin) { 
    this.pin = pin;
  }

  public AccountInfoData state(String state) { 

    this.state = state;
    return this;
  }

  /**
   * Get state
   * @return state
   **/
  
  @Schema(description = "")
  
  public String getState() {  
    return state;
  }



  public void setState(String state) { 
    this.state = state;
  }

  public AccountInfoData status(String status) { 

    this.status = status;
    return this;
  }

  /**
   * Get status
   * @return status
   **/
  
  @Schema(description = "")
  
  public String getStatus() {  
    return status;
  }



  public void setStatus(String status) { 
    this.status = status;
  }

  public AccountInfoData zip(String zip) { 

    this.zip = zip;
    return this;
  }

  /**
   * Get zip
   * @return zip
   **/
  
  @Schema(description = "")
  
  public String getZip() {  
    return zip;
  }



  public void setZip(String zip) { 
    this.zip = zip;
  }

  public AccountInfoData accountId(String accountId) { 

    this.accountId = accountId;
    return this;
  }

  /**
   * Get accountId
   * @return accountId
   **/
  
  @Schema(description = "")
  
  public String getAccountId() {  
    return accountId;
  }



  public void setAccountId(String accountId) { 
    this.accountId = accountId;
  }

  public AccountInfoData accountLid(String accountLid) { 

    this.accountLid = accountLid;
    return this;
  }

  /**
   * Get accountLid
   * @return accountLid
   **/
  
  @Schema(description = "")
  
  public String getAccountLid() {  
    return accountLid;
  }



  public void setAccountLid(String accountLid) { 
    this.accountLid = accountLid;
  }

  public AccountInfoData address2(String address2) { 

    this.address2 = address2;
    return this;
  }

  /**
   * Get address2
   * @return address2
   **/
  
  @Schema(description = "")
  
  public String getAddress2() {  
    return address2;
  }



  public void setAddress2(String address2) { 
    this.address2 = address2;
  }

  public AccountInfoData affiliateDockDescription(String affiliateDockDescription) { 

    this.affiliateDockDescription = affiliateDockDescription;
    return this;
  }

  /**
   * Get affiliateDockDescription
   * @return affiliateDockDescription
   **/
  
  @Schema(description = "")
  
  public String getAffiliateDockDescription() {  
    return affiliateDockDescription;
  }



  public void setAffiliateDockDescription(String affiliateDockDescription) { 
    this.affiliateDockDescription = affiliateDockDescription;
  }

  public AccountInfoData affiliateDockTitle(String affiliateDockTitle) { 

    this.affiliateDockTitle = affiliateDockTitle;
    return this;
  }

  /**
   * Get affiliateDockTitle
   * @return affiliateDockTitle
   **/
  
  @Schema(description = "")
  
  public String getAffiliateDockTitle() {  
    return affiliateDockTitle;
  }



  public void setAffiliateDockTitle(String affiliateDockTitle) { 
    this.affiliateDockTitle = affiliateDockTitle;
  }

  public AccountInfoData affiliatePaymentMethod(String affiliatePaymentMethod) { 

    this.affiliatePaymentMethod = affiliatePaymentMethod;
    return this;
  }

  /**
   * Get affiliatePaymentMethod
   * @return affiliatePaymentMethod
   **/
  
  @Schema(description = "")
  
  public String getAffiliatePaymentMethod() {  
    return affiliatePaymentMethod;
  }



  public void setAffiliatePaymentMethod(String affiliatePaymentMethod) { 
    this.affiliatePaymentMethod = affiliatePaymentMethod;
  }

  public AccountInfoData affiliatePaypal(String affiliatePaypal) { 

    this.affiliatePaypal = affiliatePaypal;
    return this;
  }

  /**
   * Get affiliatePaypal
   * @return affiliatePaypal
   **/
  
  @Schema(description = "")
  
  public String getAffiliatePaypal() {  
    return affiliatePaypal;
  }



  public void setAffiliatePaypal(String affiliatePaypal) { 
    this.affiliatePaypal = affiliatePaypal;
  }

  public AccountInfoData cc(String cc) { 

    this.cc = cc;
    return this;
  }

  /**
   * Get cc
   * @return cc
   **/
  
  @Schema(description = "")
  
  public String getCc() {  
    return cc;
  }



  public void setCc(String cc) { 
    this.cc = cc;
  }

  public AccountInfoData ccAuto(String ccAuto) { 

    this.ccAuto = ccAuto;
    return this;
  }

  /**
   * Get ccAuto
   * @return ccAuto
   **/
  
  @Schema(description = "")
  
  public String getCcAuto() {  
    return ccAuto;
  }



  public void setCcAuto(String ccAuto) { 
    this.ccAuto = ccAuto;
  }

  public AccountInfoData ccExp(String ccExp) { 

    this.ccExp = ccExp;
    return this;
  }

  /**
   * Get ccExp
   * @return ccExp
   **/
  
  @Schema(description = "")
  
  public String getCcExp() {  
    return ccExp;
  }



  public void setCcExp(String ccExp) { 
    this.ccExp = ccExp;
  }

  public AccountInfoData ccType(String ccType) { 

    this.ccType = ccType;
    return this;
  }

  /**
   * Get ccType
   * @return ccType
   **/
  
  @Schema(description = "")
  
  public String getCcType() {  
    return ccType;
  }



  public void setCcType(String ccType) { 
    this.ccType = ccType;
  }

  public AccountInfoData ccWhitelist(String ccWhitelist) { 

    this.ccWhitelist = ccWhitelist;
    return this;
  }

  /**
   * Get ccWhitelist
   * @return ccWhitelist
   **/
  
  @Schema(description = "")
  
  public String getCcWhitelist() {  
    return ccWhitelist;
  }



  public void setCcWhitelist(String ccWhitelist) { 
    this.ccWhitelist = ccWhitelist;
  }

  public AccountInfoData ccs(AccountInfoDataCcs ccs) { 

    this.ccs = ccs;
    return this;
  }

  /**
   * Get ccs
   * @return ccs
   **/
  
  @Schema(description = "")
  
@Valid
  public AccountInfoDataCcs getCcs() {  
    return ccs;
  }



  public void setCcs(AccountInfoDataCcs ccs) { 
    this.ccs = ccs;
  }

  public AccountInfoData ccsAdded(String ccsAdded) { 

    this.ccsAdded = ccsAdded;
    return this;
  }

  /**
   * Get ccsAdded
   * @return ccsAdded
   **/
  
  @Schema(description = "")
  
  public String getCcsAdded() {  
    return ccsAdded;
  }



  public void setCcsAdded(String ccsAdded) { 
    this.ccsAdded = ccsAdded;
  }

  public AccountInfoData company(String company) { 

    this.company = company;
    return this;
  }

  /**
   * Get company
   * @return company
   **/
  
  @Schema(description = "")
  
  public String getCompany() {  
    return company;
  }



  public void setCompany(String company) { 
    this.company = company;
  }

  public AccountInfoData currency(String currency) { 

    this.currency = currency;
    return this;
  }

  /**
   * Get currency
   * @return currency
   **/
  
  @Schema(description = "")
  
  public String getCurrency() {  
    return currency;
  }



  public void setCurrency(String currency) { 
    this.currency = currency;
  }

  public AccountInfoData disableReinstall(String disableReinstall) { 

    this.disableReinstall = disableReinstall;
    return this;
  }

  /**
   * Get disableReinstall
   * @return disableReinstall
   **/
  
  @Schema(description = "")
  
  public String getDisableReinstall() {  
    return disableReinstall;
  }



  public void setDisableReinstall(String disableReinstall) { 
    this.disableReinstall = disableReinstall;
  }

  public AccountInfoData disableReset(String disableReset) { 

    this.disableReset = disableReset;
    return this;
  }

  /**
   * Get disableReset
   * @return disableReset
   **/
  
  @Schema(description = "")
  
  public String getDisableReset() {  
    return disableReset;
  }



  public void setDisableReset(String disableReset) { 
    this.disableReset = disableReset;
  }

  public AccountInfoData email(String email) { 

    this.email = email;
    return this;
  }

  /**
   * Get email
   * @return email
   **/
  
  @Schema(description = "")
  
  public String getEmail() {  
    return email;
  }



  public void setEmail(String email) { 
    this.email = email;
  }

  public AccountInfoData emailAbuse(String emailAbuse) { 

    this.emailAbuse = emailAbuse;
    return this;
  }

  /**
   * Get emailAbuse
   * @return emailAbuse
   **/
  
  @Schema(description = "")
  
  public String getEmailAbuse() {  
    return emailAbuse;
  }



  public void setEmailAbuse(String emailAbuse) { 
    this.emailAbuse = emailAbuse;
  }

  public AccountInfoData emailSettings(AccountInfoDataEmailSettings emailSettings) { 

    this.emailSettings = emailSettings;
    return this;
  }

  /**
   * Get emailSettings
   * @return emailSettings
   **/
  
  @Schema(description = "")
  
@Valid
  public AccountInfoDataEmailSettings getEmailSettings() {  
    return emailSettings;
  }



  public void setEmailSettings(AccountInfoDataEmailSettings emailSettings) { 
    this.emailSettings = emailSettings;
  }

  public AccountInfoData extra(AccountInfoDataExtra extra) { 

    this.extra = extra;
    return this;
  }

  /**
   * Get extra
   * @return extra
   **/
  
  @Schema(description = "")
  
@Valid
  public AccountInfoDataExtra getExtra() {  
    return extra;
  }



  public void setExtra(AccountInfoDataExtra extra) { 
    this.extra = extra;
  }

  public AccountInfoData facebookId(String facebookId) { 

    this.facebookId = facebookId;
    return this;
  }

  /**
   * Get facebookId
   * @return facebookId
   **/
  
  @Schema(description = "")
  
  public String getFacebookId() {  
    return facebookId;
  }



  public void setFacebookId(String facebookId) { 
    this.facebookId = facebookId;
  }

  public AccountInfoData facebookUrl(String facebookUrl) { 

    this.facebookUrl = facebookUrl;
    return this;
  }

  /**
   * Get facebookUrl
   * @return facebookUrl
   **/
  
  @Schema(description = "")
  
  public String getFacebookUrl() {  
    return facebookUrl;
  }



  public void setFacebookUrl(String facebookUrl) { 
    this.facebookUrl = facebookUrl;
  }

  public AccountInfoData firstname(String firstname) { 

    this.firstname = firstname;
    return this;
  }

  /**
   * Get firstname
   * @return firstname
   **/
  
  @Schema(description = "")
  
  public String getFirstname() {  
    return firstname;
  }



  public void setFirstname(String firstname) { 
    this.firstname = firstname;
  }

  public AccountInfoData fraudrecord(AccountInfoDataFraudrecord fraudrecord) { 

    this.fraudrecord = fraudrecord;
    return this;
  }

  /**
   * Get fraudrecord
   * @return fraudrecord
   **/
  
  @Schema(description = "")
  
@Valid
  public AccountInfoDataFraudrecord getFraudrecord() {  
    return fraudrecord;
  }



  public void setFraudrecord(AccountInfoDataFraudrecord fraudrecord) { 
    this.fraudrecord = fraudrecord;
  }

  public AccountInfoData githubId(String githubId) { 

    this.githubId = githubId;
    return this;
  }

  /**
   * Get githubId
   * @return githubId
   **/
  
  @Schema(description = "")
  
  public String getGithubId() {  
    return githubId;
  }



  public void setGithubId(String githubId) { 
    this.githubId = githubId;
  }

  public AccountInfoData githubUrl(String githubUrl) { 

    this.githubUrl = githubUrl;
    return this;
  }

  /**
   * Get githubUrl
   * @return githubUrl
   **/
  
  @Schema(description = "")
  
  public String getGithubUrl() {  
    return githubUrl;
  }



  public void setGithubUrl(String githubUrl) { 
    this.githubUrl = githubUrl;
  }

  public AccountInfoData googleId(String googleId) { 

    this.googleId = googleId;
    return this;
  }

  /**
   * Get googleId
   * @return googleId
   **/
  
  @Schema(description = "")
  
  public String getGoogleId() {  
    return googleId;
  }



  public void setGoogleId(String googleId) { 
    this.googleId = googleId;
  }

  public AccountInfoData googleUrl(String googleUrl) { 

    this.googleUrl = googleUrl;
    return this;
  }

  /**
   * Get googleUrl
   * @return googleUrl
   **/
  
  @Schema(description = "")
  
  public String getGoogleUrl() {  
    return googleUrl;
  }



  public void setGoogleUrl(String googleUrl) { 
    this.googleUrl = googleUrl;
  }

  public AccountInfoData innertellId(String innertellId) { 

    this.innertellId = innertellId;
    return this;
  }

  /**
   * Get innertellId
   * @return innertellId
   **/
  
  @Schema(description = "")
  
  public String getInnertellId() {  
    return innertellId;
  }



  public void setInnertellId(String innertellId) { 
    this.innertellId = innertellId;
  }

  public AccountInfoData lastname(String lastname) { 

    this.lastname = lastname;
    return this;
  }

  /**
   * Get lastname
   * @return lastname
   **/
  
  @Schema(description = "")
  
  public String getLastname() {  
    return lastname;
  }



  public void setLastname(String lastname) { 
    this.lastname = lastname;
  }

  public AccountInfoData locale(String locale) { 

    this.locale = locale;
    return this;
  }

  /**
   * Get locale
   * @return locale
   **/
  
  @Schema(description = "")
  
  public String getLocale() {  
    return locale;
  }



  public void setLocale(String locale) { 
    this.locale = locale;
  }

  public AccountInfoData maxmind(AccountInfoMaxMindResponse maxmind) { 

    this.maxmind = maxmind;
    return this;
  }

  /**
   * Get maxmind
   * @return maxmind
   **/
  
  @Schema(description = "")
  
@Valid
  public AccountInfoMaxMindResponse getMaxmind() {  
    return maxmind;
  }



  public void setMaxmind(AccountInfoMaxMindResponse maxmind) { 
    this.maxmind = maxmind;
  }

  public AccountInfoData maxmindScore(String maxmindScore) { 

    this.maxmindScore = maxmindScore;
    return this;
  }

  /**
   * Get maxmindScore
   * @return maxmindScore
   **/
  
  @Schema(description = "")
  
  public String getMaxmindScore() {  
    return maxmindScore;
  }



  public void setMaxmindScore(String maxmindScore) { 
    this.maxmindScore = maxmindScore;
  }

  public AccountInfoData mbId(String mbId) { 

    this.mbId = mbId;
    return this;
  }

  /**
   * Get mbId
   * @return mbId
   **/
  
  @Schema(description = "")
  
  public String getMbId() {  
    return mbId;
  }



  public void setMbId(String mbId) { 
    this.mbId = mbId;
  }

  public AccountInfoData modernbillId(String modernbillId) { 

    this.modernbillId = modernbillId;
    return this;
  }

  /**
   * Get modernbillId
   * @return modernbillId
   **/
  
  @Schema(description = "")
  
  public String getModernbillId() {  
    return modernbillId;
  }



  public void setModernbillId(String modernbillId) { 
    this.modernbillId = modernbillId;
  }

  public AccountInfoData picture(String picture) { 

    this.picture = picture;
    return this;
  }

  /**
   * Get picture
   * @return picture
   **/
  
  @Schema(description = "")
  
  public String getPicture() {  
    return picture;
  }



  public void setPicture(String picture) { 
    this.picture = picture;
  }

  public AccountInfoData referrerCoupon(String referrerCoupon) { 

    this.referrerCoupon = referrerCoupon;
    return this;
  }

  /**
   * Get referrerCoupon
   * @return referrerCoupon
   **/
  
  @Schema(description = "")
  
  public String getReferrerCoupon() {  
    return referrerCoupon;
  }



  public void setReferrerCoupon(String referrerCoupon) { 
    this.referrerCoupon = referrerCoupon;
  }

  public AccountInfoData resellerMarkup(String resellerMarkup) { 

    this.resellerMarkup = resellerMarkup;
    return this;
  }

  /**
   * Get resellerMarkup
   * @return resellerMarkup
   **/
  
  @Schema(description = "")
  
  public String getResellerMarkup() {  
    return resellerMarkup;
  }



  public void setResellerMarkup(String resellerMarkup) { 
    this.resellerMarkup = resellerMarkup;
  }

  public AccountInfoData username(String username) { 

    this.username = username;
    return this;
  }

  /**
   * Get username
   * @return username
   **/
  
  @Schema(description = "")
  
  public String getUsername() {  
    return username;
  }



  public void setUsername(String username) { 
    this.username = username;
  }

  public AccountInfoData sshKey(String sshKey) { 

    this.sshKey = sshKey;
    return this;
  }

  /**
   * Get sshKey
   * @return sshKey
   **/
  
  @Schema(description = "")
  
  public String getSshKey() {  
    return sshKey;
  }



  public void setSshKey(String sshKey) { 
    this.sshKey = sshKey;
  }

  public AccountInfoData sshKeyWrapped(String sshKeyWrapped) { 

    this.sshKeyWrapped = sshKeyWrapped;
    return this;
  }

  /**
   * Get sshKeyWrapped
   * @return sshKeyWrapped
   **/
  
  @Schema(description = "")
  
  public String getSshKeyWrapped() {  
    return sshKeyWrapped;
  }



  public void setSshKeyWrapped(String sshKeyWrapped) { 
    this.sshKeyWrapped = sshKeyWrapped;
  }

  public AccountInfoData apiKey(String apiKey) { 

    this.apiKey = apiKey;
    return this;
  }

  /**
   * Get apiKey
   * @return apiKey
   **/
  
  @Schema(description = "")
  
  public String getApiKey() {  
    return apiKey;
  }



  public void setApiKey(String apiKey) { 
    this.apiKey = apiKey;
  }

  public AccountInfoData apiKeyWrapped(String apiKeyWrapped) { 

    this.apiKeyWrapped = apiKeyWrapped;
    return this;
  }

  /**
   * Get apiKeyWrapped
   * @return apiKeyWrapped
   **/
  
  @Schema(description = "")
  
  public String getApiKeyWrapped() {  
    return apiKeyWrapped;
  }



  public void setApiKeyWrapped(String apiKeyWrapped) { 
    this.apiKeyWrapped = apiKeyWrapped;
  }

  public AccountInfoData _2faGoogleKey(String _2faGoogleKey) { 

    this._2faGoogleKey = _2faGoogleKey;
    return this;
  }

  /**
   * Get _2faGoogleKey
   * @return _2faGoogleKey
   **/
  
  @Schema(description = "")
  
  public String get2faGoogleKey() {  
    return _2faGoogleKey;
  }



  public void set2faGoogleKey(String _2faGoogleKey) { 
    this._2faGoogleKey = _2faGoogleKey;
  }

  public AccountInfoData _2faGoogleEnabled(Boolean _2faGoogleEnabled) { 

    this._2faGoogleEnabled = _2faGoogleEnabled;
    return this;
  }

  /**
   * Get _2faGoogleEnabled
   * @return _2faGoogleEnabled
   **/
  
  @Schema(description = "")
  
  public Boolean is2faGoogleEnabled() {  
    return _2faGoogleEnabled;
  }



  public void set2faGoogleEnabled(Boolean _2faGoogleEnabled) { 
    this._2faGoogleEnabled = _2faGoogleEnabled;
  }

  public AccountInfoData _2faGoogle(Integer _2faGoogle) { 

    this._2faGoogle = _2faGoogle;
    return this;
  }

  /**
   * Get _2faGoogle
   * @return _2faGoogle
   **/
  
  @Schema(description = "")
  
  public Integer get2faGoogle() {  
    return _2faGoogle;
  }



  public void set2faGoogle(Integer _2faGoogle) { 
    this._2faGoogle = _2faGoogle;
  }

  public AccountInfoData _2faGoogleSplit(String _2faGoogleSplit) { 

    this._2faGoogleSplit = _2faGoogleSplit;
    return this;
  }

  /**
   * Get _2faGoogleSplit
   * @return _2faGoogleSplit
   **/
  
  @Schema(description = "")
  
  public String get2faGoogleSplit() {  
    return _2faGoogleSplit;
  }



  public void set2faGoogleSplit(String _2faGoogleSplit) { 
    this._2faGoogleSplit = _2faGoogleSplit;
  }

  public AccountInfoData _2faGoogleQr(String _2faGoogleQr) { 

    this._2faGoogleQr = _2faGoogleQr;
    return this;
  }

  /**
   * Get _2faGoogleQr
   * @return _2faGoogleQr
   **/
  
  @Schema(description = "")
  
  public String get2faGoogleQr() {  
    return _2faGoogleQr;
  }



  public void set2faGoogleQr(String _2faGoogleQr) { 
    this._2faGoogleQr = _2faGoogleQr;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    AccountInfoData accountInfoData = (AccountInfoData) o;
    return Objects.equals(this.group, accountInfoData.group) &&
        Objects.equals(this.address, accountInfoData.address) &&
        Objects.equals(this.city, accountInfoData.city) &&
        Objects.equals(this.country, accountInfoData.country) &&
        Objects.equals(this.disableCc, accountInfoData.disableCc) &&
        Objects.equals(this.fraudrecordScore, accountInfoData.fraudrecordScore) &&
        Objects.equals(this.ima, accountInfoData.ima) &&
        Objects.equals(this.name, accountInfoData.name) &&
        Objects.equals(this.paymentMethod, accountInfoData.paymentMethod) &&
        Objects.equals(this.phone, accountInfoData.phone) &&
        Objects.equals(this.pin, accountInfoData.pin) &&
        Objects.equals(this.state, accountInfoData.state) &&
        Objects.equals(this.status, accountInfoData.status) &&
        Objects.equals(this.zip, accountInfoData.zip) &&
        Objects.equals(this.accountId, accountInfoData.accountId) &&
        Objects.equals(this.accountLid, accountInfoData.accountLid) &&
        Objects.equals(this.address2, accountInfoData.address2) &&
        Objects.equals(this.affiliateDockDescription, accountInfoData.affiliateDockDescription) &&
        Objects.equals(this.affiliateDockTitle, accountInfoData.affiliateDockTitle) &&
        Objects.equals(this.affiliatePaymentMethod, accountInfoData.affiliatePaymentMethod) &&
        Objects.equals(this.affiliatePaypal, accountInfoData.affiliatePaypal) &&
        Objects.equals(this.cc, accountInfoData.cc) &&
        Objects.equals(this.ccAuto, accountInfoData.ccAuto) &&
        Objects.equals(this.ccExp, accountInfoData.ccExp) &&
        Objects.equals(this.ccType, accountInfoData.ccType) &&
        Objects.equals(this.ccWhitelist, accountInfoData.ccWhitelist) &&
        Objects.equals(this.ccs, accountInfoData.ccs) &&
        Objects.equals(this.ccsAdded, accountInfoData.ccsAdded) &&
        Objects.equals(this.company, accountInfoData.company) &&
        Objects.equals(this.currency, accountInfoData.currency) &&
        Objects.equals(this.disableReinstall, accountInfoData.disableReinstall) &&
        Objects.equals(this.disableReset, accountInfoData.disableReset) &&
        Objects.equals(this.email, accountInfoData.email) &&
        Objects.equals(this.emailAbuse, accountInfoData.emailAbuse) &&
        Objects.equals(this.emailSettings, accountInfoData.emailSettings) &&
        Objects.equals(this.extra, accountInfoData.extra) &&
        Objects.equals(this.facebookId, accountInfoData.facebookId) &&
        Objects.equals(this.facebookUrl, accountInfoData.facebookUrl) &&
        Objects.equals(this.firstname, accountInfoData.firstname) &&
        Objects.equals(this.fraudrecord, accountInfoData.fraudrecord) &&
        Objects.equals(this.githubId, accountInfoData.githubId) &&
        Objects.equals(this.githubUrl, accountInfoData.githubUrl) &&
        Objects.equals(this.googleId, accountInfoData.googleId) &&
        Objects.equals(this.googleUrl, accountInfoData.googleUrl) &&
        Objects.equals(this.innertellId, accountInfoData.innertellId) &&
        Objects.equals(this.lastname, accountInfoData.lastname) &&
        Objects.equals(this.locale, accountInfoData.locale) &&
        Objects.equals(this.maxmind, accountInfoData.maxmind) &&
        Objects.equals(this.maxmindScore, accountInfoData.maxmindScore) &&
        Objects.equals(this.mbId, accountInfoData.mbId) &&
        Objects.equals(this.modernbillId, accountInfoData.modernbillId) &&
        Objects.equals(this.picture, accountInfoData.picture) &&
        Objects.equals(this.referrerCoupon, accountInfoData.referrerCoupon) &&
        Objects.equals(this.resellerMarkup, accountInfoData.resellerMarkup) &&
        Objects.equals(this.username, accountInfoData.username) &&
        Objects.equals(this.sshKey, accountInfoData.sshKey) &&
        Objects.equals(this.sshKeyWrapped, accountInfoData.sshKeyWrapped) &&
        Objects.equals(this.apiKey, accountInfoData.apiKey) &&
        Objects.equals(this.apiKeyWrapped, accountInfoData.apiKeyWrapped) &&
        Objects.equals(this._2faGoogleKey, accountInfoData._2faGoogleKey) &&
        Objects.equals(this._2faGoogleEnabled, accountInfoData._2faGoogleEnabled) &&
        Objects.equals(this._2faGoogle, accountInfoData._2faGoogle) &&
        Objects.equals(this._2faGoogleSplit, accountInfoData._2faGoogleSplit) &&
        Objects.equals(this._2faGoogleQr, accountInfoData._2faGoogleQr);
  }

  @Override
  public int hashCode() {
    return Objects.hash(group, address, city, country, disableCc, fraudrecordScore, ima, name, paymentMethod, phone, pin, state, status, zip, accountId, accountLid, address2, affiliateDockDescription, affiliateDockTitle, affiliatePaymentMethod, affiliatePaypal, cc, ccAuto, ccExp, ccType, ccWhitelist, ccs, ccsAdded, company, currency, disableReinstall, disableReset, email, emailAbuse, emailSettings, extra, facebookId, facebookUrl, firstname, fraudrecord, githubId, githubUrl, googleId, googleUrl, innertellId, lastname, locale, maxmind, maxmindScore, mbId, modernbillId, picture, referrerCoupon, resellerMarkup, username, sshKey, sshKeyWrapped, apiKey, apiKeyWrapped, _2faGoogleKey, _2faGoogleEnabled, _2faGoogle, _2faGoogleSplit, _2faGoogleQr);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AccountInfoData {\n");
    
    sb.append("    group: ").append(toIndentedString(group)).append("\n");
    sb.append("    address: ").append(toIndentedString(address)).append("\n");
    sb.append("    city: ").append(toIndentedString(city)).append("\n");
    sb.append("    country: ").append(toIndentedString(country)).append("\n");
    sb.append("    disableCc: ").append(toIndentedString(disableCc)).append("\n");
    sb.append("    fraudrecordScore: ").append(toIndentedString(fraudrecordScore)).append("\n");
    sb.append("    ima: ").append(toIndentedString(ima)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    paymentMethod: ").append(toIndentedString(paymentMethod)).append("\n");
    sb.append("    phone: ").append(toIndentedString(phone)).append("\n");
    sb.append("    pin: ").append(toIndentedString(pin)).append("\n");
    sb.append("    state: ").append(toIndentedString(state)).append("\n");
    sb.append("    status: ").append(toIndentedString(status)).append("\n");
    sb.append("    zip: ").append(toIndentedString(zip)).append("\n");
    sb.append("    accountId: ").append(toIndentedString(accountId)).append("\n");
    sb.append("    accountLid: ").append(toIndentedString(accountLid)).append("\n");
    sb.append("    address2: ").append(toIndentedString(address2)).append("\n");
    sb.append("    affiliateDockDescription: ").append(toIndentedString(affiliateDockDescription)).append("\n");
    sb.append("    affiliateDockTitle: ").append(toIndentedString(affiliateDockTitle)).append("\n");
    sb.append("    affiliatePaymentMethod: ").append(toIndentedString(affiliatePaymentMethod)).append("\n");
    sb.append("    affiliatePaypal: ").append(toIndentedString(affiliatePaypal)).append("\n");
    sb.append("    cc: ").append(toIndentedString(cc)).append("\n");
    sb.append("    ccAuto: ").append(toIndentedString(ccAuto)).append("\n");
    sb.append("    ccExp: ").append(toIndentedString(ccExp)).append("\n");
    sb.append("    ccType: ").append(toIndentedString(ccType)).append("\n");
    sb.append("    ccWhitelist: ").append(toIndentedString(ccWhitelist)).append("\n");
    sb.append("    ccs: ").append(toIndentedString(ccs)).append("\n");
    sb.append("    ccsAdded: ").append(toIndentedString(ccsAdded)).append("\n");
    sb.append("    company: ").append(toIndentedString(company)).append("\n");
    sb.append("    currency: ").append(toIndentedString(currency)).append("\n");
    sb.append("    disableReinstall: ").append(toIndentedString(disableReinstall)).append("\n");
    sb.append("    disableReset: ").append(toIndentedString(disableReset)).append("\n");
    sb.append("    email: ").append(toIndentedString(email)).append("\n");
    sb.append("    emailAbuse: ").append(toIndentedString(emailAbuse)).append("\n");
    sb.append("    emailSettings: ").append(toIndentedString(emailSettings)).append("\n");
    sb.append("    extra: ").append(toIndentedString(extra)).append("\n");
    sb.append("    facebookId: ").append(toIndentedString(facebookId)).append("\n");
    sb.append("    facebookUrl: ").append(toIndentedString(facebookUrl)).append("\n");
    sb.append("    firstname: ").append(toIndentedString(firstname)).append("\n");
    sb.append("    fraudrecord: ").append(toIndentedString(fraudrecord)).append("\n");
    sb.append("    githubId: ").append(toIndentedString(githubId)).append("\n");
    sb.append("    githubUrl: ").append(toIndentedString(githubUrl)).append("\n");
    sb.append("    googleId: ").append(toIndentedString(googleId)).append("\n");
    sb.append("    googleUrl: ").append(toIndentedString(googleUrl)).append("\n");
    sb.append("    innertellId: ").append(toIndentedString(innertellId)).append("\n");
    sb.append("    lastname: ").append(toIndentedString(lastname)).append("\n");
    sb.append("    locale: ").append(toIndentedString(locale)).append("\n");
    sb.append("    maxmind: ").append(toIndentedString(maxmind)).append("\n");
    sb.append("    maxmindScore: ").append(toIndentedString(maxmindScore)).append("\n");
    sb.append("    mbId: ").append(toIndentedString(mbId)).append("\n");
    sb.append("    modernbillId: ").append(toIndentedString(modernbillId)).append("\n");
    sb.append("    picture: ").append(toIndentedString(picture)).append("\n");
    sb.append("    referrerCoupon: ").append(toIndentedString(referrerCoupon)).append("\n");
    sb.append("    resellerMarkup: ").append(toIndentedString(resellerMarkup)).append("\n");
    sb.append("    username: ").append(toIndentedString(username)).append("\n");
    sb.append("    sshKey: ").append(toIndentedString(sshKey)).append("\n");
    sb.append("    sshKeyWrapped: ").append(toIndentedString(sshKeyWrapped)).append("\n");
    sb.append("    apiKey: ").append(toIndentedString(apiKey)).append("\n");
    sb.append("    apiKeyWrapped: ").append(toIndentedString(apiKeyWrapped)).append("\n");
    sb.append("    _2faGoogleKey: ").append(toIndentedString(_2faGoogleKey)).append("\n");
    sb.append("    _2faGoogleEnabled: ").append(toIndentedString(_2faGoogleEnabled)).append("\n");
    sb.append("    _2faGoogle: ").append(toIndentedString(_2faGoogle)).append("\n");
    sb.append("    _2faGoogleSplit: ").append(toIndentedString(_2faGoogleSplit)).append("\n");
    sb.append("    _2faGoogleQr: ").append(toIndentedString(_2faGoogleQr)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
