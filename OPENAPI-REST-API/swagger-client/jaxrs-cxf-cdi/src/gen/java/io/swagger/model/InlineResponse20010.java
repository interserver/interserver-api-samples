package io.swagger.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import javax.validation.constraints.*;

import io.swagger.v3.oas.annotations.media.Schema;
import java.util.Objects;

import javax.xml.bind.annotation.*;



public class InlineResponse20010   {
@XmlType(name="TypeEnum")
@XmlEnum(String.class)
public enum TypeEnum {

    @XmlEnumValue("redirect") REDIRECT(String.valueOf("redirect")), @XmlEnumValue("submit") SUBMIT(String.valueOf("submit")), @XmlEnumValue("single") SINGLE(String.valueOf("single"));


    private String value;

    TypeEnum (String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    @Override
    public String toString() {
        return String.valueOf(value);
    }

    public static TypeEnum fromValue(String v) {
        for (TypeEnum b : TypeEnum.values()) {
            if (String.valueOf(b.value).equals(v)) {
                return b;
            }
        }
        return null;
    }
}
  private TypeEnum type = null;
  private String redirect = null;
  private String action = null;
  private String method = null;
  private Object items = null;
  private String text = null;

  /**
   * The response type indicating how to handle the payment. Possible values: &#x60;redirect&#x60; (redirect user to a URL), &#x60;submit&#x60; (submit a form to a URL), &#x60;single&#x60; (immediate result).
   **/
  public InlineResponse20010 type(TypeEnum type) {
    this.type = type;
    return this;
  }

  
  
  @Schema(description = "The response type indicating how to handle the payment. Possible values: `redirect` (redirect user to a URL), `submit` (submit a form to a URL), `single` (immediate result).")
  @JsonProperty("type")
  @NotNull
  public TypeEnum getType() {
    return type;
  }
  public void setType(TypeEnum type) {
    this.type = type;
  }

  /**
   * URL to redirect the user to for payment (when type is &#x60;redirect&#x60;).
   **/
  public InlineResponse20010 redirect(String redirect) {
    this.redirect = redirect;
    return this;
  }

  
  
  @Schema(description = "URL to redirect the user to for payment (when type is `redirect`).")
  @JsonProperty("redirect")
  @NotNull
  public String getRedirect() {
    return redirect;
  }
  public void setRedirect(String redirect) {
    this.redirect = redirect;
  }

  /**
   * Form action URL (when type is &#x60;submit&#x60;).
   **/
  public InlineResponse20010 action(String action) {
    this.action = action;
    return this;
  }

  
  
  @Schema(description = "Form action URL (when type is `submit`).")
  @JsonProperty("action")
  @NotNull
  public String getAction() {
    return action;
  }
  public void setAction(String action) {
    this.action = action;
  }

  /**
   * HTTP method for the form submission (when type is &#x60;submit&#x60;).
   **/
  public InlineResponse20010 method(String method) {
    this.method = method;
    return this;
  }

  
  
  @Schema(description = "HTTP method for the form submission (when type is `submit`).")
  @JsonProperty("method")
  @NotNull
  public String getMethod() {
    return method;
  }
  public void setMethod(String method) {
    this.method = method;
  }

  /**
   * Form field name-value pairs to submit (when type is &#x60;submit&#x60;).
   **/
  public InlineResponse20010 items(Object items) {
    this.items = items;
    return this;
  }

  
  
  @Schema(description = "Form field name-value pairs to submit (when type is `submit`).")
  @JsonProperty("items")
  @NotNull
  public Object getItems() {
    return items;
  }
  public void setItems(Object items) {
    this.items = items;
  }

  /**
   * Status or result text.
   **/
  public InlineResponse20010 text(String text) {
    this.text = text;
    return this;
  }

  
  
  @Schema(description = "Status or result text.")
  @JsonProperty("text")
  @NotNull
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
    return Objects.equals(type, inlineResponse20010.type) &&
        Objects.equals(redirect, inlineResponse20010.redirect) &&
        Objects.equals(action, inlineResponse20010.action) &&
        Objects.equals(method, inlineResponse20010.method) &&
        Objects.equals(items, inlineResponse20010.items) &&
        Objects.equals(text, inlineResponse20010.text);
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
