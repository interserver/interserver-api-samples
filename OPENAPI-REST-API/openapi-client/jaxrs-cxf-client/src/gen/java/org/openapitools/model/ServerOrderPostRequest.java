package org.openapitools.model;

import org.openapitools.model.ServerOrderPostRequestHd;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Request body to place a custom dedicated server order. All ids come from getNewServer's config_li / regions.
 */
@ApiModel(description="Request body to place a custom dedicated server order. All ids come from getNewServer's config_li / regions.")

public class ServerOrderPostRequest  {
  
 /**
  * CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options.
  */
  @ApiModelProperty(required = true, value = "CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options.")

  private Integer cpu;

  @ApiModelProperty(required = true, value = "")

  private ServerOrderPostRequestHd hd;

 /**
  * Memory configuration id from config_li.memory_li[cpu].
  */
  @ApiModelProperty(required = true, value = "Memory configuration id from config_li.memory_li[cpu].")

  private Integer memory;

 /**
  * Bandwidth configuration id from config_li.bandwidth_li.
  */
  @ApiModelProperty(required = true, value = "Bandwidth configuration id from config_li.bandwidth_li.")

  private Integer bandwidth;

 /**
  * IP block configuration id from config_li.ips_li.
  */
  @ApiModelProperty(required = true, value = "IP block configuration id from config_li.ips_li.")

  private Integer ips;

 /**
  * Operating System configuration id from config_li.os_li.
  */
  @ApiModelProperty(required = true, value = "Operating System configuration id from config_li.os_li.")

  private Integer os;

 /**
  * Control Panel configuration id from config_li.cp_li.
  */
  @ApiModelProperty(required = true, value = "Control Panel configuration id from config_li.cp_li.")

  private Integer cp;

 /**
  * RAID configuration id from config_li.raid_li.
  */
  @ApiModelProperty(required = true, value = "RAID configuration id from config_li.raid_li.")

  private Integer raid;

 /**
  * Region id from the regions list.
  */
  @ApiModelProperty(required = true, value = "Region id from the regions list.")

  private Integer region;

 /**
  * Server hostname. Must pass valid_hostname().
  */
  @ApiModelProperty(required = true, value = "Server hostname. Must pass valid_hostname().")

  private String servername;

 /**
  * Root password for the server.
  */
  @ApiModelProperty(required = true, value = "Root password for the server.")

  private String rootpass;

 /**
  * Terms-of-service acceptance. Must be true to place the order.
  */
  @ApiModelProperty(required = true, value = "Terms-of-service acceptance. Must be true to place the order.")

  private Boolean tos;

 /**
  * Optional free-form order comment.
  */
  @ApiModelProperty(value = "Optional free-form order comment.")

  private String comment = "";
 /**
   * CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options.
   * @return cpu
  **/
  @JsonProperty("cpu")
  public Integer getCpu() {
    return cpu;
  }

  public void setCpu(Integer cpu) {
    this.cpu = cpu;
  }

  public ServerOrderPostRequest cpu(Integer cpu) {
    this.cpu = cpu;
    return this;
  }

 /**
   * Get hd
   * @return hd
  **/
  @JsonProperty("hd")
  public ServerOrderPostRequestHd getHd() {
    return hd;
  }

  public void setHd(ServerOrderPostRequestHd hd) {
    this.hd = hd;
  }

  public ServerOrderPostRequest hd(ServerOrderPostRequestHd hd) {
    this.hd = hd;
    return this;
  }

 /**
   * Memory configuration id from config_li.memory_li[cpu].
   * @return memory
  **/
  @JsonProperty("memory")
  public Integer getMemory() {
    return memory;
  }

  public void setMemory(Integer memory) {
    this.memory = memory;
  }

  public ServerOrderPostRequest memory(Integer memory) {
    this.memory = memory;
    return this;
  }

 /**
   * Bandwidth configuration id from config_li.bandwidth_li.
   * @return bandwidth
  **/
  @JsonProperty("bandwidth")
  public Integer getBandwidth() {
    return bandwidth;
  }

  public void setBandwidth(Integer bandwidth) {
    this.bandwidth = bandwidth;
  }

  public ServerOrderPostRequest bandwidth(Integer bandwidth) {
    this.bandwidth = bandwidth;
    return this;
  }

 /**
   * IP block configuration id from config_li.ips_li.
   * @return ips
  **/
  @JsonProperty("ips")
  public Integer getIps() {
    return ips;
  }

  public void setIps(Integer ips) {
    this.ips = ips;
  }

  public ServerOrderPostRequest ips(Integer ips) {
    this.ips = ips;
    return this;
  }

 /**
   * Operating System configuration id from config_li.os_li.
   * @return os
  **/
  @JsonProperty("os")
  public Integer getOs() {
    return os;
  }

  public void setOs(Integer os) {
    this.os = os;
  }

  public ServerOrderPostRequest os(Integer os) {
    this.os = os;
    return this;
  }

 /**
   * Control Panel configuration id from config_li.cp_li.
   * @return cp
  **/
  @JsonProperty("cp")
  public Integer getCp() {
    return cp;
  }

  public void setCp(Integer cp) {
    this.cp = cp;
  }

  public ServerOrderPostRequest cp(Integer cp) {
    this.cp = cp;
    return this;
  }

 /**
   * RAID configuration id from config_li.raid_li.
   * @return raid
  **/
  @JsonProperty("raid")
  public Integer getRaid() {
    return raid;
  }

  public void setRaid(Integer raid) {
    this.raid = raid;
  }

  public ServerOrderPostRequest raid(Integer raid) {
    this.raid = raid;
    return this;
  }

 /**
   * Region id from the regions list.
   * @return region
  **/
  @JsonProperty("region")
  public Integer getRegion() {
    return region;
  }

  public void setRegion(Integer region) {
    this.region = region;
  }

  public ServerOrderPostRequest region(Integer region) {
    this.region = region;
    return this;
  }

 /**
   * Server hostname. Must pass valid_hostname().
   * @return servername
  **/
  @JsonProperty("servername")
  public String getServername() {
    return servername;
  }

  public void setServername(String servername) {
    this.servername = servername;
  }

  public ServerOrderPostRequest servername(String servername) {
    this.servername = servername;
    return this;
  }

 /**
   * Root password for the server.
   * @return rootpass
  **/
  @JsonProperty("rootpass")
  public String getRootpass() {
    return rootpass;
  }

  public void setRootpass(String rootpass) {
    this.rootpass = rootpass;
  }

  public ServerOrderPostRequest rootpass(String rootpass) {
    this.rootpass = rootpass;
    return this;
  }

 /**
   * Terms-of-service acceptance. Must be true to place the order.
   * @return tos
  **/
  @JsonProperty("tos")
  public Boolean isTos() {
    return tos;
  }

  public void setTos(Boolean tos) {
    this.tos = tos;
  }

  public ServerOrderPostRequest tos(Boolean tos) {
    this.tos = tos;
    return this;
  }

 /**
   * Optional free-form order comment.
   * @return comment
  **/
  @JsonProperty("comment")
  public String getComment() {
    return comment;
  }

  public void setComment(String comment) {
    this.comment = comment;
  }

  public ServerOrderPostRequest comment(String comment) {
    this.comment = comment;
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
  private static String toIndentedString(Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}

