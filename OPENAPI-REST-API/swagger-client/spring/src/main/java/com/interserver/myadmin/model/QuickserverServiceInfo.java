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
 * Core service record for a QuickServer including ID, status, IP, OS, and billing details.
 */
@Schema(description = "Core service record for a QuickServer including ID, status, IP, OS, and billing details.")
@Validated
@NotUndefined



public class QuickserverServiceInfo   {
  @JsonProperty("qs_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsId = null;

  @JsonProperty("qs_custid")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsCustid = null;

  @JsonProperty("qs_server")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsServer = null;

  @JsonProperty("qs_ip")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsIp = null;

  @JsonProperty("qs_ipv6")

  private String qsIpv6 = null;

  @JsonProperty("qs_vzid")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsVzid = null;

  @JsonProperty("qs_currency")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsCurrency = null;

  @JsonProperty("qs_type")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsType = null;

  @JsonProperty("qs_order_date")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsOrderDate = null;

  @JsonProperty("qs_status")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsStatus = null;

  @JsonProperty("qs_invoice")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsInvoice = null;

  @JsonProperty("qs_coupon")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsCoupon = null;

  @JsonProperty("qs_extra")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsExtra = null;

  @JsonProperty("qs_hostname")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsHostname = null;

  @JsonProperty("qs_server_status")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsServerStatus = null;

  @JsonProperty("qs_comment")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsComment = null;

  @JsonProperty("qs_slices")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsSlices = null;

  @JsonProperty("qs_vnc")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsVnc = null;

  @JsonProperty("qs_vnc_port")

  private Integer qsVncPort = null;

  @JsonProperty("qs_rootpass")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsRootpass = null;

  @JsonProperty("qs_mac")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsMac = null;

  @JsonProperty("qs_os")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsOs = null;

  @JsonProperty("qs_version")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsVersion = null;

  @JsonProperty("qs_location")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsLocation = null;

  @JsonProperty("qs_platform")

  private String qsPlatform = null;


  public QuickserverServiceInfo qsId(String qsId) { 

    this.qsId = qsId;
    return this;
  }

  /**
   * Quickserver ID
   * @return qsId
   **/
  
  @Schema(example = "24355", description = "Quickserver ID")
  
  public String getQsId() {  
    return qsId;
  }



  public void setQsId(String qsId) { 
    this.qsId = qsId;
  }

  public QuickserverServiceInfo qsCustid(String qsCustid) { 

    this.qsCustid = qsCustid;
    return this;
  }

  /**
   * Customer ID
   * @return qsCustid
   **/
  
  @Schema(example = "771282", description = "Customer ID")
  
  public String getQsCustid() {  
    return qsCustid;
  }



  public void setQsCustid(String qsCustid) { 
    this.qsCustid = qsCustid;
  }

  public QuickserverServiceInfo qsServer(String qsServer) { 

    this.qsServer = qsServer;
    return this;
  }

  /**
   * Server information
   * @return qsServer
   **/
  
  @Schema(example = "365", description = "Server information")
  
  public String getQsServer() {  
    return qsServer;
  }



  public void setQsServer(String qsServer) { 
    this.qsServer = qsServer;
  }

  public QuickserverServiceInfo qsIp(String qsIp) { 

    this.qsIp = qsIp;
    return this;
  }

  /**
   * IP address
   * @return qsIp
   **/
  
  @Schema(description = "IP address")
  
  public String getQsIp() {  
    return qsIp;
  }



  public void setQsIp(String qsIp) { 
    this.qsIp = qsIp;
  }

  public QuickserverServiceInfo qsIpv6(String qsIpv6) { 

    this.qsIpv6 = qsIpv6;
    return this;
  }

  /**
   * IPv6 address (null)
   * @return qsIpv6
   **/
  
  @Schema(description = "IPv6 address (null)")
  
  public String getQsIpv6() {
 
    return qsIpv6;
  }



  public void setQsIpv6(String qsIpv6) { 
    this.qsIpv6 = qsIpv6;
  }

  public QuickserverServiceInfo qsVzid(String qsVzid) { 

    this.qsVzid = qsVzid;
    return this;
  }

  /**
   * VZ ID
   * @return qsVzid
   **/
  
  @Schema(example = "qs24355", description = "VZ ID")
  
  public String getQsVzid() {  
    return qsVzid;
  }



  public void setQsVzid(String qsVzid) { 
    this.qsVzid = qsVzid;
  }

  public QuickserverServiceInfo qsCurrency(String qsCurrency) { 

    this.qsCurrency = qsCurrency;
    return this;
  }

  /**
   * Currency
   * @return qsCurrency
   **/
  
  @Schema(example = "USD", description = "Currency")
  
  public String getQsCurrency() {  
    return qsCurrency;
  }



  public void setQsCurrency(String qsCurrency) { 
    this.qsCurrency = qsCurrency;
  }

  public QuickserverServiceInfo qsType(String qsType) { 

    this.qsType = qsType;
    return this;
  }

  /**
   * Type
   * @return qsType
   **/
  
  @Schema(example = "700", description = "Type")
  
  public String getQsType() {  
    return qsType;
  }



  public void setQsType(String qsType) { 
    this.qsType = qsType;
  }

  public QuickserverServiceInfo qsOrderDate(String qsOrderDate) { 

    this.qsOrderDate = qsOrderDate;
    return this;
  }

  /**
   * Order date
   * @return qsOrderDate
   **/
  
  @Schema(example = "2023-04-11T20:00:06.000Z", description = "Order date")
  
  public String getQsOrderDate() {  
    return qsOrderDate;
  }



  public void setQsOrderDate(String qsOrderDate) { 
    this.qsOrderDate = qsOrderDate;
  }

  public QuickserverServiceInfo qsStatus(String qsStatus) { 

    this.qsStatus = qsStatus;
    return this;
  }

  /**
   * Status
   * @return qsStatus
   **/
  
  @Schema(example = "canceled", description = "Status")
  
  public String getQsStatus() {  
    return qsStatus;
  }



  public void setQsStatus(String qsStatus) { 
    this.qsStatus = qsStatus;
  }

  public QuickserverServiceInfo qsInvoice(String qsInvoice) { 

    this.qsInvoice = qsInvoice;
    return this;
  }

  /**
   * Invoice number
   * @return qsInvoice
   **/
  
  @Schema(example = "20297531", description = "Invoice number")
  
  public String getQsInvoice() {  
    return qsInvoice;
  }



  public void setQsInvoice(String qsInvoice) { 
    this.qsInvoice = qsInvoice;
  }

  public QuickserverServiceInfo qsCoupon(String qsCoupon) { 

    this.qsCoupon = qsCoupon;
    return this;
  }

  /**
   * Coupon information
   * @return qsCoupon
   **/
  
  @Schema(example = "0", description = "Coupon information")
  
  public String getQsCoupon() {  
    return qsCoupon;
  }



  public void setQsCoupon(String qsCoupon) { 
    this.qsCoupon = qsCoupon;
  }

  public QuickserverServiceInfo qsExtra(String qsExtra) { 

    this.qsExtra = qsExtra;
    return this;
  }

  /**
   * Extra information
   * @return qsExtra
   **/
  
  @Schema(example = "{\"platform\":\"kvm\"}", description = "Extra information")
  
  public String getQsExtra() {  
    return qsExtra;
  }



  public void setQsExtra(String qsExtra) { 
    this.qsExtra = qsExtra;
  }

  public QuickserverServiceInfo qsHostname(String qsHostname) { 

    this.qsHostname = qsHostname;
    return this;
  }

  /**
   * Hostname
   * @return qsHostname
   **/
  
  @Schema(example = "qs24355", description = "Hostname")
  
  public String getQsHostname() {  
    return qsHostname;
  }



  public void setQsHostname(String qsHostname) { 
    this.qsHostname = qsHostname;
  }

  public QuickserverServiceInfo qsServerStatus(String qsServerStatus) { 

    this.qsServerStatus = qsServerStatus;
    return this;
  }

  /**
   * Server status
   * @return qsServerStatus
   **/
  
  @Schema(example = "deleted", description = "Server status")
  
  public String getQsServerStatus() {  
    return qsServerStatus;
  }



  public void setQsServerStatus(String qsServerStatus) { 
    this.qsServerStatus = qsServerStatus;
  }

  public QuickserverServiceInfo qsComment(String qsComment) { 

    this.qsComment = qsComment;
    return this;
  }

  /**
   * Comment
   * @return qsComment
   **/
  
  @Schema(description = "Comment")
  
  public String getQsComment() {  
    return qsComment;
  }



  public void setQsComment(String qsComment) { 
    this.qsComment = qsComment;
  }

  public QuickserverServiceInfo qsSlices(String qsSlices) { 

    this.qsSlices = qsSlices;
    return this;
  }

  /**
   * Slices information
   * @return qsSlices
   **/
  
  @Schema(example = "0", description = "Slices information")
  
  public String getQsSlices() {  
    return qsSlices;
  }



  public void setQsSlices(String qsSlices) { 
    this.qsSlices = qsSlices;
  }

  public QuickserverServiceInfo qsVnc(String qsVnc) { 

    this.qsVnc = qsVnc;
    return this;
  }

  /**
   * VNC information
   * @return qsVnc
   **/
  
  @Schema(example = "99.88.77.66", description = "VNC information")
  
  public String getQsVnc() {  
    return qsVnc;
  }



  public void setQsVnc(String qsVnc) { 
    this.qsVnc = qsVnc;
  }

  public QuickserverServiceInfo qsVncPort(Integer qsVncPort) { 

    this.qsVncPort = qsVncPort;
    return this;
  }

  /**
   * VNC port (null)
   * @return qsVncPort
   **/
  
  @Schema(description = "VNC port (null)")
  
  public Integer getQsVncPort() {
 
    return qsVncPort;
  }



  public void setQsVncPort(Integer qsVncPort) { 
    this.qsVncPort = qsVncPort;
  }

  public QuickserverServiceInfo qsRootpass(String qsRootpass) { 

    this.qsRootpass = qsRootpass;
    return this;
  }

  /**
   * Root password
   * @return qsRootpass
   **/
  
  @Schema(description = "Root password")
  
  public String getQsRootpass() {  
    return qsRootpass;
  }



  public void setQsRootpass(String qsRootpass) { 
    this.qsRootpass = qsRootpass;
  }

  public QuickserverServiceInfo qsMac(String qsMac) { 

    this.qsMac = qsMac;
    return this;
  }

  /**
   * MAC address
   * @return qsMac
   **/
  
  @Schema(description = "MAC address")
  
  public String getQsMac() {  
    return qsMac;
  }



  public void setQsMac(String qsMac) { 
    this.qsMac = qsMac;
  }

  public QuickserverServiceInfo qsOs(String qsOs) { 

    this.qsOs = qsOs;
    return this;
  }

  /**
   * Operating system
   * @return qsOs
   **/
  
  @Schema(example = "ubuntu24", description = "Operating system")
  
  public String getQsOs() {  
    return qsOs;
  }



  public void setQsOs(String qsOs) { 
    this.qsOs = qsOs;
  }

  public QuickserverServiceInfo qsVersion(String qsVersion) { 

    this.qsVersion = qsVersion;
    return this;
  }

  /**
   * OS version
   * @return qsVersion
   **/
  
  @Schema(example = "Ubuntu", description = "OS version")
  
  public String getQsVersion() {  
    return qsVersion;
  }



  public void setQsVersion(String qsVersion) { 
    this.qsVersion = qsVersion;
  }

  public QuickserverServiceInfo qsLocation(String qsLocation) { 

    this.qsLocation = qsLocation;
    return this;
  }

  /**
   * Location
   * @return qsLocation
   **/
  
  @Schema(example = "1", description = "Location")
  
  public String getQsLocation() {  
    return qsLocation;
  }



  public void setQsLocation(String qsLocation) { 
    this.qsLocation = qsLocation;
  }

  public QuickserverServiceInfo qsPlatform(String qsPlatform) { 

    this.qsPlatform = qsPlatform;
    return this;
  }

  /**
   * Platform (null)
   * @return qsPlatform
   **/
  
  @Schema(description = "Platform (null)")
  
  public String getQsPlatform() {
 
    return qsPlatform;
  }



  public void setQsPlatform(String qsPlatform) { 
    this.qsPlatform = qsPlatform;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    QuickserverServiceInfo quickserverServiceInfo = (QuickserverServiceInfo) o;
    return Objects.equals(this.qsId, quickserverServiceInfo.qsId) &&
        Objects.equals(this.qsCustid, quickserverServiceInfo.qsCustid) &&
        Objects.equals(this.qsServer, quickserverServiceInfo.qsServer) &&
        Objects.equals(this.qsIp, quickserverServiceInfo.qsIp) &&
        Objects.equals(this.qsIpv6, quickserverServiceInfo.qsIpv6) &&
        Objects.equals(this.qsVzid, quickserverServiceInfo.qsVzid) &&
        Objects.equals(this.qsCurrency, quickserverServiceInfo.qsCurrency) &&
        Objects.equals(this.qsType, quickserverServiceInfo.qsType) &&
        Objects.equals(this.qsOrderDate, quickserverServiceInfo.qsOrderDate) &&
        Objects.equals(this.qsStatus, quickserverServiceInfo.qsStatus) &&
        Objects.equals(this.qsInvoice, quickserverServiceInfo.qsInvoice) &&
        Objects.equals(this.qsCoupon, quickserverServiceInfo.qsCoupon) &&
        Objects.equals(this.qsExtra, quickserverServiceInfo.qsExtra) &&
        Objects.equals(this.qsHostname, quickserverServiceInfo.qsHostname) &&
        Objects.equals(this.qsServerStatus, quickserverServiceInfo.qsServerStatus) &&
        Objects.equals(this.qsComment, quickserverServiceInfo.qsComment) &&
        Objects.equals(this.qsSlices, quickserverServiceInfo.qsSlices) &&
        Objects.equals(this.qsVnc, quickserverServiceInfo.qsVnc) &&
        Objects.equals(this.qsVncPort, quickserverServiceInfo.qsVncPort) &&
        Objects.equals(this.qsRootpass, quickserverServiceInfo.qsRootpass) &&
        Objects.equals(this.qsMac, quickserverServiceInfo.qsMac) &&
        Objects.equals(this.qsOs, quickserverServiceInfo.qsOs) &&
        Objects.equals(this.qsVersion, quickserverServiceInfo.qsVersion) &&
        Objects.equals(this.qsLocation, quickserverServiceInfo.qsLocation) &&
        Objects.equals(this.qsPlatform, quickserverServiceInfo.qsPlatform);
  }

  @Override
  public int hashCode() {
    return Objects.hash(qsId, qsCustid, qsServer, qsIp, qsIpv6, qsVzid, qsCurrency, qsType, qsOrderDate, qsStatus, qsInvoice, qsCoupon, qsExtra, qsHostname, qsServerStatus, qsComment, qsSlices, qsVnc, qsVncPort, qsRootpass, qsMac, qsOs, qsVersion, qsLocation, qsPlatform);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class QuickserverServiceInfo {\n");
    
    sb.append("    qsId: ").append(toIndentedString(qsId)).append("\n");
    sb.append("    qsCustid: ").append(toIndentedString(qsCustid)).append("\n");
    sb.append("    qsServer: ").append(toIndentedString(qsServer)).append("\n");
    sb.append("    qsIp: ").append(toIndentedString(qsIp)).append("\n");
    sb.append("    qsIpv6: ").append(toIndentedString(qsIpv6)).append("\n");
    sb.append("    qsVzid: ").append(toIndentedString(qsVzid)).append("\n");
    sb.append("    qsCurrency: ").append(toIndentedString(qsCurrency)).append("\n");
    sb.append("    qsType: ").append(toIndentedString(qsType)).append("\n");
    sb.append("    qsOrderDate: ").append(toIndentedString(qsOrderDate)).append("\n");
    sb.append("    qsStatus: ").append(toIndentedString(qsStatus)).append("\n");
    sb.append("    qsInvoice: ").append(toIndentedString(qsInvoice)).append("\n");
    sb.append("    qsCoupon: ").append(toIndentedString(qsCoupon)).append("\n");
    sb.append("    qsExtra: ").append(toIndentedString(qsExtra)).append("\n");
    sb.append("    qsHostname: ").append(toIndentedString(qsHostname)).append("\n");
    sb.append("    qsServerStatus: ").append(toIndentedString(qsServerStatus)).append("\n");
    sb.append("    qsComment: ").append(toIndentedString(qsComment)).append("\n");
    sb.append("    qsSlices: ").append(toIndentedString(qsSlices)).append("\n");
    sb.append("    qsVnc: ").append(toIndentedString(qsVnc)).append("\n");
    sb.append("    qsVncPort: ").append(toIndentedString(qsVncPort)).append("\n");
    sb.append("    qsRootpass: ").append(toIndentedString(qsRootpass)).append("\n");
    sb.append("    qsMac: ").append(toIndentedString(qsMac)).append("\n");
    sb.append("    qsOs: ").append(toIndentedString(qsOs)).append("\n");
    sb.append("    qsVersion: ").append(toIndentedString(qsVersion)).append("\n");
    sb.append("    qsLocation: ").append(toIndentedString(qsLocation)).append("\n");
    sb.append("    qsPlatform: ").append(toIndentedString(qsPlatform)).append("\n");
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
