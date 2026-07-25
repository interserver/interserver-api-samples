package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.AccountInfoCountryCurrencies;
import org.openapitools.model.AccountInfoData;
import org.openapitools.model.AccountInfoLimits;
import org.openapitools.model.AccountInfoOauthConfig;
import org.openapitools.model.AccountInfoOauthproviders;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Contains the full account profile including personal info, billing details, OAuth connections, and security settings.
 */
@ApiModel(description="Contains the full account profile including personal info, billing details, OAuth connections, and security settings.")

public class AccountInfo  {
  
  @ApiModelProperty(value = "")

  private String custid;

  @ApiModelProperty(value = "")

  private String ima;

  @ApiModelProperty(value = "")

  private AccountInfoData data;

  @ApiModelProperty(value = "")

  private String ip;

  @ApiModelProperty(value = "")

  private AccountInfoOauthproviders oauthproviders;

  @ApiModelProperty(value = "")

  private AccountInfoOauthConfig oauthconfig;

  @ApiModelProperty(value = "")

  private List<String> oauthadapters = new ArrayList<>();

  @ApiModelProperty(value = "")

  private AccountInfoLimits limits = new ArrayList<>();

  @ApiModelProperty(value = "")

  private String language;

  @ApiModelProperty(value = "")

  private AccountInfoCountryCurrencies countryCurrencies = new HashMap<>();

  @ApiModelProperty(value = "")

  private Boolean enableLocales;

  @ApiModelProperty(value = "")

  private Boolean enableCurrencies;

  @ApiModelProperty(value = "")

  private String gravatar;
 /**
   * Get custid
   * @return custid
  **/
  @JsonProperty("custid")
  public String getCustid() {
    return custid;
  }

  public void setCustid(String custid) {
    this.custid = custid;
  }

  public AccountInfo custid(String custid) {
    this.custid = custid;
    return this;
  }

 /**
   * Get ima
   * @return ima
  **/
  @JsonProperty("ima")
  public String getIma() {
    return ima;
  }

  public void setIma(String ima) {
    this.ima = ima;
  }

  public AccountInfo ima(String ima) {
    this.ima = ima;
    return this;
  }

 /**
   * Get data
   * @return data
  **/
  @JsonProperty("data")
  public AccountInfoData getData() {
    return data;
  }

  public void setData(AccountInfoData data) {
    this.data = data;
  }

  public AccountInfo data(AccountInfoData data) {
    this.data = data;
    return this;
  }

 /**
   * Get ip
   * @return ip
  **/
  @JsonProperty("ip")
  public String getIp() {
    return ip;
  }

  public void setIp(String ip) {
    this.ip = ip;
  }

  public AccountInfo ip(String ip) {
    this.ip = ip;
    return this;
  }

 /**
   * Get oauthproviders
   * @return oauthproviders
  **/
  @JsonProperty("oauthproviders")
  public AccountInfoOauthproviders getOauthproviders() {
    return oauthproviders;
  }

  public void setOauthproviders(AccountInfoOauthproviders oauthproviders) {
    this.oauthproviders = oauthproviders;
  }

  public AccountInfo oauthproviders(AccountInfoOauthproviders oauthproviders) {
    this.oauthproviders = oauthproviders;
    return this;
  }

 /**
   * Get oauthconfig
   * @return oauthconfig
  **/
  @JsonProperty("oauthconfig")
  public AccountInfoOauthConfig getOauthconfig() {
    return oauthconfig;
  }

  public void setOauthconfig(AccountInfoOauthConfig oauthconfig) {
    this.oauthconfig = oauthconfig;
  }

  public AccountInfo oauthconfig(AccountInfoOauthConfig oauthconfig) {
    this.oauthconfig = oauthconfig;
    return this;
  }

 /**
   * Get oauthadapters
   * @return oauthadapters
  **/
  @JsonProperty("oauthadapters")
  public List<String> getOauthadapters() {
    return oauthadapters;
  }

  public void setOauthadapters(List<String> oauthadapters) {
    this.oauthadapters = oauthadapters;
  }

  public AccountInfo oauthadapters(List<String> oauthadapters) {
    this.oauthadapters = oauthadapters;
    return this;
  }

  public AccountInfo addOauthadaptersItem(String oauthadaptersItem) {
    this.oauthadapters.add(oauthadaptersItem);
    return this;
  }

 /**
   * Get limits
   * @return limits
  **/
  @JsonProperty("limits")
  public AccountInfoLimits getLimits() {
    return limits;
  }

  public void setLimits(AccountInfoLimits limits) {
    this.limits = limits;
  }

  public AccountInfo limits(AccountInfoLimits limits) {
    this.limits = limits;
    return this;
  }

 /**
   * Get language
   * @return language
  **/
  @JsonProperty("language")
  public String getLanguage() {
    return language;
  }

  public void setLanguage(String language) {
    this.language = language;
  }

  public AccountInfo language(String language) {
    this.language = language;
    return this;
  }

 /**
   * Get countryCurrencies
   * @return countryCurrencies
  **/
  @JsonProperty("countryCurrencies")
  public AccountInfoCountryCurrencies getCountryCurrencies() {
    return countryCurrencies;
  }

  public void setCountryCurrencies(AccountInfoCountryCurrencies countryCurrencies) {
    this.countryCurrencies = countryCurrencies;
  }

  public AccountInfo countryCurrencies(AccountInfoCountryCurrencies countryCurrencies) {
    this.countryCurrencies = countryCurrencies;
    return this;
  }

 /**
   * Get enableLocales
   * @return enableLocales
  **/
  @JsonProperty("enableLocales")
  public Boolean isEnableLocales() {
    return enableLocales;
  }

  public void setEnableLocales(Boolean enableLocales) {
    this.enableLocales = enableLocales;
  }

  public AccountInfo enableLocales(Boolean enableLocales) {
    this.enableLocales = enableLocales;
    return this;
  }

 /**
   * Get enableCurrencies
   * @return enableCurrencies
  **/
  @JsonProperty("enableCurrencies")
  public Boolean isEnableCurrencies() {
    return enableCurrencies;
  }

  public void setEnableCurrencies(Boolean enableCurrencies) {
    this.enableCurrencies = enableCurrencies;
  }

  public AccountInfo enableCurrencies(Boolean enableCurrencies) {
    this.enableCurrencies = enableCurrencies;
    return this;
  }

 /**
   * Get gravatar
   * @return gravatar
  **/
  @JsonProperty("gravatar")
  public String getGravatar() {
    return gravatar;
  }

  public void setGravatar(String gravatar) {
    this.gravatar = gravatar;
  }

  public AccountInfo gravatar(String gravatar) {
    this.gravatar = gravatar;
    return this;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    AccountInfo accountInfo = (AccountInfo) o;
    return Objects.equals(this.custid, accountInfo.custid) &&
        Objects.equals(this.ima, accountInfo.ima) &&
        Objects.equals(this.data, accountInfo.data) &&
        Objects.equals(this.ip, accountInfo.ip) &&
        Objects.equals(this.oauthproviders, accountInfo.oauthproviders) &&
        Objects.equals(this.oauthconfig, accountInfo.oauthconfig) &&
        Objects.equals(this.oauthadapters, accountInfo.oauthadapters) &&
        Objects.equals(this.limits, accountInfo.limits) &&
        Objects.equals(this.language, accountInfo.language) &&
        Objects.equals(this.countryCurrencies, accountInfo.countryCurrencies) &&
        Objects.equals(this.enableLocales, accountInfo.enableLocales) &&
        Objects.equals(this.enableCurrencies, accountInfo.enableCurrencies) &&
        Objects.equals(this.gravatar, accountInfo.gravatar);
  }

  @Override
  public int hashCode() {
    return Objects.hash(custid, ima, data, ip, oauthproviders, oauthconfig, oauthadapters, limits, language, countryCurrencies, enableLocales, enableCurrencies, gravatar);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AccountInfo {\n");
    
    sb.append("    custid: ").append(toIndentedString(custid)).append("\n");
    sb.append("    ima: ").append(toIndentedString(ima)).append("\n");
    sb.append("    data: ").append(toIndentedString(data)).append("\n");
    sb.append("    ip: ").append(toIndentedString(ip)).append("\n");
    sb.append("    oauthproviders: ").append(toIndentedString(oauthproviders)).append("\n");
    sb.append("    oauthconfig: ").append(toIndentedString(oauthconfig)).append("\n");
    sb.append("    oauthadapters: ").append(toIndentedString(oauthadapters)).append("\n");
    sb.append("    limits: ").append(toIndentedString(limits)).append("\n");
    sb.append("    language: ").append(toIndentedString(language)).append("\n");
    sb.append("    countryCurrencies: ").append(toIndentedString(countryCurrencies)).append("\n");
    sb.append("    enableLocales: ").append(toIndentedString(enableLocales)).append("\n");
    sb.append("    enableCurrencies: ").append(toIndentedString(enableCurrencies)).append("\n");
    sb.append("    gravatar: ").append(toIndentedString(gravatar)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private static String toIndentedString(Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}

