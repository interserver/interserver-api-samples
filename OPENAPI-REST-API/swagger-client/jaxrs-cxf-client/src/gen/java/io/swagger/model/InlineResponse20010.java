package io.swagger.model;


import io.swagger.v3.oas.annotations.media.Schema;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonCreator;

public class InlineResponse20010   {
  public enum TypeEnum {
    REDIRECT("redirect"),
    SUBMIT("submit"),
    SINGLE("single");

    private String value;

    TypeEnum(String value) {
      this.value = value;
    }
    @JsonValue
    public String getValue() {
      return value;
    }

    @Override
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
  @Schema(description = "The response type indicating how to handle the payment. Possible values: `redirect` (redirect user to a URL), `submit` (submit a form to a URL), `single` (immediate result).")
 /**
   * The response type indicating how to handle the payment. Possible values: `redirect` (redirect user to a URL), `submit` (submit a form to a URL), `single` (immediate result).  
  **/
  private TypeEnum type = null;
  
  @Schema(description = "URL to redirect the user to for payment (when type is `redirect`).")
 /**
   * URL to redirect the user to for payment (when type is `redirect`).  
  **/
  private String redirect = null;
  
  @Schema(description = "Form action URL (when type is `submit`).")
 /**
   * Form action URL (when type is `submit`).  
  **/
  private String action = null;
  
  @Schema(description = "HTTP method for the form submission (when type is `submit`).")
 /**
   * HTTP method for the form submission (when type is `submit`).  
  **/
  private String method = null;
  
  @Schema(description = "Form field name-value pairs to submit (when type is `submit`).")
 /**
   * Form field name-value pairs to submit (when type is `submit`).  
  **/
  private Object items = null;
  
  @Schema(description = "Status or result text.")
 /**
   * Status or result text.  
  **/
  private String text = null;
 /**
   * The response type indicating how to handle the payment. Possible values: &#x60;redirect&#x60; (redirect user to a URL), &#x60;submit&#x60; (submit a form to a URL), &#x60;single&#x60; (immediate result).
   * @return type
  **/
  @JsonProperty("type")
  public String getType() {
    if (type == null) {
      return null;
    }
    return type.getValue();
  }

  public void setType(TypeEnum type) {
    this.type = type;
  }

  public InlineResponse20010 type(TypeEnum type) {
    this.type = type;
    return this;
  }

 /**
   * URL to redirect the user to for payment (when type is &#x60;redirect&#x60;).
   * @return redirect
  **/
  @JsonProperty("redirect")
  public String getRedirect() {
    return redirect;
  }

  public void setRedirect(String redirect) {
    this.redirect = redirect;
  }

  public InlineResponse20010 redirect(String redirect) {
    this.redirect = redirect;
    return this;
  }

 /**
   * Form action URL (when type is &#x60;submit&#x60;).
   * @return action
  **/
  @JsonProperty("action")
  public String getAction() {
    return action;
  }

  public void setAction(String action) {
    this.action = action;
  }

  public InlineResponse20010 action(String action) {
    this.action = action;
    return this;
  }

 /**
   * HTTP method for the form submission (when type is &#x60;submit&#x60;).
   * @return method
  **/
  @JsonProperty("method")
  public String getMethod() {
    return method;
  }

  public void setMethod(String method) {
    this.method = method;
  }

  public InlineResponse20010 method(String method) {
    this.method = method;
    return this;
  }

 /**
   * Form field name-value pairs to submit (when type is &#x60;submit&#x60;).
   * @return items
  **/
  @JsonProperty("items")
  public Object getItems() {
    return items;
  }

  public void setItems(Object items) {
    this.items = items;
  }

  public InlineResponse20010 items(Object items) {
    this.items = items;
    return this;
  }

 /**
   * Status or result text.
   * @return text
  **/
  @JsonProperty("text")
  public String getText() {
    return text;
  }

  public void setText(String text) {
    this.text = text;
  }

  public InlineResponse20010 text(String text) {
    this.text = text;
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
