package io.swagger.model;

import io.swagger.v3.oas.annotations.media.Schema;
import javax.validation.constraints.*;
import javax.validation.Valid;

/**
 * Request body to validate (putMail) or place (addMail) a mail order. Service type ids come from getNewMail.serviceTypes.
 **/
import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
@Schema(description = "Request body to validate (putMail) or place (addMail) a mail order. Service type ids come from getNewMail.serviceTypes.")

public class MailOrderRequest   {

  private @Valid Integer serviceType = null;

  private @Valid String coupon = "";

  private @Valid String comment = "";

  /**
   * Mail plan service type id from getNewMail.serviceTypes (must be buyable).
   **/
  public MailOrderRequest serviceType(Integer serviceType) {
    this.serviceType = serviceType;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "Mail plan service type id from getNewMail.serviceTypes (must be buyable).")
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
  public MailOrderRequest coupon(String coupon) {
    this.coupon = coupon;
    return this;
  }

  
  @ApiModelProperty(value = "Coupon code.")
  @JsonProperty("coupon")
  @NotNull

  public String getCoupon() {
    return coupon;
  }
  public void setCoupon(String coupon) {
    this.coupon = coupon;
  }

  /**
   * Free-form note saved on the service row (used on addMail).
   **/
  public MailOrderRequest comment(String comment) {
    this.comment = comment;
    return this;
  }

  
  @ApiModelProperty(value = "Free-form note saved on the service row (used on addMail).")
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
    MailOrderRequest mailOrderRequest = (MailOrderRequest) o;
    return Objects.equals(serviceType, mailOrderRequest.serviceType) &&
        Objects.equals(coupon, mailOrderRequest.coupon) &&
        Objects.equals(comment, mailOrderRequest.comment);
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
