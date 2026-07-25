package org.openapitools.model;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Request body to validate (putFloating_ips) or place (addFloatingIp) a floating IP order. Service type ids come from getNewFloatingIp.serviceTypes.
 */
@ApiModel(description="Request body to validate (putFloating_ips) or place (addFloatingIp) a floating IP order. Service type ids come from getNewFloatingIp.serviceTypes.")

public class FloatingIpOrderRequest  {
  
 /**
  * Floating IP plan service type id from getNewFloatingIp.serviceTypes (must be buyable).
  */
  @ApiModelProperty(required = true, value = "Floating IP plan service type id from getNewFloatingIp.serviceTypes (must be buyable).")

  private Integer serviceType;

 /**
  * Coupon code.
  */
  @ApiModelProperty(value = "Coupon code.")

  private String coupon = "";

 /**
  * Free-form note saved on the service row (used on addFloatingIp).
  */
  @ApiModelProperty(value = "Free-form note saved on the service row (used on addFloatingIp).")

  private String comment = "";
 /**
   * Floating IP plan service type id from getNewFloatingIp.serviceTypes (must be buyable).
   * @return serviceType
  **/
  @JsonProperty("serviceType")
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
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    FloatingIpOrderRequest floatingIpOrderRequest = (FloatingIpOrderRequest) o;
    return Objects.equals(this.serviceType, floatingIpOrderRequest.serviceType) &&
        Objects.equals(this.coupon, floatingIpOrderRequest.coupon) &&
        Objects.equals(this.comment, floatingIpOrderRequest.comment);
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
  private static String toIndentedString(Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}

