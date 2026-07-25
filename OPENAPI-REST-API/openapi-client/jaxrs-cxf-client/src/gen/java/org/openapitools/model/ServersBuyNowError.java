package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Error response when a buy-it-now server order fails validation.
 */
@ApiModel(description="Error response when a buy-it-now server order fails validation.")

public class ServersBuyNowError  {
  
 /**
  * Always false for error responses.
  */
  @ApiModelProperty(example = "false", value = "Always false for error responses.")

  private Boolean success;

 /**
  * Human-readable error summary.
  */
  @ApiModelProperty(example = "Unable to place order.", value = "Human-readable error summary.")

  private String text;

 /**
  * List of specific validation error messages.
  */
  @ApiModelProperty(example = "[\"Server ID is missing.\",\"Server Hostname is missing.;\",\"Password must contain atleast 8 characters, one lowercase letter, one uppercase letter, one number & one special character\"]", value = "List of specific validation error messages.")

  private List<String> errors = new ArrayList<>();
 /**
   * Always false for error responses.
   * @return success
  **/
  @JsonProperty("success")
  public Boolean isSuccess() {
    return success;
  }

  public void setSuccess(Boolean success) {
    this.success = success;
  }

  public ServersBuyNowError success(Boolean success) {
    this.success = success;
    return this;
  }

 /**
   * Human-readable error summary.
   * @return text
  **/
  @JsonProperty("text")
  public String getText() {
    return text;
  }

  public void setText(String text) {
    this.text = text;
  }

  public ServersBuyNowError text(String text) {
    this.text = text;
    return this;
  }

 /**
   * List of specific validation error messages.
   * @return errors
  **/
  @JsonProperty("errors")
  public List<String> getErrors() {
    return errors;
  }

  public void setErrors(List<String> errors) {
    this.errors = errors;
  }

  public ServersBuyNowError errors(List<String> errors) {
    this.errors = errors;
    return this;
  }

  public ServersBuyNowError addErrorsItem(String errorsItem) {
    this.errors.add(errorsItem);
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
    ServersBuyNowError serversBuyNowError = (ServersBuyNowError) o;
    return Objects.equals(this.success, serversBuyNowError.success) &&
        Objects.equals(this.text, serversBuyNowError.text) &&
        Objects.equals(this.errors, serversBuyNowError.errors);
  }

  @Override
  public int hashCode() {
    return Objects.hash(success, text, errors);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ServersBuyNowError {\n");
    
    sb.append("    success: ").append(toIndentedString(success)).append("\n");
    sb.append("    text: ").append(toIndentedString(text)).append("\n");
    sb.append("    errors: ").append(toIndentedString(errors)).append("\n");
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

