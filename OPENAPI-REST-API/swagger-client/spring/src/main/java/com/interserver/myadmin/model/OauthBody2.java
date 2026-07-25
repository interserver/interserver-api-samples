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
 * OauthBody2
 */
@Validated
@NotUndefined



public class OauthBody2   {
  @JsonProperty("account_id")

  private Integer accountId = null;

  @JsonProperty("code")

  private String code = null;


  public OauthBody2 accountId(Integer accountId) { 

    this.accountId = accountId;
    return this;
  }

  /**
   * The account ID returned from the POST callback.
   * @return accountId
   **/
  
  @Schema(required = true, description = "The account ID returned from the POST callback.")
  
  @NotNull
  public Integer getAccountId() {  
    return accountId;
  }



  public void setAccountId(Integer accountId) { 

    this.accountId = accountId;
  }

  public OauthBody2 code(String code) { 

    this.code = code;
    return this;
  }

  /**
   * The 6-digit two-factor authentication code.
   * @return code
   **/
  
  @Schema(required = true, description = "The 6-digit two-factor authentication code.")
  
  @NotNull
  public String getCode() {  
    return code;
  }



  public void setCode(String code) { 

    this.code = code;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    OauthBody2 oauthBody2 = (OauthBody2) o;
    return Objects.equals(this.accountId, oauthBody2.accountId) &&
        Objects.equals(this.code, oauthBody2.code);
  }

  @Override
  public int hashCode() {
    return Objects.hash(accountId, code);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class OauthBody2 {\n");
    
    sb.append("    accountId: ").append(toIndentedString(accountId)).append("\n");
    sb.append("    code: ").append(toIndentedString(code)).append("\n");
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
