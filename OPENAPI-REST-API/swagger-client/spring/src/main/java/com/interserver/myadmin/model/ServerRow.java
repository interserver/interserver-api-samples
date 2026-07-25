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
 * A result row from the &#x60;Servers&#x60; &#x60;GET&#x60; request.
 */
@Schema(description = "A result row from the `Servers` `GET` request.")
@Validated
@NotUndefined



public class ServerRow   {
  @JsonProperty("server_id")

  private String serverId = null;

  @JsonProperty("account_lid")

  private String accountLid = null;

  @JsonProperty("server_hostname")

  private String serverHostname = null;

  @JsonProperty("server_status")

  private String serverStatus = null;


  public ServerRow serverId(String serverId) { 

    this.serverId = serverId;
    return this;
  }

  /**
   * The id of the server.
   * @return serverId
   **/
  
  @Schema(example = "8404", required = true, description = "The id of the server.")
  
  @NotNull
  public String getServerId() {  
    return serverId;
  }



  public void setServerId(String serverId) { 

    this.serverId = serverId;
  }

  public ServerRow accountLid(String accountLid) { 

    this.accountLid = accountLid;
    return this;
  }

  /**
   * The account lid of the server.
   * @return accountLid
   **/
  
  @Schema(example = "detain@interserver.net", required = true, description = "The account lid of the server.")
  
  @NotNull
  public String getAccountLid() {  
    return accountLid;
  }



  public void setAccountLid(String accountLid) { 

    this.accountLid = accountLid;
  }

  public ServerRow serverHostname(String serverHostname) { 

    this.serverHostname = serverHostname;
    return this;
  }

  /**
   * The hostname of the server.
   * @return serverHostname
   **/
  
  @Schema(example = "testsignup.is.net", required = true, description = "The hostname of the server.")
  
  @NotNull
  public String getServerHostname() {  
    return serverHostname;
  }



  public void setServerHostname(String serverHostname) { 

    this.serverHostname = serverHostname;
  }

  public ServerRow serverStatus(String serverStatus) { 

    this.serverStatus = serverStatus;
    return this;
  }

  /**
   * The status of the server.
   * @return serverStatus
   **/
  
  @Schema(example = "deleted", required = true, description = "The status of the server.")
  
  @NotNull
  public String getServerStatus() {  
    return serverStatus;
  }



  public void setServerStatus(String serverStatus) { 

    this.serverStatus = serverStatus;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ServerRow serverRow = (ServerRow) o;
    return Objects.equals(this.serverId, serverRow.serverId) &&
        Objects.equals(this.accountLid, serverRow.accountLid) &&
        Objects.equals(this.serverHostname, serverRow.serverHostname) &&
        Objects.equals(this.serverStatus, serverRow.serverStatus);
  }

  @Override
  public int hashCode() {
    return Objects.hash(serverId, accountLid, serverHostname, serverStatus);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ServerRow {\n");
    
    sb.append("    serverId: ").append(toIndentedString(serverId)).append("\n");
    sb.append("    accountLid: ").append(toIndentedString(accountLid)).append("\n");
    sb.append("    serverHostname: ").append(toIndentedString(serverHostname)).append("\n");
    sb.append("    serverStatus: ").append(toIndentedString(serverStatus)).append("\n");
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
