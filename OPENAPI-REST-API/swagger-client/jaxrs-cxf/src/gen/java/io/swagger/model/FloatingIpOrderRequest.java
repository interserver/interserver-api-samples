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
  * Request body to validate (putFloating_ips) or place (addFloatingIp) a floating IP order. Service type ids come from getNewFloatingIp.serviceTypes.
 **/
@Schema(description="Request body to validate (putFloating_ips) or place (addFloatingIp) a floating IP order. Service type ids come from getNewFloatingIp.serviceTypes.")
public class FloatingIpOrderRequest   {
  
  @Schema(required = true, description = "Floating IP plan service type id from getNewFloatingIp.serviceTypes (must be buyable).")
 /**
   * Floating IP plan service type id from getNewFloatingIp.serviceTypes (must be buyable).  
  **/
  private Integer serviceType = null;
  
  @Schema(description = "Coupon code.")
 /**
   * Coupon code.  
  **/
  private String coupon = "";
  
  @Schema(description = "Free-form note saved on the service row (used on addFloatingIp).")
 /**
   * Free-form note saved on the service row (used on addFloatingIp).  
  **/
  private String comment = "";
 /**
   * Floating IP plan service type id from getNewFloatingIp.serviceTypes (must be buyable).
   * @return serviceType
  **/
  @JsonProperty("serviceType")
  @NotNull
  public Integer getServiceType() {
    return serviceType;
  }

  public void setServiceType(Integer serviceType) {
    this.serviceType = serviceType;
  }

  public FloatingIpOrderRequest serviceType(Integer serviceType) {
    this.serviceType = serviceType;
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

  public FloatingIpOrderRequest coupon(String coupon) {
    this.coupon = coupon;
    return this;
  }

 /**
   * Free-form note saved on the service row (used on addFloatingIp).
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

  public FloatingIpOrderRequest comment(String comment) {
    this.comment = comment;
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
