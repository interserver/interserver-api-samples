package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.AccountInfoOauthConfigProviders;
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
 * OAuth integration configuration including callback URL and available providers.
 */
@Schema(description = "OAuth integration configuration including callback URL and available providers.")
@Validated
@NotUndefined



public class AccountInfoOauthConfig   {
  @JsonProperty("callback")

  private String callback = null;

  @JsonProperty("providers")

  private AccountInfoOauthConfigProviders providers = null;


  public AccountInfoOauthConfig callback(String callback) { 

    this.callback = callback;
    return this;
  }

  /**
   * Get callback
   * @return callback
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public String getCallback() {  
    return callback;
  }



  public void setCallback(String callback) { 

    this.callback = callback;
  }

  public AccountInfoOauthConfig providers(AccountInfoOauthConfigProviders providers) { 

    this.providers = providers;
    return this;
  }

  /**
   * Get providers
   * @return providers
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public AccountInfoOauthConfigProviders getProviders() {  
    return providers;
  }



  public void setProviders(AccountInfoOauthConfigProviders providers) { 

    this.providers = providers;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    AccountInfoOauthConfig accountInfoOauthConfig = (AccountInfoOauthConfig) o;
    return Objects.equals(this.callback, accountInfoOauthConfig.callback) &&
        Objects.equals(this.providers, accountInfoOauthConfig.providers);
  }

  @Override
  public int hashCode() {
    return Objects.hash(callback, providers);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AccountInfoOauthConfig {\n");
    
    sb.append("    callback: ").append(toIndentedString(callback)).append("\n");
    sb.append("    providers: ").append(toIndentedString(providers)).append("\n");
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
