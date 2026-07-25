package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.LoginSubmissionExampleGrecaptcharesponse;
import io.swagger.v3.oas.annotations.media.Schema;
import org.springframework.validation.annotation.Validated;
import org.openapitools.jackson.nullable.JsonNullable;
import io.swagger.configuration.NotUndefined;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.Nulls;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * The data to submit in the login request.
 */
@Schema(description = "The data to submit in the login request.")
@Validated
@NotUndefined



public class LoginSubmissionExample   {
  @JsonProperty("login")

  private String login = null;

  @JsonProperty("passwd")

  private String passwd = null;

  @JsonProperty("remember")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String remember = null;

  @JsonProperty("g-recaptcha-response")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private LoginSubmissionExampleGrecaptcharesponse gRecaptchaResponse = null;

  @JsonProperty("tfa")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String tfa = null;


  public LoginSubmissionExample login(String login) { 

    this.login = login;
    return this;
  }

  /**
   * Get login
   * @return login
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public String getLogin() {  
    return login;
  }



  public void setLogin(String login) { 

    this.login = login;
  }

  public LoginSubmissionExample passwd(String passwd) { 

    this.passwd = passwd;
    return this;
  }

  /**
   * Get passwd
   * @return passwd
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public String getPasswd() {  
    return passwd;
  }



  public void setPasswd(String passwd) { 

    this.passwd = passwd;
  }

  public LoginSubmissionExample remember(String remember) { 

    this.remember = remember;
    return this;
  }

  /**
   * Get remember
   * @return remember
   **/
  
  @Schema(description = "")
  
  public String getRemember() {  
    return remember;
  }



  public void setRemember(String remember) { 
    this.remember = remember;
  }

  public LoginSubmissionExample gRecaptchaResponse(LoginSubmissionExampleGrecaptcharesponse gRecaptchaResponse) { 

    this.gRecaptchaResponse = gRecaptchaResponse;
    return this;
  }

  /**
   * Get gRecaptchaResponse
   * @return gRecaptchaResponse
   **/
  
  @Schema(description = "")
  
@Valid
  public LoginSubmissionExampleGrecaptcharesponse getGRecaptchaResponse() {  
    return gRecaptchaResponse;
  }



  public void setGRecaptchaResponse(LoginSubmissionExampleGrecaptcharesponse gRecaptchaResponse) { 
    this.gRecaptchaResponse = gRecaptchaResponse;
  }

  public LoginSubmissionExample tfa(String tfa) { 

    this.tfa = tfa;
    return this;
  }

  /**
   * Two Factor Authentication Response.
   * @return tfa
   **/
  
  @Schema(description = "Two Factor Authentication Response.")
  
  public String getTfa() {  
    return tfa;
  }



  public void setTfa(String tfa) { 
    this.tfa = tfa;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    LoginSubmissionExample loginSubmissionExample = (LoginSubmissionExample) o;
    return Objects.equals(this.login, loginSubmissionExample.login) &&
        Objects.equals(this.passwd, loginSubmissionExample.passwd) &&
        Objects.equals(this.remember, loginSubmissionExample.remember) &&
        Objects.equals(this.gRecaptchaResponse, loginSubmissionExample.gRecaptchaResponse) &&
        Objects.equals(this.tfa, loginSubmissionExample.tfa);
  }

  @Override
  public int hashCode() {
    return Objects.hash(login, passwd, remember, gRecaptchaResponse, tfa);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class LoginSubmissionExample {\n");
    
    sb.append("    login: ").append(toIndentedString(login)).append("\n");
    sb.append("    passwd: ").append(toIndentedString(passwd)).append("\n");
    sb.append("    remember: ").append(toIndentedString(remember)).append("\n");
    sb.append("    gRecaptchaResponse: ").append(toIndentedString(gRecaptchaResponse)).append("\n");
    sb.append("    tfa: ").append(toIndentedString(tfa)).append("\n");
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
