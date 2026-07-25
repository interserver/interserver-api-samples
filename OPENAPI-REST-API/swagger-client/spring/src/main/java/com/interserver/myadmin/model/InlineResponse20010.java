package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
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
 * InlineResponse20010
 */
@Validated
@NotUndefined



public class InlineResponse20010   {
  /**
   * The response type indicating how to handle the payment. Possible values: `redirect` (redirect user to a URL), `submit` (submit a form to a URL), `single` (immediate result).
   */
  public enum TypeEnum {
    REDIRECT("redirect"),
    
    SUBMIT("submit"),
    
    SINGLE("single");

    private String value;

    TypeEnum(String value) {
      this.value = value;
    }

    @Override
    @JsonValue
    public String toString() {
      return String.valueOf(value);
    }

    @JsonCreator
    public static TypeEnum fromValue(String text) {
      for (TypeEnum b : TypeEnum.values()) {
        if (String.valueOf(b.value).equals(text)) {
          return b;
        }
      }
      return null;
    }
  }
  @JsonProperty("type")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private TypeEnum type = null;

  @JsonProperty("redirect")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String redirect = null;

  @JsonProperty("action")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String action = null;

  @JsonProperty("method")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String method = null;

  @JsonProperty("items")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Object items = null;

  @JsonProperty("text")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String text = null;


  public InlineResponse20010 type(TypeEnum type) { 

    this.type = type;
    return this;
  }

  /**
   * The response type indicating how to handle the payment. Possible values: `redirect` (redirect user to a URL), `submit` (submit a form to a URL), `single` (immediate result).
   * @return type
   **/
  
  @Schema(description = "The response type indicating how to handle the payment. Possible values: `redirect` (redirect user to a URL), `submit` (submit a form to a URL), `single` (immediate result).")
  
  public TypeEnum getType() {  
    return type;
  }



  public void setType(TypeEnum type) { 
    this.type = type;
  }

  public InlineResponse20010 redirect(String redirect) { 

    this.redirect = redirect;
    return this;
  }

  /**
   * URL to redirect the user to for payment (when type is `redirect`).
   * @return redirect
   **/
  
  @Schema(description = "URL to redirect the user to for payment (when type is `redirect`).")
  
  public String getRedirect() {  
    return redirect;
  }



  public void setRedirect(String redirect) { 
    this.redirect = redirect;
  }

  public InlineResponse20010 action(String action) { 

    this.action = action;
    return this;
  }

  /**
   * Form action URL (when type is `submit`).
   * @return action
   **/
  
  @Schema(description = "Form action URL (when type is `submit`).")
  
  public String getAction() {  
    return action;
  }



  public void setAction(String action) { 
    this.action = action;
  }

  public InlineResponse20010 method(String method) { 

    this.method = method;
    return this;
  }

  /**
   * HTTP method for the form submission (when type is `submit`).
   * @return method
   **/
  
  @Schema(description = "HTTP method for the form submission (when type is `submit`).")
  
  public String getMethod() {  
    return method;
  }



  public void setMethod(String method) { 
    this.method = method;
  }

  public InlineResponse20010 items(Object items) { 

    this.items = items;
    return this;
  }

  /**
   * Form field name-value pairs to submit (when type is `submit`).
   * @return items
   **/
  
  @Schema(description = "Form field name-value pairs to submit (when type is `submit`).")
  
  public Object getItems() {  
    return items;
  }



  public void setItems(Object items) { 
    this.items = items;
  }

  public InlineResponse20010 text(String text) { 

    this.text = text;
    return this;
  }

  /**
   * Status or result text.
   * @return text
   **/
  
  @Schema(description = "Status or result text.")
  
  public String getText() {  
    return text;
  }



  public void setText(String text) { 
    this.text = text;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20010 inlineResponse20010 = (InlineResponse20010) o;
    return Objects.equals(this.type, inlineResponse20010.type) &&
        Objects.equals(this.redirect, inlineResponse20010.redirect) &&
        Objects.equals(this.action, inlineResponse20010.action) &&
        Objects.equals(this.method, inlineResponse20010.method) &&
        Objects.equals(this.items, inlineResponse20010.items) &&
        Objects.equals(this.text, inlineResponse20010.text);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, redirect, action, method, items, text);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20010 {\n");
    
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    redirect: ").append(toIndentedString(redirect)).append("\n");
    sb.append("    action: ").append(toIndentedString(action)).append("\n");
    sb.append("    method: ").append(toIndentedString(method)).append("\n");
    sb.append("    items: ").append(toIndentedString(items)).append("\n");
    sb.append("    text: ").append(toIndentedString(text)).append("\n");
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
