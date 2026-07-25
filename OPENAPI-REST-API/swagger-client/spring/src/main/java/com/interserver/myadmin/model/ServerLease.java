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
 * ServerLease
 */
@Validated
@NotUndefined



public class ServerLease   {
  @JsonProperty("mac")

  private String mac = null;

  @JsonProperty("authenticated")

  private Boolean authenticated = null;

  @JsonProperty("group")

  private String group = null;


  public ServerLease mac(String mac) { 

    this.mac = mac;
    return this;
  }

  /**
   * MAC address associated with the lease.
   * @return mac
   **/
  
  @Schema(example = "0c:c4:7a:af:35:00", required = true, description = "MAC address associated with the lease.")
  
  @NotNull
  public String getMac() {  
    return mac;
  }



  public void setMac(String mac) { 

    this.mac = mac;
  }

  public ServerLease authenticated(Boolean authenticated) { 

    this.authenticated = authenticated;
    return this;
  }

  /**
   * Indicates if the lease is authenticated.
   * @return authenticated
   **/
  
  @Schema(example = "false", required = true, description = "Indicates if the lease is authenticated.")
  
  @NotNull
  public Boolean isAuthenticated() {  
    return authenticated;
  }



  public void setAuthenticated(Boolean authenticated) { 

    this.authenticated = authenticated;
  }

  public ServerLease group(String group) { 

    this.group = group;
    return this;
  }

  /**
   * Group identifier for the lease.
   * @return group
   **/
  
  @Schema(example = "1", required = true, description = "Group identifier for the lease.")
  
  @NotNull
  public String getGroup() {  
    return group;
  }



  public void setGroup(String group) { 

    this.group = group;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ServerLease serverLease = (ServerLease) o;
    return Objects.equals(this.mac, serverLease.mac) &&
        Objects.equals(this.authenticated, serverLease.authenticated) &&
        Objects.equals(this.group, serverLease.group);
  }

  @Override
  public int hashCode() {
    return Objects.hash(mac, authenticated, group);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ServerLease {\n");
    
    sb.append("    mac: ").append(toIndentedString(mac)).append("\n");
    sb.append("    authenticated: ").append(toIndentedString(authenticated)).append("\n");
    sb.append("    group: ").append(toIndentedString(group)).append("\n");
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
