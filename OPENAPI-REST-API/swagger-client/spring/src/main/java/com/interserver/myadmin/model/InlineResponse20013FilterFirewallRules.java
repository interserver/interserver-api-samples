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
 * InlineResponse20013FilterFirewallRules
 */
@Validated
@NotUndefined



public class InlineResponse20013FilterFirewallRules   {
  @JsonProperty("id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String id = null;

  @JsonProperty("source_ip")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String sourceIp = null;

  @JsonProperty("destination_ip")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String destinationIp = null;

  @JsonProperty("protocol_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String protocolId = null;

  @JsonProperty("source_port")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String sourcePort = null;

  @JsonProperty("destination_port")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String destinationPort = null;

  @JsonProperty("xdp_action")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String xdpAction = null;

  @JsonProperty("global_drop")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String globalDrop = null;


  public InlineResponse20013FilterFirewallRules id(String id) { 

    this.id = id;
    return this;
  }

  /**
   * Get id
   * @return id
   **/
  
  @Schema(description = "")
  
  public String getId() {  
    return id;
  }



  public void setId(String id) { 
    this.id = id;
  }

  public InlineResponse20013FilterFirewallRules sourceIp(String sourceIp) { 

    this.sourceIp = sourceIp;
    return this;
  }

  /**
   * Get sourceIp
   * @return sourceIp
   **/
  
  @Schema(description = "")
  
  public String getSourceIp() {  
    return sourceIp;
  }



  public void setSourceIp(String sourceIp) { 
    this.sourceIp = sourceIp;
  }

  public InlineResponse20013FilterFirewallRules destinationIp(String destinationIp) { 

    this.destinationIp = destinationIp;
    return this;
  }

  /**
   * Get destinationIp
   * @return destinationIp
   **/
  
  @Schema(description = "")
  
  public String getDestinationIp() {  
    return destinationIp;
  }



  public void setDestinationIp(String destinationIp) { 
    this.destinationIp = destinationIp;
  }

  public InlineResponse20013FilterFirewallRules protocolId(String protocolId) { 

    this.protocolId = protocolId;
    return this;
  }

  /**
   * Get protocolId
   * @return protocolId
   **/
  
  @Schema(description = "")
  
  public String getProtocolId() {  
    return protocolId;
  }



  public void setProtocolId(String protocolId) { 
    this.protocolId = protocolId;
  }

  public InlineResponse20013FilterFirewallRules sourcePort(String sourcePort) { 

    this.sourcePort = sourcePort;
    return this;
  }

  /**
   * Get sourcePort
   * @return sourcePort
   **/
  
  @Schema(description = "")
  
  public String getSourcePort() {  
    return sourcePort;
  }



  public void setSourcePort(String sourcePort) { 
    this.sourcePort = sourcePort;
  }

  public InlineResponse20013FilterFirewallRules destinationPort(String destinationPort) { 

    this.destinationPort = destinationPort;
    return this;
  }

  /**
   * Get destinationPort
   * @return destinationPort
   **/
  
  @Schema(description = "")
  
  public String getDestinationPort() {  
    return destinationPort;
  }



  public void setDestinationPort(String destinationPort) { 
    this.destinationPort = destinationPort;
  }

  public InlineResponse20013FilterFirewallRules xdpAction(String xdpAction) { 

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

  public InlineResponse20013FilterFirewallRules globalDrop(String globalDrop) { 

    this.globalDrop = globalDrop;
    return this;
  }

  /**
   * Get globalDrop
   * @return globalDrop
   **/
  
  @Schema(description = "")
  
  public String getGlobalDrop() {  
    return globalDrop;
  }



  public void setGlobalDrop(String globalDrop) { 
    this.globalDrop = globalDrop;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20013FilterFirewallRules inlineResponse20013FilterFirewallRules = (InlineResponse20013FilterFirewallRules) o;
    return Objects.equals(this.id, inlineResponse20013FilterFirewallRules.id) &&
        Objects.equals(this.sourceIp, inlineResponse20013FilterFirewallRules.sourceIp) &&
        Objects.equals(this.destinationIp, inlineResponse20013FilterFirewallRules.destinationIp) &&
        Objects.equals(this.protocolId, inlineResponse20013FilterFirewallRules.protocolId) &&
        Objects.equals(this.sourcePort, inlineResponse20013FilterFirewallRules.sourcePort) &&
        Objects.equals(this.destinationPort, inlineResponse20013FilterFirewallRules.destinationPort) &&
        Objects.equals(this.xdpAction, inlineResponse20013FilterFirewallRules.xdpAction) &&
        Objects.equals(this.globalDrop, inlineResponse20013FilterFirewallRules.globalDrop);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, sourceIp, destinationIp, protocolId, sourcePort, destinationPort, xdpAction, globalDrop);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20013FilterFirewallRules {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    sourceIp: ").append(toIndentedString(sourceIp)).append("\n");
    sb.append("    destinationIp: ").append(toIndentedString(destinationIp)).append("\n");
    sb.append("    protocolId: ").append(toIndentedString(protocolId)).append("\n");
    sb.append("    sourcePort: ").append(toIndentedString(sourcePort)).append("\n");
    sb.append("    destinationPort: ").append(toIndentedString(destinationPort)).append("\n");
    sb.append("    xdpAction: ").append(toIndentedString(xdpAction)).append("\n");
    sb.append("    globalDrop: ").append(toIndentedString(globalDrop)).append("\n");
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
