package io.swagger.model;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;


/**
 * Request body to validate (putLicenses) or place (addLicense) a license order. Package ids come from getNewLicense.serviceTypes.
 **/
@Schema(description = "Request body to validate (putLicenses) or place (addLicense) a license order. Package ids come from getNewLicense.serviceTypes.")


public class LicenseOrderRequest   {
  @JsonProperty("package")
  private Integer _package = null;
  @JsonProperty("ip")
  private String ip = null;
  @JsonProperty("tos")
  private Boolean tos = null;
  @JsonProperty("frequency")
  private Integer frequency = 1;
  @JsonProperty("coupon")
  private String coupon = "";
  @JsonProperty("comment")
  private String comment = "";
  /**
   * License service type id from getNewLicense.serviceTypes (must be buyable).
   **/
  public LicenseOrderRequest _package(Integer _package) {
    this._package = _package;
    return this;
  }

  
  @Schema(required = true, description = "License service type id from getNewLicense.serviceTypes (must be buyable).")
  @JsonProperty("package")
  public Integer getPackage() {
    return _package;
  }
  public void setPackage(Integer _package) {
    this._package = _package;
  }

  /**
   * IP address the license is bound to.
   **/
  public LicenseOrderRequest ip(String ip) {
    this.ip = ip;
    return this;
  }

  
  @Schema(required = true, description = "IP address the license is bound to.")
  @JsonProperty("ip")
  public String getIp() {
    return ip;
  }
  public void setIp(String ip) {
    this.ip = ip;
  }

  /**
   * Terms-of-service acceptance. Must be true to place the order.
   **/
  public LicenseOrderRequest tos(Boolean tos) {
    this.tos = tos;
    return this;
  }

  
  @Schema(required = true, description = "Terms-of-service acceptance. Must be true to place the order.")
  @JsonProperty("tos")
  public Boolean isTos() {
    return tos;
  }
  public void setTos(Boolean tos) {
    this.tos = tos;
  }

  /**
   * Billing frequency in months.
   **/
  public LicenseOrderRequest frequency(Integer frequency) {
    this.frequency = frequency;
    return this;
  }

  
  @Schema(description = "Billing frequency in months.")
  @JsonProperty("frequency")
  public Integer getFrequency() {
    return frequency;
  }
  public void setFrequency(Integer frequency) {
    this.frequency = frequency;
  }

  /**
   * Coupon code.
   **/
  public LicenseOrderRequest coupon(String coupon) {
    this.coupon = coupon;
    return this;
  }

  
  @Schema(description = "Coupon code.")
  @JsonProperty("coupon")
  public String getCoupon() {
    return coupon;
  }
  public void setCoupon(String coupon) {
    this.coupon = coupon;
  }

  /**
   * Free-form note saved on the service row.
   **/
  public LicenseOrderRequest comment(String comment) {
    this.comment = comment;
    return this;
  }

  
  @Schema(description = "Free-form note saved on the service row.")
  @JsonProperty("comment")
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
    return Objects.equals(_package, licenseOrderRequest._package) &&
        Objects.equals(ip, licenseOrderRequest.ip) &&
        Objects.equals(tos, licenseOrderRequest.tos) &&
        Objects.equals(frequency, licenseOrderRequest.frequency) &&
        Objects.equals(coupon, licenseOrderRequest.coupon) &&
        Objects.equals(comment, licenseOrderRequest.comment);
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
