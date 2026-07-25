package org.openapitools.model;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * request to validate a vps order
 */
@ApiModel(description="request to validate a vps order")

public class VpsOrderPostRequest  {
  
 /**
  * OS Distribution
  */
  @ApiModelProperty(required = true, value = "OS Distribution")

  private String osDistro;

 /**
  * Number of slices
  */
  @ApiModelProperty(required = true, value = "Number of slices")

  private Integer slices = 1;

public enum VpsPlatformEnum {

KVM(String.valueOf("kvm")), HYPERV(String.valueOf("hyperv")), KVMSTORAGE(String.valueOf("kvmstorage")), UNKNOWN_DEFAULT_OPEN_API(String.valueOf("unknown_default_open_api"));


    private String value;

    VpsPlatformEnum (String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    @Override
    public String toString() {
        return String.valueOf(value);
    }

    public static VpsPlatformEnum fromValue(String value) {
        for (VpsPlatformEnum b : VpsPlatformEnum.values()) {
            if (b.value.equals(value)) {
                return b;
            }
        }
        throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }
}

 /**
  * VPS Platform
  */
  @ApiModelProperty(required = true, value = "VPS Platform")

  private VpsPlatformEnum vpsPlatform;

 /**
  * Billing Period or Frequency
  */
  @ApiModelProperty(required = true, value = "Billing Period or Frequency")

  private Integer period = 1;

 /**
  * Location
  */
  @ApiModelProperty(required = true, value = "Location")

  private Integer location = 1;

 /**
  * OS Version
  */
  @ApiModelProperty(required = true, value = "OS Version")

  private String osVersion;

 /**
  * The hostname to assign to the VPS
  */
  @ApiModelProperty(required = true, value = "The hostname to assign to the VPS")

  private String hostname = "";

 /**
  * Root password to assign to the VVPS
  */
  @ApiModelProperty(required = true, value = "Root password to assign to the VVPS")

  private String rootpass;

public enum ControlpanelEnum {

NONE(String.valueOf("none")), CPANEL(String.valueOf("cpanel")), DA(String.valueOf("da")), UNKNOWN_DEFAULT_OPEN_API(String.valueOf("unknown_default_open_api"));


    private String value;

    ControlpanelEnum (String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    @Override
    public String toString() {
        return String.valueOf(value);
    }

    public static ControlpanelEnum fromValue(String value) {
        for (ControlpanelEnum b : ControlpanelEnum.values()) {
            if (b.value.equals(value)) {
                return b;
            }
        }
        throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }
}

 /**
  * Control Panel
  */
  @ApiModelProperty(value = "Control Panel")

  private ControlpanelEnum controlpanel;

 /**
  * Coupon
  */
  @ApiModelProperty(value = "Coupon")

  private String coupon = "";

 /**
  * Order comments or notes
  */
  @ApiModelProperty(value = "Order comments or notes")

  private String comment = "";
 /**
   * OS Distribution
   * @return osDistro
  **/
  @JsonProperty("osDistro")
  public String getOsDistro() {
    return osDistro;
  }

  public void setOsDistro(String osDistro) {
    this.osDistro = osDistro;
  }

  public VpsOrderPostRequest osDistro(String osDistro) {
    this.osDistro = osDistro;
    return this;
  }

 /**
   * Number of slices
   * minimum: 1
   * maximum: 32
   * @return slices
  **/
  @JsonProperty("slices")
  public Integer getSlices() {
    return slices;
  }

  public void setSlices(Integer slices) {
    this.slices = slices;
  }

  public VpsOrderPostRequest slices(Integer slices) {
    this.slices = slices;
    return this;
  }

 /**
   * VPS Platform
   * @return vpsPlatform
  **/
  @JsonProperty("vpsPlatform")
  public String getVpsPlatform() {
    if (vpsPlatform == null) {
      return null;
    }
    return vpsPlatform.value();
  }

  public void setVpsPlatform(VpsPlatformEnum vpsPlatform) {
    this.vpsPlatform = vpsPlatform;
  }

  public VpsOrderPostRequest vpsPlatform(VpsPlatformEnum vpsPlatform) {
    this.vpsPlatform = vpsPlatform;
    return this;
  }

 /**
   * Billing Period or Frequency
   * minimum: 1
   * maximum: 12
   * @return period
  **/
  @JsonProperty("period")
  public Integer getPeriod() {
    return period;
  }

  public void setPeriod(Integer period) {
    this.period = period;
  }

  public VpsOrderPostRequest period(Integer period) {
    this.period = period;
    return this;
  }

 /**
   * Location
   * minimum: 1
   * maximum: 3
   * @return location
  **/
  @JsonProperty("location")
  public Integer getLocation() {
    return location;
  }

  public void setLocation(Integer location) {
    this.location = location;
  }

  public VpsOrderPostRequest location(Integer location) {
    this.location = location;
    return this;
  }

 /**
   * OS Version
   * @return osVersion
  **/
  @JsonProperty("osVersion")
  public String getOsVersion() {
    return osVersion;
  }

  public void setOsVersion(String osVersion) {
    this.osVersion = osVersion;
  }

  public VpsOrderPostRequest osVersion(String osVersion) {
    this.osVersion = osVersion;
    return this;
  }

 /**
   * The hostname to assign to the VPS
   * @return hostname
  **/
  @JsonProperty("hostname")
  public String getHostname() {
    return hostname;
  }

  public void setHostname(String hostname) {
    this.hostname = hostname;
  }

  public VpsOrderPostRequest hostname(String hostname) {
    this.hostname = hostname;
    return this;
  }

 /**
   * Root password to assign to the VVPS
   * @return rootpass
  **/
  @JsonProperty("rootpass")
  public String getRootpass() {
    return rootpass;
  }

  public void setRootpass(String rootpass) {
    this.rootpass = rootpass;
  }

  public VpsOrderPostRequest rootpass(String rootpass) {
    this.rootpass = rootpass;
    return this;
  }

 /**
   * Control Panel
   * @return controlpanel
  **/
  @JsonProperty("controlpanel")
  public String getControlpanel() {
    if (controlpanel == null) {
      return null;
    }
    return controlpanel.value();
  }

  public void setControlpanel(ControlpanelEnum controlpanel) {
    this.controlpanel = controlpanel;
  }

  public VpsOrderPostRequest controlpanel(ControlpanelEnum controlpanel) {
    this.controlpanel = controlpanel;
    return this;
  }

 /**
   * Coupon
   * @return coupon
  **/
  @JsonProperty("coupon")
  public String getCoupon() {
    return coupon;
  }

  public void setCoupon(String coupon) {
    this.coupon = coupon;
  }

  public VpsOrderPostRequest coupon(String coupon) {
    this.coupon = coupon;
    return this;
  }

 /**
   * Order comments or notes
   * @return comment
  **/
  @JsonProperty("comment")
  public String getComment() {
    return comment;
  }

  public void setComment(String comment) {
    this.comment = comment;
  }

  public VpsOrderPostRequest comment(String comment) {
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
    VpsOrderPostRequest vpsOrderPostRequest = (VpsOrderPostRequest) o;
    return Objects.equals(this.osDistro, vpsOrderPostRequest.osDistro) &&
        Objects.equals(this.slices, vpsOrderPostRequest.slices) &&
        Objects.equals(this.vpsPlatform, vpsOrderPostRequest.vpsPlatform) &&
        Objects.equals(this.period, vpsOrderPostRequest.period) &&
        Objects.equals(this.location, vpsOrderPostRequest.location) &&
        Objects.equals(this.osVersion, vpsOrderPostRequest.osVersion) &&
        Objects.equals(this.hostname, vpsOrderPostRequest.hostname) &&
        Objects.equals(this.rootpass, vpsOrderPostRequest.rootpass) &&
        Objects.equals(this.controlpanel, vpsOrderPostRequest.controlpanel) &&
        Objects.equals(this.coupon, vpsOrderPostRequest.coupon) &&
        Objects.equals(this.comment, vpsOrderPostRequest.comment);
  }

  @Override
  public int hashCode() {
    return Objects.hash(osDistro, slices, vpsPlatform, period, location, osVersion, hostname, rootpass, controlpanel, coupon, comment);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class VpsOrderPostRequest {\n");
    
    sb.append("    osDistro: ").append(toIndentedString(osDistro)).append("\n");
    sb.append("    slices: ").append(toIndentedString(slices)).append("\n");
    sb.append("    vpsPlatform: ").append(toIndentedString(vpsPlatform)).append("\n");
    sb.append("    period: ").append(toIndentedString(period)).append("\n");
    sb.append("    location: ").append(toIndentedString(location)).append("\n");
    sb.append("    osVersion: ").append(toIndentedString(osVersion)).append("\n");
    sb.append("    hostname: ").append(toIndentedString(hostname)).append("\n");
    sb.append("    rootpass: ").append(toIndentedString(rootpass)).append("\n");
    sb.append("    controlpanel: ").append(toIndentedString(controlpanel)).append("\n");
    sb.append("    coupon: ").append(toIndentedString(coupon)).append("\n");
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

