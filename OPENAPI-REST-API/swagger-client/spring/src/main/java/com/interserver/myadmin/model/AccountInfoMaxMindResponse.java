package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
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
 * MaxMind fraud detection scoring data for a credit card transaction.
 */
@Schema(description = "MaxMind fraud detection scoring data for a credit card transaction.")
@Validated
@NotUndefined



public class AccountInfoMaxMindResponse   {
  @JsonProperty("distance")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String distance = null;

  @JsonProperty("countryMatch")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String countryMatch = null;

  @JsonProperty("countryCode")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String countryCode = null;

  @JsonProperty("freeMail")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String freeMail = null;

  @JsonProperty("anonymousProxy")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String anonymousProxy = null;

  @JsonProperty("score")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String score = null;

  @JsonProperty("binMatch")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String binMatch = null;

  @JsonProperty("binCountry")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String binCountry = null;

  @JsonProperty("err")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String err = null;

  @JsonProperty("proxyScore")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String proxyScore = null;

  @JsonProperty("ip_region")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ipRegion = null;

  @JsonProperty("ip_city")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ipCity = null;

  @JsonProperty("ip_latitude")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ipLatitude = null;

  @JsonProperty("ip_longitude")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ipLongitude = null;

  @JsonProperty("binName")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String binName = null;

  @JsonProperty("ip_isp")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ipIsp = null;

  @JsonProperty("ip_org")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ipOrg = null;

  @JsonProperty("binNameMatch")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String binNameMatch = null;

  @JsonProperty("binPhoneMatch")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String binPhoneMatch = null;

  @JsonProperty("binPhone")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String binPhone = null;

  @JsonProperty("custPhoneInBillingLoc")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String custPhoneInBillingLoc = null;

  @JsonProperty("highRiskCountry")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String highRiskCountry = null;

  @JsonProperty("queriesRemaining")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String queriesRemaining = null;

  @JsonProperty("cityPostalMatch")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String cityPostalMatch = null;

  @JsonProperty("shipCityPostalMatch")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String shipCityPostalMatch = null;

  @JsonProperty("maxmindID")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String maxmindID = null;

  @JsonProperty("ip_asnum")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ipAsnum = null;

  @JsonProperty("ip_userType")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ipUserType = null;

  @JsonProperty("ip_countryConf")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ipCountryConf = null;

  @JsonProperty("ip_regionConf")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ipRegionConf = null;

  @JsonProperty("ip_cityConf")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ipCityConf = null;

  @JsonProperty("ip_postalCode")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ipPostalCode = null;

  @JsonProperty("ip_postalConf")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ipPostalConf = null;

  @JsonProperty("ip_accuracyRadius")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ipAccuracyRadius = null;

  @JsonProperty("ip_netSpeedCell")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ipNetSpeedCell = null;

  @JsonProperty("ip_metroCode")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ipMetroCode = null;

  @JsonProperty("ip_areaCode")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ipAreaCode = null;

  @JsonProperty("ip_timeZone")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ipTimeZone = null;

  @JsonProperty("ip_regionName")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ipRegionName = null;

  @JsonProperty("ip_domain")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ipDomain = null;

  @JsonProperty("ip_countryName")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ipCountryName = null;

  @JsonProperty("ip_continentCode")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ipContinentCode = null;

  @JsonProperty("ip_corporateProxy")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ipCorporateProxy = null;

  @JsonProperty("carderEmail")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String carderEmail = null;

  @JsonProperty("highRiskUsername")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String highRiskUsername = null;

  @JsonProperty("highRiskPassword")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String highRiskPassword = null;

  @JsonProperty("riskScore")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private OneOfAccountInfoMaxMindResponseRiskScore riskScore = null;

  @JsonProperty("isTransProxy")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String isTransProxy = null;

  @JsonProperty("prepaid")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String prepaid = null;

  @JsonProperty("minfraud_version")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String minfraudVersion = null;

  @JsonProperty("service_level")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serviceLevel = null;

  @JsonProperty("explanation")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String explanation = null;

  @JsonProperty("female_name")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String femaleName = null;


  public AccountInfoMaxMindResponse distance(String distance) { 

    this.distance = distance;
    return this;
  }

  /**
   * Get distance
   * @return distance
   **/
  
  @Schema(description = "")
  
  public String getDistance() {  
    return distance;
  }



  public void setDistance(String distance) { 
    this.distance = distance;
  }

  public AccountInfoMaxMindResponse countryMatch(String countryMatch) { 

    this.countryMatch = countryMatch;
    return this;
  }

  /**
   * Get countryMatch
   * @return countryMatch
   **/
  
  @Schema(description = "")
  
  public String getCountryMatch() {  
    return countryMatch;
  }



  public void setCountryMatch(String countryMatch) { 
    this.countryMatch = countryMatch;
  }

  public AccountInfoMaxMindResponse countryCode(String countryCode) { 

    this.countryCode = countryCode;
    return this;
  }

  /**
   * Get countryCode
   * @return countryCode
   **/
  
  @Schema(description = "")
  
  public String getCountryCode() {  
    return countryCode;
  }



  public void setCountryCode(String countryCode) { 
    this.countryCode = countryCode;
  }

  public AccountInfoMaxMindResponse freeMail(String freeMail) { 

    this.freeMail = freeMail;
    return this;
  }

  /**
   * Get freeMail
   * @return freeMail
   **/
  
  @Schema(description = "")
  
  public String getFreeMail() {  
    return freeMail;
  }



  public void setFreeMail(String freeMail) { 
    this.freeMail = freeMail;
  }

  public AccountInfoMaxMindResponse anonymousProxy(String anonymousProxy) { 

    this.anonymousProxy = anonymousProxy;
    return this;
  }

  /**
   * Get anonymousProxy
   * @return anonymousProxy
   **/
  
  @Schema(description = "")
  
  public String getAnonymousProxy() {  
    return anonymousProxy;
  }



  public void setAnonymousProxy(String anonymousProxy) { 
    this.anonymousProxy = anonymousProxy;
  }

  public AccountInfoMaxMindResponse score(String score) { 

    this.score = score;
    return this;
  }

  /**
   * Get score
   * @return score
   **/
  
  @Schema(description = "")
  
  public String getScore() {  
    return score;
  }



  public void setScore(String score) { 
    this.score = score;
  }

  public AccountInfoMaxMindResponse binMatch(String binMatch) { 

    this.binMatch = binMatch;
    return this;
  }

  /**
   * Get binMatch
   * @return binMatch
   **/
  
  @Schema(description = "")
  
  public String getBinMatch() {  
    return binMatch;
  }



  public void setBinMatch(String binMatch) { 
    this.binMatch = binMatch;
  }

  public AccountInfoMaxMindResponse binCountry(String binCountry) { 

    this.binCountry = binCountry;
    return this;
  }

  /**
   * Get binCountry
   * @return binCountry
   **/
  
  @Schema(description = "")
  
  public String getBinCountry() {  
    return binCountry;
  }



  public void setBinCountry(String binCountry) { 
    this.binCountry = binCountry;
  }

  public AccountInfoMaxMindResponse err(String err) { 

    this.err = err;
    return this;
  }

  /**
   * Get err
   * @return err
   **/
  
  @Schema(description = "")
  
  public String getErr() {  
    return err;
  }



  public void setErr(String err) { 
    this.err = err;
  }

  public AccountInfoMaxMindResponse proxyScore(String proxyScore) { 

    this.proxyScore = proxyScore;
    return this;
  }

  /**
   * Get proxyScore
   * @return proxyScore
   **/
  
  @Schema(description = "")
  
  public String getProxyScore() {  
    return proxyScore;
  }



  public void setProxyScore(String proxyScore) { 
    this.proxyScore = proxyScore;
  }

  public AccountInfoMaxMindResponse ipRegion(String ipRegion) { 

    this.ipRegion = ipRegion;
    return this;
  }

  /**
   * Get ipRegion
   * @return ipRegion
   **/
  
  @Schema(description = "")
  
  public String getIpRegion() {  
    return ipRegion;
  }



  public void setIpRegion(String ipRegion) { 
    this.ipRegion = ipRegion;
  }

  public AccountInfoMaxMindResponse ipCity(String ipCity) { 

    this.ipCity = ipCity;
    return this;
  }

  /**
   * Get ipCity
   * @return ipCity
   **/
  
  @Schema(description = "")
  
  public String getIpCity() {  
    return ipCity;
  }



  public void setIpCity(String ipCity) { 
    this.ipCity = ipCity;
  }

  public AccountInfoMaxMindResponse ipLatitude(String ipLatitude) { 

    this.ipLatitude = ipLatitude;
    return this;
  }

  /**
   * Get ipLatitude
   * @return ipLatitude
   **/
  
  @Schema(description = "")
  
  public String getIpLatitude() {  
    return ipLatitude;
  }



  public void setIpLatitude(String ipLatitude) { 
    this.ipLatitude = ipLatitude;
  }

  public AccountInfoMaxMindResponse ipLongitude(String ipLongitude) { 

    this.ipLongitude = ipLongitude;
    return this;
  }

  /**
   * Get ipLongitude
   * @return ipLongitude
   **/
  
  @Schema(description = "")
  
  public String getIpLongitude() {  
    return ipLongitude;
  }



  public void setIpLongitude(String ipLongitude) { 
    this.ipLongitude = ipLongitude;
  }

  public AccountInfoMaxMindResponse binName(String binName) { 

    this.binName = binName;
    return this;
  }

  /**
   * Get binName
   * @return binName
   **/
  
  @Schema(description = "")
  
  public String getBinName() {  
    return binName;
  }



  public void setBinName(String binName) { 
    this.binName = binName;
  }

  public AccountInfoMaxMindResponse ipIsp(String ipIsp) { 

    this.ipIsp = ipIsp;
    return this;
  }

  /**
   * Get ipIsp
   * @return ipIsp
   **/
  
  @Schema(description = "")
  
  public String getIpIsp() {  
    return ipIsp;
  }



  public void setIpIsp(String ipIsp) { 
    this.ipIsp = ipIsp;
  }

  public AccountInfoMaxMindResponse ipOrg(String ipOrg) { 

    this.ipOrg = ipOrg;
    return this;
  }

  /**
   * Get ipOrg
   * @return ipOrg
   **/
  
  @Schema(description = "")
  
  public String getIpOrg() {  
    return ipOrg;
  }



  public void setIpOrg(String ipOrg) { 
    this.ipOrg = ipOrg;
  }

  public AccountInfoMaxMindResponse binNameMatch(String binNameMatch) { 

    this.binNameMatch = binNameMatch;
    return this;
  }

  /**
   * Get binNameMatch
   * @return binNameMatch
   **/
  
  @Schema(description = "")
  
  public String getBinNameMatch() {  
    return binNameMatch;
  }



  public void setBinNameMatch(String binNameMatch) { 
    this.binNameMatch = binNameMatch;
  }

  public AccountInfoMaxMindResponse binPhoneMatch(String binPhoneMatch) { 

    this.binPhoneMatch = binPhoneMatch;
    return this;
  }

  /**
   * Get binPhoneMatch
   * @return binPhoneMatch
   **/
  
  @Schema(description = "")
  
  public String getBinPhoneMatch() {  
    return binPhoneMatch;
  }



  public void setBinPhoneMatch(String binPhoneMatch) { 
    this.binPhoneMatch = binPhoneMatch;
  }

  public AccountInfoMaxMindResponse binPhone(String binPhone) { 

    this.binPhone = binPhone;
    return this;
  }

  /**
   * Get binPhone
   * @return binPhone
   **/
  
  @Schema(description = "")
  
  public String getBinPhone() {  
    return binPhone;
  }



  public void setBinPhone(String binPhone) { 
    this.binPhone = binPhone;
  }

  public AccountInfoMaxMindResponse custPhoneInBillingLoc(String custPhoneInBillingLoc) { 

    this.custPhoneInBillingLoc = custPhoneInBillingLoc;
    return this;
  }

  /**
   * Get custPhoneInBillingLoc
   * @return custPhoneInBillingLoc
   **/
  
  @Schema(description = "")
  
  public String getCustPhoneInBillingLoc() {  
    return custPhoneInBillingLoc;
  }



  public void setCustPhoneInBillingLoc(String custPhoneInBillingLoc) { 
    this.custPhoneInBillingLoc = custPhoneInBillingLoc;
  }

  public AccountInfoMaxMindResponse highRiskCountry(String highRiskCountry) { 

    this.highRiskCountry = highRiskCountry;
    return this;
  }

  /**
   * Get highRiskCountry
   * @return highRiskCountry
   **/
  
  @Schema(description = "")
  
  public String getHighRiskCountry() {  
    return highRiskCountry;
  }



  public void setHighRiskCountry(String highRiskCountry) { 
    this.highRiskCountry = highRiskCountry;
  }

  public AccountInfoMaxMindResponse queriesRemaining(String queriesRemaining) { 

    this.queriesRemaining = queriesRemaining;
    return this;
  }

  /**
   * Get queriesRemaining
   * @return queriesRemaining
   **/
  
  @Schema(description = "")
  
  public String getQueriesRemaining() {  
    return queriesRemaining;
  }



  public void setQueriesRemaining(String queriesRemaining) { 
    this.queriesRemaining = queriesRemaining;
  }

  public AccountInfoMaxMindResponse cityPostalMatch(String cityPostalMatch) { 

    this.cityPostalMatch = cityPostalMatch;
    return this;
  }

  /**
   * Get cityPostalMatch
   * @return cityPostalMatch
   **/
  
  @Schema(description = "")
  
  public String getCityPostalMatch() {  
    return cityPostalMatch;
  }



  public void setCityPostalMatch(String cityPostalMatch) { 
    this.cityPostalMatch = cityPostalMatch;
  }

  public AccountInfoMaxMindResponse shipCityPostalMatch(String shipCityPostalMatch) { 

    this.shipCityPostalMatch = shipCityPostalMatch;
    return this;
  }

  /**
   * Get shipCityPostalMatch
   * @return shipCityPostalMatch
   **/
  
  @Schema(description = "")
  
  public String getShipCityPostalMatch() {  
    return shipCityPostalMatch;
  }



  public void setShipCityPostalMatch(String shipCityPostalMatch) { 
    this.shipCityPostalMatch = shipCityPostalMatch;
  }

  public AccountInfoMaxMindResponse maxmindID(String maxmindID) { 

    this.maxmindID = maxmindID;
    return this;
  }

  /**
   * Get maxmindID
   * @return maxmindID
   **/
  
  @Schema(description = "")
  
  public String getMaxmindID() {  
    return maxmindID;
  }



  public void setMaxmindID(String maxmindID) { 
    this.maxmindID = maxmindID;
  }

  public AccountInfoMaxMindResponse ipAsnum(String ipAsnum) { 

    this.ipAsnum = ipAsnum;
    return this;
  }

  /**
   * Get ipAsnum
   * @return ipAsnum
   **/
  
  @Schema(description = "")
  
  public String getIpAsnum() {  
    return ipAsnum;
  }



  public void setIpAsnum(String ipAsnum) { 
    this.ipAsnum = ipAsnum;
  }

  public AccountInfoMaxMindResponse ipUserType(String ipUserType) { 

    this.ipUserType = ipUserType;
    return this;
  }

  /**
   * Get ipUserType
   * @return ipUserType
   **/
  
  @Schema(description = "")
  
  public String getIpUserType() {  
    return ipUserType;
  }



  public void setIpUserType(String ipUserType) { 
    this.ipUserType = ipUserType;
  }

  public AccountInfoMaxMindResponse ipCountryConf(String ipCountryConf) { 

    this.ipCountryConf = ipCountryConf;
    return this;
  }

  /**
   * Get ipCountryConf
   * @return ipCountryConf
   **/
  
  @Schema(description = "")
  
  public String getIpCountryConf() {  
    return ipCountryConf;
  }



  public void setIpCountryConf(String ipCountryConf) { 
    this.ipCountryConf = ipCountryConf;
  }

  public AccountInfoMaxMindResponse ipRegionConf(String ipRegionConf) { 

    this.ipRegionConf = ipRegionConf;
    return this;
  }

  /**
   * Get ipRegionConf
   * @return ipRegionConf
   **/
  
  @Schema(description = "")
  
  public String getIpRegionConf() {  
    return ipRegionConf;
  }



  public void setIpRegionConf(String ipRegionConf) { 
    this.ipRegionConf = ipRegionConf;
  }

  public AccountInfoMaxMindResponse ipCityConf(String ipCityConf) { 

    this.ipCityConf = ipCityConf;
    return this;
  }

  /**
   * Get ipCityConf
   * @return ipCityConf
   **/
  
  @Schema(description = "")
  
  public String getIpCityConf() {  
    return ipCityConf;
  }



  public void setIpCityConf(String ipCityConf) { 
    this.ipCityConf = ipCityConf;
  }

  public AccountInfoMaxMindResponse ipPostalCode(String ipPostalCode) { 

    this.ipPostalCode = ipPostalCode;
    return this;
  }

  /**
   * Get ipPostalCode
   * @return ipPostalCode
   **/
  
  @Schema(description = "")
  
  public String getIpPostalCode() {  
    return ipPostalCode;
  }



  public void setIpPostalCode(String ipPostalCode) { 
    this.ipPostalCode = ipPostalCode;
  }

  public AccountInfoMaxMindResponse ipPostalConf(String ipPostalConf) { 

    this.ipPostalConf = ipPostalConf;
    return this;
  }

  /**
   * Get ipPostalConf
   * @return ipPostalConf
   **/
  
  @Schema(description = "")
  
  public String getIpPostalConf() {  
    return ipPostalConf;
  }



  public void setIpPostalConf(String ipPostalConf) { 
    this.ipPostalConf = ipPostalConf;
  }

  public AccountInfoMaxMindResponse ipAccuracyRadius(String ipAccuracyRadius) { 

    this.ipAccuracyRadius = ipAccuracyRadius;
    return this;
  }

  /**
   * Get ipAccuracyRadius
   * @return ipAccuracyRadius
   **/
  
  @Schema(description = "")
  
  public String getIpAccuracyRadius() {  
    return ipAccuracyRadius;
  }



  public void setIpAccuracyRadius(String ipAccuracyRadius) { 
    this.ipAccuracyRadius = ipAccuracyRadius;
  }

  public AccountInfoMaxMindResponse ipNetSpeedCell(String ipNetSpeedCell) { 

    this.ipNetSpeedCell = ipNetSpeedCell;
    return this;
  }

  /**
   * Get ipNetSpeedCell
   * @return ipNetSpeedCell
   **/
  
  @Schema(description = "")
  
  public String getIpNetSpeedCell() {  
    return ipNetSpeedCell;
  }



  public void setIpNetSpeedCell(String ipNetSpeedCell) { 
    this.ipNetSpeedCell = ipNetSpeedCell;
  }

  public AccountInfoMaxMindResponse ipMetroCode(String ipMetroCode) { 

    this.ipMetroCode = ipMetroCode;
    return this;
  }

  /**
   * Get ipMetroCode
   * @return ipMetroCode
   **/
  
  @Schema(description = "")
  
  public String getIpMetroCode() {  
    return ipMetroCode;
  }



  public void setIpMetroCode(String ipMetroCode) { 
    this.ipMetroCode = ipMetroCode;
  }

  public AccountInfoMaxMindResponse ipAreaCode(String ipAreaCode) { 

    this.ipAreaCode = ipAreaCode;
    return this;
  }

  /**
   * Get ipAreaCode
   * @return ipAreaCode
   **/
  
  @Schema(description = "")
  
  public String getIpAreaCode() {  
    return ipAreaCode;
  }



  public void setIpAreaCode(String ipAreaCode) { 
    this.ipAreaCode = ipAreaCode;
  }

  public AccountInfoMaxMindResponse ipTimeZone(String ipTimeZone) { 

    this.ipTimeZone = ipTimeZone;
    return this;
  }

  /**
   * Get ipTimeZone
   * @return ipTimeZone
   **/
  
  @Schema(description = "")
  
  public String getIpTimeZone() {  
    return ipTimeZone;
  }



  public void setIpTimeZone(String ipTimeZone) { 
    this.ipTimeZone = ipTimeZone;
  }

  public AccountInfoMaxMindResponse ipRegionName(String ipRegionName) { 

    this.ipRegionName = ipRegionName;
    return this;
  }

  /**
   * Get ipRegionName
   * @return ipRegionName
   **/
  
  @Schema(description = "")
  
  public String getIpRegionName() {  
    return ipRegionName;
  }



  public void setIpRegionName(String ipRegionName) { 
    this.ipRegionName = ipRegionName;
  }

  public AccountInfoMaxMindResponse ipDomain(String ipDomain) { 

    this.ipDomain = ipDomain;
    return this;
  }

  /**
   * Get ipDomain
   * @return ipDomain
   **/
  
  @Schema(description = "")
  
  public String getIpDomain() {  
    return ipDomain;
  }



  public void setIpDomain(String ipDomain) { 
    this.ipDomain = ipDomain;
  }

  public AccountInfoMaxMindResponse ipCountryName(String ipCountryName) { 

    this.ipCountryName = ipCountryName;
    return this;
  }

  /**
   * Get ipCountryName
   * @return ipCountryName
   **/
  
  @Schema(description = "")
  
  public String getIpCountryName() {  
    return ipCountryName;
  }



  public void setIpCountryName(String ipCountryName) { 
    this.ipCountryName = ipCountryName;
  }

  public AccountInfoMaxMindResponse ipContinentCode(String ipContinentCode) { 

    this.ipContinentCode = ipContinentCode;
    return this;
  }

  /**
   * Get ipContinentCode
   * @return ipContinentCode
   **/
  
  @Schema(description = "")
  
  public String getIpContinentCode() {  
    return ipContinentCode;
  }



  public void setIpContinentCode(String ipContinentCode) { 
    this.ipContinentCode = ipContinentCode;
  }

  public AccountInfoMaxMindResponse ipCorporateProxy(String ipCorporateProxy) { 

    this.ipCorporateProxy = ipCorporateProxy;
    return this;
  }

  /**
   * Get ipCorporateProxy
   * @return ipCorporateProxy
   **/
  
  @Schema(description = "")
  
  public String getIpCorporateProxy() {  
    return ipCorporateProxy;
  }



  public void setIpCorporateProxy(String ipCorporateProxy) { 
    this.ipCorporateProxy = ipCorporateProxy;
  }

  public AccountInfoMaxMindResponse carderEmail(String carderEmail) { 

    this.carderEmail = carderEmail;
    return this;
  }

  /**
   * Get carderEmail
   * @return carderEmail
   **/
  
  @Schema(description = "")
  
  public String getCarderEmail() {  
    return carderEmail;
  }



  public void setCarderEmail(String carderEmail) { 
    this.carderEmail = carderEmail;
  }

  public AccountInfoMaxMindResponse highRiskUsername(String highRiskUsername) { 

    this.highRiskUsername = highRiskUsername;
    return this;
  }

  /**
   * Get highRiskUsername
   * @return highRiskUsername
   **/
  
  @Schema(description = "")
  
  public String getHighRiskUsername() {  
    return highRiskUsername;
  }



  public void setHighRiskUsername(String highRiskUsername) { 
    this.highRiskUsername = highRiskUsername;
  }

  public AccountInfoMaxMindResponse highRiskPassword(String highRiskPassword) { 

    this.highRiskPassword = highRiskPassword;
    return this;
  }

  /**
   * Get highRiskPassword
   * @return highRiskPassword
   **/
  
  @Schema(description = "")
  
  public String getHighRiskPassword() {  
    return highRiskPassword;
  }



  public void setHighRiskPassword(String highRiskPassword) { 
    this.highRiskPassword = highRiskPassword;
  }

  public AccountInfoMaxMindResponse riskScore(OneOfAccountInfoMaxMindResponseRiskScore riskScore) { 

    this.riskScore = riskScore;
    return this;
  }

  /**
   * Get riskScore
   * @return riskScore
   **/
  
  @Schema(description = "")
  
  public OneOfAccountInfoMaxMindResponseRiskScore getRiskScore() {  
    return riskScore;
  }



  public void setRiskScore(OneOfAccountInfoMaxMindResponseRiskScore riskScore) { 
    this.riskScore = riskScore;
  }

  public AccountInfoMaxMindResponse isTransProxy(String isTransProxy) { 

    this.isTransProxy = isTransProxy;
    return this;
  }

  /**
   * Get isTransProxy
   * @return isTransProxy
   **/
  
  @Schema(description = "")
  
  public String getIsTransProxy() {  
    return isTransProxy;
  }



  public void setIsTransProxy(String isTransProxy) { 
    this.isTransProxy = isTransProxy;
  }

  public AccountInfoMaxMindResponse prepaid(String prepaid) { 

    this.prepaid = prepaid;
    return this;
  }

  /**
   * Get prepaid
   * @return prepaid
   **/
  
  @Schema(description = "")
  
  public String getPrepaid() {  
    return prepaid;
  }



  public void setPrepaid(String prepaid) { 
    this.prepaid = prepaid;
  }

  public AccountInfoMaxMindResponse minfraudVersion(String minfraudVersion) { 

    this.minfraudVersion = minfraudVersion;
    return this;
  }

  /**
   * Get minfraudVersion
   * @return minfraudVersion
   **/
  
  @Schema(description = "")
  
  public String getMinfraudVersion() {  
    return minfraudVersion;
  }



  public void setMinfraudVersion(String minfraudVersion) { 
    this.minfraudVersion = minfraudVersion;
  }

  public AccountInfoMaxMindResponse serviceLevel(String serviceLevel) { 

    this.serviceLevel = serviceLevel;
    return this;
  }

  /**
   * Get serviceLevel
   * @return serviceLevel
   **/
  
  @Schema(description = "")
  
  public String getServiceLevel() {  
    return serviceLevel;
  }



  public void setServiceLevel(String serviceLevel) { 
    this.serviceLevel = serviceLevel;
  }

  public AccountInfoMaxMindResponse explanation(String explanation) { 

    this.explanation = explanation;
    return this;
  }

  /**
   * Get explanation
   * @return explanation
   **/
  
  @Schema(description = "")
  
  public String getExplanation() {  
    return explanation;
  }



  public void setExplanation(String explanation) { 
    this.explanation = explanation;
  }

  public AccountInfoMaxMindResponse femaleName(String femaleName) { 

    this.femaleName = femaleName;
    return this;
  }

  /**
   * Get femaleName
   * @return femaleName
   **/
  
  @Schema(description = "")
  
  public String getFemaleName() {  
    return femaleName;
  }



  public void setFemaleName(String femaleName) { 
    this.femaleName = femaleName;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    AccountInfoMaxMindResponse accountInfoMaxMindResponse = (AccountInfoMaxMindResponse) o;
    return Objects.equals(this.distance, accountInfoMaxMindResponse.distance) &&
        Objects.equals(this.countryMatch, accountInfoMaxMindResponse.countryMatch) &&
        Objects.equals(this.countryCode, accountInfoMaxMindResponse.countryCode) &&
        Objects.equals(this.freeMail, accountInfoMaxMindResponse.freeMail) &&
        Objects.equals(this.anonymousProxy, accountInfoMaxMindResponse.anonymousProxy) &&
        Objects.equals(this.score, accountInfoMaxMindResponse.score) &&
        Objects.equals(this.binMatch, accountInfoMaxMindResponse.binMatch) &&
        Objects.equals(this.binCountry, accountInfoMaxMindResponse.binCountry) &&
        Objects.equals(this.err, accountInfoMaxMindResponse.err) &&
        Objects.equals(this.proxyScore, accountInfoMaxMindResponse.proxyScore) &&
        Objects.equals(this.ipRegion, accountInfoMaxMindResponse.ipRegion) &&
        Objects.equals(this.ipCity, accountInfoMaxMindResponse.ipCity) &&
        Objects.equals(this.ipLatitude, accountInfoMaxMindResponse.ipLatitude) &&
        Objects.equals(this.ipLongitude, accountInfoMaxMindResponse.ipLongitude) &&
        Objects.equals(this.binName, accountInfoMaxMindResponse.binName) &&
        Objects.equals(this.ipIsp, accountInfoMaxMindResponse.ipIsp) &&
        Objects.equals(this.ipOrg, accountInfoMaxMindResponse.ipOrg) &&
        Objects.equals(this.binNameMatch, accountInfoMaxMindResponse.binNameMatch) &&
        Objects.equals(this.binPhoneMatch, accountInfoMaxMindResponse.binPhoneMatch) &&
        Objects.equals(this.binPhone, accountInfoMaxMindResponse.binPhone) &&
        Objects.equals(this.custPhoneInBillingLoc, accountInfoMaxMindResponse.custPhoneInBillingLoc) &&
        Objects.equals(this.highRiskCountry, accountInfoMaxMindResponse.highRiskCountry) &&
        Objects.equals(this.queriesRemaining, accountInfoMaxMindResponse.queriesRemaining) &&
        Objects.equals(this.cityPostalMatch, accountInfoMaxMindResponse.cityPostalMatch) &&
        Objects.equals(this.shipCityPostalMatch, accountInfoMaxMindResponse.shipCityPostalMatch) &&
        Objects.equals(this.maxmindID, accountInfoMaxMindResponse.maxmindID) &&
        Objects.equals(this.ipAsnum, accountInfoMaxMindResponse.ipAsnum) &&
        Objects.equals(this.ipUserType, accountInfoMaxMindResponse.ipUserType) &&
        Objects.equals(this.ipCountryConf, accountInfoMaxMindResponse.ipCountryConf) &&
        Objects.equals(this.ipRegionConf, accountInfoMaxMindResponse.ipRegionConf) &&
        Objects.equals(this.ipCityConf, accountInfoMaxMindResponse.ipCityConf) &&
        Objects.equals(this.ipPostalCode, accountInfoMaxMindResponse.ipPostalCode) &&
        Objects.equals(this.ipPostalConf, accountInfoMaxMindResponse.ipPostalConf) &&
        Objects.equals(this.ipAccuracyRadius, accountInfoMaxMindResponse.ipAccuracyRadius) &&
        Objects.equals(this.ipNetSpeedCell, accountInfoMaxMindResponse.ipNetSpeedCell) &&
        Objects.equals(this.ipMetroCode, accountInfoMaxMindResponse.ipMetroCode) &&
        Objects.equals(this.ipAreaCode, accountInfoMaxMindResponse.ipAreaCode) &&
        Objects.equals(this.ipTimeZone, accountInfoMaxMindResponse.ipTimeZone) &&
        Objects.equals(this.ipRegionName, accountInfoMaxMindResponse.ipRegionName) &&
        Objects.equals(this.ipDomain, accountInfoMaxMindResponse.ipDomain) &&
        Objects.equals(this.ipCountryName, accountInfoMaxMindResponse.ipCountryName) &&
        Objects.equals(this.ipContinentCode, accountInfoMaxMindResponse.ipContinentCode) &&
        Objects.equals(this.ipCorporateProxy, accountInfoMaxMindResponse.ipCorporateProxy) &&
        Objects.equals(this.carderEmail, accountInfoMaxMindResponse.carderEmail) &&
        Objects.equals(this.highRiskUsername, accountInfoMaxMindResponse.highRiskUsername) &&
        Objects.equals(this.highRiskPassword, accountInfoMaxMindResponse.highRiskPassword) &&
        Objects.equals(this.riskScore, accountInfoMaxMindResponse.riskScore) &&
        Objects.equals(this.isTransProxy, accountInfoMaxMindResponse.isTransProxy) &&
        Objects.equals(this.prepaid, accountInfoMaxMindResponse.prepaid) &&
        Objects.equals(this.minfraudVersion, accountInfoMaxMindResponse.minfraudVersion) &&
        Objects.equals(this.serviceLevel, accountInfoMaxMindResponse.serviceLevel) &&
        Objects.equals(this.explanation, accountInfoMaxMindResponse.explanation) &&
        Objects.equals(this.femaleName, accountInfoMaxMindResponse.femaleName);
  }

  @Override
  public int hashCode() {
    return Objects.hash(distance, countryMatch, countryCode, freeMail, anonymousProxy, score, binMatch, binCountry, err, proxyScore, ipRegion, ipCity, ipLatitude, ipLongitude, binName, ipIsp, ipOrg, binNameMatch, binPhoneMatch, binPhone, custPhoneInBillingLoc, highRiskCountry, queriesRemaining, cityPostalMatch, shipCityPostalMatch, maxmindID, ipAsnum, ipUserType, ipCountryConf, ipRegionConf, ipCityConf, ipPostalCode, ipPostalConf, ipAccuracyRadius, ipNetSpeedCell, ipMetroCode, ipAreaCode, ipTimeZone, ipRegionName, ipDomain, ipCountryName, ipContinentCode, ipCorporateProxy, carderEmail, highRiskUsername, highRiskPassword, riskScore, isTransProxy, prepaid, minfraudVersion, serviceLevel, explanation, femaleName);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AccountInfoMaxMindResponse {\n");
    
    sb.append("    distance: ").append(toIndentedString(distance)).append("\n");
    sb.append("    countryMatch: ").append(toIndentedString(countryMatch)).append("\n");
    sb.append("    countryCode: ").append(toIndentedString(countryCode)).append("\n");
    sb.append("    freeMail: ").append(toIndentedString(freeMail)).append("\n");
    sb.append("    anonymousProxy: ").append(toIndentedString(anonymousProxy)).append("\n");
    sb.append("    score: ").append(toIndentedString(score)).append("\n");
    sb.append("    binMatch: ").append(toIndentedString(binMatch)).append("\n");
    sb.append("    binCountry: ").append(toIndentedString(binCountry)).append("\n");
    sb.append("    err: ").append(toIndentedString(err)).append("\n");
    sb.append("    proxyScore: ").append(toIndentedString(proxyScore)).append("\n");
    sb.append("    ipRegion: ").append(toIndentedString(ipRegion)).append("\n");
    sb.append("    ipCity: ").append(toIndentedString(ipCity)).append("\n");
    sb.append("    ipLatitude: ").append(toIndentedString(ipLatitude)).append("\n");
    sb.append("    ipLongitude: ").append(toIndentedString(ipLongitude)).append("\n");
    sb.append("    binName: ").append(toIndentedString(binName)).append("\n");
    sb.append("    ipIsp: ").append(toIndentedString(ipIsp)).append("\n");
    sb.append("    ipOrg: ").append(toIndentedString(ipOrg)).append("\n");
    sb.append("    binNameMatch: ").append(toIndentedString(binNameMatch)).append("\n");
    sb.append("    binPhoneMatch: ").append(toIndentedString(binPhoneMatch)).append("\n");
    sb.append("    binPhone: ").append(toIndentedString(binPhone)).append("\n");
    sb.append("    custPhoneInBillingLoc: ").append(toIndentedString(custPhoneInBillingLoc)).append("\n");
    sb.append("    highRiskCountry: ").append(toIndentedString(highRiskCountry)).append("\n");
    sb.append("    queriesRemaining: ").append(toIndentedString(queriesRemaining)).append("\n");
    sb.append("    cityPostalMatch: ").append(toIndentedString(cityPostalMatch)).append("\n");
    sb.append("    shipCityPostalMatch: ").append(toIndentedString(shipCityPostalMatch)).append("\n");
    sb.append("    maxmindID: ").append(toIndentedString(maxmindID)).append("\n");
    sb.append("    ipAsnum: ").append(toIndentedString(ipAsnum)).append("\n");
    sb.append("    ipUserType: ").append(toIndentedString(ipUserType)).append("\n");
    sb.append("    ipCountryConf: ").append(toIndentedString(ipCountryConf)).append("\n");
    sb.append("    ipRegionConf: ").append(toIndentedString(ipRegionConf)).append("\n");
    sb.append("    ipCityConf: ").append(toIndentedString(ipCityConf)).append("\n");
    sb.append("    ipPostalCode: ").append(toIndentedString(ipPostalCode)).append("\n");
    sb.append("    ipPostalConf: ").append(toIndentedString(ipPostalConf)).append("\n");
    sb.append("    ipAccuracyRadius: ").append(toIndentedString(ipAccuracyRadius)).append("\n");
    sb.append("    ipNetSpeedCell: ").append(toIndentedString(ipNetSpeedCell)).append("\n");
    sb.append("    ipMetroCode: ").append(toIndentedString(ipMetroCode)).append("\n");
    sb.append("    ipAreaCode: ").append(toIndentedString(ipAreaCode)).append("\n");
    sb.append("    ipTimeZone: ").append(toIndentedString(ipTimeZone)).append("\n");
    sb.append("    ipRegionName: ").append(toIndentedString(ipRegionName)).append("\n");
    sb.append("    ipDomain: ").append(toIndentedString(ipDomain)).append("\n");
    sb.append("    ipCountryName: ").append(toIndentedString(ipCountryName)).append("\n");
    sb.append("    ipContinentCode: ").append(toIndentedString(ipContinentCode)).append("\n");
    sb.append("    ipCorporateProxy: ").append(toIndentedString(ipCorporateProxy)).append("\n");
    sb.append("    carderEmail: ").append(toIndentedString(carderEmail)).append("\n");
    sb.append("    highRiskUsername: ").append(toIndentedString(highRiskUsername)).append("\n");
    sb.append("    highRiskPassword: ").append(toIndentedString(highRiskPassword)).append("\n");
    sb.append("    riskScore: ").append(toIndentedString(riskScore)).append("\n");
    sb.append("    isTransProxy: ").append(toIndentedString(isTransProxy)).append("\n");
    sb.append("    prepaid: ").append(toIndentedString(prepaid)).append("\n");
    sb.append("    minfraudVersion: ").append(toIndentedString(minfraudVersion)).append("\n");
    sb.append("    serviceLevel: ").append(toIndentedString(serviceLevel)).append("\n");
    sb.append("    explanation: ").append(toIndentedString(explanation)).append("\n");
    sb.append("    femaleName: ").append(toIndentedString(femaleName)).append("\n");
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
