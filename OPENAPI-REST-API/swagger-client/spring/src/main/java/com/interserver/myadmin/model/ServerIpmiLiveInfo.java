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
 * Information about the IPMI connection.
 */
@Schema(description = "Information about the IPMI connection.")
@Validated
@NotUndefined



public class ServerIpmiLiveInfo   {
  @JsonProperty("text")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String text = null;

  @JsonProperty("public_ip")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String publicIp = null;

  @JsonProperty("allowed_ip")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String allowedIp = null;

  @JsonProperty("client_username")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String clientUsername = null;

  @JsonProperty("client_password")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String clientPassword = null;


  public ServerIpmiLiveInfo text(String text) { 

    this.text = text;
    return this;
  }

  /**
   * Get text
   * @return text
   **/
  
  @Schema(description = "")
  
  public String getText() {  
    return text;
  }



  public void setText(String text) { 
    this.text = text;
  }

  public ServerIpmiLiveInfo publicIp(String publicIp) { 

    this.publicIp = publicIp;
    return this;
  }

  /**
   * Get publicIp
   * @return publicIp
   **/
  
  @Schema(description = "")
  
  public String getPublicIp() {  
    return publicIp;
  }



  public void setPublicIp(String publicIp) { 
    this.publicIp = publicIp;
  }

  public ServerIpmiLiveInfo allowedIp(String allowedIp) { 

    this.allowedIp = allowedIp;
    return this;
  }

  /**
   * Get allowedIp
   * @return allowedIp
   **/
  
  @Schema(description = "")
  
  public String getAllowedIp() {  
    return allowedIp;
  }



  public void setAllowedIp(String allowedIp) { 
    this.allowedIp = allowedIp;
  }

  public ServerIpmiLiveInfo clientUsername(String clientUsername) { 

    this.clientUsername = clientUsername;
    return this;
  }

  /**
   * Get clientUsername
   * @return clientUsername
   **/
  
  @Schema(description = "")
  
  public String getClientUsername() {  
    return clientUsername;
  }



  public void setClientUsername(String clientUsername) { 
    this.clientUsername = clientUsername;
  }

  public ServerIpmiLiveInfo clientPassword(String clientPassword) { 

    this.clientPassword = clientPassword;
    return this;
  }

  /**
   * Get clientPassword
   * @return clientPassword
   **/
  
  @Schema(description = "")
  
  public String getClientPassword() {  
    return clientPassword;
  }



  public void setClientPassword(String clientPassword) { 
    this.clientPassword = clientPassword;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ServerIpmiLiveInfo serverIpmiLiveInfo = (ServerIpmiLiveInfo) o;
    return Objects.equals(this.text, serverIpmiLiveInfo.text) &&
        Objects.equals(this.publicIp, serverIpmiLiveInfo.publicIp) &&
        Objects.equals(this.allowedIp, serverIpmiLiveInfo.allowedIp) &&
        Objects.equals(this.clientUsername, serverIpmiLiveInfo.clientUsername) &&
        Objects.equals(this.clientPassword, serverIpmiLiveInfo.clientPassword);
  }

  @Override
  public int hashCode() {
    return Objects.hash(text, publicIp, allowedIp, clientUsername, clientPassword);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ServerIpmiLiveInfo {\n");
    
    sb.append("    text: ").append(toIndentedString(text)).append("\n");
    sb.append("    publicIp: ").append(toIndentedString(publicIp)).append("\n");
    sb.append("    allowedIp: ").append(toIndentedString(allowedIp)).append("\n");
    sb.append("    clientUsername: ").append(toIndentedString(clientUsername)).append("\n");
    sb.append("    clientPassword: ").append(toIndentedString(clientPassword)).append("\n");
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
