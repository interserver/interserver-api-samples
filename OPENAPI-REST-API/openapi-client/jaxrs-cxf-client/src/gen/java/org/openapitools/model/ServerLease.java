package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ServerLease  {
  
 /**
  * MAC address associated with the lease.
  */
  @ApiModelProperty(example = "0c:c4:7a:af:35:00", required = true, value = "MAC address associated with the lease.")

  private String mac;

 /**
  * Indicates if the lease is authenticated.
  */
  @ApiModelProperty(example = "false", required = true, value = "Indicates if the lease is authenticated.")

  private Boolean authenticated;

 /**
  * Group identifier for the lease.
  */
  @ApiModelProperty(example = "1", required = true, value = "Group identifier for the lease.")

  private String group;
 /**
   * MAC address associated with the lease.
   * @return mac
  **/
  @JsonProperty("mac")
  public String getMac() {
    return mac;
  }

  public void setMac(String mac) {
    this.mac = mac;
  }

  public ServerLease mac(String mac) {
    this.mac = mac;
    return this;
  }

 /**
   * Indicates if the lease is authenticated.
   * @return authenticated
  **/
  @JsonProperty("authenticated")
  public Boolean isAuthenticated() {
    return authenticated;
  }

  public void setAuthenticated(Boolean authenticated) {
    this.authenticated = authenticated;
  }

  public ServerLease authenticated(Boolean authenticated) {
    this.authenticated = authenticated;
    return this;
  }

 /**
   * Group identifier for the lease.
   * @return group
  **/
  @JsonProperty("group")
  public String getGroup() {
    return group;
  }

  public void setGroup(String group) {
    this.group = group;
  }

  public ServerLease group(String group) {
    this.group = group;
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
  private static String toIndentedString(Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}

