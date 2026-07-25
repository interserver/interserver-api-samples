package io.swagger.model;

import java.util.Objects;
import java.util.ArrayList;
import java.util.HashMap;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;



public class InlineResponse2007   {
  private Boolean login = null;
  private Boolean signup = null;
  private Boolean linked = null;
  private Integer accountId = null;
  private String errorCode = null;

  /**
   * Whether the user was logged in to an existing account.
   **/
  
  @Schema(description = "Whether the user was logged in to an existing account.")
  @JsonProperty("login")
  @NotNull
  public Boolean isLogin() {
    return login;
  }
  public void setLogin(Boolean login) {
    this.login = login;
  }

  /**
   * Whether a new account was created.
   **/
  
  @Schema(description = "Whether a new account was created.")
  @JsonProperty("signup")
  @NotNull
  public Boolean isSignup() {
    return signup;
  }
  public void setSignup(Boolean signup) {
    this.signup = signup;
  }

  /**
   * Whether the OAuth provider was linked to an existing account.
   **/
  
  @Schema(description = "Whether the OAuth provider was linked to an existing account.")
  @JsonProperty("linked")
  @NotNull
  public Boolean isLinked() {
    return linked;
  }
  public void setLinked(Boolean linked) {
    this.linked = linked;
  }

  /**
   * The account ID associated with the OAuth login.
   **/
  
  @Schema(description = "The account ID associated with the OAuth login.")
  @JsonProperty("account_id")
  @NotNull
  public Integer getAccountId() {
    return accountId;
  }
  public void setAccountId(Integer accountId) {
    this.accountId = accountId;
  }

  /**
   * Error code if additional verification is needed (e.g. &#x60;2fa_required&#x60;).
   **/
  
  @Schema(description = "Error code if additional verification is needed (e.g. `2fa_required`).")
  @JsonProperty("error_code")
  @NotNull
  public String getErrorCode() {
    return errorCode;
  }
  public void setErrorCode(String errorCode) {
    this.errorCode = errorCode;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse2007 inlineResponse2007 = (InlineResponse2007) o;
    return Objects.equals(login, inlineResponse2007.login) &&
        Objects.equals(signup, inlineResponse2007.signup) &&
        Objects.equals(linked, inlineResponse2007.linked) &&
        Objects.equals(accountId, inlineResponse2007.accountId) &&
        Objects.equals(errorCode, inlineResponse2007.errorCode);
  }

  @Override
  public int hashCode() {
    return Objects.hash(login, signup, linked, accountId, errorCode);
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
