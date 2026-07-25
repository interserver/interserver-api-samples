package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;
import java.time.OffsetDateTime;
import org.springframework.validation.annotation.Validated;
import org.openapitools.jackson.nullable.JsonNullable;
import io.swagger.configuration.NotUndefined;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.Nulls;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * LicenseServiceInfo
 */
@Validated
@NotUndefined



public class LicenseServiceInfo   {
  @JsonProperty("license_id")

  private String licenseId = null;

  @JsonProperty("license_type")

  private String licenseType = null;

  @JsonProperty("license_currency")

  private String licenseCurrency = null;

  @JsonProperty("license_order_date")

  private OffsetDateTime licenseOrderDate = null;

  @JsonProperty("license_custid")

  private String licenseCustid = null;

  @JsonProperty("license_ip")

  private String licenseIp = null;

  @JsonProperty("license_status")

  private String licenseStatus = null;

  @JsonProperty("license_hostname")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String licenseHostname = null;

  @JsonProperty("license_key")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String licenseKey = null;

  @JsonProperty("license_invoice")

  private String licenseInvoice = null;

  @JsonProperty("license_coupon")

  private String licenseCoupon = null;

  @JsonProperty("license_extra")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String licenseExtra = null;


  public LicenseServiceInfo licenseId(String licenseId) { 

    this.licenseId = licenseId;
    return this;
  }

  /**
   * License ID
   * @return licenseId
   **/
  
  @Schema(example = "386522", required = true, description = "License ID")
  
  @NotNull
  public String getLicenseId() {  
    return licenseId;
  }



  public void setLicenseId(String licenseId) { 

    this.licenseId = licenseId;
  }

  public LicenseServiceInfo licenseType(String licenseType) { 

    this.licenseType = licenseType;
    return this;
  }

  /**
   * License type
   * @return licenseType
   **/
  
  @Schema(example = "5034", required = true, description = "License type")
  
  @NotNull
  public String getLicenseType() {  
    return licenseType;
  }



  public void setLicenseType(String licenseType) { 

    this.licenseType = licenseType;
  }

  public LicenseServiceInfo licenseCurrency(String licenseCurrency) { 

    this.licenseCurrency = licenseCurrency;
    return this;
  }

  /**
   * License currency
   * @return licenseCurrency
   **/
  
  @Schema(example = "USD", required = true, description = "License currency")
  
  @NotNull
  public String getLicenseCurrency() {  
    return licenseCurrency;
  }



  public void setLicenseCurrency(String licenseCurrency) { 

    this.licenseCurrency = licenseCurrency;
  }

  public LicenseServiceInfo licenseOrderDate(OffsetDateTime licenseOrderDate) { 

    this.licenseOrderDate = licenseOrderDate;
    return this;
  }

  /**
   * License order date
   * @return licenseOrderDate
   **/
  
  @Schema(example = "2020-01-14T10:48:14Z", required = true, description = "License order date")
  
@Valid
  @NotNull
  public OffsetDateTime getLicenseOrderDate() {  
    return licenseOrderDate;
  }



  public void setLicenseOrderDate(OffsetDateTime licenseOrderDate) { 

    this.licenseOrderDate = licenseOrderDate;
  }

  public LicenseServiceInfo licenseCustid(String licenseCustid) { 

    this.licenseCustid = licenseCustid;
    return this;
  }

  /**
   * Customer ID
   * @return licenseCustid
   **/
  
  @Schema(example = "771282", required = true, description = "Customer ID")
  
  @NotNull
  public String getLicenseCustid() {  
    return licenseCustid;
  }



  public void setLicenseCustid(String licenseCustid) { 

    this.licenseCustid = licenseCustid;
  }

  public LicenseServiceInfo licenseIp(String licenseIp) { 

    this.licenseIp = licenseIp;
    return this;
  }

  /**
   * License IP
   * @return licenseIp
   **/
  
  @Schema(example = "1.2.3.4", required = true, description = "License IP")
  
  @NotNull
  public String getLicenseIp() {  
    return licenseIp;
  }



  public void setLicenseIp(String licenseIp) { 

    this.licenseIp = licenseIp;
  }

  public LicenseServiceInfo licenseStatus(String licenseStatus) { 

    this.licenseStatus = licenseStatus;
    return this;
  }

  /**
   * License status
   * @return licenseStatus
   **/
  
  @Schema(example = "active", required = true, description = "License status")
  
  @NotNull
  public String getLicenseStatus() {  
    return licenseStatus;
  }



  public void setLicenseStatus(String licenseStatus) { 

    this.licenseStatus = licenseStatus;
  }

  public LicenseServiceInfo licenseHostname(String licenseHostname) { 

    this.licenseHostname = licenseHostname;
    return this;
  }

  /**
   * License hostname
   * @return licenseHostname
   **/
  
  @Schema(description = "License hostname")
  
  public String getLicenseHostname() {  
    return licenseHostname;
  }



  public void setLicenseHostname(String licenseHostname) { 
    this.licenseHostname = licenseHostname;
  }

  public LicenseServiceInfo licenseKey(String licenseKey) { 

    this.licenseKey = licenseKey;
    return this;
  }

  /**
   * License key
   * @return licenseKey
   **/
  
  @Schema(description = "License key")
  
  public String getLicenseKey() {  
    return licenseKey;
  }



  public void setLicenseKey(String licenseKey) { 
    this.licenseKey = licenseKey;
  }

  public LicenseServiceInfo licenseInvoice(String licenseInvoice) { 

    this.licenseInvoice = licenseInvoice;
    return this;
  }

  /**
   * License invoice
   * @return licenseInvoice
   **/
  
  @Schema(example = "18704419", required = true, description = "License invoice")
  
  @NotNull
  public String getLicenseInvoice() {  
    return licenseInvoice;
  }



  public void setLicenseInvoice(String licenseInvoice) { 

    this.licenseInvoice = licenseInvoice;
  }

  public LicenseServiceInfo licenseCoupon(String licenseCoupon) { 

    this.licenseCoupon = licenseCoupon;
    return this;
  }

  /**
   * License coupon
   * @return licenseCoupon
   **/
  
  @Schema(example = "1836", required = true, description = "License coupon")
  
  @NotNull
  public String getLicenseCoupon() {  
    return licenseCoupon;
  }



  public void setLicenseCoupon(String licenseCoupon) { 

    this.licenseCoupon = licenseCoupon;
  }

  public LicenseServiceInfo licenseExtra(String licenseExtra) { 

    this.licenseExtra = licenseExtra;
    return this;
  }

  /**
   * Additional license information
   * @return licenseExtra
   **/
  
  @Schema(description = "Additional license information")
  
  public String getLicenseExtra() {  
    return licenseExtra;
  }



  public void setLicenseExtra(String licenseExtra) { 
    this.licenseExtra = licenseExtra;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    LicenseServiceInfo licenseServiceInfo = (LicenseServiceInfo) o;
    return Objects.equals(this.licenseId, licenseServiceInfo.licenseId) &&
        Objects.equals(this.licenseType, licenseServiceInfo.licenseType) &&
        Objects.equals(this.licenseCurrency, licenseServiceInfo.licenseCurrency) &&
        Objects.equals(this.licenseOrderDate, licenseServiceInfo.licenseOrderDate) &&
        Objects.equals(this.licenseCustid, licenseServiceInfo.licenseCustid) &&
        Objects.equals(this.licenseIp, licenseServiceInfo.licenseIp) &&
        Objects.equals(this.licenseStatus, licenseServiceInfo.licenseStatus) &&
        Objects.equals(this.licenseHostname, licenseServiceInfo.licenseHostname) &&
        Objects.equals(this.licenseKey, licenseServiceInfo.licenseKey) &&
        Objects.equals(this.licenseInvoice, licenseServiceInfo.licenseInvoice) &&
        Objects.equals(this.licenseCoupon, licenseServiceInfo.licenseCoupon) &&
        Objects.equals(this.licenseExtra, licenseServiceInfo.licenseExtra);
  }

  @Override
  public int hashCode() {
    return Objects.hash(licenseId, licenseType, licenseCurrency, licenseOrderDate, licenseCustid, licenseIp, licenseStatus, licenseHostname, licenseKey, licenseInvoice, licenseCoupon, licenseExtra);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class LicenseServiceInfo {\n");
    
    sb.append("    licenseId: ").append(toIndentedString(licenseId)).append("\n");
    sb.append("    licenseType: ").append(toIndentedString(licenseType)).append("\n");
    sb.append("    licenseCurrency: ").append(toIndentedString(licenseCurrency)).append("\n");
    sb.append("    licenseOrderDate: ").append(toIndentedString(licenseOrderDate)).append("\n");
    sb.append("    licenseCustid: ").append(toIndentedString(licenseCustid)).append("\n");
    sb.append("    licenseIp: ").append(toIndentedString(licenseIp)).append("\n");
    sb.append("    licenseStatus: ").append(toIndentedString(licenseStatus)).append("\n");
    sb.append("    licenseHostname: ").append(toIndentedString(licenseHostname)).append("\n");
    sb.append("    licenseKey: ").append(toIndentedString(licenseKey)).append("\n");
    sb.append("    licenseInvoice: ").append(toIndentedString(licenseInvoice)).append("\n");
    sb.append("    licenseCoupon: ").append(toIndentedString(licenseCoupon)).append("\n");
    sb.append("    licenseExtra: ").append(toIndentedString(licenseExtra)).append("\n");
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
