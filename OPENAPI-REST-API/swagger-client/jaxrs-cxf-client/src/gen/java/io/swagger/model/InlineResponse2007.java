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

public class InlineResponse2007   {
  
  @Schema(description = "Whether the user was logged in to an existing account.")
 /**
   * Whether the user was logged in to an existing account.  
  **/
  private Boolean login = null;
  
  @Schema(description = "Whether a new account was created.")
 /**
   * Whether a new account was created.  
  **/
  private Boolean signup = null;
  
  @Schema(description = "Whether the OAuth provider was linked to an existing account.")
 /**
   * Whether the OAuth provider was linked to an existing account.  
  **/
  private Boolean linked = null;
  
  @Schema(description = "The account ID associated with the OAuth login.")
 /**
   * The account ID associated with the OAuth login.  
  **/
  private Integer accountId = null;
  
  @Schema(description = "Error code if additional verification is needed (e.g. `2fa_required`).")
 /**
   * Error code if additional verification is needed (e.g. `2fa_required`).  
  **/
  private String errorCode = null;
 /**
   * Whether the user was logged in to an existing account.
   * @return login
  **/
  @JsonProperty("login")
  public Boolean isLogin() {
    return login;
  }

  public void setLogin(Boolean login) {
    this.login = login;
  }

  public InlineResponse2007 login(Boolean login) {
    this.login = login;
    return this;
  }

 /**
   * Whether a new account was created.
   * @return signup
  **/
  @JsonProperty("signup")
  public Boolean isSignup() {
    return signup;
  }

  public void setSignup(Boolean signup) {
    this.signup = signup;
  }

  public InlineResponse2007 signup(Boolean signup) {
    this.signup = signup;
    return this;
  }

 /**
   * Whether the OAuth provider was linked to an existing account.
   * @return linked
  **/
  @JsonProperty("linked")
  public Boolean isLinked() {
    return linked;
  }

  public void setLinked(Boolean linked) {
    this.linked = linked;
  }

  public InlineResponse2007 linked(Boolean linked) {
    this.linked = linked;
    return this;
  }

 /**
   * The account ID associated with the OAuth login.
   * @return accountId
  **/
  @JsonProperty("account_id")
  public Integer getAccountId() {
    return accountId;
  }

  public void setAccountId(Integer accountId) {
    this.accountId = accountId;
  }

  public InlineResponse2007 accountId(Integer accountId) {
    this.accountId = accountId;
    return this;
  }

 /**
   * Error code if additional verification is needed (e.g. &#x60;2fa_required&#x60;).
   * @return errorCode
  **/
  @JsonProperty("error_code")
  public String getErrorCode() {
    return errorCode;
  }

  public void setErrorCode(String errorCode) {
    this.errorCode = errorCode;
  }

  public InlineResponse2007 errorCode(String errorCode) {
    this.errorCode = errorCode;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse2007 {\n");
    
    sb.append("    login: ").append(toIndentedString(login)).append("\n");
    sb.append("    signup: ").append(toIndentedString(signup)).append("\n");
    sb.append("    linked: ").append(toIndentedString(linked)).append("\n");
    sb.append("    accountId: ").append(toIndentedString(accountId)).append("\n");
    sb.append("    errorCode: ").append(toIndentedString(errorCode)).append("\n");
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
