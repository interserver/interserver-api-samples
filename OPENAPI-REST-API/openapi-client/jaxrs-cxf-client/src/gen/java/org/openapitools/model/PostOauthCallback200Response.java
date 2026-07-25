package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class PostOauthCallback200Response  {
  
 /**
  * Whether the user was logged in to an existing account.
  */
  @ApiModelProperty(value = "Whether the user was logged in to an existing account.")

  private Boolean login;

 /**
  * Whether a new account was created.
  */
  @ApiModelProperty(value = "Whether a new account was created.")

  private Boolean signup;

 /**
  * Whether the OAuth provider was linked to an existing account.
  */
  @ApiModelProperty(value = "Whether the OAuth provider was linked to an existing account.")

  private Boolean linked;

 /**
  * The account ID associated with the OAuth login.
  */
  @ApiModelProperty(value = "The account ID associated with the OAuth login.")

  private Integer accountId;

 /**
  * Error code if additional verification is needed (e.g. `2fa_required`).
  */
  @ApiModelProperty(value = "Error code if additional verification is needed (e.g. `2fa_required`).")

  private String errorCode;
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

  public PostOauthCallback200Response login(Boolean login) {
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

  public PostOauthCallback200Response signup(Boolean signup) {
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

  public PostOauthCallback200Response linked(Boolean linked) {
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

  public PostOauthCallback200Response accountId(Integer accountId) {
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

  public PostOauthCallback200Response errorCode(String errorCode) {
    this.errorCode = errorCode;
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
    PostOauthCallback200Response postOauthCallback200Response = (PostOauthCallback200Response) o;
    return Objects.equals(this.login, postOauthCallback200Response.login) &&
        Objects.equals(this.signup, postOauthCallback200Response.signup) &&
        Objects.equals(this.linked, postOauthCallback200Response.linked) &&
        Objects.equals(this.accountId, postOauthCallback200Response.accountId) &&
        Objects.equals(this.errorCode, postOauthCallback200Response.errorCode);
  }

  @Override
  public int hashCode() {
    return Objects.hash(login, signup, linked, accountId, errorCode);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PostOauthCallback200Response {\n");
    
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
  private static String toIndentedString(Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}

