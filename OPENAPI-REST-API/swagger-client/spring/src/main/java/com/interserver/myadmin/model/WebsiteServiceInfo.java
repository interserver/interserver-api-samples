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
 * WebsiteServiceInfo
 */
@Validated
@NotUndefined



public class WebsiteServiceInfo   {
  @JsonProperty("website_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String websiteId = null;

  @JsonProperty("website_server")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String websiteServer = null;

  @JsonProperty("website_type")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String websiteType = null;

  @JsonProperty("website_currency")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String websiteCurrency = null;

  @JsonProperty("website_order_date")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String websiteOrderDate = null;

  @JsonProperty("website_custid")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String websiteCustid = null;

  @JsonProperty("website_ip")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String websiteIp = null;

  @JsonProperty("website_status")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String websiteStatus = null;

  @JsonProperty("website_invoice")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String websiteInvoice = null;

  @JsonProperty("website_coupon")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String websiteCoupon = null;

  @JsonProperty("website_extra")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String websiteExtra = null;

  @JsonProperty("website_hostname")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String websiteHostname = null;

  @JsonProperty("website_comment")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String websiteComment = null;

  @JsonProperty("website_username")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String websiteUsername = null;

  @JsonProperty("website_server_status")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String websiteServerStatus = null;


  public WebsiteServiceInfo websiteId(String websiteId) { 

    this.websiteId = websiteId;
    return this;
  }

  /**
   * Website ID
   * @return websiteId
   **/
  
  @Schema(example = "1196829", description = "Website ID")
  
  public String getWebsiteId() {  
    return websiteId;
  }



  public void setWebsiteId(String websiteId) { 
    this.websiteId = websiteId;
  }

  public WebsiteServiceInfo websiteServer(String websiteServer) { 

    this.websiteServer = websiteServer;
    return this;
  }

  /**
   * Website server
   * @return websiteServer
   **/
  
  @Schema(example = "543", description = "Website server")
  
  public String getWebsiteServer() {  
    return websiteServer;
  }



  public void setWebsiteServer(String websiteServer) { 
    this.websiteServer = websiteServer;
  }

  public WebsiteServiceInfo websiteType(String websiteType) { 

    this.websiteType = websiteType;
    return this;
  }

  /**
   * Website type
   * @return websiteType
   **/
  
  @Schema(example = "11363", description = "Website type")
  
  public String getWebsiteType() {  
    return websiteType;
  }



  public void setWebsiteType(String websiteType) { 
    this.websiteType = websiteType;
  }

  public WebsiteServiceInfo websiteCurrency(String websiteCurrency) { 

    this.websiteCurrency = websiteCurrency;
    return this;
  }

  /**
   * Currency of the website
   * @return websiteCurrency
   **/
  
  @Schema(example = "USD", description = "Currency of the website")
  
  public String getWebsiteCurrency() {  
    return websiteCurrency;
  }



  public void setWebsiteCurrency(String websiteCurrency) { 
    this.websiteCurrency = websiteCurrency;
  }

  public WebsiteServiceInfo websiteOrderDate(String websiteOrderDate) { 

    this.websiteOrderDate = websiteOrderDate;
    return this;
  }

  /**
   * Order date of the website
   * @return websiteOrderDate
   **/
  
  @Schema(example = "2023-03-16T22:51:54.000Z", description = "Order date of the website")
  
  public String getWebsiteOrderDate() {  
    return websiteOrderDate;
  }



  public void setWebsiteOrderDate(String websiteOrderDate) { 
    this.websiteOrderDate = websiteOrderDate;
  }

  public WebsiteServiceInfo websiteCustid(String websiteCustid) { 

    this.websiteCustid = websiteCustid;
    return this;
  }

  /**
   * Customer ID of the website
   * @return websiteCustid
   **/
  
  @Schema(example = "85872", description = "Customer ID of the website")
  
  public String getWebsiteCustid() {  
    return websiteCustid;
  }



  public void setWebsiteCustid(String websiteCustid) { 
    this.websiteCustid = websiteCustid;
  }

  public WebsiteServiceInfo websiteIp(String websiteIp) { 

    this.websiteIp = websiteIp;
    return this;
  }

  /**
   * IP address of the website
   * @return websiteIp
   **/
  
  @Schema(example = "74.50.80.15", description = "IP address of the website")
  
  public String getWebsiteIp() {  
    return websiteIp;
  }



  public void setWebsiteIp(String websiteIp) { 
    this.websiteIp = websiteIp;
  }

  public WebsiteServiceInfo websiteStatus(String websiteStatus) { 

    this.websiteStatus = websiteStatus;
    return this;
  }

  /**
   * Status of the website
   * @return websiteStatus
   **/
  
  @Schema(example = "active", description = "Status of the website")
  
  public String getWebsiteStatus() {  
    return websiteStatus;
  }



  public void setWebsiteStatus(String websiteStatus) { 
    this.websiteStatus = websiteStatus;
  }

  public WebsiteServiceInfo websiteInvoice(String websiteInvoice) { 

    this.websiteInvoice = websiteInvoice;
    return this;
  }

  /**
   * Invoice of the website
   * @return websiteInvoice
   **/
  
  @Schema(example = "20261994", description = "Invoice of the website")
  
  public String getWebsiteInvoice() {  
    return websiteInvoice;
  }



  public void setWebsiteInvoice(String websiteInvoice) { 
    this.websiteInvoice = websiteInvoice;
  }

  public WebsiteServiceInfo websiteCoupon(String websiteCoupon) { 

    this.websiteCoupon = websiteCoupon;
    return this;
  }

  /**
   * Coupon for the website
   * @return websiteCoupon
   **/
  
  @Schema(example = "1690", description = "Coupon for the website")
  
  public String getWebsiteCoupon() {  
    return websiteCoupon;
  }



  public void setWebsiteCoupon(String websiteCoupon) { 
    this.websiteCoupon = websiteCoupon;
  }

  public WebsiteServiceInfo websiteExtra(String websiteExtra) { 

    this.websiteExtra = websiteExtra;
    return this;
  }

  /**
   * Extra information in JSON format for the website
   * @return websiteExtra
   **/
  
  @Schema(example = "[]", description = "Extra information in JSON format for the website")
  
  public String getWebsiteExtra() {  
    return websiteExtra;
  }



  public void setWebsiteExtra(String websiteExtra) { 
    this.websiteExtra = websiteExtra;
  }

  public WebsiteServiceInfo websiteHostname(String websiteHostname) { 

    this.websiteHostname = websiteHostname;
    return this;
  }

  /**
   * Hostname of the website
   * @return websiteHostname
   **/
  
  @Schema(example = "vintagevultures.com", description = "Hostname of the website")
  
  public String getWebsiteHostname() {  
    return websiteHostname;
  }



  public void setWebsiteHostname(String websiteHostname) { 
    this.websiteHostname = websiteHostname;
  }

  public WebsiteServiceInfo websiteComment(String websiteComment) { 

    this.websiteComment = websiteComment;
    return this;
  }

  /**
   * Comment for the website
   * @return websiteComment
   **/
  
  @Schema(description = "Comment for the website")
  
  public String getWebsiteComment() {  
    return websiteComment;
  }



  public void setWebsiteComment(String websiteComment) { 
    this.websiteComment = websiteComment;
  }

  public WebsiteServiceInfo websiteUsername(String websiteUsername) { 

    this.websiteUsername = websiteUsername;
    return this;
  }

  /**
   * Username for the website
   * @return websiteUsername
   **/
  
  @Schema(example = "vintagev", description = "Username for the website")
  
  public String getWebsiteUsername() {  
    return websiteUsername;
  }



  public void setWebsiteUsername(String websiteUsername) { 
    this.websiteUsername = websiteUsername;
  }

  public WebsiteServiceInfo websiteServerStatus(String websiteServerStatus) { 

    this.websiteServerStatus = websiteServerStatus;
    return this;
  }

  /**
   * Server status of the website
   * @return websiteServerStatus
   **/
  
  @Schema(description = "Server status of the website")
  
  public String getWebsiteServerStatus() {  
    return websiteServerStatus;
  }



  public void setWebsiteServerStatus(String websiteServerStatus) { 
    this.websiteServerStatus = websiteServerStatus;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    WebsiteServiceInfo websiteServiceInfo = (WebsiteServiceInfo) o;
    return Objects.equals(this.websiteId, websiteServiceInfo.websiteId) &&
        Objects.equals(this.websiteServer, websiteServiceInfo.websiteServer) &&
        Objects.equals(this.websiteType, websiteServiceInfo.websiteType) &&
        Objects.equals(this.websiteCurrency, websiteServiceInfo.websiteCurrency) &&
        Objects.equals(this.websiteOrderDate, websiteServiceInfo.websiteOrderDate) &&
        Objects.equals(this.websiteCustid, websiteServiceInfo.websiteCustid) &&
        Objects.equals(this.websiteIp, websiteServiceInfo.websiteIp) &&
        Objects.equals(this.websiteStatus, websiteServiceInfo.websiteStatus) &&
        Objects.equals(this.websiteInvoice, websiteServiceInfo.websiteInvoice) &&
        Objects.equals(this.websiteCoupon, websiteServiceInfo.websiteCoupon) &&
        Objects.equals(this.websiteExtra, websiteServiceInfo.websiteExtra) &&
        Objects.equals(this.websiteHostname, websiteServiceInfo.websiteHostname) &&
        Objects.equals(this.websiteComment, websiteServiceInfo.websiteComment) &&
        Objects.equals(this.websiteUsername, websiteServiceInfo.websiteUsername) &&
        Objects.equals(this.websiteServerStatus, websiteServiceInfo.websiteServerStatus);
  }

  @Override
  public int hashCode() {
    return Objects.hash(websiteId, websiteServer, websiteType, websiteCurrency, websiteOrderDate, websiteCustid, websiteIp, websiteStatus, websiteInvoice, websiteCoupon, websiteExtra, websiteHostname, websiteComment, websiteUsername, websiteServerStatus);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class WebsiteServiceInfo {\n");
    
    sb.append("    websiteId: ").append(toIndentedString(websiteId)).append("\n");
    sb.append("    websiteServer: ").append(toIndentedString(websiteServer)).append("\n");
    sb.append("    websiteType: ").append(toIndentedString(websiteType)).append("\n");
    sb.append("    websiteCurrency: ").append(toIndentedString(websiteCurrency)).append("\n");
    sb.append("    websiteOrderDate: ").append(toIndentedString(websiteOrderDate)).append("\n");
    sb.append("    websiteCustid: ").append(toIndentedString(websiteCustid)).append("\n");
    sb.append("    websiteIp: ").append(toIndentedString(websiteIp)).append("\n");
    sb.append("    websiteStatus: ").append(toIndentedString(websiteStatus)).append("\n");
    sb.append("    websiteInvoice: ").append(toIndentedString(websiteInvoice)).append("\n");
    sb.append("    websiteCoupon: ").append(toIndentedString(websiteCoupon)).append("\n");
    sb.append("    websiteExtra: ").append(toIndentedString(websiteExtra)).append("\n");
    sb.append("    websiteHostname: ").append(toIndentedString(websiteHostname)).append("\n");
    sb.append("    websiteComment: ").append(toIndentedString(websiteComment)).append("\n");
    sb.append("    websiteUsername: ").append(toIndentedString(websiteUsername)).append("\n");
    sb.append("    websiteServerStatus: ").append(toIndentedString(websiteServerStatus)).append("\n");
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
