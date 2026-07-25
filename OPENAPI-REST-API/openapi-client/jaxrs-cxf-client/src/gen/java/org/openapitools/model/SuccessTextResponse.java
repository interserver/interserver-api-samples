package org.openapitools.model;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Response with success flag and text description.
 */
@ApiModel(description="Response with success flag and text description.")

public class SuccessTextResponse  {
  
 /**
  * Indicates whether or not the command was successful or not.
  */
  @ApiModelProperty(required = true, value = "Indicates whether or not the command was successful or not.")

  private Boolean success;

 /**
  * Text associated with the response.
  */
  @ApiModelProperty(value = "Text associated with the response.")

  private String text;

 /**
  * Optional Action relating to the response.
  */
  @ApiModelProperty(value = "Optional Action relating to the response.")

  private String action;
 /**
   * Indicates whether or not the command was successful or not.
   * @return success
  **/
  @JsonProperty("success")
  public Boolean isSuccess() {
    return success;
  }

  public void setSuccess(Boolean success) {
    this.success = success;
  }

  public SuccessTextResponse success(Boolean success) {
    this.success = success;
    return this;
  }

 /**
   * Text associated with the response.
   * @return text
  **/
  @JsonProperty("text")
  public String getText() {
    return text;
  }

  public void setText(String text) {
    this.text = text;
  }

  public SuccessTextResponse text(String text) {
    this.text = text;
    return this;
  }

 /**
   * Optional Action relating to the response.
   * @return action
  **/
  @JsonProperty("action")
  public String getAction() {
    return action;
  }

  public void setAction(String action) {
    this.action = action;
  }

  public SuccessTextResponse action(String action) {
    this.action = action;
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
    SuccessTextResponse successTextResponse = (SuccessTextResponse) o;
    return Objects.equals(this.success, successTextResponse.success) &&
        Objects.equals(this.text, successTextResponse.text) &&
        Objects.equals(this.action, successTextResponse.action);
  }

  @Override
  public int hashCode() {
    return Objects.hash(success, text, action);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SuccessTextResponse {\n");
    
    sb.append("    success: ").append(toIndentedString(success)).append("\n");
    sb.append("    text: ").append(toIndentedString(text)).append("\n");
    sb.append("    action: ").append(toIndentedString(action)).append("\n");
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

