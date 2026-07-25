package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.ServersBuyNowResponseOrderDetails;
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
 * Success response after placing a buy-it-now dedicated server order.
 */
@Schema(description = "Success response after placing a buy-it-now dedicated server order.")
@Validated
@NotUndefined



public class ServersBuyNowResponse   {
  @JsonProperty("success")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Boolean success = null;

  @JsonProperty("text")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String text = null;

  @JsonProperty("order_details")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private ServersBuyNowResponseOrderDetails orderDetails = null;


  public ServersBuyNowResponse success(Boolean success) { 

    this.success = success;
    return this;
  }

  /**
   * Whether the order was placed successfully.
   * @return success
   **/
  
  @Schema(example = "true", description = "Whether the order was placed successfully.")
  
  public Boolean isSuccess() {  
    return success;
  }



  public void setSuccess(Boolean success) { 
    this.success = success;
  }

  public ServersBuyNowResponse text(String text) { 

    this.text = text;
    return this;
  }

  /**
   * Human-readable status message.
   * @return text
   **/
  
  @Schema(example = "Server order is placed.", description = "Human-readable status message.")
  
  public String getText() {  
    return text;
  }



  public void setText(String text) { 
    this.text = text;
  }

  public ServersBuyNowResponse orderDetails(ServersBuyNowResponseOrderDetails orderDetails) { 

    this.orderDetails = orderDetails;
    return this;
  }

  /**
   * Get orderDetails
   * @return orderDetails
   **/
  
  @Schema(description = "")
  
@Valid
  public ServersBuyNowResponseOrderDetails getOrderDetails() {  
    return orderDetails;
  }



  public void setOrderDetails(ServersBuyNowResponseOrderDetails orderDetails) { 
    this.orderDetails = orderDetails;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ServersBuyNowResponse serversBuyNowResponse = (ServersBuyNowResponse) o;
    return Objects.equals(this.success, serversBuyNowResponse.success) &&
        Objects.equals(this.text, serversBuyNowResponse.text) &&
        Objects.equals(this.orderDetails, serversBuyNowResponse.orderDetails);
  }

  @Override
  public int hashCode() {
    return Objects.hash(success, text, orderDetails);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ServersBuyNowResponse {\n");
    
    sb.append("    success: ").append(toIndentedString(success)).append("\n");
    sb.append("    text: ").append(toIndentedString(text)).append("\n");
    sb.append("    orderDetails: ").append(toIndentedString(orderDetails)).append("\n");
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
