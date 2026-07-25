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
 * InlineResponse4004
 */
@Validated
@NotUndefined



public class InlineResponse4004   {
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

  public InlineResponse4004 success(Boolean success) { 

    this.success = success;
    return this;
  }

  /**
   * Get success
   * @return success
   **/
  
  @Schema(example = "false", description = "")
  
  public Boolean isSuccess() {  
    return success;
  }



  public void setSuccess(Boolean success) { 
    this.success = success;
  }

  public InlineResponse4004 text(String text) { 

    this.text = text;
    return this;
  }

  /**
   * Get text
   * @return text
   **/
  
  @Schema(example = "Bad Request", description = "")
  
  public String getText() {  
    return text;
  }



  public void setText(String text) { 
    this.text = text;
  }

  public InlineResponse4004 errors(List<String> errors) { 

    this.errors = errors;
    return this;
  }

  public InlineResponse4004 addErrorsItem(String errorsItem) {
    if (this.errors == null) {
      this.errors = new ArrayList<>();
    }
    this.errors.add(errorsItem);
    return this;
  }

  /**
   * Get errors
   * @return errors
   **/
  
  @Schema(description = "")
  
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
    InlineResponse4004 inlineResponse4004 = (InlineResponse4004) o;
    return Objects.equals(this.success, inlineResponse4004.success) &&
        Objects.equals(this.text, inlineResponse4004.text) &&
        Objects.equals(this.errors, inlineResponse4004.errors);
  }

  @Override
  public int hashCode() {
    return Objects.hash(success, text, errors);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse4004 {\n");
    
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
