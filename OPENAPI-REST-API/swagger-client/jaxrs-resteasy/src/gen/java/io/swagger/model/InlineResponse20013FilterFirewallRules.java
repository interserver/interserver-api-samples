package io.swagger.model;

import java.util.Objects;
import java.util.ArrayList;
import java.util.HashMap;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;



public class InlineResponse20013FilterFirewallRules   {
  private String id = null;  private String sourceIp = null;  private String destinationIp = null;  private String protocolId = null;  private String sourcePort = null;  private String destinationPort = null;  private String xdpAction = null;  private String globalDrop = null;

  /**
   **/
  
  @Schema(description = "")
  @JsonProperty("id")
  @NotNull
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

  /**
   **/
  
  @Schema(description = "")
  @JsonProperty("source_ip")
  @NotNull
  public String getSourceIp() {
    return sourceIp;
  }
  public void setSourceIp(String sourceIp) {
    this.sourceIp = sourceIp;
  }

  /**
   **/
  
  @Schema(description = "")
  @JsonProperty("destination_ip")
  @NotNull
  public String getDestinationIp() {
    return destinationIp;
  }
  public void setDestinationIp(String destinationIp) {
    this.destinationIp = destinationIp;
  }

  /**
   **/
  
  @Schema(description = "")
  @JsonProperty("protocol_id")
  @NotNull
  public String getProtocolId() {
    return protocolId;
  }
  public void setProtocolId(String protocolId) {
    this.protocolId = protocolId;
  }

  /**
   **/
  
  @Schema(description = "")
  @JsonProperty("source_port")
  @NotNull
  public String getSourcePort() {
    return sourcePort;
  }
  public void setSourcePort(String sourcePort) {
    this.sourcePort = sourcePort;
  }

  /**
   **/
  
  @Schema(description = "")
  @JsonProperty("destination_port")
  @NotNull
  public String getDestinationPort() {
    return destinationPort;
  }
  public void setDestinationPort(String destinationPort) {
    this.destinationPort = destinationPort;
  }

  /**
   **/
  
  @Schema(description = "")
  @JsonProperty("xdp_action")
  @NotNull
  public String getXdpAction() {
    return xdpAction;
  }
  public void setXdpAction(String xdpAction) {
    this.xdpAction = xdpAction;
  }

  /**
   **/
  
  @Schema(description = "")
  @JsonProperty("global_drop")
  @NotNull
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
    return Objects.equals(id, inlineResponse20013FilterFirewallRules.id) &&
        Objects.equals(sourceIp, inlineResponse20013FilterFirewallRules.sourceIp) &&
        Objects.equals(destinationIp, inlineResponse20013FilterFirewallRules.destinationIp) &&
        Objects.equals(protocolId, inlineResponse20013FilterFirewallRules.protocolId) &&
        Objects.equals(sourcePort, inlineResponse20013FilterFirewallRules.sourcePort) &&
        Objects.equals(destinationPort, inlineResponse20013FilterFirewallRules.destinationPort) &&
        Objects.equals(xdpAction, inlineResponse20013FilterFirewallRules.xdpAction) &&
        Objects.equals(globalDrop, inlineResponse20013FilterFirewallRules.globalDrop);
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
