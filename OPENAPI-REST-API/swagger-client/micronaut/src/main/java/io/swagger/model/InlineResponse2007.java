package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;
import io.micronaut.core.annotation.Introspected;
import io.micronaut.validation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * InlineResponse2007
 */
@Validated
@Introspected

public class InlineResponse2007   {
  @JsonProperty("login")
  private Boolean login = null;

  @JsonProperty("signup")
  private Boolean signup = null;

  @JsonProperty("linked")
  private Boolean linked = null;

  @JsonProperty("account_id")
  private Integer accountId = null;

  @JsonProperty("error_code")
  private String errorCode = null;

  public InlineResponse2007 login(Boolean login) {
    this.login = login;
    return this;
  }

  /**
   * Whether the user was logged in to an existing account.
   * @return login
  **/
  @Schema(description = "Whether the user was logged in to an existing account.")
  @NotNull

  public Boolean isLogin() {
    return login;
  }

  public void setLogin(Boolean login) {
    this.login = login;
  }

  public InlineResponse2007 signup(Boolean signup) {
    this.signup = signup;
    return this;
  }

  /**
   * Whether a new account was created.
   * @return signup
  **/
  @Schema(description = "Whether a new account was created.")
  @NotNull

  public Boolean isSignup() {
    return signup;
  }

  public void setSignup(Boolean signup) {
    this.signup = signup;
  }

  public InlineResponse2007 linked(Boolean linked) {
    this.linked = linked;
    return this;
  }

  /**
   * Whether the OAuth provider was linked to an existing account.
   * @return linked
  **/
  @Schema(description = "Whether the OAuth provider was linked to an existing account.")
  @NotNull

  public Boolean isLinked() {
    return linked;
  }

  public void setLinked(Boolean linked) {
    this.linked = linked;
  }

  public InlineResponse2007 accountId(Integer accountId) {
    this.accountId = accountId;
    return this;
  }

  /**
   * The account ID associated with the OAuth login.
   * @return accountId
  **/
  @Schema(description = "The account ID associated with the OAuth login.")
  @NotNull

  public Integer getAccountId() {
    return accountId;
  }

  public void setAccountId(Integer accountId) {
    this.accountId = accountId;
  }

  public InlineResponse2007 errorCode(String errorCode) {
    this.errorCode = errorCode;
    return this;
  }

  /**
   * Error code if additional verification is needed (e.g. `2fa_required`).
   * @return errorCode
  **/
  @Schema(description = "Error code if additional verification is needed (e.g. `2fa_required`).")
  @NotNull

  public String getErrorCode() {
    return errorCode;
  }

  public void setErrorCode(String errorCode) {
    this.errorCode = errorCode;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse2007 inlineResponse2007 = (InlineResponse2007) o;
    return Objects.equals(this.login, inlineResponse2007.login) &&
        Objects.equals(this.signup, inlineResponse2007.signup) &&
        Objects.equals(this.linked, inlineResponse2007.linked) &&
        Objects.equals(this.accountId, inlineResponse2007.accountId) &&
        Objects.equals(this.errorCode, inlineResponse2007.errorCode);
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
