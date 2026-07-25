package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class InitiatePayment200Response  {
  
public enum TypeEnum {

REDIRECT(String.valueOf("redirect")), SUBMIT(String.valueOf("submit")), SINGLE(String.valueOf("single")), UNKNOWN_DEFAULT_OPEN_API(String.valueOf("unknown_default_open_api"));


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

    public static TypeEnum fromValue(String value) {
        for (TypeEnum b : TypeEnum.values()) {
            if (b.value.equals(value)) {
                return b;
            }
        }
        throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }
}

 /**
  * The response type indicating how to handle the payment. Possible values: `redirect` (redirect user to a URL), `submit` (submit a form to a URL), `single` (immediate result).
  */
  @ApiModelProperty(value = "The response type indicating how to handle the payment. Possible values: `redirect` (redirect user to a URL), `submit` (submit a form to a URL), `single` (immediate result).")

  private TypeEnum type;

 /**
  * URL to redirect the user to for payment (when type is `redirect`).
  */
  @ApiModelProperty(value = "URL to redirect the user to for payment (when type is `redirect`).")

  private String redirect;

 /**
  * Form action URL (when type is `submit`).
  */
  @ApiModelProperty(value = "Form action URL (when type is `submit`).")

  private String action;

 /**
  * HTTP method for the form submission (when type is `submit`).
  */
  @ApiModelProperty(value = "HTTP method for the form submission (when type is `submit`).")

  private String method;

 /**
  * Form field name-value pairs to submit (when type is `submit`).
  */
  @ApiModelProperty(value = "Form field name-value pairs to submit (when type is `submit`).")

  private Object items;

 /**
  * Status or result text.
  */
  @ApiModelProperty(value = "Status or result text.")

  private String text;
 /**
   * The response type indicating how to handle the payment. Possible values: &#x60;redirect&#x60; (redirect user to a URL), &#x60;submit&#x60; (submit a form to a URL), &#x60;single&#x60; (immediate result).
   * @return type
  **/
  @JsonProperty("type")
  public String getType() {
    if (type == null) {
      return null;
    }
    return type.value();
  }

  public void setType(TypeEnum type) {
    this.type = type;
  }

  public InitiatePayment200Response type(TypeEnum type) {
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

  public InitiatePayment200Response redirect(String redirect) {
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

  public InitiatePayment200Response action(String action) {
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

  public InitiatePayment200Response method(String method) {
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

  public InitiatePayment200Response items(Object items) {
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

  public InitiatePayment200Response text(String text) {
    this.text = text;
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
    InitiatePayment200Response initiatePayment200Response = (InitiatePayment200Response) o;
    return Objects.equals(this.type, initiatePayment200Response.type) &&
        Objects.equals(this.redirect, initiatePayment200Response.redirect) &&
        Objects.equals(this.action, initiatePayment200Response.action) &&
        Objects.equals(this.method, initiatePayment200Response.method) &&
        Objects.equals(this.items, initiatePayment200Response.items) &&
        Objects.equals(this.text, initiatePayment200Response.text);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, redirect, action, method, items, text);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InitiatePayment200Response {\n");
    
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
  private static String toIndentedString(Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}

