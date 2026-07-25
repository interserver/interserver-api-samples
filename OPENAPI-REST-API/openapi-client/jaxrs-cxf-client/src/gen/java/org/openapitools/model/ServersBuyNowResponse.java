package org.openapitools.model;

import org.openapitools.model.ServersBuyNowResponseOrderDetails;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Success response after placing a buy-it-now dedicated server order.
 */
@ApiModel(description="Success response after placing a buy-it-now dedicated server order.")

public class ServersBuyNowResponse  {
  
 /**
  * Whether the order was placed successfully.
  */
  @ApiModelProperty(example = "true", value = "Whether the order was placed successfully.")

  private Boolean success;

 /**
  * Human-readable status message.
  */
  @ApiModelProperty(example = "Server order is placed.", value = "Human-readable status message.")

  private String text;

  @ApiModelProperty(value = "")

  private ServersBuyNowResponseOrderDetails orderDetails;
 /**
   * Whether the order was placed successfully.
   * @return success
  **/
  @JsonProperty("success")
  public Boolean isSuccess() {
    return success;
  }

  public void setSuccess(Boolean success) {
    this.success = success;
  }

  public ServersBuyNowResponse success(Boolean success) {
    this.success = success;
    return this;
  }

 /**
   * Human-readable status message.
   * @return text
  **/
  @JsonProperty("text")
  public String getText() {
    return text;
  }

  public void setText(String text) {
    this.text = text;
  }

  public ServersBuyNowResponse text(String text) {
    this.text = text;
    return this;
  }

 /**
   * Get orderDetails
   * @return orderDetails
  **/
  @JsonProperty("order_details")
  public ServersBuyNowResponseOrderDetails getOrderDetails() {
    return orderDetails;
  }

  public void setOrderDetails(ServersBuyNowResponseOrderDetails orderDetails) {
    this.orderDetails = orderDetails;
  }

  public ServersBuyNowResponse orderDetails(ServersBuyNowResponseOrderDetails orderDetails) {
    this.orderDetails = orderDetails;
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
  private static String toIndentedString(Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}

