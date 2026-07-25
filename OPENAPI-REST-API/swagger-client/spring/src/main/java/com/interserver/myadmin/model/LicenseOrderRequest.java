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
 * Request body to validate (putLicenses) or place (addLicense) a license order. Package ids come from getNewLicense.serviceTypes.
 */
@Schema(description = "Request body to validate (putLicenses) or place (addLicense) a license order. Package ids come from getNewLicense.serviceTypes.")
@Validated
@NotUndefined



public class LicenseOrderRequest   {
  @JsonProperty("package")

  private Integer _package = null;

  @JsonProperty("ip")

  private String ip = null;

  @JsonProperty("tos")

  private Boolean tos = null;

  @JsonProperty("frequency")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer frequency = 1;

  @JsonProperty("coupon")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String coupon = "";

  @JsonProperty("comment")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String comment = "";


  public LicenseOrderRequest _package(Integer _package) { 

    this._package = _package;
    return this;
  }

  /**
   * License service type id from getNewLicense.serviceTypes (must be buyable).
   * @return _package
   **/
  
  @Schema(required = true, description = "License service type id from getNewLicense.serviceTypes (must be buyable).")
  
  @NotNull
  public Integer getPackage() {  
    return _package;
  }



  public void setPackage(Integer _package) { 

    this._package = _package;
  }

  public LicenseOrderRequest ip(String ip) { 

    this.ip = ip;
    return this;
  }

  /**
   * IP address the license is bound to.
   * @return ip
   **/
  
  @Schema(required = true, description = "IP address the license is bound to.")
  
  @NotNull
  public String getIp() {  
    return ip;
  }



  public void setIp(String ip) { 

    this.ip = ip;
  }

  public LicenseOrderRequest tos(Boolean tos) { 

    this.tos = tos;
    return this;
  }

  /**
   * Terms-of-service acceptance. Must be true to place the order.
   * @return tos
   **/
  
  @Schema(required = true, description = "Terms-of-service acceptance. Must be true to place the order.")
  
  @NotNull
  public Boolean isTos() {  
    return tos;
  }



  public void setTos(Boolean tos) { 

    this.tos = tos;
  }

  public LicenseOrderRequest frequency(Integer frequency) { 

    this.frequency = frequency;
    return this;
  }

  /**
   * Billing frequency in months.
   * @return frequency
   **/
  
  @Schema(description = "Billing frequency in months.")
  
  public Integer getFrequency() {  
    return frequency;
  }



  public void setFrequency(Integer frequency) { 
    this.frequency = frequency;
  }

  public LicenseOrderRequest coupon(String coupon) { 

    this.coupon = coupon;
    return this;
  }

  /**
   * Coupon code.
   * @return coupon
   **/
  
  @Schema(description = "Coupon code.")
  
  public String getCoupon() {  
    return coupon;
  }



  public void setCoupon(String coupon) { 
    this.coupon = coupon;
  }

  public LicenseOrderRequest comment(String comment) { 

    this.comment = comment;
    return this;
  }

  /**
   * Free-form note saved on the service row.
   * @return comment
   **/
  
  @Schema(description = "Free-form note saved on the service row.")
  
  public String getComment() {  
    return comment;
  }



  public void setComment(String comment) { 
    this.comment = comment;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    LicenseOrderRequest licenseOrderRequest = (LicenseOrderRequest) o;
    return Objects.equals(this._package, licenseOrderRequest._package) &&
        Objects.equals(this.ip, licenseOrderRequest.ip) &&
        Objects.equals(this.tos, licenseOrderRequest.tos) &&
        Objects.equals(this.frequency, licenseOrderRequest.frequency) &&
        Objects.equals(this.coupon, licenseOrderRequest.coupon) &&
        Objects.equals(this.comment, licenseOrderRequest.comment);
  }

  @Override
  public int hashCode() {
    return Objects.hash(_package, ip, tos, frequency, coupon, comment);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class LicenseOrderRequest {\n");
    
    sb.append("    _package: ").append(toIndentedString(_package)).append("\n");
    sb.append("    ip: ").append(toIndentedString(ip)).append("\n");
    sb.append("    tos: ").append(toIndentedString(tos)).append("\n");
    sb.append("    frequency: ").append(toIndentedString(frequency)).append("\n");
    sb.append("    coupon: ").append(toIndentedString(coupon)).append("\n");
    sb.append("    comment: ").append(toIndentedString(comment)).append("\n");
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
