package io.swagger.model;

import io.swagger.v3.oas.annotations.media.Schema;
import javax.validation.constraints.*;

import io.swagger.v3.oas.annotations.media.Schema;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonCreator;

/**
  * Request body to validate (putLicenses) or place (addLicense) a license order. Package ids come from getNewLicense.serviceTypes.
 **/
@Schema(description="Request body to validate (putLicenses) or place (addLicense) a license order. Package ids come from getNewLicense.serviceTypes.")
public class LicenseOrderRequest   {
  
  @Schema(required = true, description = "License service type id from getNewLicense.serviceTypes (must be buyable).")
 /**
   * License service type id from getNewLicense.serviceTypes (must be buyable).  
  **/
  private Integer _package = null;
  
  @Schema(required = true, description = "IP address the license is bound to.")
 /**
   * IP address the license is bound to.  
  **/
  private String ip = null;
  
  @Schema(required = true, description = "Terms-of-service acceptance. Must be true to place the order.")
 /**
   * Terms-of-service acceptance. Must be true to place the order.  
  **/
  private Boolean tos = null;
  
  @Schema(description = "Billing frequency in months.")
 /**
   * Billing frequency in months.  
  **/
  private Integer frequency = 1;
  
  @Schema(description = "Coupon code.")
 /**
   * Coupon code.  
  **/
  private String coupon = "";
  
  @Schema(description = "Free-form note saved on the service row.")
 /**
   * Free-form note saved on the service row.  
  **/
  private String comment = "";
 /**
   * License service type id from getNewLicense.serviceTypes (must be buyable).
   * @return _package
  **/
  @JsonProperty("package")
  @NotNull
  public Integer getPackage() {
    return _package;
  }

  public void setPackage(Integer _package) {
    this._package = _package;
  }

  public LicenseOrderRequest _package(Integer _package) {
    this._package = _package;
    return this;
  }

 /**
   * IP address the license is bound to.
   * @return ip
  **/
  @JsonProperty("ip")
  @NotNull
  public String getIp() {
    return ip;
  }

  public void setIp(String ip) {
    this.ip = ip;
  }

  public LicenseOrderRequest ip(String ip) {
    this.ip = ip;
    return this;
  }

 /**
   * Terms-of-service acceptance. Must be true to place the order.
   * @return tos
  **/
  @JsonProperty("tos")
  @NotNull
  public Boolean isTos() {
    return tos;
  }

  public void setTos(Boolean tos) {
    this.tos = tos;
  }

  public LicenseOrderRequest tos(Boolean tos) {
    this.tos = tos;
    return this;
  }

 /**
   * Billing frequency in months.
   * @return frequency
  **/
  @JsonProperty("frequency")
  @NotNull
  public Integer getFrequency() {
    return frequency;
  }

  public void setFrequency(Integer frequency) {
    this.frequency = frequency;
  }

  public LicenseOrderRequest frequency(Integer frequency) {
    this.frequency = frequency;
    return this;
  }

 /**
   * Coupon code.
   * @return coupon
  **/
  @JsonProperty("coupon")
  @NotNull
  public String getCoupon() {
    return coupon;
  }

  public void setCoupon(String coupon) {
    this.coupon = coupon;
  }

  public LicenseOrderRequest coupon(String coupon) {
    this.coupon = coupon;
    return this;
  }

 /**
   * Free-form note saved on the service row.
   * @return comment
  **/
  @JsonProperty("comment")
  @NotNull
  public String getComment() {
    return comment;
  }

  public void setComment(String comment) {
    this.comment = comment;
  }

  public LicenseOrderRequest comment(String comment) {
    this.comment = comment;
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
