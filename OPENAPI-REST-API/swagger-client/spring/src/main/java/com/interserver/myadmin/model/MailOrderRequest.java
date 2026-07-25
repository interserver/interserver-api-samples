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
 * Request body to validate (putMail) or place (addMail) a mail order. Service type ids come from getNewMail.serviceTypes.
 */
@Schema(description = "Request body to validate (putMail) or place (addMail) a mail order. Service type ids come from getNewMail.serviceTypes.")
@Validated
@NotUndefined



public class MailOrderRequest   {
  @JsonProperty("serviceType")

  private Integer serviceType = null;

  @JsonProperty("coupon")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String coupon = "";

  @JsonProperty("comment")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String comment = "";


  public MailOrderRequest serviceType(Integer serviceType) { 

    this.serviceType = serviceType;
    return this;
  }

  /**
   * Mail plan service type id from getNewMail.serviceTypes (must be buyable).
   * @return serviceType
   **/
  
  @Schema(required = true, description = "Mail plan service type id from getNewMail.serviceTypes (must be buyable).")
  
  @NotNull
  public Integer getServiceType() {  
    return serviceType;
  }



  public void setServiceType(Integer serviceType) { 

    this.serviceType = serviceType;
  }

  public MailOrderRequest coupon(String coupon) { 

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

  public MailOrderRequest comment(String comment) { 

    this.comment = comment;
    return this;
  }

  /**
   * Free-form note saved on the service row (used on addMail).
   * @return comment
   **/
  
  @Schema(description = "Free-form note saved on the service row (used on addMail).")
  
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
