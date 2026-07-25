package org.openapitools.model;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * The data for a email deny rule record.
 */
@ApiModel(description="The data for a email deny rule record.")

public class DenyRuleRecord  {
  
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
  * The deny rule Id number.
  */
  @ApiModelProperty(example = "41124", required = true, value = "The deny rule Id number.")

  private Integer id;

 /**
  * the date the rule was created.
  */
  @ApiModelProperty(example = "2022-03-22 19:16:35", required = true, value = "the date the rule was created.")

  private String created;

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

  public DenyRuleRecord type(TypeEnum type) {
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

  public DenyRuleRecord data(String data) {
    this.data = data;
    return this;
  }

 /**
   * The deny rule Id number.
   * @return id
  **/
  @JsonProperty("id")
  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public DenyRuleRecord id(Integer id) {
    this.id = id;
    return this;
  }

 /**
   * the date the rule was created.
   * @return created
  **/
  @JsonProperty("created")
  public String getCreated() {
    return created;
  }

  public void setCreated(String created) {
    this.created = created;
  }

  public DenyRuleRecord created(String created) {
    this.created = created;
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

  public DenyRuleRecord user(String user) {
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
    DenyRuleRecord denyRuleRecord = (DenyRuleRecord) o;
    return Objects.equals(this.type, denyRuleRecord.type) &&
        Objects.equals(this.data, denyRuleRecord.data) &&
        Objects.equals(this.id, denyRuleRecord.id) &&
        Objects.equals(this.created, denyRuleRecord.created) &&
        Objects.equals(this.user, denyRuleRecord.user);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, data, id, created, user);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DenyRuleRecord {\n");
    
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    data: ").append(toIndentedString(data)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    created: ").append(toIndentedString(created)).append("\n");
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

