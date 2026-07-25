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
 * VpsServiceInfo
 */
@Validated
@NotUndefined



public class VpsServiceInfo   {
  @JsonProperty("vps_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String vpsId = null;

  @JsonProperty("vps_custid")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String vpsCustid = null;

  @JsonProperty("vps_server")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String vpsServer = null;

  @JsonProperty("vps_ip")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String vpsIp = null;

  @JsonProperty("vps_ipv6")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String vpsIpv6 = null;

  @JsonProperty("vps_vzid")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String vpsVzid = null;

  @JsonProperty("vps_currency")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String vpsCurrency = null;

  @JsonProperty("vps_type")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String vpsType = null;

  @JsonProperty("vps_order_date")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String vpsOrderDate = null;

  @JsonProperty("vps_status")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String vpsStatus = null;

  @JsonProperty("vps_invoice")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String vpsInvoice = null;

  @JsonProperty("vps_coupon")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String vpsCoupon = null;

  @JsonProperty("vps_extra")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String vpsExtra = null;

  @JsonProperty("vps_hostname")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String vpsHostname = null;

  @JsonProperty("vps_server_status")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String vpsServerStatus = null;

  @JsonProperty("vps_comment")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String vpsComment = null;

  @JsonProperty("vps_slices")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String vpsSlices = null;

  @JsonProperty("vps_vnc")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String vpsVnc = null;

  @JsonProperty("vps_vnc_port")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String vpsVncPort = null;

  @JsonProperty("vps_rootpass")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String vpsRootpass = null;

  @JsonProperty("vps_mac")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String vpsMac = null;

  @JsonProperty("vps_os")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String vpsOs = null;

  @JsonProperty("vps_version")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String vpsVersion = null;

  @JsonProperty("vps_location")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String vpsLocation = null;

  @JsonProperty("vps_platform")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String vpsPlatform = null;

  @JsonProperty("vps_diskused")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String vpsDiskused = null;

  @JsonProperty("vps_diskmax")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String vpsDiskmax = null;


  public VpsServiceInfo vpsId(String vpsId) { 

    this.vpsId = vpsId;
    return this;
  }

  /**
   * VPS ID
   * @return vpsId
   **/
  
  @Schema(example = "85872", description = "VPS ID")
  
  public String getVpsId() {  
    return vpsId;
  }



  public void setVpsId(String vpsId) { 
    this.vpsId = vpsId;
  }

  public VpsServiceInfo vpsCustid(String vpsCustid) { 

    this.vpsCustid = vpsCustid;
    return this;
  }

  /**
   * Customer ID
   * @return vpsCustid
   **/
  
  @Schema(example = "223513", description = "Customer ID")
  
  public String getVpsCustid() {  
    return vpsCustid;
  }



  public void setVpsCustid(String vpsCustid) { 
    this.vpsCustid = vpsCustid;
  }

  public VpsServiceInfo vpsServer(String vpsServer) { 

    this.vpsServer = vpsServer;
    return this;
  }

  /**
   * Server ID
   * @return vpsServer
   **/
  
  @Schema(example = "2439", description = "Server ID")
  
  public String getVpsServer() {  
    return vpsServer;
  }



  public void setVpsServer(String vpsServer) { 
    this.vpsServer = vpsServer;
  }

  public VpsServiceInfo vpsIp(String vpsIp) { 

    this.vpsIp = vpsIp;
    return this;
  }

  /**
   * IP address of the VPS
   * @return vpsIp
   **/
  
  @Schema(example = "1.2.3.4", description = "IP address of the VPS")
  
  public String getVpsIp() {  
    return vpsIp;
  }



  public void setVpsIp(String vpsIp) { 
    this.vpsIp = vpsIp;
  }

  public VpsServiceInfo vpsIpv6(String vpsIpv6) { 

    this.vpsIpv6 = vpsIpv6;
    return this;
  }

  /**
   * IPv6 address of the VPS
   * @return vpsIpv6
   **/
  
  @Schema(description = "IPv6 address of the VPS")
  
  public String getVpsIpv6() {  
    return vpsIpv6;
  }



  public void setVpsIpv6(String vpsIpv6) { 
    this.vpsIpv6 = vpsIpv6;
  }

  public VpsServiceInfo vpsVzid(String vpsVzid) { 

    this.vpsVzid = vpsVzid;
    return this;
  }

  /**
   * VPS Virtuozzo ID
   * @return vpsVzid
   **/
  
  @Schema(example = "vps85872", description = "VPS Virtuozzo ID")
  
  public String getVpsVzid() {  
    return vpsVzid;
  }



  public void setVpsVzid(String vpsVzid) { 
    this.vpsVzid = vpsVzid;
  }

  public VpsServiceInfo vpsCurrency(String vpsCurrency) { 

    this.vpsCurrency = vpsCurrency;
    return this;
  }

  /**
   * Currency used for billing
   * @return vpsCurrency
   **/
  
  @Schema(example = "USD", description = "Currency used for billing")
  
  public String getVpsCurrency() {  
    return vpsCurrency;
  }



  public void setVpsCurrency(String vpsCurrency) { 
    this.vpsCurrency = vpsCurrency;
  }

  public VpsServiceInfo vpsType(String vpsType) { 

    this.vpsType = vpsType;
    return this;
  }

  /**
   * VPS type
   * @return vpsType
   **/
  
  @Schema(example = "33", description = "VPS type")
  
  public String getVpsType() {  
    return vpsType;
  }



  public void setVpsType(String vpsType) { 
    this.vpsType = vpsType;
  }

  public VpsServiceInfo vpsOrderDate(String vpsOrderDate) { 

    this.vpsOrderDate = vpsOrderDate;
    return this;
  }

  /**
   * Date of VPS order
   * @return vpsOrderDate
   **/
  
  @Schema(example = "2022-12-26T20:14:59.000Z", description = "Date of VPS order")
  
  public String getVpsOrderDate() {  
    return vpsOrderDate;
  }



  public void setVpsOrderDate(String vpsOrderDate) { 
    this.vpsOrderDate = vpsOrderDate;
  }

  public VpsServiceInfo vpsStatus(String vpsStatus) { 

    this.vpsStatus = vpsStatus;
    return this;
  }

  /**
   * VPS status
   * @return vpsStatus
   **/
  
  @Schema(example = "active", description = "VPS status")
  
  public String getVpsStatus() {  
    return vpsStatus;
  }



  public void setVpsStatus(String vpsStatus) { 
    this.vpsStatus = vpsStatus;
  }

  public VpsServiceInfo vpsInvoice(String vpsInvoice) { 

    this.vpsInvoice = vpsInvoice;
    return this;
  }

  /**
   * VPS invoice number
   * @return vpsInvoice
   **/
  
  @Schema(example = "20130799", description = "VPS invoice number")
  
  public String getVpsInvoice() {  
    return vpsInvoice;
  }



  public void setVpsInvoice(String vpsInvoice) { 
    this.vpsInvoice = vpsInvoice;
  }

  public VpsServiceInfo vpsCoupon(String vpsCoupon) { 

    this.vpsCoupon = vpsCoupon;
    return this;
  }

  /**
   * VPS coupon code
   * @return vpsCoupon
   **/
  
  @Schema(example = "3646", description = "VPS coupon code")
  
  public String getVpsCoupon() {  
    return vpsCoupon;
  }



  public void setVpsCoupon(String vpsCoupon) { 
    this.vpsCoupon = vpsCoupon;
  }

  public VpsServiceInfo vpsExtra(String vpsExtra) { 

    this.vpsExtra = vpsExtra;
    return this;
  }

  /**
   * Additional information about the VPS
   * @return vpsExtra
   **/
  
  @Schema(example = "{\"spice\":5903,\"snapshots\":[{\"name\":\"third\",\"used\":36490445,\"date\":1692095220},{\"name\":\"second\",\"used\":40894464,\"date\":1692181620},{\"name\":\"first\",\"used\":54735668,\"date\":1692268020}]}", description = "Additional information about the VPS")
  
  public String getVpsExtra() {  
    return vpsExtra;
  }



  public void setVpsExtra(String vpsExtra) { 
    this.vpsExtra = vpsExtra;
  }

  public VpsServiceInfo vpsHostname(String vpsHostname) { 

    this.vpsHostname = vpsHostname;
    return this;
  }

  /**
   * VPS hostname
   * @return vpsHostname
   **/
  
  @Schema(example = "vps85872", description = "VPS hostname")
  
  public String getVpsHostname() {  
    return vpsHostname;
  }



  public void setVpsHostname(String vpsHostname) { 
    this.vpsHostname = vpsHostname;
  }

  public VpsServiceInfo vpsServerStatus(String vpsServerStatus) { 

    this.vpsServerStatus = vpsServerStatus;
    return this;
  }

  /**
   * Status of the VPS server
   * @return vpsServerStatus
   **/
  
  @Schema(example = "running", description = "Status of the VPS server")
  
  public String getVpsServerStatus() {  
    return vpsServerStatus;
  }



  public void setVpsServerStatus(String vpsServerStatus) { 
    this.vpsServerStatus = vpsServerStatus;
  }

  public VpsServiceInfo vpsComment(String vpsComment) { 

    this.vpsComment = vpsComment;
    return this;
  }

  /**
   * Comment associated with the VPS
   * @return vpsComment
   **/
  
  @Schema(example = "my-web-2", description = "Comment associated with the VPS")
  
  public String getVpsComment() {  
    return vpsComment;
  }



  public void setVpsComment(String vpsComment) { 
    this.vpsComment = vpsComment;
  }

  public VpsServiceInfo vpsSlices(String vpsSlices) { 

    this.vpsSlices = vpsSlices;
    return this;
  }

  /**
   * Number of VPS slices
   * @return vpsSlices
   **/
  
  @Schema(example = "16", description = "Number of VPS slices")
  
  public String getVpsSlices() {  
    return vpsSlices;
  }



  public void setVpsSlices(String vpsSlices) { 
    this.vpsSlices = vpsSlices;
  }

  public VpsServiceInfo vpsVnc(String vpsVnc) { 

    this.vpsVnc = vpsVnc;
    return this;
  }

  /**
   * VNC address
   * @return vpsVnc
   **/
  
  @Schema(example = "8.7.6.5", description = "VNC address")
  
  public String getVpsVnc() {  
    return vpsVnc;
  }



  public void setVpsVnc(String vpsVnc) { 
    this.vpsVnc = vpsVnc;
  }

  public VpsServiceInfo vpsVncPort(String vpsVncPort) { 

    this.vpsVncPort = vpsVncPort;
    return this;
  }

  /**
   * VNC port
   * @return vpsVncPort
   **/
  
  @Schema(example = "5902", description = "VNC port")
  
  public String getVpsVncPort() {  
    return vpsVncPort;
  }



  public void setVpsVncPort(String vpsVncPort) { 
    this.vpsVncPort = vpsVncPort;
  }

  public VpsServiceInfo vpsRootpass(String vpsRootpass) { 

    this.vpsRootpass = vpsRootpass;
    return this;
  }

  /**
   * Root password of the VPS
   * @return vpsRootpass
   **/
  
  @Schema(example = "mypassword", description = "Root password of the VPS")
  
  public String getVpsRootpass() {  
    return vpsRootpass;
  }



  public void setVpsRootpass(String vpsRootpass) { 
    this.vpsRootpass = vpsRootpass;
  }

  public VpsServiceInfo vpsMac(String vpsMac) { 

    this.vpsMac = vpsMac;
    return this;
  }

  /**
   * MAC address of the VPS
   * @return vpsMac
   **/
  
  @Schema(example = "00:16:3e:27:59:b2", description = "MAC address of the VPS")
  
  public String getVpsMac() {  
    return vpsMac;
  }



  public void setVpsMac(String vpsMac) { 
    this.vpsMac = vpsMac;
  }

  public VpsServiceInfo vpsOs(String vpsOs) { 

    this.vpsOs = vpsOs;
    return this;
  }

  /**
   * Operating system of the VPS
   * @return vpsOs
   **/
  
  @Schema(example = "ubuntu24", description = "Operating system of the VPS")
  
  public String getVpsOs() {  
    return vpsOs;
  }



  public void setVpsOs(String vpsOs) { 
    this.vpsOs = vpsOs;
  }

  public VpsServiceInfo vpsVersion(String vpsVersion) { 

    this.vpsVersion = vpsVersion;
    return this;
  }

  /**
   * Version of the operating system
   * @return vpsVersion
   **/
  
  @Schema(example = "ubuntu", description = "Version of the operating system")
  
  public String getVpsVersion() {  
    return vpsVersion;
  }



  public void setVpsVersion(String vpsVersion) { 
    this.vpsVersion = vpsVersion;
  }

  public VpsServiceInfo vpsLocation(String vpsLocation) { 

    this.vpsLocation = vpsLocation;
    return this;
  }

  /**
   * Location of the VPS
   * @return vpsLocation
   **/
  
  @Schema(example = "1", description = "Location of the VPS")
  
  public String getVpsLocation() {  
    return vpsLocation;
  }



  public void setVpsLocation(String vpsLocation) { 
    this.vpsLocation = vpsLocation;
  }

  public VpsServiceInfo vpsPlatform(String vpsPlatform) { 

    this.vpsPlatform = vpsPlatform;
    return this;
  }

  /**
   * Virtualization platform
   * @return vpsPlatform
   **/
  
  @Schema(example = "kvm", description = "Virtualization platform")
  
  public String getVpsPlatform() {  
    return vpsPlatform;
  }



  public void setVpsPlatform(String vpsPlatform) { 
    this.vpsPlatform = vpsPlatform;
  }

  public VpsServiceInfo vpsDiskused(String vpsDiskused) { 

    this.vpsDiskused = vpsDiskused;
    return this;
  }

  /**
   * Amount of disk space used
   * @return vpsDiskused
   **/
  
  @Schema(example = "0", description = "Amount of disk space used")
  
  public String getVpsDiskused() {  
    return vpsDiskused;
  }



  public void setVpsDiskused(String vpsDiskused) { 
    this.vpsDiskused = vpsDiskused;
  }

  public VpsServiceInfo vpsDiskmax(String vpsDiskmax) { 

    this.vpsDiskmax = vpsDiskmax;
    return this;
  }

  /**
   * Maximum disk space available
   * @return vpsDiskmax
   **/
  
  @Schema(example = "0", description = "Maximum disk space available")
  
  public String getVpsDiskmax() {  
    return vpsDiskmax;
  }



  public void setVpsDiskmax(String vpsDiskmax) { 
    this.vpsDiskmax = vpsDiskmax;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    VpsServiceInfo vpsServiceInfo = (VpsServiceInfo) o;
    return Objects.equals(this.vpsId, vpsServiceInfo.vpsId) &&
        Objects.equals(this.vpsCustid, vpsServiceInfo.vpsCustid) &&
        Objects.equals(this.vpsServer, vpsServiceInfo.vpsServer) &&
        Objects.equals(this.vpsIp, vpsServiceInfo.vpsIp) &&
        Objects.equals(this.vpsIpv6, vpsServiceInfo.vpsIpv6) &&
        Objects.equals(this.vpsVzid, vpsServiceInfo.vpsVzid) &&
        Objects.equals(this.vpsCurrency, vpsServiceInfo.vpsCurrency) &&
        Objects.equals(this.vpsType, vpsServiceInfo.vpsType) &&
        Objects.equals(this.vpsOrderDate, vpsServiceInfo.vpsOrderDate) &&
        Objects.equals(this.vpsStatus, vpsServiceInfo.vpsStatus) &&
        Objects.equals(this.vpsInvoice, vpsServiceInfo.vpsInvoice) &&
        Objects.equals(this.vpsCoupon, vpsServiceInfo.vpsCoupon) &&
        Objects.equals(this.vpsExtra, vpsServiceInfo.vpsExtra) &&
        Objects.equals(this.vpsHostname, vpsServiceInfo.vpsHostname) &&
        Objects.equals(this.vpsServerStatus, vpsServiceInfo.vpsServerStatus) &&
        Objects.equals(this.vpsComment, vpsServiceInfo.vpsComment) &&
        Objects.equals(this.vpsSlices, vpsServiceInfo.vpsSlices) &&
        Objects.equals(this.vpsVnc, vpsServiceInfo.vpsVnc) &&
        Objects.equals(this.vpsVncPort, vpsServiceInfo.vpsVncPort) &&
        Objects.equals(this.vpsRootpass, vpsServiceInfo.vpsRootpass) &&
        Objects.equals(this.vpsMac, vpsServiceInfo.vpsMac) &&
        Objects.equals(this.vpsOs, vpsServiceInfo.vpsOs) &&
        Objects.equals(this.vpsVersion, vpsServiceInfo.vpsVersion) &&
        Objects.equals(this.vpsLocation, vpsServiceInfo.vpsLocation) &&
        Objects.equals(this.vpsPlatform, vpsServiceInfo.vpsPlatform) &&
        Objects.equals(this.vpsDiskused, vpsServiceInfo.vpsDiskused) &&
        Objects.equals(this.vpsDiskmax, vpsServiceInfo.vpsDiskmax);
  }

  @Override
  public int hashCode() {
    return Objects.hash(vpsId, vpsCustid, vpsServer, vpsIp, vpsIpv6, vpsVzid, vpsCurrency, vpsType, vpsOrderDate, vpsStatus, vpsInvoice, vpsCoupon, vpsExtra, vpsHostname, vpsServerStatus, vpsComment, vpsSlices, vpsVnc, vpsVncPort, vpsRootpass, vpsMac, vpsOs, vpsVersion, vpsLocation, vpsPlatform, vpsDiskused, vpsDiskmax);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class VpsServiceInfo {\n");
    
    sb.append("    vpsId: ").append(toIndentedString(vpsId)).append("\n");
    sb.append("    vpsCustid: ").append(toIndentedString(vpsCustid)).append("\n");
    sb.append("    vpsServer: ").append(toIndentedString(vpsServer)).append("\n");
    sb.append("    vpsIp: ").append(toIndentedString(vpsIp)).append("\n");
    sb.append("    vpsIpv6: ").append(toIndentedString(vpsIpv6)).append("\n");
    sb.append("    vpsVzid: ").append(toIndentedString(vpsVzid)).append("\n");
    sb.append("    vpsCurrency: ").append(toIndentedString(vpsCurrency)).append("\n");
    sb.append("    vpsType: ").append(toIndentedString(vpsType)).append("\n");
    sb.append("    vpsOrderDate: ").append(toIndentedString(vpsOrderDate)).append("\n");
    sb.append("    vpsStatus: ").append(toIndentedString(vpsStatus)).append("\n");
    sb.append("    vpsInvoice: ").append(toIndentedString(vpsInvoice)).append("\n");
    sb.append("    vpsCoupon: ").append(toIndentedString(vpsCoupon)).append("\n");
    sb.append("    vpsExtra: ").append(toIndentedString(vpsExtra)).append("\n");
    sb.append("    vpsHostname: ").append(toIndentedString(vpsHostname)).append("\n");
    sb.append("    vpsServerStatus: ").append(toIndentedString(vpsServerStatus)).append("\n");
    sb.append("    vpsComment: ").append(toIndentedString(vpsComment)).append("\n");
    sb.append("    vpsSlices: ").append(toIndentedString(vpsSlices)).append("\n");
    sb.append("    vpsVnc: ").append(toIndentedString(vpsVnc)).append("\n");
    sb.append("    vpsVncPort: ").append(toIndentedString(vpsVncPort)).append("\n");
    sb.append("    vpsRootpass: ").append(toIndentedString(vpsRootpass)).append("\n");
    sb.append("    vpsMac: ").append(toIndentedString(vpsMac)).append("\n");
    sb.append("    vpsOs: ").append(toIndentedString(vpsOs)).append("\n");
    sb.append("    vpsVersion: ").append(toIndentedString(vpsVersion)).append("\n");
    sb.append("    vpsLocation: ").append(toIndentedString(vpsLocation)).append("\n");
    sb.append("    vpsPlatform: ").append(toIndentedString(vpsPlatform)).append("\n");
    sb.append("    vpsDiskused: ").append(toIndentedString(vpsDiskused)).append("\n");
    sb.append("    vpsDiskmax: ").append(toIndentedString(vpsDiskmax)).append("\n");
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
