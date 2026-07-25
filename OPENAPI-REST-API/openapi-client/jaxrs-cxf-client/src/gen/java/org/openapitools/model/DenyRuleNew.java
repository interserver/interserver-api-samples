package org.openapitools.model;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * The data for a email deny rule record.
 */
@ApiModel(description="The data for a email deny rule record.")

public class DenyRuleNew  {
  
public enum TypeEnum {

DOMAIN(String.valueOf("domain")), EMAIL(String.valueOf("email")), STARTSWITH(String.valueOf("startswith")), DESTINATION(String.valueOf("destination")), UNKNOWN_DEFAULT_OPEN_API(String.valueOf("unknown_default_open_api"));


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
  * The type of deny rule.
  */
  @ApiModelProperty(example = "email", required = true, value = "The type of deny rule.")

  private TypeEnum type;

 /**
  * The content of the rule.  If a domain type rule then an example would be google.com. For a begins with type an example would be msgid-.  For the email typer an example would be user@server.com.
  */
  @ApiModelProperty(example = "domeinwo@server.guesshost.net", required = true, value = "The content of the rule.  If a domain type rule then an example would be google.com. For a begins with type an example would be msgid-.  For the email typer an example would be user@server.com.")

  private String data;

 /**
  * Mail account username that will be tied to this rule.  If not specified the first active mail order will be used.
  */
  @ApiModelProperty(example = "mb20682", value = "Mail account username that will be tied to this rule.  If not specified the first active mail order will be used.")

  private String user;
 /**
   * The type of deny rule.
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

  public DenyRuleNew type(TypeEnum type) {
    this.type = type;
    return this;
  }

 /**
   * The content of the rule.  If a domain type rule then an example would be google.com. For a begins with type an example would be msgid-.  For the email typer an example would be user@server.com.
   * @return data
  **/
  @JsonProperty("data")
  public String getData() {
    return data;
  }

  public void setData(String data) {
    this.data = data;
  }

  public DenyRuleNew data(String data) {
    this.data = data;
    return this;
  }

 /**
   * Mail account username that will be tied to this rule.  If not specified the first active mail order will be used.
   * @return user
  **/
  @JsonProperty("user")
  public String getUser() {
    return user;
  }

  public void setUser(String user) {
    this.user = user;
  }

  public DenyRuleNew user(String user) {
    this.user = user;
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
    DenyRuleNew denyRuleNew = (DenyRuleNew) o;
    return Objects.equals(this.type, denyRuleNew.type) &&
        Objects.equals(this.data, denyRuleNew.data) &&
        Objects.equals(this.user, denyRuleNew.user);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, data, user);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DenyRuleNew {\n");
    
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    data: ").append(toIndentedString(data)).append("\n");
    sb.append("    user: ").append(toIndentedString(user)).append("\n");
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

