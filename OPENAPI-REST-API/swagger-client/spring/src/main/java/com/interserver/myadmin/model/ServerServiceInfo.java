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
 * ServerServiceInfo
 */
@Validated
@NotUndefined



public class ServerServiceInfo   {
  @JsonProperty("server_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serverId = null;

  @JsonProperty("server_hostname")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serverHostname = null;

  @JsonProperty("server_custid")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serverCustid = null;

  @JsonProperty("server_type")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serverType = null;

  @JsonProperty("server_currency")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serverCurrency = null;

  @JsonProperty("server_order_date")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serverOrderDate = null;

  @JsonProperty("server_invoice")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serverInvoice = null;

  @JsonProperty("server_coupon")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serverCoupon = null;

  @JsonProperty("server_status")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serverStatus = null;

  @JsonProperty("server_root")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serverRoot = null;

  @JsonProperty("server_dedicated_tag")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serverDedicatedTag = null;

  @JsonProperty("server_custom_tag")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serverCustomTag = null;

  @JsonProperty("server_comment")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serverComment = null;

  @JsonProperty("server_initial_bill")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serverInitialBill = null;

  @JsonProperty("server_hardware")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serverHardware = null;

  @JsonProperty("server_ips")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serverIps = null;

  @JsonProperty("server_monthly_bill")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serverMonthlyBill = null;

  @JsonProperty("server_setup")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serverSetup = null;

  @JsonProperty("server_discount")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serverDiscount = null;

  @JsonProperty("server_rep")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serverRep = null;

  @JsonProperty("server_date")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serverDate = null;

  @JsonProperty("server_total_cost")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serverTotalCost = null;

  @JsonProperty("server_location")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serverLocation = null;

  @JsonProperty("server_hardware_ordered")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serverHardwareOrdered = null;

  @JsonProperty("server_billed")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serverBilled = null;

  @JsonProperty("server_welcome_email")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serverWelcomeEmail = null;

  @JsonProperty("server_dedicated_cpu")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serverDedicatedCpu = null;

  @JsonProperty("server_dedicated_memory")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serverDedicatedMemory = null;

  @JsonProperty("server_dedicated_hd1")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serverDedicatedHd1 = null;

  @JsonProperty("server_dedicated_hd2")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serverDedicatedHd2 = null;

  @JsonProperty("server_dedicated_bandwidth")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serverDedicatedBandwidth = null;

  @JsonProperty("server_dedicated_ips")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serverDedicatedIps = null;

  @JsonProperty("server_dedicated_os")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serverDedicatedOs = null;

  @JsonProperty("server_dedicated_cp")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serverDedicatedCp = null;

  @JsonProperty("server_dedicated_raid")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serverDedicatedRaid = null;

  @JsonProperty("server_extra")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serverExtra = null;


  public ServerServiceInfo serverId(String serverId) { 

    this.serverId = serverId;
    return this;
  }

  /**
   * The ID of the server.
   * @return serverId
   **/
  
  @Schema(example = "16058", description = "The ID of the server.")
  
  public String getServerId() {  
    return serverId;
  }



  public void setServerId(String serverId) { 
    this.serverId = serverId;
  }

  public ServerServiceInfo serverHostname(String serverHostname) { 

    this.serverHostname = serverHostname;
    return this;
  }

  /**
   * The hostname of the server.
   * @return serverHostname
   **/
  
  @Schema(example = "myserver.host.com", description = "The hostname of the server.")
  
  public String getServerHostname() {  
    return serverHostname;
  }



  public void setServerHostname(String serverHostname) { 
    this.serverHostname = serverHostname;
  }

  public ServerServiceInfo serverCustid(String serverCustid) { 

    this.serverCustid = serverCustid;
    return this;
  }

  /**
   * The customer ID associated with the server.
   * @return serverCustid
   **/
  
  @Schema(example = "771282", description = "The customer ID associated with the server.")
  
  public String getServerCustid() {  
    return serverCustid;
  }



  public void setServerCustid(String serverCustid) { 
    this.serverCustid = serverCustid;
  }

  public ServerServiceInfo serverType(String serverType) { 

    this.serverType = serverType;
    return this;
  }

  /**
   * The type of the server.
   * @return serverType
   **/
  
  @Schema(example = "600", description = "The type of the server.")
  
  public String getServerType() {  
    return serverType;
  }



  public void setServerType(String serverType) { 
    this.serverType = serverType;
  }

  public ServerServiceInfo serverCurrency(String serverCurrency) { 

    this.serverCurrency = serverCurrency;
    return this;
  }

  /**
   * The currency used for billing.
   * @return serverCurrency
   **/
  
  @Schema(example = "USD", description = "The currency used for billing.")
  
  public String getServerCurrency() {  
    return serverCurrency;
  }



  public void setServerCurrency(String serverCurrency) { 
    this.serverCurrency = serverCurrency;
  }

  public ServerServiceInfo serverOrderDate(String serverOrderDate) { 

    this.serverOrderDate = serverOrderDate;
    return this;
  }

  /**
   * The date when the server was ordered.
   * @return serverOrderDate
   **/
  
  @Schema(example = "2020-05-08T17:22:36.000Z", description = "The date when the server was ordered.")
  
  public String getServerOrderDate() {  
    return serverOrderDate;
  }



  public void setServerOrderDate(String serverOrderDate) { 
    this.serverOrderDate = serverOrderDate;
  }

  public ServerServiceInfo serverInvoice(String serverInvoice) { 

    this.serverInvoice = serverInvoice;
    return this;
  }

  /**
   * The invoice number for the server.
   * @return serverInvoice
   **/
  
  @Schema(example = "18738142", description = "The invoice number for the server.")
  
  public String getServerInvoice() {  
    return serverInvoice;
  }



  public void setServerInvoice(String serverInvoice) { 
    this.serverInvoice = serverInvoice;
  }

  public ServerServiceInfo serverCoupon(String serverCoupon) { 

    this.serverCoupon = serverCoupon;
    return this;
  }

  /**
   * The coupon associated with the server.
   * @return serverCoupon
   **/
  
  @Schema(example = "0", description = "The coupon associated with the server.")
  
  public String getServerCoupon() {  
    return serverCoupon;
  }



  public void setServerCoupon(String serverCoupon) { 
    this.serverCoupon = serverCoupon;
  }

  public ServerServiceInfo serverStatus(String serverStatus) { 

    this.serverStatus = serverStatus;
    return this;
  }

  /**
   * The status of the server.
   * @return serverStatus
   **/
  
  @Schema(example = "active", description = "The status of the server.")
  
  public String getServerStatus() {  
    return serverStatus;
  }



  public void setServerStatus(String serverStatus) { 
    this.serverStatus = serverStatus;
  }

  public ServerServiceInfo serverRoot(String serverRoot) { 

    this.serverRoot = serverRoot;
    return this;
  }

  /**
   * The root of the server.
   * @return serverRoot
   **/
  
  @Schema(description = "The root of the server.")
  
  public String getServerRoot() {  
    return serverRoot;
  }



  public void setServerRoot(String serverRoot) { 
    this.serverRoot = serverRoot;
  }

  public ServerServiceInfo serverDedicatedTag(String serverDedicatedTag) { 

    this.serverDedicatedTag = serverDedicatedTag;
    return this;
  }

  /**
   * The dedicated tag of the server.
   * @return serverDedicatedTag
   **/
  
  @Schema(example = "0", description = "The dedicated tag of the server.")
  
  public String getServerDedicatedTag() {  
    return serverDedicatedTag;
  }



  public void setServerDedicatedTag(String serverDedicatedTag) { 
    this.serverDedicatedTag = serverDedicatedTag;
  }

  public ServerServiceInfo serverCustomTag(String serverCustomTag) { 

    this.serverCustomTag = serverCustomTag;
    return this;
  }

  /**
   * The custom tag of the server.
   * @return serverCustomTag
   **/
  
  @Schema(description = "The custom tag of the server.")
  
  public String getServerCustomTag() {  
    return serverCustomTag;
  }



  public void setServerCustomTag(String serverCustomTag) { 
    this.serverCustomTag = serverCustomTag;
  }

  public ServerServiceInfo serverComment(String serverComment) { 

    this.serverComment = serverComment;
    return this;
  }

  /**
   * Comments related to the server.
   * @return serverComment
   **/
  
  @Schema(description = "Comments related to the server.")
  
  public String getServerComment() {  
    return serverComment;
  }



  public void setServerComment(String serverComment) { 
    this.serverComment = serverComment;
  }

  public ServerServiceInfo serverInitialBill(String serverInitialBill) { 

    this.serverInitialBill = serverInitialBill;
    return this;
  }

  /**
   * The initial billing amount for the server.
   * @return serverInitialBill
   **/
  
  @Schema(example = "0", description = "The initial billing amount for the server.")
  
  public String getServerInitialBill() {  
    return serverInitialBill;
  }



  public void setServerInitialBill(String serverInitialBill) { 
    this.serverInitialBill = serverInitialBill;
  }

  public ServerServiceInfo serverHardware(String serverHardware) { 

    this.serverHardware = serverHardware;
    return this;
  }

  /**
   * The hardware information of the server.
   * @return serverHardware
   **/
  
  @Schema(example = "0", description = "The hardware information of the server.")
  
  public String getServerHardware() {  
    return serverHardware;
  }



  public void setServerHardware(String serverHardware) { 
    this.serverHardware = serverHardware;
  }

  public ServerServiceInfo serverIps(String serverIps) { 

    this.serverIps = serverIps;
    return this;
  }

  /**
   * The number of IPs associated with the server.
   * @return serverIps
   **/
  
  @Schema(example = "0", description = "The number of IPs associated with the server.")
  
  public String getServerIps() {  
    return serverIps;
  }



  public void setServerIps(String serverIps) { 
    this.serverIps = serverIps;
  }

  public ServerServiceInfo serverMonthlyBill(String serverMonthlyBill) { 

    this.serverMonthlyBill = serverMonthlyBill;
    return this;
  }

  /**
   * The monthly billing amount for the server.
   * @return serverMonthlyBill
   **/
  
  @Schema(example = "0", description = "The monthly billing amount for the server.")
  
  public String getServerMonthlyBill() {  
    return serverMonthlyBill;
  }



  public void setServerMonthlyBill(String serverMonthlyBill) { 
    this.serverMonthlyBill = serverMonthlyBill;
  }

  public ServerServiceInfo serverSetup(String serverSetup) { 

    this.serverSetup = serverSetup;
    return this;
  }

  /**
   * The setup status of the server.
   * @return serverSetup
   **/
  
  @Schema(example = "0", description = "The setup status of the server.")
  
  public String getServerSetup() {  
    return serverSetup;
  }



  public void setServerSetup(String serverSetup) { 
    this.serverSetup = serverSetup;
  }

  public ServerServiceInfo serverDiscount(String serverDiscount) { 

    this.serverDiscount = serverDiscount;
    return this;
  }

  /**
   * Discount information for the server.
   * @return serverDiscount
   **/
  
  @Schema(description = "Discount information for the server.")
  
  public String getServerDiscount() {  
    return serverDiscount;
  }



  public void setServerDiscount(String serverDiscount) { 
    this.serverDiscount = serverDiscount;
  }

  public ServerServiceInfo serverRep(String serverRep) { 

    this.serverRep = serverRep;
    return this;
  }

  /**
   * The reputation of the server.
   * @return serverRep
   **/
  
  @Schema(example = "0", description = "The reputation of the server.")
  
  public String getServerRep() {  
    return serverRep;
  }



  public void setServerRep(String serverRep) { 
    this.serverRep = serverRep;
  }

  public ServerServiceInfo serverDate(String serverDate) { 

    this.serverDate = serverDate;
    return this;
  }

  /**
   * The date related to the server.
   * @return serverDate
   **/
  
  @Schema(example = "1588972956", description = "The date related to the server.")
  
  public String getServerDate() {  
    return serverDate;
  }



  public void setServerDate(String serverDate) { 
    this.serverDate = serverDate;
  }

  public ServerServiceInfo serverTotalCost(String serverTotalCost) { 

    this.serverTotalCost = serverTotalCost;
    return this;
  }

  /**
   * The total cost of the server.
   * @return serverTotalCost
   **/
  
  @Schema(example = "230", description = "The total cost of the server.")
  
  public String getServerTotalCost() {  
    return serverTotalCost;
  }



  public void setServerTotalCost(String serverTotalCost) { 
    this.serverTotalCost = serverTotalCost;
  }

  public ServerServiceInfo serverLocation(String serverLocation) { 

    this.serverLocation = serverLocation;
    return this;
  }

  /**
   * The location of the server.
   * @return serverLocation
   **/
  
  @Schema(description = "The location of the server.")
  
  public String getServerLocation() {  
    return serverLocation;
  }



  public void setServerLocation(String serverLocation) { 
    this.serverLocation = serverLocation;
  }

  public ServerServiceInfo serverHardwareOrdered(String serverHardwareOrdered) { 

    this.serverHardwareOrdered = serverHardwareOrdered;
    return this;
  }

  /**
   * The ordered hardware for the server.
   * @return serverHardwareOrdered
   **/
  
  @Schema(example = "0", description = "The ordered hardware for the server.")
  
  public String getServerHardwareOrdered() {  
    return serverHardwareOrdered;
  }



  public void setServerHardwareOrdered(String serverHardwareOrdered) { 
    this.serverHardwareOrdered = serverHardwareOrdered;
  }

  public ServerServiceInfo serverBilled(String serverBilled) { 

    this.serverBilled = serverBilled;
    return this;
  }

  /**
   * The billed amount for the server.
   * @return serverBilled
   **/
  
  @Schema(example = "0", description = "The billed amount for the server.")
  
  public String getServerBilled() {  
    return serverBilled;
  }



  public void setServerBilled(String serverBilled) { 
    this.serverBilled = serverBilled;
  }

  public ServerServiceInfo serverWelcomeEmail(String serverWelcomeEmail) { 

    this.serverWelcomeEmail = serverWelcomeEmail;
    return this;
  }

  /**
   * Indicates whether a welcome email was sent.
   * @return serverWelcomeEmail
   **/
  
  @Schema(example = "1", description = "Indicates whether a welcome email was sent.")
  
  public String getServerWelcomeEmail() {  
    return serverWelcomeEmail;
  }



  public void setServerWelcomeEmail(String serverWelcomeEmail) { 
    this.serverWelcomeEmail = serverWelcomeEmail;
  }

  public ServerServiceInfo serverDedicatedCpu(String serverDedicatedCpu) { 

    this.serverDedicatedCpu = serverDedicatedCpu;
    return this;
  }

  /**
   * The number of dedicated CPUs for the server.
   * @return serverDedicatedCpu
   **/
  
  @Schema(example = "38", description = "The number of dedicated CPUs for the server.")
  
  public String getServerDedicatedCpu() {  
    return serverDedicatedCpu;
  }



  public void setServerDedicatedCpu(String serverDedicatedCpu) { 
    this.serverDedicatedCpu = serverDedicatedCpu;
  }

  public ServerServiceInfo serverDedicatedMemory(String serverDedicatedMemory) { 

    this.serverDedicatedMemory = serverDedicatedMemory;
    return this;
  }

  /**
   * The amount of dedicated memory for the server.
   * @return serverDedicatedMemory
   **/
  
  @Schema(example = "22", description = "The amount of dedicated memory for the server.")
  
  public String getServerDedicatedMemory() {  
    return serverDedicatedMemory;
  }



  public void setServerDedicatedMemory(String serverDedicatedMemory) { 
    this.serverDedicatedMemory = serverDedicatedMemory;
  }

  public ServerServiceInfo serverDedicatedHd1(String serverDedicatedHd1) { 

    this.serverDedicatedHd1 = serverDedicatedHd1;
    return this;
  }

  /**
   * The size of the first dedicated hard drive.
   * @return serverDedicatedHd1
   **/
  
  @Schema(example = "20", description = "The size of the first dedicated hard drive.")
  
  public String getServerDedicatedHd1() {  
    return serverDedicatedHd1;
  }



  public void setServerDedicatedHd1(String serverDedicatedHd1) { 
    this.serverDedicatedHd1 = serverDedicatedHd1;
  }

  public ServerServiceInfo serverDedicatedHd2(String serverDedicatedHd2) { 

    this.serverDedicatedHd2 = serverDedicatedHd2;
    return this;
  }

  /**
   * The size of the second dedicated hard drive.
   * @return serverDedicatedHd2
   **/
  
  @Schema(description = "The size of the second dedicated hard drive.")
  
  public String getServerDedicatedHd2() {  
    return serverDedicatedHd2;
  }



  public void setServerDedicatedHd2(String serverDedicatedHd2) { 
    this.serverDedicatedHd2 = serverDedicatedHd2;
  }

  public ServerServiceInfo serverDedicatedBandwidth(String serverDedicatedBandwidth) { 

    this.serverDedicatedBandwidth = serverDedicatedBandwidth;
    return this;
  }

  /**
   * The bandwidth of the server.
   * @return serverDedicatedBandwidth
   **/
  
  @Schema(example = "3", description = "The bandwidth of the server.")
  
  public String getServerDedicatedBandwidth() {  
    return serverDedicatedBandwidth;
  }



  public void setServerDedicatedBandwidth(String serverDedicatedBandwidth) { 
    this.serverDedicatedBandwidth = serverDedicatedBandwidth;
  }

  public ServerServiceInfo serverDedicatedIps(String serverDedicatedIps) { 

    this.serverDedicatedIps = serverDedicatedIps;
    return this;
  }

  /**
   * The number of dedicated IPs for the server.
   * @return serverDedicatedIps
   **/
  
  @Schema(example = "5", description = "The number of dedicated IPs for the server.")
  
  public String getServerDedicatedIps() {  
    return serverDedicatedIps;
  }



  public void setServerDedicatedIps(String serverDedicatedIps) { 
    this.serverDedicatedIps = serverDedicatedIps;
  }

  public ServerServiceInfo serverDedicatedOs(String serverDedicatedOs) { 

    this.serverDedicatedOs = serverDedicatedOs;
    return this;
  }

  /**
   * The operating system of the server.
   * @return serverDedicatedOs
   **/
  
  @Schema(example = "30", description = "The operating system of the server.")
  
  public String getServerDedicatedOs() {  
    return serverDedicatedOs;
  }



  public void setServerDedicatedOs(String serverDedicatedOs) { 
    this.serverDedicatedOs = serverDedicatedOs;
  }

  public ServerServiceInfo serverDedicatedCp(String serverDedicatedCp) { 

    this.serverDedicatedCp = serverDedicatedCp;
    return this;
  }

  /**
   * The control panel of the server.
   * @return serverDedicatedCp
   **/
  
  @Schema(description = "The control panel of the server.")
  
  public String getServerDedicatedCp() {  
    return serverDedicatedCp;
  }



  public void setServerDedicatedCp(String serverDedicatedCp) { 
    this.serverDedicatedCp = serverDedicatedCp;
  }

  public ServerServiceInfo serverDedicatedRaid(String serverDedicatedRaid) { 

    this.serverDedicatedRaid = serverDedicatedRaid;
    return this;
  }

  /**
   * The RAID configuration of the server.
   * @return serverDedicatedRaid
   **/
  
  @Schema(example = "0", description = "The RAID configuration of the server.")
  
  public String getServerDedicatedRaid() {  
    return serverDedicatedRaid;
  }



  public void setServerDedicatedRaid(String serverDedicatedRaid) { 
    this.serverDedicatedRaid = serverDedicatedRaid;
  }

  public ServerServiceInfo serverExtra(String serverExtra) { 

    this.serverExtra = serverExtra;
    return this;
  }

  /**
   * Additional information about the server.
   * @return serverExtra
   **/
  
  @Schema(example = "[]", description = "Additional information about the server.")
  
  public String getServerExtra() {  
    return serverExtra;
  }



  public void setServerExtra(String serverExtra) { 
    this.serverExtra = serverExtra;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ServerServiceInfo serverServiceInfo = (ServerServiceInfo) o;
    return Objects.equals(this.serverId, serverServiceInfo.serverId) &&
        Objects.equals(this.serverHostname, serverServiceInfo.serverHostname) &&
        Objects.equals(this.serverCustid, serverServiceInfo.serverCustid) &&
        Objects.equals(this.serverType, serverServiceInfo.serverType) &&
        Objects.equals(this.serverCurrency, serverServiceInfo.serverCurrency) &&
        Objects.equals(this.serverOrderDate, serverServiceInfo.serverOrderDate) &&
        Objects.equals(this.serverInvoice, serverServiceInfo.serverInvoice) &&
        Objects.equals(this.serverCoupon, serverServiceInfo.serverCoupon) &&
        Objects.equals(this.serverStatus, serverServiceInfo.serverStatus) &&
        Objects.equals(this.serverRoot, serverServiceInfo.serverRoot) &&
        Objects.equals(this.serverDedicatedTag, serverServiceInfo.serverDedicatedTag) &&
        Objects.equals(this.serverCustomTag, serverServiceInfo.serverCustomTag) &&
        Objects.equals(this.serverComment, serverServiceInfo.serverComment) &&
        Objects.equals(this.serverInitialBill, serverServiceInfo.serverInitialBill) &&
        Objects.equals(this.serverHardware, serverServiceInfo.serverHardware) &&
        Objects.equals(this.serverIps, serverServiceInfo.serverIps) &&
        Objects.equals(this.serverMonthlyBill, serverServiceInfo.serverMonthlyBill) &&
        Objects.equals(this.serverSetup, serverServiceInfo.serverSetup) &&
        Objects.equals(this.serverDiscount, serverServiceInfo.serverDiscount) &&
        Objects.equals(this.serverRep, serverServiceInfo.serverRep) &&
        Objects.equals(this.serverDate, serverServiceInfo.serverDate) &&
        Objects.equals(this.serverTotalCost, serverServiceInfo.serverTotalCost) &&
        Objects.equals(this.serverLocation, serverServiceInfo.serverLocation) &&
        Objects.equals(this.serverHardwareOrdered, serverServiceInfo.serverHardwareOrdered) &&
        Objects.equals(this.serverBilled, serverServiceInfo.serverBilled) &&
        Objects.equals(this.serverWelcomeEmail, serverServiceInfo.serverWelcomeEmail) &&
        Objects.equals(this.serverDedicatedCpu, serverServiceInfo.serverDedicatedCpu) &&
        Objects.equals(this.serverDedicatedMemory, serverServiceInfo.serverDedicatedMemory) &&
        Objects.equals(this.serverDedicatedHd1, serverServiceInfo.serverDedicatedHd1) &&
        Objects.equals(this.serverDedicatedHd2, serverServiceInfo.serverDedicatedHd2) &&
        Objects.equals(this.serverDedicatedBandwidth, serverServiceInfo.serverDedicatedBandwidth) &&
        Objects.equals(this.serverDedicatedIps, serverServiceInfo.serverDedicatedIps) &&
        Objects.equals(this.serverDedicatedOs, serverServiceInfo.serverDedicatedOs) &&
        Objects.equals(this.serverDedicatedCp, serverServiceInfo.serverDedicatedCp) &&
        Objects.equals(this.serverDedicatedRaid, serverServiceInfo.serverDedicatedRaid) &&
        Objects.equals(this.serverExtra, serverServiceInfo.serverExtra);
  }

  @Override
  public int hashCode() {
    return Objects.hash(serverId, serverHostname, serverCustid, serverType, serverCurrency, serverOrderDate, serverInvoice, serverCoupon, serverStatus, serverRoot, serverDedicatedTag, serverCustomTag, serverComment, serverInitialBill, serverHardware, serverIps, serverMonthlyBill, serverSetup, serverDiscount, serverRep, serverDate, serverTotalCost, serverLocation, serverHardwareOrdered, serverBilled, serverWelcomeEmail, serverDedicatedCpu, serverDedicatedMemory, serverDedicatedHd1, serverDedicatedHd2, serverDedicatedBandwidth, serverDedicatedIps, serverDedicatedOs, serverDedicatedCp, serverDedicatedRaid, serverExtra);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ServerServiceInfo {\n");
    
    sb.append("    serverId: ").append(toIndentedString(serverId)).append("\n");
    sb.append("    serverHostname: ").append(toIndentedString(serverHostname)).append("\n");
    sb.append("    serverCustid: ").append(toIndentedString(serverCustid)).append("\n");
    sb.append("    serverType: ").append(toIndentedString(serverType)).append("\n");
    sb.append("    serverCurrency: ").append(toIndentedString(serverCurrency)).append("\n");
    sb.append("    serverOrderDate: ").append(toIndentedString(serverOrderDate)).append("\n");
    sb.append("    serverInvoice: ").append(toIndentedString(serverInvoice)).append("\n");
    sb.append("    serverCoupon: ").append(toIndentedString(serverCoupon)).append("\n");
    sb.append("    serverStatus: ").append(toIndentedString(serverStatus)).append("\n");
    sb.append("    serverRoot: ").append(toIndentedString(serverRoot)).append("\n");
    sb.append("    serverDedicatedTag: ").append(toIndentedString(serverDedicatedTag)).append("\n");
    sb.append("    serverCustomTag: ").append(toIndentedString(serverCustomTag)).append("\n");
    sb.append("    serverComment: ").append(toIndentedString(serverComment)).append("\n");
    sb.append("    serverInitialBill: ").append(toIndentedString(serverInitialBill)).append("\n");
    sb.append("    serverHardware: ").append(toIndentedString(serverHardware)).append("\n");
    sb.append("    serverIps: ").append(toIndentedString(serverIps)).append("\n");
    sb.append("    serverMonthlyBill: ").append(toIndentedString(serverMonthlyBill)).append("\n");
    sb.append("    serverSetup: ").append(toIndentedString(serverSetup)).append("\n");
    sb.append("    serverDiscount: ").append(toIndentedString(serverDiscount)).append("\n");
    sb.append("    serverRep: ").append(toIndentedString(serverRep)).append("\n");
    sb.append("    serverDate: ").append(toIndentedString(serverDate)).append("\n");
    sb.append("    serverTotalCost: ").append(toIndentedString(serverTotalCost)).append("\n");
    sb.append("    serverLocation: ").append(toIndentedString(serverLocation)).append("\n");
    sb.append("    serverHardwareOrdered: ").append(toIndentedString(serverHardwareOrdered)).append("\n");
    sb.append("    serverBilled: ").append(toIndentedString(serverBilled)).append("\n");
    sb.append("    serverWelcomeEmail: ").append(toIndentedString(serverWelcomeEmail)).append("\n");
    sb.append("    serverDedicatedCpu: ").append(toIndentedString(serverDedicatedCpu)).append("\n");
    sb.append("    serverDedicatedMemory: ").append(toIndentedString(serverDedicatedMemory)).append("\n");
    sb.append("    serverDedicatedHd1: ").append(toIndentedString(serverDedicatedHd1)).append("\n");
    sb.append("    serverDedicatedHd2: ").append(toIndentedString(serverDedicatedHd2)).append("\n");
    sb.append("    serverDedicatedBandwidth: ").append(toIndentedString(serverDedicatedBandwidth)).append("\n");
    sb.append("    serverDedicatedIps: ").append(toIndentedString(serverDedicatedIps)).append("\n");
    sb.append("    serverDedicatedOs: ").append(toIndentedString(serverDedicatedOs)).append("\n");
    sb.append("    serverDedicatedCp: ").append(toIndentedString(serverDedicatedCp)).append("\n");
    sb.append("    serverDedicatedRaid: ").append(toIndentedString(serverDedicatedRaid)).append("\n");
    sb.append("    serverExtra: ").append(toIndentedString(serverExtra)).append("\n");
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
