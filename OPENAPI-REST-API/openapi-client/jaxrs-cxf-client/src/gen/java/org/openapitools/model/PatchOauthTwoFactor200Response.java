package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class PatchOauthTwoFactor200Response  {
  
 /**
  * Whether the 2FA verification succeeded and the user is now logged in.
  */
  @ApiModelProperty(value = "Whether the 2FA verification succeeded and the user is now logged in.")

  private Boolean login;
 /**
   * Whether the 2FA verification succeeded and the user is now logged in.
   * @return login
  **/
  @JsonProperty("login")
  public Boolean isLogin() {
    return login;
  }

  public void setLogin(Boolean login) {
    this.login = login;
  }

  public PatchOauthTwoFactor200Response login(Boolean login) {
    this.login = login;
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
    PatchOauthTwoFactor200Response patchOauthTwoFactor200Response = (PatchOauthTwoFactor200Response) o;
    return Objects.equals(this.login, patchOauthTwoFactor200Response.login);
  }

  @Override
  public int hashCode() {
    return Objects.hash(login);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PatchOauthTwoFactor200Response {\n");
    
    sb.append("    login: ").append(toIndentedString(login)).append("\n");
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

