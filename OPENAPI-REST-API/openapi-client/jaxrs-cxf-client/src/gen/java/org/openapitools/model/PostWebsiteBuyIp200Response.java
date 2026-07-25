package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class PostWebsiteBuyIp200Response  {
  
  @ApiModelProperty(value = "")

  private String message;

  @ApiModelProperty(value = "")

  private Boolean success;
 /**
   * Get message
   * @return message
  **/
  @JsonProperty("message")
  public String getMessage() {
    return message;
  }

  public void setMessage(String message) {
    this.message = message;
  }

  public PostWebsiteBuyIp200Response message(String message) {
    this.message = message;
    return this;
  }

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

  public PostWebsiteBuyIp200Response success(Boolean success) {
    this.success = success;
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
    PostWebsiteBuyIp200Response postWebsiteBuyIp200Response = (PostWebsiteBuyIp200Response) o;
    return Objects.equals(this.message, postWebsiteBuyIp200Response.message) &&
        Objects.equals(this.success, postWebsiteBuyIp200Response.success);
  }

  @Override
  public int hashCode() {
    return Objects.hash(message, success);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PostWebsiteBuyIp200Response {\n");
    
    sb.append("    message: ").append(toIndentedString(message)).append("\n");
    sb.append("    success: ").append(toIndentedString(success)).append("\n");
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

