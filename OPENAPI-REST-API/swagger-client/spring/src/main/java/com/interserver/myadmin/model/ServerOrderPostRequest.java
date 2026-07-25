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
 * Request body to place a custom dedicated server order. All ids come from getNewServer&#x27;s config_li / regions.
 */
@Schema(description = "Request body to place a custom dedicated server order. All ids come from getNewServer's config_li / regions.")
@Validated
@NotUndefined



public class ServerOrderPostRequest   {
  @JsonProperty("cpu")

  private Integer cpu = null;

  @JsonProperty("hd")

  private OneOfServerOrderPostRequestHd hd = null;

  @JsonProperty("memory")

  private Integer memory = null;

  @JsonProperty("bandwidth")

  private Integer bandwidth = null;

  @JsonProperty("ips")

  private Integer ips = null;

  @JsonProperty("os")

  private Integer os = null;

  @JsonProperty("cp")

  private Integer cp = null;

  @JsonProperty("raid")

  private Integer raid = null;

  @JsonProperty("region")

  private Integer region = null;

  @JsonProperty("servername")

  private String servername = null;

  @JsonProperty("rootpass")

  private String rootpass = null;

  @JsonProperty("tos")

  private Boolean tos = null;

  @JsonProperty("comment")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String comment = "";


  public ServerOrderPostRequest cpu(Integer cpu) { 

    this.cpu = cpu;
    return this;
  }

  /**
   * CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options.
   * @return cpu
   **/
  
  @Schema(required = true, description = "CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options.")
  
  @NotNull
  public Integer getCpu() {  
    return cpu;
  }



  public void setCpu(Integer cpu) { 

    this.cpu = cpu;
  }

  public ServerOrderPostRequest hd(OneOfServerOrderPostRequestHd hd) { 

    this.hd = hd;
    return this;
  }

  /**
   * Hard-drive configuration id(s) from config_li.hd_li[cpu]. Accepts a single id or an array of ids.
   * @return hd
   **/
  
  @Schema(required = true, description = "Hard-drive configuration id(s) from config_li.hd_li[cpu]. Accepts a single id or an array of ids.")
  
  @NotNull
  public OneOfServerOrderPostRequestHd getHd() {  
    return hd;
  }



  public void setHd(OneOfServerOrderPostRequestHd hd) { 

    this.hd = hd;
  }

  public ServerOrderPostRequest memory(Integer memory) { 

    this.memory = memory;
    return this;
  }

  /**
   * Memory configuration id from config_li.memory_li[cpu].
   * @return memory
   **/
  
  @Schema(required = true, description = "Memory configuration id from config_li.memory_li[cpu].")
  
  @NotNull
  public Integer getMemory() {  
    return memory;
  }



  public void setMemory(Integer memory) { 

    this.memory = memory;
  }

  public ServerOrderPostRequest bandwidth(Integer bandwidth) { 

    this.bandwidth = bandwidth;
    return this;
  }

  /**
   * Bandwidth configuration id from config_li.bandwidth_li.
   * @return bandwidth
   **/
  
  @Schema(required = true, description = "Bandwidth configuration id from config_li.bandwidth_li.")
  
  @NotNull
  public Integer getBandwidth() {  
    return bandwidth;
  }



  public void setBandwidth(Integer bandwidth) { 

    this.bandwidth = bandwidth;
  }

  public ServerOrderPostRequest ips(Integer ips) { 

    this.ips = ips;
    return this;
  }

  /**
   * IP block configuration id from config_li.ips_li.
   * @return ips
   **/
  
  @Schema(required = true, description = "IP block configuration id from config_li.ips_li.")
  
  @NotNull
  public Integer getIps() {  
    return ips;
  }



  public void setIps(Integer ips) { 

    this.ips = ips;
  }

  public ServerOrderPostRequest os(Integer os) { 

    this.os = os;
    return this;
  }

  /**
   * Operating System configuration id from config_li.os_li.
   * @return os
   **/
  
  @Schema(required = true, description = "Operating System configuration id from config_li.os_li.")
  
  @NotNull
  public Integer getOs() {  
    return os;
  }



  public void setOs(Integer os) { 

    this.os = os;
  }

  public ServerOrderPostRequest cp(Integer cp) { 

    this.cp = cp;
    return this;
  }

  /**
   * Control Panel configuration id from config_li.cp_li.
   * @return cp
   **/
  
  @Schema(required = true, description = "Control Panel configuration id from config_li.cp_li.")
  
  @NotNull
  public Integer getCp() {  
    return cp;
  }



  public void setCp(Integer cp) { 

    this.cp = cp;
  }

  public ServerOrderPostRequest raid(Integer raid) { 

    this.raid = raid;
    return this;
  }

  /**
   * RAID configuration id from config_li.raid_li.
   * @return raid
   **/
  
  @Schema(required = true, description = "RAID configuration id from config_li.raid_li.")
  
  @NotNull
  public Integer getRaid() {  
    return raid;
  }



  public void setRaid(Integer raid) { 

    this.raid = raid;
  }

  public ServerOrderPostRequest region(Integer region) { 

    this.region = region;
    return this;
  }

  /**
   * Region id from the regions list.
   * @return region
   **/
  
  @Schema(required = true, description = "Region id from the regions list.")
  
  @NotNull
  public Integer getRegion() {  
    return region;
  }



  public void setRegion(Integer region) { 

    this.region = region;
  }

  public ServerOrderPostRequest servername(String servername) { 

    this.servername = servername;
    return this;
  }

  /**
   * Server hostname. Must pass valid_hostname().
   * @return servername
   **/
  
  @Schema(required = true, description = "Server hostname. Must pass valid_hostname().")
  
  @NotNull
  public String getServername() {  
    return servername;
  }



  public void setServername(String servername) { 

    this.servername = servername;
  }

  public ServerOrderPostRequest rootpass(String rootpass) { 

    this.rootpass = rootpass;
    return this;
  }

  /**
   * Root password for the server.
   * @return rootpass
   **/
  
  @Schema(required = true, description = "Root password for the server.")
  
  @NotNull
  public String getRootpass() {  
    return rootpass;
  }



  public void setRootpass(String rootpass) { 

    this.rootpass = rootpass;
  }

  public ServerOrderPostRequest tos(Boolean tos) { 

    this.tos = tos;
    return this;
  }

  /**
   * Terms-of-service acceptance. Must be true to place the order.
   * @return tos
   **/
  
  @Schema(required = true, description = "Terms-of-service acceptance. Must be true to place the order.")
  
  @NotNull
  public Boolean isTos() {  
    return tos;
  }



  public void setTos(Boolean tos) { 

    this.tos = tos;
  }

  public ServerOrderPostRequest comment(String comment) { 

    this.comment = comment;
    return this;
  }

  /**
   * Optional free-form order comment.
   * @return comment
   **/
  
  @Schema(description = "Optional free-form order comment.")
  
  public String getComment() {  
    return comment;
  }



  public void setComment(String comment) { 
    this.comment = comment;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ServerOrderPostRequest serverOrderPostRequest = (ServerOrderPostRequest) o;
    return Objects.equals(this.cpu, serverOrderPostRequest.cpu) &&
        Objects.equals(this.hd, serverOrderPostRequest.hd) &&
        Objects.equals(this.memory, serverOrderPostRequest.memory) &&
        Objects.equals(this.bandwidth, serverOrderPostRequest.bandwidth) &&
        Objects.equals(this.ips, serverOrderPostRequest.ips) &&
        Objects.equals(this.os, serverOrderPostRequest.os) &&
        Objects.equals(this.cp, serverOrderPostRequest.cp) &&
        Objects.equals(this.raid, serverOrderPostRequest.raid) &&
        Objects.equals(this.region, serverOrderPostRequest.region) &&
        Objects.equals(this.servername, serverOrderPostRequest.servername) &&
        Objects.equals(this.rootpass, serverOrderPostRequest.rootpass) &&
        Objects.equals(this.tos, serverOrderPostRequest.tos) &&
        Objects.equals(this.comment, serverOrderPostRequest.comment);
  }

  @Override
  public int hashCode() {
    return Objects.hash(cpu, hd, memory, bandwidth, ips, os, cp, raid, region, servername, rootpass, tos, comment);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ServerOrderPostRequest {\n");
    
    sb.append("    cpu: ").append(toIndentedString(cpu)).append("\n");
    sb.append("    hd: ").append(toIndentedString(hd)).append("\n");
    sb.append("    memory: ").append(toIndentedString(memory)).append("\n");
    sb.append("    bandwidth: ").append(toIndentedString(bandwidth)).append("\n");
    sb.append("    ips: ").append(toIndentedString(ips)).append("\n");
    sb.append("    os: ").append(toIndentedString(os)).append("\n");
    sb.append("    cp: ").append(toIndentedString(cp)).append("\n");
    sb.append("    raid: ").append(toIndentedString(raid)).append("\n");
    sb.append("    region: ").append(toIndentedString(region)).append("\n");
    sb.append("    servername: ").append(toIndentedString(servername)).append("\n");
    sb.append("    rootpass: ").append(toIndentedString(rootpass)).append("\n");
    sb.append("    tos: ").append(toIndentedString(tos)).append("\n");
    sb.append("    comment: ").append(toIndentedString(comment)).append("\n");
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
