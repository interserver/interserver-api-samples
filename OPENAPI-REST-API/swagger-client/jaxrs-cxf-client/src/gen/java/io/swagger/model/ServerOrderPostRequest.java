package io.swagger.model;

import io.swagger.v3.oas.annotations.media.Schema;

import io.swagger.v3.oas.annotations.media.Schema;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonCreator;

/**
  * Request body to place a custom dedicated server order. All ids come from getNewServer's config_li / regions.
 **/
@Schema(description="Request body to place a custom dedicated server order. All ids come from getNewServer's config_li / regions.")
public class ServerOrderPostRequest   {
  
  @Schema(required = true, description = "CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options.")
 /**
   * CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options.  
  **/
  private Integer cpu = null;
  
  @Schema(required = true, description = "Hard-drive configuration id(s) from config_li.hd_li[cpu]. Accepts a single id or an array of ids.")
 /**
   * Hard-drive configuration id(s) from config_li.hd_li[cpu]. Accepts a single id or an array of ids.  
  **/
  private OneOfServerOrderPostRequestHd hd = null;
  
  @Schema(required = true, description = "Memory configuration id from config_li.memory_li[cpu].")
 /**
   * Memory configuration id from config_li.memory_li[cpu].  
  **/
  private Integer memory = null;
  
  @Schema(required = true, description = "Bandwidth configuration id from config_li.bandwidth_li.")
 /**
   * Bandwidth configuration id from config_li.bandwidth_li.  
  **/
  private Integer bandwidth = null;
  
  @Schema(required = true, description = "IP block configuration id from config_li.ips_li.")
 /**
   * IP block configuration id from config_li.ips_li.  
  **/
  private Integer ips = null;
  
  @Schema(required = true, description = "Operating System configuration id from config_li.os_li.")
 /**
   * Operating System configuration id from config_li.os_li.  
  **/
  private Integer os = null;
  
  @Schema(required = true, description = "Control Panel configuration id from config_li.cp_li.")
 /**
   * Control Panel configuration id from config_li.cp_li.  
  **/
  private Integer cp = null;
  
  @Schema(required = true, description = "RAID configuration id from config_li.raid_li.")
 /**
   * RAID configuration id from config_li.raid_li.  
  **/
  private Integer raid = null;
  
  @Schema(required = true, description = "Region id from the regions list.")
 /**
   * Region id from the regions list.  
  **/
  private Integer region = null;
  
  @Schema(required = true, description = "Server hostname. Must pass valid_hostname().")
 /**
   * Server hostname. Must pass valid_hostname().  
  **/
  private String servername = null;
  
  @Schema(required = true, description = "Root password for the server.")
 /**
   * Root password for the server.  
  **/
  private String rootpass = null;
  
  @Schema(required = true, description = "Terms-of-service acceptance. Must be true to place the order.")
 /**
   * Terms-of-service acceptance. Must be true to place the order.  
  **/
  private Boolean tos = null;
  
  @Schema(description = "Optional free-form order comment.")
 /**
   * Optional free-form order comment.  
  **/
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
   * Hard-drive configuration id(s) from config_li.hd_li[cpu]. Accepts a single id or an array of ids.
   * @return hd
  **/
  @JsonProperty("hd")
  public OneOfServerOrderPostRequestHd getHd() {
    return hd;
  }

  public void setHd(OneOfServerOrderPostRequestHd hd) {
    this.hd = hd;
  }

  public ServerOrderPostRequest hd(OneOfServerOrderPostRequestHd hd) {
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
