package org.openapitools.model;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Request body to validate (putLicenses) or place (addLicense) a license order. Package ids come from getNewLicense.serviceTypes.
 */
@ApiModel(description="Request body to validate (putLicenses) or place (addLicense) a license order. Package ids come from getNewLicense.serviceTypes.")

public class LicenseOrderRequest  {
  
 /**
  * License service type id from getNewLicense.serviceTypes (must be buyable).
  */
  @ApiModelProperty(required = true, value = "License service type id from getNewLicense.serviceTypes (must be buyable).")

  private Integer _package;

 /**
  * IP address the license is bound to.
  */
  @ApiModelProperty(required = true, value = "IP address the license is bound to.")

  private String ip;

 /**
  * Terms-of-service acceptance. Must be true to place the order.
  */
  @ApiModelProperty(required = true, value = "Terms-of-service acceptance. Must be true to place the order.")

  private Boolean tos;

 /**
  * Billing frequency in months.
  */
  @ApiModelProperty(value = "Billing frequency in months.")

  private Integer frequency = 1;

 /**
  * Coupon code.
  */
  @ApiModelProperty(value = "Coupon code.")

  private String coupon = "";

 /**
  * Free-form note saved on the service row.
  */
  @ApiModelProperty(value = "Free-form note saved on the service row.")

  private String comment = "";
 /**
   * License service type id from getNewLicense.serviceTypes (must be buyable).
   * @return _package
  **/
  @JsonProperty("package")
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
  public boolean equals(Object o) {
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
  private static String toIndentedString(Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}

