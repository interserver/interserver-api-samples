package org.openapitools.model;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Create firewall rule for your ip
 */
@ApiModel(description="Create firewall rule for your ip")

public class CreateGeoFirewallRule  {
  
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
  * To get country code refer our countries api - https://my.interserver.net/apiv2/account/countries?fetch_by=numcode
  */
  @ApiModelProperty(example = "10", value = "To get country code refer our countries api - https://my.interserver.net/apiv2/account/countries?fetch_by=numcode")

  private Integer countryCode;

 /**
  * ASN number
  */
  @ApiModelProperty(example = "1331", value = "ASN number")

  private Integer asn;
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

  public CreateGeoFirewallRule xdpAction(XdpActionEnum xdpAction) {
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

  public CreateGeoFirewallRule destinationPort(Integer destinationPort) {
    this.destinationPort = destinationPort;
    return this;
  }

 /**
   * To get country code refer our countries api - https://my.interserver.net/apiv2/account/countries?fetch_by&#x3D;numcode
   * @return countryCode
  **/
  @JsonProperty("country_code")
  public Integer getCountryCode() {
    return countryCode;
  }

  public void setCountryCode(Integer countryCode) {
    this.countryCode = countryCode;
  }

  public CreateGeoFirewallRule countryCode(Integer countryCode) {
    this.countryCode = countryCode;
    return this;
  }

 /**
   * ASN number
   * @return asn
  **/
  @JsonProperty("asn")
  public Integer getAsn() {
    return asn;
  }

  public void setAsn(Integer asn) {
    this.asn = asn;
  }

  public CreateGeoFirewallRule asn(Integer asn) {
    this.asn = asn;
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
    CreateGeoFirewallRule createGeoFirewallRule = (CreateGeoFirewallRule) o;
    return Objects.equals(this.xdpAction, createGeoFirewallRule.xdpAction) &&
        Objects.equals(this.destinationPort, createGeoFirewallRule.destinationPort) &&
        Objects.equals(this.countryCode, createGeoFirewallRule.countryCode) &&
        Objects.equals(this.asn, createGeoFirewallRule.asn);
  }

  @Override
  public int hashCode() {
    return Objects.hash(xdpAction, destinationPort, countryCode, asn);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CreateGeoFirewallRule {\n");
    
    sb.append("    xdpAction: ").append(toIndentedString(xdpAction)).append("\n");
    sb.append("    destinationPort: ").append(toIndentedString(destinationPort)).append("\n");
    sb.append("    countryCode: ").append(toIndentedString(countryCode)).append("\n");
    sb.append("    asn: ").append(toIndentedString(asn)).append("\n");
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

