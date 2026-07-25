package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
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
 * The response from a successful login.
 */
@Schema(description = "The response from a successful login.")
@Validated
@NotUndefined



public class LoginSuccessResponse   {
  @JsonProperty("sessionId")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String sessionId = null;

  @JsonProperty("account_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer accountId = null;

  @JsonProperty("account_lid")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String accountLid = null;

  @JsonProperty("ima")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ima = null;

  @JsonProperty("gravatar")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String gravatar = null;


  public LoginSuccessResponse sessionId(String sessionId) { 

    this.sessionId = sessionId;
    return this;
  }

  /**
   * Get sessionId
   * @return sessionId
   **/
  
  @Schema(description = "")
  
  public String getSessionId() {  
    return sessionId;
  }



  public void setSessionId(String sessionId) { 
    this.sessionId = sessionId;
  }

  public LoginSuccessResponse accountId(Integer accountId) { 

    this.accountId = accountId;
    return this;
  }

  /**
   * Get accountId
   * @return accountId
   **/
  
  @Schema(description = "")
  
  public Integer getAccountId() {  
    return accountId;
  }



  public void setAccountId(Integer accountId) { 
    this.accountId = accountId;
  }

  public LoginSuccessResponse accountLid(String accountLid) { 

    this.accountLid = accountLid;
    return this;
  }

  /**
   * Get accountLid
   * @return accountLid
   **/
  
  @Schema(description = "")
  
  public String getAccountLid() {  
    return accountLid;
  }



  public void setAccountLid(String accountLid) { 
    this.accountLid = accountLid;
  }

  public LoginSuccessResponse ima(String ima) { 

    this.ima = ima;
    return this;
  }

  /**
   * Get ima
   * @return ima
   **/
  
  @Schema(description = "")
  
  public String getIma() {  
    return ima;
  }



  public void setIma(String ima) { 
    this.ima = ima;
  }

  public LoginSuccessResponse gravatar(String gravatar) { 

    this.gravatar = gravatar;
    return this;
  }

  /**
   * Get gravatar
   * @return gravatar
   **/
  
  @Schema(description = "")
  
  public String getGravatar() {  
    return gravatar;
  }



  public void setGravatar(String gravatar) { 
    this.gravatar = gravatar;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    LoginSuccessResponse loginSuccessResponse = (LoginSuccessResponse) o;
    return Objects.equals(this.sessionId, loginSuccessResponse.sessionId) &&
        Objects.equals(this.accountId, loginSuccessResponse.accountId) &&
        Objects.equals(this.accountLid, loginSuccessResponse.accountLid) &&
        Objects.equals(this.ima, loginSuccessResponse.ima) &&
        Objects.equals(this.gravatar, loginSuccessResponse.gravatar);
  }

  @Override
  public int hashCode() {
    return Objects.hash(sessionId, accountId, accountLid, ima, gravatar);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class LoginSuccessResponse {\n");
    
    sb.append("    sessionId: ").append(toIndentedString(sessionId)).append("\n");
    sb.append("    accountId: ").append(toIndentedString(accountId)).append("\n");
    sb.append("    accountLid: ").append(toIndentedString(accountLid)).append("\n");
    sb.append("    ima: ").append(toIndentedString(ima)).append("\n");
    sb.append("    gravatar: ").append(toIndentedString(gravatar)).append("\n");
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
