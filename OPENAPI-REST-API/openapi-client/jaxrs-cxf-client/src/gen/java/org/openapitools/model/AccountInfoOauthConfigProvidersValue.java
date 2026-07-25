package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class AccountInfoOauthConfigProvidersValue  {
  
  @ApiModelProperty(value = "")

  private Boolean enabled;

  @ApiModelProperty(value = "")

  private Boolean linked;

  @ApiModelProperty(value = "")

  private String account;

  @ApiModelProperty(value = "")

  private String url;
 /**
   * Get enabled
   * @return enabled
  **/
  @JsonProperty("enabled")
  public Boolean isEnabled() {
    return enabled;
  }

  public void setEnabled(Boolean enabled) {
    this.enabled = enabled;
  }

  public AccountInfoOauthConfigProvidersValue enabled(Boolean enabled) {
    this.enabled = enabled;
    return this;
  }

 /**
   * Get linked
   * @return linked
  **/
  @JsonProperty("linked")
  public Boolean isLinked() {
    return linked;
  }

  public void setLinked(Boolean linked) {
    this.linked = linked;
  }

  public AccountInfoOauthConfigProvidersValue linked(Boolean linked) {
    this.linked = linked;
    return this;
  }

 /**
   * Get account
   * @return account
  **/
  @JsonProperty("account")
  public String getAccount() {
    return account;
  }

  public void setAccount(String account) {
    this.account = account;
  }

  public AccountInfoOauthConfigProvidersValue account(String account) {
    this.account = account;
    return this;
  }

 /**
   * Get url
   * @return url
  **/
  @JsonProperty("url")
  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }

  public AccountInfoOauthConfigProvidersValue url(String url) {
    this.url = url;
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
    AccountInfoOauthConfigProvidersValue accountInfoOauthConfigProvidersValue = (AccountInfoOauthConfigProvidersValue) o;
    return Objects.equals(this.enabled, accountInfoOauthConfigProvidersValue.enabled) &&
        Objects.equals(this.linked, accountInfoOauthConfigProvidersValue.linked) &&
        Objects.equals(this.account, accountInfoOauthConfigProvidersValue.account) &&
        Objects.equals(this.url, accountInfoOauthConfigProvidersValue.url);
  }

  @Override
  public int hashCode() {
    return Objects.hash(enabled, linked, account, url);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AccountInfoOauthConfigProvidersValue {\n");
    
    sb.append("    enabled: ").append(toIndentedString(enabled)).append("\n");
    sb.append("    linked: ").append(toIndentedString(linked)).append("\n");
    sb.append("    account: ").append(toIndentedString(account)).append("\n");
    sb.append("    url: ").append(toIndentedString(url)).append("\n");
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

