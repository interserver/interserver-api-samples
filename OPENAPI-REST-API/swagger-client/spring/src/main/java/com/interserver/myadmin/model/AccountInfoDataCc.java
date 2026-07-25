package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
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
 * Credit card information stored on the account.
 */
@Schema(description = "Credit card information stored on the account.")
@Validated
@NotUndefined



public class AccountInfoDataCc   {
  @JsonProperty("cc")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String cc = null;

  @JsonProperty("cc_exp")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ccExp = null;

  @JsonProperty("name")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String name = null;

  @JsonProperty("address")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String address = null;

  @JsonProperty("city")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String city = null;

  @JsonProperty("state")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String state = null;

  @JsonProperty("zip")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String zip = null;

  @JsonProperty("country")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String country = null;

  @JsonProperty("maxmind_riskscore")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String maxmindRiskscore = null;

  @JsonProperty("maxmind")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private AccountInfoMaxMindResponse maxmind = null;

  @JsonProperty("verified")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Boolean verified = null;


  public AccountInfoDataCc cc(String cc) { 

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

  public AccountInfoDataCc ccExp(String ccExp) { 

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

  public AccountInfoDataCc name(String name) { 

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

  public AccountInfoDataCc address(String address) { 

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

  public AccountInfoDataCc city(String city) { 

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

  public AccountInfoDataCc state(String state) { 

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

  public AccountInfoDataCc zip(String zip) { 

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

  public AccountInfoDataCc country(String country) { 

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

  public AccountInfoDataCc maxmindRiskscore(String maxmindRiskscore) { 

    this.maxmindRiskscore = maxmindRiskscore;
    return this;
  }

  /**
   * Get maxmindRiskscore
   * @return maxmindRiskscore
   **/
  
  @Schema(description = "")
  
  public String getMaxmindRiskscore() {  
    return maxmindRiskscore;
  }



  public void setMaxmindRiskscore(String maxmindRiskscore) { 
    this.maxmindRiskscore = maxmindRiskscore;
  }

  public AccountInfoDataCc maxmind(AccountInfoMaxMindResponse maxmind) { 

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

  public AccountInfoDataCc verified(Boolean verified) { 

    this.verified = verified;
    return this;
  }

  /**
   * Get verified
   * @return verified
   **/
  
  @Schema(description = "")
  
  public Boolean isVerified() {  
    return verified;
  }



  public void setVerified(Boolean verified) { 
    this.verified = verified;
  }

  @Override
  public boolean equals(java.lang.Object o) {
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
