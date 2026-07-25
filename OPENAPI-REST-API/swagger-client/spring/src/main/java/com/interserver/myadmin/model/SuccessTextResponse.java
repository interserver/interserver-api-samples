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
 * Response with success flag and text description.
 */
@Schema(description = "Response with success flag and text description.")
@Validated
@NotUndefined



public class SuccessTextResponse   {
  @JsonProperty("success")

  private Boolean success = null;

  @JsonProperty("text")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String text = null;

  @JsonProperty("action")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String action = null;


  public SuccessTextResponse success(Boolean success) { 

    this.success = success;
    return this;
  }

  /**
   * Indicates whether or not the command was successful or not.
   * @return success
   **/
  
  @Schema(required = true, description = "Indicates whether or not the command was successful or not.")
  
  @NotNull
  public Boolean isSuccess() {  
    return success;
  }



  public void setSuccess(Boolean success) { 

    this.success = success;
  }

  public SuccessTextResponse text(String text) { 

    this.text = text;
    return this;
  }

  /**
   * Text associated with the response.
   * @return text
   **/
  
  @Schema(description = "Text associated with the response.")
  
  public String getText() {  
    return text;
  }



  public void setText(String text) { 
    this.text = text;
  }

  public SuccessTextResponse action(String action) { 

    this.action = action;
    return this;
  }

  /**
   * Optional Action relating to the response.
   * @return action
   **/
  
  @Schema(description = "Optional Action relating to the response.")
  
  public String getAction() {  
    return action;
  }



  public void setAction(String action) { 
    this.action = action;
  }

  @Override
  public boolean equals(java.lang.Object o) {
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
