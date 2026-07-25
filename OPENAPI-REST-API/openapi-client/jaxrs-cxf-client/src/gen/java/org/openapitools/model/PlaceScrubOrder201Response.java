package org.openapitools.model;

import org.openapitools.model.PlaceScrubOrder201ResponseOrderDetails;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class PlaceScrubOrder201Response  {
  
  @ApiModelProperty(example = "true", value = "")

  private Boolean success;

  @ApiModelProperty(example = "ScrubIp order is placed.", value = "")

  private String text;

  @ApiModelProperty(value = "")

  private PlaceScrubOrder201ResponseOrderDetails orderDetails;
 /**
   * Get success
   * @return success
  **/
  @JsonProperty("success")
  public Boolean isSuccess() {
    return success;
  }

  public void setSuccess(Boolean success) {
    this.success = success;
  }

  public PlaceScrubOrder201Response success(Boolean success) {
    this.success = success;
    return this;
  }

 /**
   * Get text
   * @return text
  **/
  @JsonProperty("text")
  public String getText() {
    return text;
  }

  public void setText(String text) {
    this.text = text;
  }

  public PlaceScrubOrder201Response text(String text) {
    this.text = text;
    return this;
  }

 /**
   * Get orderDetails
   * @return orderDetails
  **/
  @JsonProperty("order_details")
  public PlaceScrubOrder201ResponseOrderDetails getOrderDetails() {
    return orderDetails;
  }

  public void setOrderDetails(PlaceScrubOrder201ResponseOrderDetails orderDetails) {
    this.orderDetails = orderDetails;
  }

  public PlaceScrubOrder201Response orderDetails(PlaceScrubOrder201ResponseOrderDetails orderDetails) {
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
    PlaceScrubOrder201Response placeScrubOrder201Response = (PlaceScrubOrder201Response) o;
    return Objects.equals(this.success, placeScrubOrder201Response.success) &&
        Objects.equals(this.text, placeScrubOrder201Response.text) &&
        Objects.equals(this.orderDetails, placeScrubOrder201Response.orderDetails);
  }

  @Override
  public int hashCode() {
    return Objects.hash(success, text, orderDetails);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PlaceScrubOrder201Response {\n");
    
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

