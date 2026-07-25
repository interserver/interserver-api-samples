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
 * Contact details used for domain registrant/admin/technical/billing records.
 */
@Schema(description = "Contact details used for domain registrant/admin/technical/billing records.")
@Validated
@NotUndefined



public class DomainContactDetails   {
  @JsonProperty("status")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String status = null;

  @JsonProperty("state")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String state = null;

  @JsonProperty("org_name")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String orgName = null;

  @JsonProperty("country")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String country = null;

  @JsonProperty("postal_code")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String postalCode = null;

  @JsonProperty("email")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String email = null;

  @JsonProperty("fax")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String fax = null;

  @JsonProperty("address2")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String address2 = null;

  @JsonProperty("address3")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String address3 = null;

  @JsonProperty("address1")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String address1 = null;

  @JsonProperty("city")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String city = null;

  @JsonProperty("phone")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String phone = null;

  @JsonProperty("first_name")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String firstName = null;

  @JsonProperty("last_name")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String lastName = null;


  public DomainContactDetails status(String status) { 

    this.status = status;
    return this;
  }

  /**
   * Contact status reported by the registrar.
   * @return status
   **/
  
  @Schema(description = "Contact status reported by the registrar.")
  
  public String getStatus() {  
    return status;
  }



  public void setStatus(String status) { 
    this.status = status;
  }

  public DomainContactDetails state(String state) { 

    this.state = state;
    return this;
  }

  /**
   * State or region for the contact address.
   * @return state
   **/
  
  @Schema(description = "State or region for the contact address.")
  
  public String getState() {  
    return state;
  }



  public void setState(String state) { 
    this.state = state;
  }

  public DomainContactDetails orgName(String orgName) { 

    this.orgName = orgName;
    return this;
  }

  /**
   * Organization name for the contact.
   * @return orgName
   **/
  
  @Schema(description = "Organization name for the contact.")
  
  public String getOrgName() {  
    return orgName;
  }



  public void setOrgName(String orgName) { 
    this.orgName = orgName;
  }

  public DomainContactDetails country(String country) { 

    this.country = country;
    return this;
  }

  /**
   * Two-letter country code for the contact.
   * @return country
   **/
  
  @Schema(description = "Two-letter country code for the contact.")
  
  public String getCountry() {  
    return country;
  }



  public void setCountry(String country) { 
    this.country = country;
  }

  public DomainContactDetails postalCode(String postalCode) { 

    this.postalCode = postalCode;
    return this;
  }

  /**
   * Postal or ZIP code for the contact address.
   * @return postalCode
   **/
  
  @Schema(description = "Postal or ZIP code for the contact address.")
  
  public String getPostalCode() {  
    return postalCode;
  }



  public void setPostalCode(String postalCode) { 
    this.postalCode = postalCode;
  }

  public DomainContactDetails email(String email) { 

    this.email = email;
    return this;
  }

  /**
   * Email address for the contact.
   * @return email
   **/
  
  @Schema(description = "Email address for the contact.")
  
  public String getEmail() {  
    return email;
  }



  public void setEmail(String email) { 
    this.email = email;
  }

  public DomainContactDetails fax(String fax) { 

    this.fax = fax;
    return this;
  }

  /**
   * Fax number for the contact, if available.
   * @return fax
   **/
  
  @Schema(description = "Fax number for the contact, if available.")
  
  public String getFax() {  
    return fax;
  }



  public void setFax(String fax) { 
    this.fax = fax;
  }

  public DomainContactDetails address2(String address2) { 

    this.address2 = address2;
    return this;
  }

  /**
   * Secondary street address line.
   * @return address2
   **/
  
  @Schema(description = "Secondary street address line.")
  
  public String getAddress2() {  
    return address2;
  }



  public void setAddress2(String address2) { 
    this.address2 = address2;
  }

  public DomainContactDetails address3(String address3) { 

    this.address3 = address3;
    return this;
  }

  /**
   * Tertiary street address line.
   * @return address3
   **/
  
  @Schema(description = "Tertiary street address line.")
  
  public String getAddress3() {  
    return address3;
  }



  public void setAddress3(String address3) { 
    this.address3 = address3;
  }

  public DomainContactDetails address1(String address1) { 

    this.address1 = address1;
    return this;
  }

  /**
   * Primary street address line.
   * @return address1
   **/
  
  @Schema(description = "Primary street address line.")
  
  public String getAddress1() {  
    return address1;
  }



  public void setAddress1(String address1) { 
    this.address1 = address1;
  }

  public DomainContactDetails city(String city) { 

    this.city = city;
    return this;
  }

  /**
   * City for the contact address.
   * @return city
   **/
  
  @Schema(description = "City for the contact address.")
  
  public String getCity() {  
    return city;
  }



  public void setCity(String city) { 
    this.city = city;
  }

  public DomainContactDetails phone(String phone) { 

    this.phone = phone;
    return this;
  }

  /**
   * Phone number for the contact.
   * @return phone
   **/
  
  @Schema(description = "Phone number for the contact.")
  
  public String getPhone() {  
    return phone;
  }



  public void setPhone(String phone) { 
    this.phone = phone;
  }

  public DomainContactDetails firstName(String firstName) { 

    this.firstName = firstName;
    return this;
  }

  /**
   * First name for the contact.
   * @return firstName
   **/
  
  @Schema(description = "First name for the contact.")
  
  public String getFirstName() {  
    return firstName;
  }



  public void setFirstName(String firstName) { 
    this.firstName = firstName;
  }

  public DomainContactDetails lastName(String lastName) { 

    this.lastName = lastName;
    return this;
  }

  /**
   * Last name for the contact.
   * @return lastName
   **/
  
  @Schema(description = "Last name for the contact.")
  
  public String getLastName() {  
    return lastName;
  }



  public void setLastName(String lastName) { 
    this.lastName = lastName;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    DomainContactDetails domainContactDetails = (DomainContactDetails) o;
    return Objects.equals(this.status, domainContactDetails.status) &&
        Objects.equals(this.state, domainContactDetails.state) &&
        Objects.equals(this.orgName, domainContactDetails.orgName) &&
        Objects.equals(this.country, domainContactDetails.country) &&
        Objects.equals(this.postalCode, domainContactDetails.postalCode) &&
        Objects.equals(this.email, domainContactDetails.email) &&
        Objects.equals(this.fax, domainContactDetails.fax) &&
        Objects.equals(this.address2, domainContactDetails.address2) &&
        Objects.equals(this.address3, domainContactDetails.address3) &&
        Objects.equals(this.address1, domainContactDetails.address1) &&
        Objects.equals(this.city, domainContactDetails.city) &&
        Objects.equals(this.phone, domainContactDetails.phone) &&
        Objects.equals(this.firstName, domainContactDetails.firstName) &&
        Objects.equals(this.lastName, domainContactDetails.lastName);
  }

  @Override
  public int hashCode() {
    return Objects.hash(status, state, orgName, country, postalCode, email, fax, address2, address3, address1, city, phone, firstName, lastName);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DomainContactDetails {\n");
    
    sb.append("    status: ").append(toIndentedString(status)).append("\n");
    sb.append("    state: ").append(toIndentedString(state)).append("\n");
    sb.append("    orgName: ").append(toIndentedString(orgName)).append("\n");
    sb.append("    country: ").append(toIndentedString(country)).append("\n");
    sb.append("    postalCode: ").append(toIndentedString(postalCode)).append("\n");
    sb.append("    email: ").append(toIndentedString(email)).append("\n");
    sb.append("    fax: ").append(toIndentedString(fax)).append("\n");
    sb.append("    address2: ").append(toIndentedString(address2)).append("\n");
    sb.append("    address3: ").append(toIndentedString(address3)).append("\n");
    sb.append("    address1: ").append(toIndentedString(address1)).append("\n");
    sb.append("    city: ").append(toIndentedString(city)).append("\n");
    sb.append("    phone: ").append(toIndentedString(phone)).append("\n");
    sb.append("    firstName: ").append(toIndentedString(firstName)).append("\n");
    sb.append("    lastName: ").append(toIndentedString(lastName)).append("\n");
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
