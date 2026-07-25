package io.swagger.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;
import javax.validation.constraints.*;
/**
 * Request body to validate (putFloating_ips) or place (addFloatingIp) a floating IP order. Service type ids come from getNewFloatingIp.serviceTypes.
 **/
import io.swagger.v3.oas.annotations.media.Schema;
import java.util.Objects;

import javax.xml.bind.annotation.*;

@Schema(description = "Request body to validate (putFloating_ips) or place (addFloatingIp) a floating IP order. Service type ids come from getNewFloatingIp.serviceTypes.")

public class FloatingIpOrderRequest   {
  private Integer serviceType = null;
  private String coupon = "";
  private String comment = "";

  /**
   * Floating IP plan service type id from getNewFloatingIp.serviceTypes (must be buyable).
   **/
  public FloatingIpOrderRequest serviceType(Integer serviceType) {
    this.serviceType = serviceType;
    return this;
  }

  
  
  @Schema(required = true, description = "Floating IP plan service type id from getNewFloatingIp.serviceTypes (must be buyable).")
  @JsonProperty("serviceType")
  @NotNull
  public Integer getServiceType() {
    return serviceType;
  }
  public void setServiceType(Integer serviceType) {
    this.serviceType = serviceType;
  }

  /**
   * Coupon code.
   **/
  public FloatingIpOrderRequest coupon(String coupon) {
    this.coupon = coupon;
    return this;
  }

  
  
  @Schema(description = "Coupon code.")
  @JsonProperty("coupon")
  @NotNull
  public String getCoupon() {
    return coupon;
  }
  public void setCoupon(String coupon) {
    this.coupon = coupon;
  }

  /**
   * Free-form note saved on the service row (used on addFloatingIp).
   **/
  public FloatingIpOrderRequest comment(String comment) {
    this.comment = comment;
    return this;
  }

  
  
  @Schema(description = "Free-form note saved on the service row (used on addFloatingIp).")
  @JsonProperty("comment")
  @NotNull
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
    FloatingIpOrderRequest floatingIpOrderRequest = (FloatingIpOrderRequest) o;
    return Objects.equals(serviceType, floatingIpOrderRequest.serviceType) &&
        Objects.equals(coupon, floatingIpOrderRequest.coupon) &&
        Objects.equals(comment, floatingIpOrderRequest.comment);
  }

  @Override
  public int hashCode() {
    return Objects.hash(serviceType, coupon, comment);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class FloatingIpOrderRequest {\n");
    
    sb.append("    serviceType: ").append(toIndentedString(serviceType)).append("\n");
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
