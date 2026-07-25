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
 * Contact details for the registered domain owner.
 */
@Schema(description = "Contact details for the registered domain owner.")
@Validated
@NotUndefined



public class DomainOwnerContact   {
  @JsonProperty("postal_code")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String postalCode = null;

  @JsonProperty("org_name")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String orgName = null;

  @JsonProperty("country")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String country = null;

  @JsonProperty("status")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String status = null;

  @JsonProperty("state")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String state = null;

  @JsonProperty("first_name")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String firstName = null;

  @JsonProperty("last_name")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String lastName = null;

  @JsonProperty("address3")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String address3 = null;

  @JsonProperty("fax")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String fax = null;

  @JsonProperty("address2")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String address2 = null;

  @JsonProperty("email")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String email = null;

  @JsonProperty("city")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String city = null;

  @JsonProperty("phone")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String phone = null;

  @JsonProperty("address1")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String address1 = null;


  public DomainOwnerContact postalCode(String postalCode) { 

    this.postalCode = postalCode;
    return this;
  }

  /**
   * Get postalCode
   * @return postalCode
   **/
  
  @Schema(description = "")
  
  public String getPostalCode() {  
    return postalCode;
  }



  public void setPostalCode(String postalCode) { 
    this.postalCode = postalCode;
  }

  public DomainOwnerContact orgName(String orgName) { 

    this.orgName = orgName;
    return this;
  }

  /**
   * Get orgName
   * @return orgName
   **/
  
  @Schema(description = "")
  
  public String getOrgName() {  
    return orgName;
  }



  public void setOrgName(String orgName) { 
    this.orgName = orgName;
  }

  public DomainOwnerContact country(String country) { 

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

  public DomainOwnerContact status(String status) { 

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

  public DomainOwnerContact state(String state) { 

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

  public DomainOwnerContact firstName(String firstName) { 

    this.firstName = firstName;
    return this;
  }

  /**
   * Get firstName
   * @return firstName
   **/
  
  @Schema(description = "")
  
  public String getFirstName() {  
    return firstName;
  }



  public void setFirstName(String firstName) { 
    this.firstName = firstName;
  }

  public DomainOwnerContact lastName(String lastName) { 

    this.lastName = lastName;
    return this;
  }

  /**
   * Get lastName
   * @return lastName
   **/
  
  @Schema(description = "")
  
  public String getLastName() {  
    return lastName;
  }



  public void setLastName(String lastName) { 
    this.lastName = lastName;
  }

  public DomainOwnerContact address3(String address3) { 

    this.address3 = address3;
    return this;
  }

  /**
   * Get address3
   * @return address3
   **/
  
  @Schema(description = "")
  
  public String getAddress3() {  
    return address3;
  }



  public void setAddress3(String address3) { 
    this.address3 = address3;
  }

  public DomainOwnerContact fax(String fax) { 

    this.fax = fax;
    return this;
  }

  /**
   * Get fax
   * @return fax
   **/
  
  @Schema(description = "")
  
  public String getFax() {  
    return fax;
  }



  public void setFax(String fax) { 
    this.fax = fax;
  }

  public DomainOwnerContact address2(String address2) { 

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

  public DomainOwnerContact email(String email) { 

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

  public DomainOwnerContact city(String city) { 

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

  public DomainOwnerContact phone(String phone) { 

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

  public DomainOwnerContact address1(String address1) { 

    this.address1 = address1;
    return this;
  }

  /**
   * Get address1
   * @return address1
   **/
  
  @Schema(description = "")
  
  public String getAddress1() {  
    return address1;
  }



  public void setAddress1(String address1) { 
    this.address1 = address1;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    DomainOwnerContact domainOwnerContact = (DomainOwnerContact) o;
    return Objects.equals(this.postalCode, domainOwnerContact.postalCode) &&
        Objects.equals(this.orgName, domainOwnerContact.orgName) &&
        Objects.equals(this.country, domainOwnerContact.country) &&
        Objects.equals(this.status, domainOwnerContact.status) &&
        Objects.equals(this.state, domainOwnerContact.state) &&
        Objects.equals(this.firstName, domainOwnerContact.firstName) &&
        Objects.equals(this.lastName, domainOwnerContact.lastName) &&
        Objects.equals(this.address3, domainOwnerContact.address3) &&
        Objects.equals(this.fax, domainOwnerContact.fax) &&
        Objects.equals(this.address2, domainOwnerContact.address2) &&
        Objects.equals(this.email, domainOwnerContact.email) &&
        Objects.equals(this.city, domainOwnerContact.city) &&
        Objects.equals(this.phone, domainOwnerContact.phone) &&
        Objects.equals(this.address1, domainOwnerContact.address1);
  }

  @Override
  public int hashCode() {
    return Objects.hash(postalCode, orgName, country, status, state, firstName, lastName, address3, fax, address2, email, city, phone, address1);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DomainOwnerContact {\n");
    
    sb.append("    postalCode: ").append(toIndentedString(postalCode)).append("\n");
    sb.append("    orgName: ").append(toIndentedString(orgName)).append("\n");
    sb.append("    country: ").append(toIndentedString(country)).append("\n");
    sb.append("    status: ").append(toIndentedString(status)).append("\n");
    sb.append("    state: ").append(toIndentedString(state)).append("\n");
    sb.append("    firstName: ").append(toIndentedString(firstName)).append("\n");
    sb.append("    lastName: ").append(toIndentedString(lastName)).append("\n");
    sb.append("    address3: ").append(toIndentedString(address3)).append("\n");
    sb.append("    fax: ").append(toIndentedString(fax)).append("\n");
    sb.append("    address2: ").append(toIndentedString(address2)).append("\n");
    sb.append("    email: ").append(toIndentedString(email)).append("\n");
    sb.append("    city: ").append(toIndentedString(city)).append("\n");
    sb.append("    phone: ").append(toIndentedString(phone)).append("\n");
    sb.append("    address1: ").append(toIndentedString(address1)).append("\n");
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
