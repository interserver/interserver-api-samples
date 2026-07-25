package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.DomainOrderResponse;
import com.interserver.myadmin.model.DomainProvProcessPending;
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
 * Extended billing context for a domain including registrar order details and contact info.
 */
@Schema(description = "Extended billing context for a domain including registrar order details and contact info.")
@Validated
@NotUndefined



public class DomainBillingExtra   {
  @JsonProperty("order")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private DomainOrderResponse order = null;

  @JsonProperty("order_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String orderId = null;

  @JsonProperty("domain_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String domainId = null;

  @JsonProperty("provProcessPending")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private DomainProvProcessPending provProcessPending = null;

  @JsonProperty("email")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String email = null;

  @JsonProperty("firstname")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String firstname = null;

  @JsonProperty("lastname")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String lastname = null;

  @JsonProperty("company")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String company = null;

  @JsonProperty("address")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String address = null;

  @JsonProperty("address2")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String address2 = null;

  @JsonProperty("address3")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String address3 = null;

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

  @JsonProperty("phone")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String phone = null;

  @JsonProperty("fax")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String fax = null;


  public DomainBillingExtra order(DomainOrderResponse order) { 

    this.order = order;
    return this;
  }

  /**
   * Get order
   * @return order
   **/
  
  @Schema(description = "")
  
@Valid
  public DomainOrderResponse getOrder() {  
    return order;
  }



  public void setOrder(DomainOrderResponse order) { 
    this.order = order;
  }

  public DomainBillingExtra orderId(String orderId) { 

    this.orderId = orderId;
    return this;
  }

  /**
   * Get orderId
   * @return orderId
   **/
  
  @Schema(description = "")
  
  public String getOrderId() {  
    return orderId;
  }



  public void setOrderId(String orderId) { 
    this.orderId = orderId;
  }

  public DomainBillingExtra domainId(String domainId) { 

    this.domainId = domainId;
    return this;
  }

  /**
   * Get domainId
   * @return domainId
   **/
  
  @Schema(description = "")
  
  public String getDomainId() {  
    return domainId;
  }



  public void setDomainId(String domainId) { 
    this.domainId = domainId;
  }

  public DomainBillingExtra provProcessPending(DomainProvProcessPending provProcessPending) { 

    this.provProcessPending = provProcessPending;
    return this;
  }

  /**
   * Get provProcessPending
   * @return provProcessPending
   **/
  
  @Schema(description = "")
  
@Valid
  public DomainProvProcessPending getProvProcessPending() {  
    return provProcessPending;
  }



  public void setProvProcessPending(DomainProvProcessPending provProcessPending) { 
    this.provProcessPending = provProcessPending;
  }

  public DomainBillingExtra email(String email) { 

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

  public DomainBillingExtra firstname(String firstname) { 

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

  public DomainBillingExtra lastname(String lastname) { 

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

  public DomainBillingExtra company(String company) { 

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

  public DomainBillingExtra address(String address) { 

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

  public DomainBillingExtra address2(String address2) { 

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

  public DomainBillingExtra address3(String address3) { 

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

  public DomainBillingExtra city(String city) { 

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

  public DomainBillingExtra state(String state) { 

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

  public DomainBillingExtra zip(String zip) { 

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

  public DomainBillingExtra country(String country) { 

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

  public DomainBillingExtra phone(String phone) { 

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

  public DomainBillingExtra fax(String fax) { 

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

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    DomainBillingExtra domainBillingExtra = (DomainBillingExtra) o;
    return Objects.equals(this.order, domainBillingExtra.order) &&
        Objects.equals(this.orderId, domainBillingExtra.orderId) &&
        Objects.equals(this.domainId, domainBillingExtra.domainId) &&
        Objects.equals(this.provProcessPending, domainBillingExtra.provProcessPending) &&
        Objects.equals(this.email, domainBillingExtra.email) &&
        Objects.equals(this.firstname, domainBillingExtra.firstname) &&
        Objects.equals(this.lastname, domainBillingExtra.lastname) &&
        Objects.equals(this.company, domainBillingExtra.company) &&
        Objects.equals(this.address, domainBillingExtra.address) &&
        Objects.equals(this.address2, domainBillingExtra.address2) &&
        Objects.equals(this.address3, domainBillingExtra.address3) &&
        Objects.equals(this.city, domainBillingExtra.city) &&
        Objects.equals(this.state, domainBillingExtra.state) &&
        Objects.equals(this.zip, domainBillingExtra.zip) &&
        Objects.equals(this.country, domainBillingExtra.country) &&
        Objects.equals(this.phone, domainBillingExtra.phone) &&
        Objects.equals(this.fax, domainBillingExtra.fax);
  }

  @Override
  public int hashCode() {
    return Objects.hash(order, orderId, domainId, provProcessPending, email, firstname, lastname, company, address, address2, address3, city, state, zip, country, phone, fax);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DomainBillingExtra {\n");
    
    sb.append("    order: ").append(toIndentedString(order)).append("\n");
    sb.append("    orderId: ").append(toIndentedString(orderId)).append("\n");
    sb.append("    domainId: ").append(toIndentedString(domainId)).append("\n");
    sb.append("    provProcessPending: ").append(toIndentedString(provProcessPending)).append("\n");
    sb.append("    email: ").append(toIndentedString(email)).append("\n");
    sb.append("    firstname: ").append(toIndentedString(firstname)).append("\n");
    sb.append("    lastname: ").append(toIndentedString(lastname)).append("\n");
    sb.append("    company: ").append(toIndentedString(company)).append("\n");
    sb.append("    address: ").append(toIndentedString(address)).append("\n");
    sb.append("    address2: ").append(toIndentedString(address2)).append("\n");
    sb.append("    address3: ").append(toIndentedString(address3)).append("\n");
    sb.append("    city: ").append(toIndentedString(city)).append("\n");
    sb.append("    state: ").append(toIndentedString(state)).append("\n");
    sb.append("    zip: ").append(toIndentedString(zip)).append("\n");
    sb.append("    country: ").append(toIndentedString(country)).append("\n");
    sb.append("    phone: ").append(toIndentedString(phone)).append("\n");
    sb.append("    fax: ").append(toIndentedString(fax)).append("\n");
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
