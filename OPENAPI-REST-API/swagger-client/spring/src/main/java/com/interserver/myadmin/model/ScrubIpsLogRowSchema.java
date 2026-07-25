package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;
import java.math.BigDecimal;
import org.springframework.validation.annotation.Validated;
import org.openapitools.jackson.nullable.JsonNullable;
import io.swagger.configuration.NotUndefined;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.Nulls;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * ScrubIpsLogRowSchema
 */
@Validated
@NotUndefined



public class ScrubIpsLogRowSchema   {
  @JsonProperty("date")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String date = null;

  @JsonProperty("filter")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String filter = null;

  @JsonProperty("blocked_ip")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String blockedIp = null;

  @JsonProperty("target_ip")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String targetIp = null;

  @JsonProperty("target_port")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private BigDecimal targetPort = null;

  @JsonProperty("protocol")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String protocol = null;

  @JsonProperty("byte_count")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private BigDecimal byteCount = null;

  @JsonProperty("xdp_action")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String xdpAction = null;


  public ScrubIpsLogRowSchema date(String date) { 

    this.date = date;
    return this;
  }

  /**
   * Get date
   * @return date
   **/
  
  @Schema(description = "")
  
  public String getDate() {  
    return date;
  }



  public void setDate(String date) { 
    this.date = date;
  }

  public ScrubIpsLogRowSchema filter(String filter) { 

    this.filter = filter;
    return this;
  }

  /**
   * Get filter
   * @return filter
   **/
  
  @Schema(description = "")
  
  public String getFilter() {  
    return filter;
  }



  public void setFilter(String filter) { 
    this.filter = filter;
  }

  public ScrubIpsLogRowSchema blockedIp(String blockedIp) { 

    this.blockedIp = blockedIp;
    return this;
  }

  /**
   * Get blockedIp
   * @return blockedIp
   **/
  
  @Schema(description = "")
  
  public String getBlockedIp() {  
    return blockedIp;
  }



  public void setBlockedIp(String blockedIp) { 
    this.blockedIp = blockedIp;
  }

  public ScrubIpsLogRowSchema targetIp(String targetIp) { 

    this.targetIp = targetIp;
    return this;
  }

  /**
   * Get targetIp
   * @return targetIp
   **/
  
  @Schema(description = "")
  
  public String getTargetIp() {  
    return targetIp;
  }



  public void setTargetIp(String targetIp) { 
    this.targetIp = targetIp;
  }

  public ScrubIpsLogRowSchema targetPort(BigDecimal targetPort) { 

    this.targetPort = targetPort;
    return this;
  }

  /**
   * Get targetPort
   * @return targetPort
   **/
  
  @Schema(description = "")
  
@Valid
  public BigDecimal getTargetPort() {  
    return targetPort;
  }



  public void setTargetPort(BigDecimal targetPort) { 
    this.targetPort = targetPort;
  }

  public ScrubIpsLogRowSchema protocol(String protocol) { 

    this.protocol = protocol;
    return this;
  }

  /**
   * Get protocol
   * @return protocol
   **/
  
  @Schema(description = "")
  
  public String getProtocol() {  
    return protocol;
  }



  public void setProtocol(String protocol) { 
    this.protocol = protocol;
  }

  public ScrubIpsLogRowSchema byteCount(BigDecimal byteCount) { 

    this.byteCount = byteCount;
    return this;
  }

  /**
   * Get byteCount
   * @return byteCount
   **/
  
  @Schema(description = "")
  
@Valid
  public BigDecimal getByteCount() {  
    return byteCount;
  }



  public void setByteCount(BigDecimal byteCount) { 
    this.byteCount = byteCount;
  }

  public ScrubIpsLogRowSchema xdpAction(String xdpAction) { 

    this.xdpAction = xdpAction;
    return this;
  }

  /**
   * Get xdpAction
   * @return xdpAction
   **/
  
  @Schema(description = "")
  
  public String getXdpAction() {  
    return xdpAction;
  }



  public void setXdpAction(String xdpAction) { 
    this.xdpAction = xdpAction;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ScrubIpsLogRowSchema scrubIpsLogRowSchema = (ScrubIpsLogRowSchema) o;
    return Objects.equals(this.date, scrubIpsLogRowSchema.date) &&
        Objects.equals(this.filter, scrubIpsLogRowSchema.filter) &&
        Objects.equals(this.blockedIp, scrubIpsLogRowSchema.blockedIp) &&
        Objects.equals(this.targetIp, scrubIpsLogRowSchema.targetIp) &&
        Objects.equals(this.targetPort, scrubIpsLogRowSchema.targetPort) &&
        Objects.equals(this.protocol, scrubIpsLogRowSchema.protocol) &&
        Objects.equals(this.byteCount, scrubIpsLogRowSchema.byteCount) &&
        Objects.equals(this.xdpAction, scrubIpsLogRowSchema.xdpAction);
  }

  @Override
  public int hashCode() {
    return Objects.hash(date, filter, blockedIp, targetIp, targetPort, protocol, byteCount, xdpAction);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ScrubIpsLogRowSchema {\n");
    
    sb.append("    date: ").append(toIndentedString(date)).append("\n");
    sb.append("    filter: ").append(toIndentedString(filter)).append("\n");
    sb.append("    blockedIp: ").append(toIndentedString(blockedIp)).append("\n");
    sb.append("    targetIp: ").append(toIndentedString(targetIp)).append("\n");
    sb.append("    targetPort: ").append(toIndentedString(targetPort)).append("\n");
    sb.append("    protocol: ").append(toIndentedString(protocol)).append("\n");
    sb.append("    byteCount: ").append(toIndentedString(byteCount)).append("\n");
    sb.append("    xdpAction: ").append(toIndentedString(xdpAction)).append("\n");
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
