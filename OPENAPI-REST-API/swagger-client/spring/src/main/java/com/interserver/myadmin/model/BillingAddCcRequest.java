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
 * Request to add a new creditcard into the system.
 */
@Schema(description = "Request to add a new creditcard into the system.")
@Validated
@NotUndefined



public class BillingAddCcRequest   {
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

  @JsonProperty("country")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String country = null;

  @JsonProperty("zip")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String zip = null;

  @JsonProperty("cc")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String cc = null;

  @JsonProperty("cc_exp")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ccExp = null;

  @JsonProperty("cc_ccv2")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ccCcv2 = null;


  public BillingAddCcRequest name(String name) { 

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

  public BillingAddCcRequest address(String address) { 

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

  public BillingAddCcRequest city(String city) { 

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

  public BillingAddCcRequest state(String state) { 

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

  public BillingAddCcRequest country(String country) { 

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

  public BillingAddCcRequest zip(String zip) { 

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

  public BillingAddCcRequest cc(String cc) { 

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

  public BillingAddCcRequest ccExp(String ccExp) { 

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

  public BillingAddCcRequest ccCcv2(String ccCcv2) { 

    this.ccCcv2 = ccCcv2;
    return this;
  }

  /**
   * Get ccCcv2
   * @return ccCcv2
   **/
  
  @Schema(description = "")
  
  public String getCcCcv2() {  
    return ccCcv2;
  }



  public void setCcCcv2(String ccCcv2) { 
    this.ccCcv2 = ccCcv2;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    BillingAddCcRequest billingAddCcRequest = (BillingAddCcRequest) o;
    return Objects.equals(this.name, billingAddCcRequest.name) &&
        Objects.equals(this.address, billingAddCcRequest.address) &&
        Objects.equals(this.city, billingAddCcRequest.city) &&
        Objects.equals(this.state, billingAddCcRequest.state) &&
        Objects.equals(this.country, billingAddCcRequest.country) &&
        Objects.equals(this.zip, billingAddCcRequest.zip) &&
        Objects.equals(this.cc, billingAddCcRequest.cc) &&
        Objects.equals(this.ccExp, billingAddCcRequest.ccExp) &&
        Objects.equals(this.ccCcv2, billingAddCcRequest.ccCcv2);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, address, city, state, country, zip, cc, ccExp, ccCcv2);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class BillingAddCcRequest {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    address: ").append(toIndentedString(address)).append("\n");
    sb.append("    city: ").append(toIndentedString(city)).append("\n");
    sb.append("    state: ").append(toIndentedString(state)).append("\n");
    sb.append("    country: ").append(toIndentedString(country)).append("\n");
    sb.append("    zip: ").append(toIndentedString(zip)).append("\n");
    sb.append("    cc: ").append(toIndentedString(cc)).append("\n");
    sb.append("    ccExp: ").append(toIndentedString(ccExp)).append("\n");
    sb.append("    ccCcv2: ").append(toIndentedString(ccCcv2)).append("\n");
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
