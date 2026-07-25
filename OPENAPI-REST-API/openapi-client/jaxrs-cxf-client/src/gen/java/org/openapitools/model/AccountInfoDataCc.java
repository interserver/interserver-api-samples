package org.openapitools.model;

import org.openapitools.model.AccountInfoMaxMindResponse;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Credit card information stored on the account.
 */
@ApiModel(description="Credit card information stored on the account.")

public class AccountInfoDataCc  {
  
  @ApiModelProperty(value = "")

  private String cc;

  @ApiModelProperty(value = "")

  private String ccExp;

  @ApiModelProperty(value = "")

  private String name;

  @ApiModelProperty(value = "")

  private String address;

  @ApiModelProperty(value = "")

  private String city;

  @ApiModelProperty(value = "")

  private String state;

  @ApiModelProperty(value = "")

  private String zip;

  @ApiModelProperty(value = "")

  private String country;

  @ApiModelProperty(value = "")

  private String maxmindRiskscore;

  @ApiModelProperty(value = "")

  private AccountInfoMaxMindResponse maxmind;

  @ApiModelProperty(value = "")

  private Boolean verified;
 /**
   * Get cc
   * @return cc
  **/
  @JsonProperty("cc")
  public String getCc() {
    return cc;
  }

  public void setCc(String cc) {
    this.cc = cc;
  }

  public AccountInfoDataCc cc(String cc) {
    this.cc = cc;
    return this;
  }

 /**
   * Get ccExp
   * @return ccExp
  **/
  @JsonProperty("cc_exp")
  public String getCcExp() {
    return ccExp;
  }

  public void setCcExp(String ccExp) {
    this.ccExp = ccExp;
  }

  public AccountInfoDataCc ccExp(String ccExp) {
    this.ccExp = ccExp;
    return this;
  }

 /**
   * Get name
   * @return name
  **/
  @JsonProperty("name")
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public AccountInfoDataCc name(String name) {
    this.name = name;
    return this;
  }

 /**
   * Get address
   * @return address
  **/
  @JsonProperty("address")
  public String getAddress() {
    return address;
  }

  public void setAddress(String address) {
    this.address = address;
  }

  public AccountInfoDataCc address(String address) {
    this.address = address;
    return this;
  }

 /**
   * Get city
   * @return city
  **/
  @JsonProperty("city")
  public String getCity() {
    return city;
  }

  public void setCity(String city) {
    this.city = city;
  }

  public AccountInfoDataCc city(String city) {
    this.city = city;
    return this;
  }

 /**
   * Get state
   * @return state
  **/
  @JsonProperty("state")
  public String getState() {
    return state;
  }

  public void setState(String state) {
    this.state = state;
  }

  public AccountInfoDataCc state(String state) {
    this.state = state;
    return this;
  }

 /**
   * Get zip
   * @return zip
  **/
  @JsonProperty("zip")
  public String getZip() {
    return zip;
  }

  public void setZip(String zip) {
    this.zip = zip;
  }

  public AccountInfoDataCc zip(String zip) {
    this.zip = zip;
    return this;
  }

 /**
   * Get country
   * @return country
  **/
  @JsonProperty("country")
  public String getCountry() {
    return country;
  }

  public void setCountry(String country) {
    this.country = country;
  }

  public AccountInfoDataCc country(String country) {
    this.country = country;
    return this;
  }

 /**
   * Get maxmindRiskscore
   * @return maxmindRiskscore
  **/
  @JsonProperty("maxmind_riskscore")
  public String getMaxmindRiskscore() {
    return maxmindRiskscore;
  }

  public void setMaxmindRiskscore(String maxmindRiskscore) {
    this.maxmindRiskscore = maxmindRiskscore;
  }

  public AccountInfoDataCc maxmindRiskscore(String maxmindRiskscore) {
    this.maxmindRiskscore = maxmindRiskscore;
    return this;
  }

 /**
   * Get maxmind
   * @return maxmind
  **/
  @JsonProperty("maxmind")
  public AccountInfoMaxMindResponse getMaxmind() {
    return maxmind;
  }

  public void setMaxmind(AccountInfoMaxMindResponse maxmind) {
    this.maxmind = maxmind;
  }

  public AccountInfoDataCc maxmind(AccountInfoMaxMindResponse maxmind) {
    this.maxmind = maxmind;
    return this;
  }

 /**
   * Get verified
   * @return verified
  **/
  @JsonProperty("verified")
  public Boolean isVerified() {
    return verified;
  }

  public void setVerified(Boolean verified) {
    this.verified = verified;
  }

  public AccountInfoDataCc verified(Boolean verified) {
    this.verified = verified;
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
    AccountInfoDataCc accountInfoDataCc = (AccountInfoDataCc) o;
    return Objects.equals(this.cc, accountInfoDataCc.cc) &&
        Objects.equals(this.ccExp, accountInfoDataCc.ccExp) &&
        Objects.equals(this.name, accountInfoDataCc.name) &&
        Objects.equals(this.address, accountInfoDataCc.address) &&
        Objects.equals(this.city, accountInfoDataCc.city) &&
        Objects.equals(this.state, accountInfoDataCc.state) &&
        Objects.equals(this.zip, accountInfoDataCc.zip) &&
        Objects.equals(this.country, accountInfoDataCc.country) &&
        Objects.equals(this.maxmindRiskscore, accountInfoDataCc.maxmindRiskscore) &&
        Objects.equals(this.maxmind, accountInfoDataCc.maxmind) &&
        Objects.equals(this.verified, accountInfoDataCc.verified);
  }

  @Override
  public int hashCode() {
    return Objects.hash(cc, ccExp, name, address, city, state, zip, country, maxmindRiskscore, maxmind, verified);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AccountInfoDataCc {\n");
    
    sb.append("    cc: ").append(toIndentedString(cc)).append("\n");
    sb.append("    ccExp: ").append(toIndentedString(ccExp)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    address: ").append(toIndentedString(address)).append("\n");
    sb.append("    city: ").append(toIndentedString(city)).append("\n");
    sb.append("    state: ").append(toIndentedString(state)).append("\n");
    sb.append("    zip: ").append(toIndentedString(zip)).append("\n");
    sb.append("    country: ").append(toIndentedString(country)).append("\n");
    sb.append("    maxmindRiskscore: ").append(toIndentedString(maxmindRiskscore)).append("\n");
    sb.append("    maxmind: ").append(toIndentedString(maxmind)).append("\n");
    sb.append("    verified: ").append(toIndentedString(verified)).append("\n");
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

