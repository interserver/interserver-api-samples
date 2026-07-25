package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
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
 * request to validate a vps order
 */
@Schema(description = "request to validate a vps order")
@Validated
@NotUndefined



public class VpsOrderPutRequest   {
  @JsonProperty("osDistro")

  private String osDistro = null;

  @JsonProperty("slices")

  private Integer slices = 1;

  /**
   * VPS Platform
   */
  public enum VpsPlatformEnum {
    KVM("kvm"),
    
    HYPERV("hyperv"),
    
    KVMSTORAGE("kvmstorage");

    private String value;

    VpsPlatformEnum(String value) {
      this.value = value;
    }

    @Override
    @JsonValue
    public String toString() {
      return String.valueOf(value);
    }

    @JsonCreator
    public static VpsPlatformEnum fromValue(String text) {
      for (VpsPlatformEnum b : VpsPlatformEnum.values()) {
        if (String.valueOf(b.value).equals(text)) {
          return b;
        }
      }
      return null;
    }
  }
  @JsonProperty("vpsPlatform")

  private VpsPlatformEnum vpsPlatform = null;

  /**
   * Control Panel
   */
  public enum ControlpanelEnum {
    NONE("none"),
    
    CPANEL("cpanel"),
    
    DA("da");

    private String value;

    ControlpanelEnum(String value) {
      this.value = value;
    }

    @Override
    @JsonValue
    public String toString() {
      return String.valueOf(value);
    }

    @JsonCreator
    public static ControlpanelEnum fromValue(String text) {
      for (ControlpanelEnum b : ControlpanelEnum.values()) {
        if (String.valueOf(b.value).equals(text)) {
          return b;
        }
      }
      return null;
    }
  }
  @JsonProperty("controlpanel")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private ControlpanelEnum controlpanel = null;

  @JsonProperty("period")

  private Integer period = 1;

  @JsonProperty("location")

  private Integer location = 1;

  @JsonProperty("osVersion")

  private String osVersion = null;

  @JsonProperty("hostname")

  private String hostname = "";

  @JsonProperty("coupon")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String coupon = "";

  @JsonProperty("rootpass")

  private String rootpass = null;

  @JsonProperty("comment")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String comment = "";


  public VpsOrderPutRequest osDistro(String osDistro) { 

    this.osDistro = osDistro;
    return this;
  }

  /**
   * OS Distribution
   * @return osDistro
   **/
  
  @Schema(required = true, description = "OS Distribution")
  
  @NotNull
  public String getOsDistro() {  
    return osDistro;
  }



  public void setOsDistro(String osDistro) { 

    this.osDistro = osDistro;
  }

  public VpsOrderPutRequest slices(Integer slices) { 

    this.slices = slices;
    return this;
  }

  /**
   * Number of slices
   * minimum: 1
   * maximum: 32
   * @return slices
   **/
  
  @Schema(required = true, description = "Number of slices")
  
  @NotNull
@Min(1) @Max(32)   public Integer getSlices() {  
    return slices;
  }



  public void setSlices(Integer slices) { 

    this.slices = slices;
  }

  public VpsOrderPutRequest vpsPlatform(VpsPlatformEnum vpsPlatform) { 

    this.vpsPlatform = vpsPlatform;
    return this;
  }

  /**
   * VPS Platform
   * @return vpsPlatform
   **/
  
  @Schema(required = true, description = "VPS Platform")
  
  @NotNull
  public VpsPlatformEnum getVpsPlatform() {  
    return vpsPlatform;
  }



  public void setVpsPlatform(VpsPlatformEnum vpsPlatform) { 

    this.vpsPlatform = vpsPlatform;
  }

  public VpsOrderPutRequest controlpanel(ControlpanelEnum controlpanel) { 

    this.controlpanel = controlpanel;
    return this;
  }

  /**
   * Control Panel
   * @return controlpanel
   **/
  
  @Schema(description = "Control Panel")
  
  public ControlpanelEnum getControlpanel() {  
    return controlpanel;
  }



  public void setControlpanel(ControlpanelEnum controlpanel) { 
    this.controlpanel = controlpanel;
  }

  public VpsOrderPutRequest period(Integer period) { 

    this.period = period;
    return this;
  }

  /**
   * Billing Period or Frequency
   * minimum: 1
   * maximum: 12
   * @return period
   **/
  
  @Schema(required = true, description = "Billing Period or Frequency")
  
  @NotNull
@Min(1) @Max(12)   public Integer getPeriod() {  
    return period;
  }



  public void setPeriod(Integer period) { 

    this.period = period;
  }

  public VpsOrderPutRequest location(Integer location) { 

    this.location = location;
    return this;
  }

  /**
   * Location
   * minimum: 1
   * maximum: 3
   * @return location
   **/
  
  @Schema(required = true, description = "Location")
  
  @NotNull
@Min(1) @Max(3)   public Integer getLocation() {  
    return location;
  }



  public void setLocation(Integer location) { 

    this.location = location;
  }

  public VpsOrderPutRequest osVersion(String osVersion) { 

    this.osVersion = osVersion;
    return this;
  }

  /**
   * OS Version
   * @return osVersion
   **/
  
  @Schema(required = true, description = "OS Version")
  
  @NotNull
  public String getOsVersion() {  
    return osVersion;
  }



  public void setOsVersion(String osVersion) { 

    this.osVersion = osVersion;
  }

  public VpsOrderPutRequest hostname(String hostname) { 

    this.hostname = hostname;
    return this;
  }

  /**
   * The hostname to assign to the VPS
   * @return hostname
   **/
  
  @Schema(required = true, description = "The hostname to assign to the VPS")
  
  @NotNull
  public String getHostname() {  
    return hostname;
  }



  public void setHostname(String hostname) { 

    this.hostname = hostname;
  }

  public VpsOrderPutRequest coupon(String coupon) { 

    this.coupon = coupon;
    return this;
  }

  /**
   * Coupon
   * @return coupon
   **/
  
  @Schema(description = "Coupon")
  
  public String getCoupon() {  
    return coupon;
  }



  public void setCoupon(String coupon) { 
    this.coupon = coupon;
  }

  public VpsOrderPutRequest rootpass(String rootpass) { 

    this.rootpass = rootpass;
    return this;
  }

  /**
   * Root password to assign to the VVPS
   * @return rootpass
   **/
  
  @Schema(required = true, description = "Root password to assign to the VVPS")
  
  @NotNull
  public String getRootpass() {  
    return rootpass;
  }



  public void setRootpass(String rootpass) { 

    this.rootpass = rootpass;
  }

  public VpsOrderPutRequest comment(String comment) { 

    this.comment = comment;
    return this;
  }

  /**
   * Order comments or notes
   * @return comment
   **/
  
  @Schema(description = "Order comments or notes")
  
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
    VpsOrderPutRequest vpsOrderPutRequest = (VpsOrderPutRequest) o;
    return Objects.equals(this.osDistro, vpsOrderPutRequest.osDistro) &&
        Objects.equals(this.slices, vpsOrderPutRequest.slices) &&
        Objects.equals(this.vpsPlatform, vpsOrderPutRequest.vpsPlatform) &&
        Objects.equals(this.controlpanel, vpsOrderPutRequest.controlpanel) &&
        Objects.equals(this.period, vpsOrderPutRequest.period) &&
        Objects.equals(this.location, vpsOrderPutRequest.location) &&
        Objects.equals(this.osVersion, vpsOrderPutRequest.osVersion) &&
        Objects.equals(this.hostname, vpsOrderPutRequest.hostname) &&
        Objects.equals(this.coupon, vpsOrderPutRequest.coupon) &&
        Objects.equals(this.rootpass, vpsOrderPutRequest.rootpass) &&
        Objects.equals(this.comment, vpsOrderPutRequest.comment);
  }

  @Override
  public int hashCode() {
    return Objects.hash(osDistro, slices, vpsPlatform, controlpanel, period, location, osVersion, hostname, coupon, rootpass, comment);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class VpsOrderPutRequest {\n");
    
    sb.append("    osDistro: ").append(toIndentedString(osDistro)).append("\n");
    sb.append("    slices: ").append(toIndentedString(slices)).append("\n");
    sb.append("    vpsPlatform: ").append(toIndentedString(vpsPlatform)).append("\n");
    sb.append("    controlpanel: ").append(toIndentedString(controlpanel)).append("\n");
    sb.append("    period: ").append(toIndentedString(period)).append("\n");
    sb.append("    location: ").append(toIndentedString(location)).append("\n");
    sb.append("    osVersion: ").append(toIndentedString(osVersion)).append("\n");
    sb.append("    hostname: ").append(toIndentedString(hostname)).append("\n");
    sb.append("    coupon: ").append(toIndentedString(coupon)).append("\n");
    sb.append("    rootpass: ").append(toIndentedString(rootpass)).append("\n");
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
