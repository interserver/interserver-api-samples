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
 * Order counts per module.
 */
@Schema(description = "Order counts per module.")
@Validated
@NotUndefined



public class LoginServiceCounts   {
  @JsonProperty("vps")

  private Integer vps = null;

  @JsonProperty("websites")

  private Integer websites = null;

  @JsonProperty("servers")

  private Integer servers = null;


  public LoginServiceCounts vps(Integer vps) { 

    this.vps = vps;
    return this;
  }

  /**
   * The number of total VPS orders that have been placed in our billing system.
   * @return vps
   **/
  
  @Schema(example = "205172", required = true, description = "The number of total VPS orders that have been placed in our billing system.")
  
  @NotNull
  public Integer getVps() {  
    return vps;
  }



  public void setVps(Integer vps) { 

    this.vps = vps;
  }

  public LoginServiceCounts websites(Integer websites) { 

    this.websites = websites;
    return this;
  }

  /**
   * The number of total website orders that have been placed in our billing system.
   * @return websites
   **/
  
  @Schema(example = "205172", required = true, description = "The number of total website orders that have been placed in our billing system.")
  
  @NotNull
  public Integer getWebsites() {  
    return websites;
  }



  public void setWebsites(Integer websites) { 

    this.websites = websites;
  }

  public LoginServiceCounts servers(Integer servers) { 

    this.servers = servers;
    return this;
  }

  /**
   * The number of total server orders that have been placed in our billing system.
   * @return servers
   **/
  
  @Schema(example = "205172", required = true, description = "The number of total server orders that have been placed in our billing system.")
  
  @NotNull
  public Integer getServers() {  
    return servers;
  }



  public void setServers(Integer servers) { 

    this.servers = servers;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    LoginServiceCounts loginServiceCounts = (LoginServiceCounts) o;
    return Objects.equals(this.vps, loginServiceCounts.vps) &&
        Objects.equals(this.websites, loginServiceCounts.websites) &&
        Objects.equals(this.servers, loginServiceCounts.servers);
  }

  @Override
  public int hashCode() {
    return Objects.hash(vps, websites, servers);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class LoginServiceCounts {\n");
    
    sb.append("    vps: ").append(toIndentedString(vps)).append("\n");
    sb.append("    websites: ").append(toIndentedString(websites)).append("\n");
    sb.append("    servers: ").append(toIndentedString(servers)).append("\n");
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
