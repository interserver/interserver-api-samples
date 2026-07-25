package io.swagger.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;
import javax.validation.constraints.*;
/**
 * Request body to place a custom dedicated server order. All ids come from getNewServer&#x27;s config_li / regions.
 **/
import io.swagger.v3.oas.annotations.media.Schema;
import java.util.Objects;

import javax.xml.bind.annotation.*;

@Schema(description = "Request body to place a custom dedicated server order. All ids come from getNewServer's config_li / regions.")

public class ServerOrderPostRequest   {
  private Integer cpu = null;
  private OneOfServerOrderPostRequestHd hd = null;
  private Integer memory = null;
  private Integer bandwidth = null;
  private Integer ips = null;
  private Integer os = null;
  private Integer cp = null;
  private Integer raid = null;
  private Integer region = null;
  private String servername = null;
  private String rootpass = null;
  private Boolean tos = null;
  private String comment = "";

  /**
   * CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options.
   **/
  public ServerOrderPostRequest cpu(Integer cpu) {
    this.cpu = cpu;
    return this;
  }

  
  
  @Schema(required = true, description = "CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options.")
  @JsonProperty("cpu")
  @NotNull
  public Integer getCpu() {
    return cpu;
  }
  public void setCpu(Integer cpu) {
    this.cpu = cpu;
  }

  /**
   * Hard-drive configuration id(s) from config_li.hd_li[cpu]. Accepts a single id or an array of ids.
   **/
  public ServerOrderPostRequest hd(OneOfServerOrderPostRequestHd hd) {
    this.hd = hd;
    return this;
  }

  
  
  @Schema(required = true, description = "Hard-drive configuration id(s) from config_li.hd_li[cpu]. Accepts a single id or an array of ids.")
  @JsonProperty("hd")
  @NotNull
  public OneOfServerOrderPostRequestHd getHd() {
    return hd;
  }
  public void setHd(OneOfServerOrderPostRequestHd hd) {
    this.hd = hd;
  }

  /**
   * Memory configuration id from config_li.memory_li[cpu].
   **/
  public ServerOrderPostRequest memory(Integer memory) {
    this.memory = memory;
    return this;
  }

  
  
  @Schema(required = true, description = "Memory configuration id from config_li.memory_li[cpu].")
  @JsonProperty("memory")
  @NotNull
  public Integer getMemory() {
    return memory;
  }
  public void setMemory(Integer memory) {
    this.memory = memory;
  }

  /**
   * Bandwidth configuration id from config_li.bandwidth_li.
   **/
  public ServerOrderPostRequest bandwidth(Integer bandwidth) {
    this.bandwidth = bandwidth;
    return this;
  }

  
  
  @Schema(required = true, description = "Bandwidth configuration id from config_li.bandwidth_li.")
  @JsonProperty("bandwidth")
  @NotNull
  public Integer getBandwidth() {
    return bandwidth;
  }
  public void setBandwidth(Integer bandwidth) {
    this.bandwidth = bandwidth;
  }

  /**
   * IP block configuration id from config_li.ips_li.
   **/
  public ServerOrderPostRequest ips(Integer ips) {
    this.ips = ips;
    return this;
  }

  
  
  @Schema(required = true, description = "IP block configuration id from config_li.ips_li.")
  @JsonProperty("ips")
  @NotNull
  public Integer getIps() {
    return ips;
  }
  public void setIps(Integer ips) {
    this.ips = ips;
  }

  /**
   * Operating System configuration id from config_li.os_li.
   **/
  public ServerOrderPostRequest os(Integer os) {
    this.os = os;
    return this;
  }

  
  
  @Schema(required = true, description = "Operating System configuration id from config_li.os_li.")
  @JsonProperty("os")
  @NotNull
  public Integer getOs() {
    return os;
  }
  public void setOs(Integer os) {
    this.os = os;
  }

  /**
   * Control Panel configuration id from config_li.cp_li.
   **/
  public ServerOrderPostRequest cp(Integer cp) {
    this.cp = cp;
    return this;
  }

  
  
  @Schema(required = true, description = "Control Panel configuration id from config_li.cp_li.")
  @JsonProperty("cp")
  @NotNull
  public Integer getCp() {
    return cp;
  }
  public void setCp(Integer cp) {
    this.cp = cp;
  }

  /**
   * RAID configuration id from config_li.raid_li.
   **/
  public ServerOrderPostRequest raid(Integer raid) {
    this.raid = raid;
    return this;
  }

  
  
  @Schema(required = true, description = "RAID configuration id from config_li.raid_li.")
  @JsonProperty("raid")
  @NotNull
  public Integer getRaid() {
    return raid;
  }
  public void setRaid(Integer raid) {
    this.raid = raid;
  }

  /**
   * Region id from the regions list.
   **/
  public ServerOrderPostRequest region(Integer region) {
    this.region = region;
    return this;
  }

  
  
  @Schema(required = true, description = "Region id from the regions list.")
  @JsonProperty("region")
  @NotNull
  public Integer getRegion() {
    return region;
  }
  public void setRegion(Integer region) {
    this.region = region;
  }

  /**
   * Server hostname. Must pass valid_hostname().
   **/
  public ServerOrderPostRequest servername(String servername) {
    this.servername = servername;
    return this;
  }

  
  
  @Schema(required = true, description = "Server hostname. Must pass valid_hostname().")
  @JsonProperty("servername")
  @NotNull
  public String getServername() {
    return servername;
  }
  public void setServername(String servername) {
    this.servername = servername;
  }

  /**
   * Root password for the server.
   **/
  public ServerOrderPostRequest rootpass(String rootpass) {
    this.rootpass = rootpass;
    return this;
  }

  
  
  @Schema(required = true, description = "Root password for the server.")
  @JsonProperty("rootpass")
  @NotNull
  public String getRootpass() {
    return rootpass;
  }
  public void setRootpass(String rootpass) {
    this.rootpass = rootpass;
  }

  /**
   * Terms-of-service acceptance. Must be true to place the order.
   **/
  public ServerOrderPostRequest tos(Boolean tos) {
    this.tos = tos;
    return this;
  }

  
  
  @Schema(required = true, description = "Terms-of-service acceptance. Must be true to place the order.")
  @JsonProperty("tos")
  @NotNull
  public Boolean isTos() {
    return tos;
  }
  public void setTos(Boolean tos) {
    this.tos = tos;
  }

  /**
   * Optional free-form order comment.
   **/
  public ServerOrderPostRequest comment(String comment) {
    this.comment = comment;
    return this;
  }

  
  
  @Schema(description = "Optional free-form order comment.")
  @JsonProperty("comment")
  @NotNull
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
    return Objects.equals(cpu, serverOrderPostRequest.cpu) &&
        Objects.equals(hd, serverOrderPostRequest.hd) &&
        Objects.equals(memory, serverOrderPostRequest.memory) &&
        Objects.equals(bandwidth, serverOrderPostRequest.bandwidth) &&
        Objects.equals(ips, serverOrderPostRequest.ips) &&
        Objects.equals(os, serverOrderPostRequest.os) &&
        Objects.equals(cp, serverOrderPostRequest.cp) &&
        Objects.equals(raid, serverOrderPostRequest.raid) &&
        Objects.equals(region, serverOrderPostRequest.region) &&
        Objects.equals(servername, serverOrderPostRequest.servername) &&
        Objects.equals(rootpass, serverOrderPostRequest.rootpass) &&
        Objects.equals(tos, serverOrderPostRequest.tos) &&
        Objects.equals(comment, serverOrderPostRequest.comment);
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
