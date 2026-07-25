package org.openapitools.model;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Request body to validate (putMail) or place (addMail) a mail order. Service type ids come from getNewMail.serviceTypes.
 */
@ApiModel(description="Request body to validate (putMail) or place (addMail) a mail order. Service type ids come from getNewMail.serviceTypes.")

public class MailOrderRequest  {
  
 /**
  * Mail plan service type id from getNewMail.serviceTypes (must be buyable).
  */
  @ApiModelProperty(required = true, value = "Mail plan service type id from getNewMail.serviceTypes (must be buyable).")

  private Integer serviceType;

 /**
  * Coupon code.
  */
  @ApiModelProperty(value = "Coupon code.")

  private String coupon = "";

 /**
  * Free-form note saved on the service row (used on addMail).
  */
  @ApiModelProperty(value = "Free-form note saved on the service row (used on addMail).")

  private String comment = "";
 /**
   * Mail plan service type id from getNewMail.serviceTypes (must be buyable).
   * @return serviceType
  **/
  @JsonProperty("serviceType")
  public Integer getServiceType() {
    return serviceType;
  }

  public void setServiceType(Integer serviceType) {
    this.serviceType = serviceType;
  }

  public MailOrderRequest serviceType(Integer serviceType) {
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

  public MailOrderRequest coupon(String coupon) {
    this.coupon = coupon;
    return this;
  }

 /**
   * Free-form note saved on the service row (used on addMail).
   * @return comment
  **/
  @JsonProperty("comment")
  public String getComment() {
    return comment;
  }

  public void setComment(String comment) {
    this.comment = comment;
  }

  public MailOrderRequest comment(String comment) {
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
    MailOrderRequest mailOrderRequest = (MailOrderRequest) o;
    return Objects.equals(this.serviceType, mailOrderRequest.serviceType) &&
        Objects.equals(this.coupon, mailOrderRequest.coupon) &&
        Objects.equals(this.comment, mailOrderRequest.comment);
  }

  @Override
  public int hashCode() {
    return Objects.hash(serviceType, coupon, comment);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class MailOrderRequest {\n");
    
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

