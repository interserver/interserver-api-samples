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
 * Detailed domain service record for a domain order.
 */
@Schema(description = "Detailed domain service record for a domain order.")
@Validated
@NotUndefined



public class DomainServiceInfo   {
  @JsonProperty("domain_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String domainId = null;

  @JsonProperty("domain_hostname")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String domainHostname = null;

  @JsonProperty("domain_username")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String domainUsername = null;

  @JsonProperty("domain_password")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String domainPassword = null;

  @JsonProperty("domain_type")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String domainType = null;

  @JsonProperty("domain_currency")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String domainCurrency = null;

  @JsonProperty("domain_expire_date")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String domainExpireDate = null;

  @JsonProperty("domain_order_date")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String domainOrderDate = null;

  @JsonProperty("domain_custid")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String domainCustid = null;

  @JsonProperty("domain_status")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String domainStatus = null;

  @JsonProperty("domain_invoice")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String domainInvoice = null;

  @JsonProperty("domain_coupon")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String domainCoupon = null;


  public DomainServiceInfo domainId(String domainId) { 

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

  public DomainServiceInfo domainHostname(String domainHostname) { 

    this.domainHostname = domainHostname;
    return this;
  }

  /**
   * Get domainHostname
   * @return domainHostname
   **/
  
  @Schema(description = "")
  
  public String getDomainHostname() {  
    return domainHostname;
  }



  public void setDomainHostname(String domainHostname) { 
    this.domainHostname = domainHostname;
  }

  public DomainServiceInfo domainUsername(String domainUsername) { 

    this.domainUsername = domainUsername;
    return this;
  }

  /**
   * Get domainUsername
   * @return domainUsername
   **/
  
  @Schema(description = "")
  
  public String getDomainUsername() {  
    return domainUsername;
  }



  public void setDomainUsername(String domainUsername) { 
    this.domainUsername = domainUsername;
  }

  public DomainServiceInfo domainPassword(String domainPassword) { 

    this.domainPassword = domainPassword;
    return this;
  }

  /**
   * Get domainPassword
   * @return domainPassword
   **/
  
  @Schema(description = "")
  
  public String getDomainPassword() {  
    return domainPassword;
  }



  public void setDomainPassword(String domainPassword) { 
    this.domainPassword = domainPassword;
  }

  public DomainServiceInfo domainType(String domainType) { 

    this.domainType = domainType;
    return this;
  }

  /**
   * Get domainType
   * @return domainType
   **/
  
  @Schema(description = "")
  
  public String getDomainType() {  
    return domainType;
  }



  public void setDomainType(String domainType) { 
    this.domainType = domainType;
  }

  public DomainServiceInfo domainCurrency(String domainCurrency) { 

    this.domainCurrency = domainCurrency;
    return this;
  }

  /**
   * Get domainCurrency
   * @return domainCurrency
   **/
  
  @Schema(description = "")
  
  public String getDomainCurrency() {  
    return domainCurrency;
  }



  public void setDomainCurrency(String domainCurrency) { 
    this.domainCurrency = domainCurrency;
  }

  public DomainServiceInfo domainExpireDate(String domainExpireDate) { 

    this.domainExpireDate = domainExpireDate;
    return this;
  }

  /**
   * Get domainExpireDate
   * @return domainExpireDate
   **/
  
  @Schema(description = "")
  
  public String getDomainExpireDate() {  
    return domainExpireDate;
  }



  public void setDomainExpireDate(String domainExpireDate) { 
    this.domainExpireDate = domainExpireDate;
  }

  public DomainServiceInfo domainOrderDate(String domainOrderDate) { 

    this.domainOrderDate = domainOrderDate;
    return this;
  }

  /**
   * Get domainOrderDate
   * @return domainOrderDate
   **/
  
  @Schema(description = "")
  
  public String getDomainOrderDate() {  
    return domainOrderDate;
  }



  public void setDomainOrderDate(String domainOrderDate) { 
    this.domainOrderDate = domainOrderDate;
  }

  public DomainServiceInfo domainCustid(String domainCustid) { 

    this.domainCustid = domainCustid;
    return this;
  }

  /**
   * Get domainCustid
   * @return domainCustid
   **/
  
  @Schema(description = "")
  
  public String getDomainCustid() {  
    return domainCustid;
  }



  public void setDomainCustid(String domainCustid) { 
    this.domainCustid = domainCustid;
  }

  public DomainServiceInfo domainStatus(String domainStatus) { 

    this.domainStatus = domainStatus;
    return this;
  }

  /**
   * Get domainStatus
   * @return domainStatus
   **/
  
  @Schema(description = "")
  
  public String getDomainStatus() {  
    return domainStatus;
  }



  public void setDomainStatus(String domainStatus) { 
    this.domainStatus = domainStatus;
  }

  public DomainServiceInfo domainInvoice(String domainInvoice) { 

    this.domainInvoice = domainInvoice;
    return this;
  }

  /**
   * Get domainInvoice
   * @return domainInvoice
   **/
  
  @Schema(description = "")
  
  public String getDomainInvoice() {  
    return domainInvoice;
  }



  public void setDomainInvoice(String domainInvoice) { 
    this.domainInvoice = domainInvoice;
  }

  public DomainServiceInfo domainCoupon(String domainCoupon) { 

    this.domainCoupon = domainCoupon;
    return this;
  }

  /**
   * Get domainCoupon
   * @return domainCoupon
   **/
  
  @Schema(description = "")
  
  public String getDomainCoupon() {  
    return domainCoupon;
  }



  public void setDomainCoupon(String domainCoupon) { 
    this.domainCoupon = domainCoupon;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    DomainServiceInfo domainServiceInfo = (DomainServiceInfo) o;
    return Objects.equals(this.domainId, domainServiceInfo.domainId) &&
        Objects.equals(this.domainHostname, domainServiceInfo.domainHostname) &&
        Objects.equals(this.domainUsername, domainServiceInfo.domainUsername) &&
        Objects.equals(this.domainPassword, domainServiceInfo.domainPassword) &&
        Objects.equals(this.domainType, domainServiceInfo.domainType) &&
        Objects.equals(this.domainCurrency, domainServiceInfo.domainCurrency) &&
        Objects.equals(this.domainExpireDate, domainServiceInfo.domainExpireDate) &&
        Objects.equals(this.domainOrderDate, domainServiceInfo.domainOrderDate) &&
        Objects.equals(this.domainCustid, domainServiceInfo.domainCustid) &&
        Objects.equals(this.domainStatus, domainServiceInfo.domainStatus) &&
        Objects.equals(this.domainInvoice, domainServiceInfo.domainInvoice) &&
        Objects.equals(this.domainCoupon, domainServiceInfo.domainCoupon);
  }

  @Override
  public int hashCode() {
    return Objects.hash(domainId, domainHostname, domainUsername, domainPassword, domainType, domainCurrency, domainExpireDate, domainOrderDate, domainCustid, domainStatus, domainInvoice, domainCoupon);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DomainServiceInfo {\n");
    
    sb.append("    domainId: ").append(toIndentedString(domainId)).append("\n");
    sb.append("    domainHostname: ").append(toIndentedString(domainHostname)).append("\n");
    sb.append("    domainUsername: ").append(toIndentedString(domainUsername)).append("\n");
    sb.append("    domainPassword: ").append(toIndentedString(domainPassword)).append("\n");
    sb.append("    domainType: ").append(toIndentedString(domainType)).append("\n");
    sb.append("    domainCurrency: ").append(toIndentedString(domainCurrency)).append("\n");
    sb.append("    domainExpireDate: ").append(toIndentedString(domainExpireDate)).append("\n");
    sb.append("    domainOrderDate: ").append(toIndentedString(domainOrderDate)).append("\n");
    sb.append("    domainCustid: ").append(toIndentedString(domainCustid)).append("\n");
    sb.append("    domainStatus: ").append(toIndentedString(domainStatus)).append("\n");
    sb.append("    domainInvoice: ").append(toIndentedString(domainInvoice)).append("\n");
    sb.append("    domainCoupon: ").append(toIndentedString(domainCoupon)).append("\n");
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
