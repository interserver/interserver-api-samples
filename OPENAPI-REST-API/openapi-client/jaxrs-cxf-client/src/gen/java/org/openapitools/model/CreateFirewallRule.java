package org.openapitools.model;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Create firewall rule for your ip
 */
@ApiModel(description="Create firewall rule for your ip")

public class CreateFirewallRule  {
  
public enum ProtocolIdEnum {

NUMBER_1(Integer.valueOf(1)), NUMBER_2(Integer.valueOf(2)), NUMBER_unknown_default_open_api(Integer.valueOf(11184809));


    private Integer value;

    ProtocolIdEnum (Integer v) {
        value = v;
    }

    public Integer value() {
        return value;
    }

    @Override
    public String toString() {
        return String.valueOf(value);
    }

    public static ProtocolIdEnum fromValue(Integer value) {
        for (ProtocolIdEnum b : ProtocolIdEnum.values()) {
            if (b.value.equals(value)) {
                return b;
            }
        }
        throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }
}

 /**
  * 1 = TCP, 2 = UDP
  */
  @ApiModelProperty(example = "1", required = true, value = "1 = TCP, 2 = UDP")

  private ProtocolIdEnum protocolId;

public enum XdpActionEnum {

NUMBER_0(Integer.valueOf(0)), NUMBER_1(Integer.valueOf(1)), NUMBER_unknown_default_open_api(Integer.valueOf(11184809));


    private Integer value;

    XdpActionEnum (Integer v) {
        value = v;
    }

    public Integer value() {
        return value;
    }

    @Override
    public String toString() {
        return String.valueOf(value);
    }

    public static XdpActionEnum fromValue(Integer value) {
        for (XdpActionEnum b : XdpActionEnum.values()) {
            if (b.value.equals(value)) {
                return b;
            }
        }
        throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }
}

 /**
  * 1 = Block,  0 = Whitelist
  */
  @ApiModelProperty(example = "1", required = true, value = "1 = Block,  0 = Whitelist")

  private XdpActionEnum xdpAction;

  @ApiModelProperty(example = "22", value = "")

  private Integer destinationPort = 80;

 /**
  * Source IP address to match. Use '0.0.0.0' to match any source.
  */
  @ApiModelProperty(example = "1.2.4.5", value = "Source IP address to match. Use '0.0.0.0' to match any source.")

  private String sourceIp = "0.0.0.0";

  @ApiModelProperty(example = "1302", value = "")

  private Integer sourcePort = 0;
 /**
   * 1 &#x3D; TCP, 2 &#x3D; UDP
   * @return protocolId
  **/
  @JsonProperty("protocol_id")
  public Integer getProtocolId() {
    if (protocolId == null) {
      return null;
    }
    return protocolId.value();
  }

  public void setProtocolId(ProtocolIdEnum protocolId) {
    this.protocolId = protocolId;
  }

  public CreateFirewallRule protocolId(ProtocolIdEnum protocolId) {
    this.protocolId = protocolId;
    return this;
  }

 /**
   * 1 &#x3D; Block,  0 &#x3D; Whitelist
   * @return xdpAction
  **/
  @JsonProperty("xdp_action")
  public Integer getXdpAction() {
    if (xdpAction == null) {
      return null;
    }
    return xdpAction.value();
  }

  public void setXdpAction(XdpActionEnum xdpAction) {
    this.xdpAction = xdpAction;
  }

  public CreateFirewallRule xdpAction(XdpActionEnum xdpAction) {
    this.xdpAction = xdpAction;
    return this;
  }

 /**
   * Get destinationPort
   * @return destinationPort
  **/
  @JsonProperty("destination_port")
  public Integer getDestinationPort() {
    return destinationPort;
  }

  public void setDestinationPort(Integer destinationPort) {
    this.destinationPort = destinationPort;
  }

  public CreateFirewallRule destinationPort(Integer destinationPort) {
    this.destinationPort = destinationPort;
    return this;
  }

 /**
   * Source IP address to match. Use &#39;0.0.0.0&#39; to match any source.
   * @return sourceIp
  **/
  @JsonProperty("source_ip")
  public String getSourceIp() {
    return sourceIp;
  }

  public void setSourceIp(String sourceIp) {
    this.sourceIp = sourceIp;
  }

  public CreateFirewallRule sourceIp(String sourceIp) {
    this.sourceIp = sourceIp;
    return this;
  }

 /**
   * Get sourcePort
   * @return sourcePort
  **/
  @JsonProperty("source_port")
  public Integer getSourcePort() {
    return sourcePort;
  }

  public void setSourcePort(Integer sourcePort) {
    this.sourcePort = sourcePort;
  }

  public CreateFirewallRule sourcePort(Integer sourcePort) {
    this.sourcePort = sourcePort;
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
    CreateFirewallRule createFirewallRule = (CreateFirewallRule) o;
    return Objects.equals(this.protocolId, createFirewallRule.protocolId) &&
        Objects.equals(this.xdpAction, createFirewallRule.xdpAction) &&
        Objects.equals(this.destinationPort, createFirewallRule.destinationPort) &&
        Objects.equals(this.sourceIp, createFirewallRule.sourceIp) &&
        Objects.equals(this.sourcePort, createFirewallRule.sourcePort);
  }

  @Override
  public int hashCode() {
    return Objects.hash(protocolId, xdpAction, destinationPort, sourceIp, sourcePort);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CreateFirewallRule {\n");
    
    sb.append("    protocolId: ").append(toIndentedString(protocolId)).append("\n");
    sb.append("    xdpAction: ").append(toIndentedString(xdpAction)).append("\n");
    sb.append("    destinationPort: ").append(toIndentedString(destinationPort)).append("\n");
    sb.append("    sourceIp: ").append(toIndentedString(sourceIp)).append("\n");
    sb.append("    sourcePort: ").append(toIndentedString(sourcePort)).append("\n");
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

