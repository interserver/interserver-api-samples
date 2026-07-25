package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;
import java.util.ArrayList;
import java.util.List;
import org.springframework.validation.annotation.Validated;
import org.openapitools.jackson.nullable.JsonNullable;
import io.swagger.configuration.NotUndefined;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.Nulls;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * Error response when a buy-it-now server order fails validation.
 */
@Schema(description = "Error response when a buy-it-now server order fails validation.")
@Validated
@NotUndefined



public class ServersBuyNowError   {
  @JsonProperty("success")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Boolean success = null;

  @JsonProperty("text")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String text = null;

  @JsonProperty("errors")
  @Valid
  private List<String> errors = null;

  public ServersBuyNowError success(Boolean success) { 

    this.success = success;
    return this;
  }

  /**
   * Always false for error responses.
   * @return success
   **/
  
  @Schema(example = "false", description = "Always false for error responses.")
  
  public Boolean isSuccess() {  
    return success;
  }



  public void setSuccess(Boolean success) { 
    this.success = success;
  }

  public ServersBuyNowError text(String text) { 

    this.text = text;
    return this;
  }

  /**
   * Human-readable error summary.
   * @return text
   **/
  
  @Schema(example = "Unable to place order.", description = "Human-readable error summary.")
  
  public String getText() {  
    return text;
  }



  public void setText(String text) { 
    this.text = text;
  }

  public ServersBuyNowError errors(List<String> errors) { 

    this.errors = errors;
    return this;
  }

  public ServersBuyNowError addErrorsItem(String errorsItem) {
    if (this.errors == null) {
      this.errors = new ArrayList<>();
    }
    this.errors.add(errorsItem);
    return this;
  }

  /**
   * List of specific validation error messages.
   * @return errors
   **/
  
  @Schema(example = "[\"Server ID is missing.\",\"Server Hostname is missing.;\",\"Password must contain atleast 8 characters, one lowercase letter, one uppercase letter, one number & one special character\"]", description = "List of specific validation error messages.")
  
  public List<String> getErrors() {  
    return errors;
  }



  public void setErrors(List<String> errors) { 
    this.errors = errors;
  }

  @Override
  public boolean equals(java.lang.Object o) {
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
