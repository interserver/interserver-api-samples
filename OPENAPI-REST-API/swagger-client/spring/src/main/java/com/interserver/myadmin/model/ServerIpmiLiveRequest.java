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
 * Request body to setup an IPMI Live connection.
 */
@Schema(description = "Request body to setup an IPMI Live connection.")
@Validated
@NotUndefined



public class ServerIpmiLiveRequest   {
  @JsonProperty("asset")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer asset = null;

  @JsonProperty("ip")

  private String ip = null;


  public ServerIpmiLiveRequest asset(Integer asset) { 

    this.asset = asset;
    return this;
  }

  /**
   * Asset ID
   * @return asset
   **/
  
  @Schema(example = "5431", description = "Asset ID")
  
  public Integer getAsset() {  
    return asset;
  }



  public void setAsset(Integer asset) { 
    this.asset = asset;
  }

  public ServerIpmiLiveRequest ip(String ip) { 

    this.ip = ip;
    return this;
  }

  /**
   * Your IP Address you wish to connect to the IPMI system from.
   * @return ip
   **/
  
  @Schema(example = "1.2.3.4", required = true, description = "Your IP Address you wish to connect to the IPMI system from.")
  
  @NotNull
  public String getIp() {  
    return ip;
  }



  public void setIp(String ip) { 

    this.ip = ip;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ServerIpmiLiveRequest serverIpmiLiveRequest = (ServerIpmiLiveRequest) o;
    return Objects.equals(this.asset, serverIpmiLiveRequest.asset) &&
        Objects.equals(this.ip, serverIpmiLiveRequest.ip);
  }

  @Override
  public int hashCode() {
    return Objects.hash(asset, ip);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ServerIpmiLiveRequest {\n");
    
    sb.append("    asset: ").append(toIndentedString(asset)).append("\n");
    sb.append("    ip: ").append(toIndentedString(ip)).append("\n");
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
