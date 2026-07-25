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
 * Core service record for a backup storage service including ID, status, quota, and billing details.
 */
@Schema(description = "Core service record for a backup storage service including ID, status, quota, and billing details.")
@Validated
@NotUndefined



public class BackupServiceInfo   {
  @JsonProperty("backup_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String backupId = null;

  @JsonProperty("backup_server")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String backupServer = null;

  @JsonProperty("backup_username")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String backupUsername = null;

  @JsonProperty("backup_type")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String backupType = null;

  @JsonProperty("backup_currency")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String backupCurrency = null;

  @JsonProperty("backup_order_date")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String backupOrderDate = null;

  @JsonProperty("backup_custid")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String backupCustid = null;

  @JsonProperty("backup_quota")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String backupQuota = null;

  @JsonProperty("backup_ip")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String backupIp = null;

  @JsonProperty("backup_status")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String backupStatus = null;

  @JsonProperty("backup_invoice")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String backupInvoice = null;

  @JsonProperty("backup_coupon")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String backupCoupon = null;

  @JsonProperty("backup_extra")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String backupExtra = null;

  @JsonProperty("backup_server_status")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String backupServerStatus = null;

  @JsonProperty("backup_comment")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String backupComment = null;


  public BackupServiceInfo backupId(String backupId) { 

    this.backupId = backupId;
    return this;
  }

  /**
   * Backup ID.
   * @return backupId
   **/
  
  @Schema(example = "21163", description = "Backup ID.")
  
  public String getBackupId() {  
    return backupId;
  }



  public void setBackupId(String backupId) { 
    this.backupId = backupId;
  }

  public BackupServiceInfo backupServer(String backupServer) { 

    this.backupServer = backupServer;
    return this;
  }

  /**
   * Backup server ID.
   * @return backupServer
   **/
  
  @Schema(example = "38", description = "Backup server ID.")
  
  public String getBackupServer() {  
    return backupServer;
  }



  public void setBackupServer(String backupServer) { 
    this.backupServer = backupServer;
  }

  public BackupServiceInfo backupUsername(String backupUsername) { 

    this.backupUsername = backupUsername;
    return this;
  }

  /**
   * Backup username.
   * @return backupUsername
   **/
  
  @Schema(example = "st21163", description = "Backup username.")
  
  public String getBackupUsername() {  
    return backupUsername;
  }



  public void setBackupUsername(String backupUsername) { 
    this.backupUsername = backupUsername;
  }

  public BackupServiceInfo backupType(String backupType) { 

    this.backupType = backupType;
    return this;
  }

  /**
   * Backup type.
   * @return backupType
   **/
  
  @Schema(example = "10831", description = "Backup type.")
  
  public String getBackupType() {  
    return backupType;
  }



  public void setBackupType(String backupType) { 
    this.backupType = backupType;
  }

  public BackupServiceInfo backupCurrency(String backupCurrency) { 

    this.backupCurrency = backupCurrency;
    return this;
  }

  /**
   * Backup currency.
   * @return backupCurrency
   **/
  
  @Schema(example = "USD", description = "Backup currency.")
  
  public String getBackupCurrency() {  
    return backupCurrency;
  }



  public void setBackupCurrency(String backupCurrency) { 
    this.backupCurrency = backupCurrency;
  }

  public BackupServiceInfo backupOrderDate(String backupOrderDate) { 

    this.backupOrderDate = backupOrderDate;
    return this;
  }

  /**
   * Backup order date.
   * @return backupOrderDate
   **/
  
  @Schema(example = "2021-12-29T14:09:57.000Z", description = "Backup order date.")
  
  public String getBackupOrderDate() {  
    return backupOrderDate;
  }



  public void setBackupOrderDate(String backupOrderDate) { 
    this.backupOrderDate = backupOrderDate;
  }

  public BackupServiceInfo backupCustid(String backupCustid) { 

    this.backupCustid = backupCustid;
    return this;
  }

  /**
   * Backup customer ID.
   * @return backupCustid
   **/
  
  @Schema(example = "2773", description = "Backup customer ID.")
  
  public String getBackupCustid() {  
    return backupCustid;
  }



  public void setBackupCustid(String backupCustid) { 
    this.backupCustid = backupCustid;
  }

  public BackupServiceInfo backupQuota(String backupQuota) { 

    this.backupQuota = backupQuota;
    return this;
  }

  /**
   * Backup quota.
   * @return backupQuota
   **/
  
  @Schema(example = "0", description = "Backup quota.")
  
  public String getBackupQuota() {  
    return backupQuota;
  }



  public void setBackupQuota(String backupQuota) { 
    this.backupQuota = backupQuota;
  }

  public BackupServiceInfo backupIp(String backupIp) { 

    this.backupIp = backupIp;
    return this;
  }

  /**
   * Backup IP address.
   * @return backupIp
   **/
  
  @Schema(example = "64.20.55.234", description = "Backup IP address.")
  
  public String getBackupIp() {  
    return backupIp;
  }



  public void setBackupIp(String backupIp) { 
    this.backupIp = backupIp;
  }

  public BackupServiceInfo backupStatus(String backupStatus) { 

    this.backupStatus = backupStatus;
    return this;
  }

  /**
   * Backup status.
   * @return backupStatus
   **/
  
  @Schema(example = "canceled", description = "Backup status.")
  
  public String getBackupStatus() {  
    return backupStatus;
  }



  public void setBackupStatus(String backupStatus) { 
    this.backupStatus = backupStatus;
  }

  public BackupServiceInfo backupInvoice(String backupInvoice) { 

    this.backupInvoice = backupInvoice;
    return this;
  }

  /**
   * Backup invoice.
   * @return backupInvoice
   **/
  
  @Schema(example = "19591007", description = "Backup invoice.")
  
  public String getBackupInvoice() {  
    return backupInvoice;
  }



  public void setBackupInvoice(String backupInvoice) { 
    this.backupInvoice = backupInvoice;
  }

  public BackupServiceInfo backupCoupon(String backupCoupon) { 

    this.backupCoupon = backupCoupon;
    return this;
  }

  /**
   * Backup coupon.
   * @return backupCoupon
   **/
  
  @Schema(example = "0", description = "Backup coupon.")
  
  public String getBackupCoupon() {  
    return backupCoupon;
  }



  public void setBackupCoupon(String backupCoupon) { 
    this.backupCoupon = backupCoupon;
  }

  public BackupServiceInfo backupExtra(String backupExtra) { 

    this.backupExtra = backupExtra;
    return this;
  }

  /**
   * Backup extra information.
   * @return backupExtra
   **/
  
  @Schema(example = "[]", description = "Backup extra information.")
  
  public String getBackupExtra() {  
    return backupExtra;
  }



  public void setBackupExtra(String backupExtra) { 
    this.backupExtra = backupExtra;
  }

  public BackupServiceInfo backupServerStatus(String backupServerStatus) { 

    this.backupServerStatus = backupServerStatus;
    return this;
  }

  /**
   * Backup server status.
   * @return backupServerStatus
   **/
  
  @Schema(example = "deleted", description = "Backup server status.")
  
  public String getBackupServerStatus() {  
    return backupServerStatus;
  }



  public void setBackupServerStatus(String backupServerStatus) { 
    this.backupServerStatus = backupServerStatus;
  }

  public BackupServiceInfo backupComment(String backupComment) { 

    this.backupComment = backupComment;
    return this;
  }

  /**
   * Backup comment.
   * @return backupComment
   **/
  
  @Schema(description = "Backup comment.")
  
  public String getBackupComment() {  
    return backupComment;
  }



  public void setBackupComment(String backupComment) { 
    this.backupComment = backupComment;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    BackupServiceInfo backupServiceInfo = (BackupServiceInfo) o;
    return Objects.equals(this.backupId, backupServiceInfo.backupId) &&
        Objects.equals(this.backupServer, backupServiceInfo.backupServer) &&
        Objects.equals(this.backupUsername, backupServiceInfo.backupUsername) &&
        Objects.equals(this.backupType, backupServiceInfo.backupType) &&
        Objects.equals(this.backupCurrency, backupServiceInfo.backupCurrency) &&
        Objects.equals(this.backupOrderDate, backupServiceInfo.backupOrderDate) &&
        Objects.equals(this.backupCustid, backupServiceInfo.backupCustid) &&
        Objects.equals(this.backupQuota, backupServiceInfo.backupQuota) &&
        Objects.equals(this.backupIp, backupServiceInfo.backupIp) &&
        Objects.equals(this.backupStatus, backupServiceInfo.backupStatus) &&
        Objects.equals(this.backupInvoice, backupServiceInfo.backupInvoice) &&
        Objects.equals(this.backupCoupon, backupServiceInfo.backupCoupon) &&
        Objects.equals(this.backupExtra, backupServiceInfo.backupExtra) &&
        Objects.equals(this.backupServerStatus, backupServiceInfo.backupServerStatus) &&
        Objects.equals(this.backupComment, backupServiceInfo.backupComment);
  }

  @Override
  public int hashCode() {
    return Objects.hash(backupId, backupServer, backupUsername, backupType, backupCurrency, backupOrderDate, backupCustid, backupQuota, backupIp, backupStatus, backupInvoice, backupCoupon, backupExtra, backupServerStatus, backupComment);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class BackupServiceInfo {\n");
    
    sb.append("    backupId: ").append(toIndentedString(backupId)).append("\n");
    sb.append("    backupServer: ").append(toIndentedString(backupServer)).append("\n");
    sb.append("    backupUsername: ").append(toIndentedString(backupUsername)).append("\n");
    sb.append("    backupType: ").append(toIndentedString(backupType)).append("\n");
    sb.append("    backupCurrency: ").append(toIndentedString(backupCurrency)).append("\n");
    sb.append("    backupOrderDate: ").append(toIndentedString(backupOrderDate)).append("\n");
    sb.append("    backupCustid: ").append(toIndentedString(backupCustid)).append("\n");
    sb.append("    backupQuota: ").append(toIndentedString(backupQuota)).append("\n");
    sb.append("    backupIp: ").append(toIndentedString(backupIp)).append("\n");
    sb.append("    backupStatus: ").append(toIndentedString(backupStatus)).append("\n");
    sb.append("    backupInvoice: ").append(toIndentedString(backupInvoice)).append("\n");
    sb.append("    backupCoupon: ").append(toIndentedString(backupCoupon)).append("\n");
    sb.append("    backupExtra: ").append(toIndentedString(backupExtra)).append("\n");
    sb.append("    backupServerStatus: ").append(toIndentedString(backupServerStatus)).append("\n");
    sb.append("    backupComment: ").append(toIndentedString(backupComment)).append("\n");
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
