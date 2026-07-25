package io.swagger.model;

import javax.validation.constraints.*;

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

public class InlineResponse20013FilterFirewallRules   {
  
  @Schema(description = "")
  private String id = null;
  
  @Schema(description = "")
  private String sourceIp = null;
  
  @Schema(description = "")
  private String destinationIp = null;
  
  @Schema(description = "")
  private String protocolId = null;
  
  @Schema(description = "")
  private String sourcePort = null;
  
  @Schema(description = "")
  private String destinationPort = null;
  
  @Schema(description = "")
  private String xdpAction = null;
  
  @Schema(description = "")
  private String globalDrop = null;
 /**
   * Get id
   * @return id
  **/
  @JsonProperty("id")
  @NotNull
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public InlineResponse20013FilterFirewallRules id(String id) {
    this.id = id;
    return this;
  }

 /**
   * Get sourceIp
   * @return sourceIp
  **/
  @JsonProperty("source_ip")
  @NotNull
  public String getSourceIp() {
    return sourceIp;
  }

  public void setSourceIp(String sourceIp) {
    this.sourceIp = sourceIp;
  }

  public InlineResponse20013FilterFirewallRules sourceIp(String sourceIp) {
    this.sourceIp = sourceIp;
    return this;
  }

 /**
   * Get destinationIp
   * @return destinationIp
  **/
  @JsonProperty("destination_ip")
  @NotNull
  public String getDestinationIp() {
    return destinationIp;
  }

  public void setDestinationIp(String destinationIp) {
    this.destinationIp = destinationIp;
  }

  public InlineResponse20013FilterFirewallRules destinationIp(String destinationIp) {
    this.destinationIp = destinationIp;
    return this;
  }

 /**
   * Get protocolId
   * @return protocolId
  **/
  @JsonProperty("protocol_id")
  @NotNull
  public String getProtocolId() {
    return protocolId;
  }

  public void setProtocolId(String protocolId) {
    this.protocolId = protocolId;
  }

  public InlineResponse20013FilterFirewallRules protocolId(String protocolId) {
    this.protocolId = protocolId;
    return this;
  }

 /**
   * Get sourcePort
   * @return sourcePort
  **/
  @JsonProperty("source_port")
  @NotNull
  public String getSourcePort() {
    return sourcePort;
  }

  public void setSourcePort(String sourcePort) {
    this.sourcePort = sourcePort;
  }

  public InlineResponse20013FilterFirewallRules sourcePort(String sourcePort) {
    this.sourcePort = sourcePort;
    return this;
  }

 /**
   * Get destinationPort
   * @return destinationPort
  **/
  @JsonProperty("destination_port")
  @NotNull
  public String getDestinationPort() {
    return destinationPort;
  }

  public void setDestinationPort(String destinationPort) {
    this.destinationPort = destinationPort;
  }

  public InlineResponse20013FilterFirewallRules destinationPort(String destinationPort) {
    this.destinationPort = destinationPort;
    return this;
  }

 /**
   * Get xdpAction
   * @return xdpAction
  **/
  @JsonProperty("xdp_action")
  @NotNull
  public String getXdpAction() {
    return xdpAction;
  }

  public void setXdpAction(String xdpAction) {
    this.xdpAction = xdpAction;
  }

  public InlineResponse20013FilterFirewallRules xdpAction(String xdpAction) {
    this.xdpAction = xdpAction;
    return this;
  }

 /**
   * Get globalDrop
   * @return globalDrop
  **/
  @JsonProperty("global_drop")
  @NotNull
  public String getGlobalDrop() {
    return globalDrop;
  }

  public void setGlobalDrop(String globalDrop) {
    this.globalDrop = globalDrop;
  }

  public InlineResponse20013FilterFirewallRules globalDrop(String globalDrop) {
    this.globalDrop = globalDrop;
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
