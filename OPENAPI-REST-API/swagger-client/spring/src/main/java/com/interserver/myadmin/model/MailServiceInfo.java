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
 * MailServiceInfo
 */
@Validated
@NotUndefined



public class MailServiceInfo   {
  @JsonProperty("mail_id")

  private String mailId = null;

  @JsonProperty("mail_username")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String mailUsername = null;

  @JsonProperty("mail_type")

  private String mailType = null;

  @JsonProperty("mail_currency")

  private String mailCurrency = null;

  @JsonProperty("mail_order_date")

  private String mailOrderDate = null;

  @JsonProperty("mail_custid")

  private String mailCustid = null;

  @JsonProperty("mail_quota")

  private String mailQuota = null;

  @JsonProperty("mail_ip")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String mailIp = null;

  @JsonProperty("mail_status")

  private String mailStatus = null;

  @JsonProperty("mail_invoice")

  private String mailInvoice = null;

  @JsonProperty("mail_coupon")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String mailCoupon = null;

  @JsonProperty("mail_extra")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String mailExtra = null;

  @JsonProperty("mail_server_status")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String mailServerStatus = null;

  @JsonProperty("mail_comment")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String mailComment = null;


  public MailServiceInfo mailId(String mailId) { 

    this.mailId = mailId;
    return this;
  }

  /**
   * The ID of the mail service.
   * @return mailId
   **/
  
  @Schema(example = "43171", required = true, description = "The ID of the mail service.")
  
  @NotNull
  public String getMailId() {  
    return mailId;
  }



  public void setMailId(String mailId) { 

    this.mailId = mailId;
  }

  public MailServiceInfo mailUsername(String mailUsername) { 

    this.mailUsername = mailUsername;
    return this;
  }

  /**
   * The username associated with the mail service.
   * @return mailUsername
   **/
  
  @Schema(description = "The username associated with the mail service.")
  
  public String getMailUsername() {  
    return mailUsername;
  }



  public void setMailUsername(String mailUsername) { 
    this.mailUsername = mailUsername;
  }

  public MailServiceInfo mailType(String mailType) { 

    this.mailType = mailType;
    return this;
  }

  /**
   * The type of mail service.
   * @return mailType
   **/
  
  @Schema(example = "10880", required = true, description = "The type of mail service.")
  
  @NotNull
  public String getMailType() {  
    return mailType;
  }



  public void setMailType(String mailType) { 

    this.mailType = mailType;
  }

  public MailServiceInfo mailCurrency(String mailCurrency) { 

    this.mailCurrency = mailCurrency;
    return this;
  }

  /**
   * The currency of the mail service.
   * @return mailCurrency
   **/
  
  @Schema(example = "USD", required = true, description = "The currency of the mail service.")
  
  @NotNull
  public String getMailCurrency() {  
    return mailCurrency;
  }



  public void setMailCurrency(String mailCurrency) { 

    this.mailCurrency = mailCurrency;
  }

  public MailServiceInfo mailOrderDate(String mailOrderDate) { 

    this.mailOrderDate = mailOrderDate;
    return this;
  }

  /**
   * The order date of the mail service.
   * @return mailOrderDate
   **/
  
  @Schema(example = "2023-07-16T00:55:05.000Z", required = true, description = "The order date of the mail service.")
  
  @NotNull
  public String getMailOrderDate() {  
    return mailOrderDate;
  }



  public void setMailOrderDate(String mailOrderDate) { 

    this.mailOrderDate = mailOrderDate;
  }

  public MailServiceInfo mailCustid(String mailCustid) { 

    this.mailCustid = mailCustid;
    return this;
  }

  /**
   * The customer ID associated with the mail service.
   * @return mailCustid
   **/
  
  @Schema(example = "771282", required = true, description = "The customer ID associated with the mail service.")
  
  @NotNull
  public String getMailCustid() {  
    return mailCustid;
  }



  public void setMailCustid(String mailCustid) { 

    this.mailCustid = mailCustid;
  }

  public MailServiceInfo mailQuota(String mailQuota) { 

    this.mailQuota = mailQuota;
    return this;
  }

  /**
   * The mail quota for the service.
   * @return mailQuota
   **/
  
  @Schema(example = "0", required = true, description = "The mail quota for the service.")
  
  @NotNull
  public String getMailQuota() {  
    return mailQuota;
  }



  public void setMailQuota(String mailQuota) { 

    this.mailQuota = mailQuota;
  }

  public MailServiceInfo mailIp(String mailIp) { 

    this.mailIp = mailIp;
    return this;
  }

  /**
   * The IP address associated with the mail service.
   * @return mailIp
   **/
  
  @Schema(description = "The IP address associated with the mail service.")
  
  public String getMailIp() {  
    return mailIp;
  }



  public void setMailIp(String mailIp) { 
    this.mailIp = mailIp;
  }

  public MailServiceInfo mailStatus(String mailStatus) { 

    this.mailStatus = mailStatus;
    return this;
  }

  /**
   * The status of the mail service.
   * @return mailStatus
   **/
  
  @Schema(example = "expired", required = true, description = "The status of the mail service.")
  
  @NotNull
  public String getMailStatus() {  
    return mailStatus;
  }



  public void setMailStatus(String mailStatus) { 

    this.mailStatus = mailStatus;
  }

  public MailServiceInfo mailInvoice(String mailInvoice) { 

    this.mailInvoice = mailInvoice;
    return this;
  }

  /**
   * The invoice ID of the mail service.
   * @return mailInvoice
   **/
  
  @Schema(example = "20410322", required = true, description = "The invoice ID of the mail service.")
  
  @NotNull
  public String getMailInvoice() {  
    return mailInvoice;
  }



  public void setMailInvoice(String mailInvoice) { 

    this.mailInvoice = mailInvoice;
  }

  public MailServiceInfo mailCoupon(String mailCoupon) { 

    this.mailCoupon = mailCoupon;
    return this;
  }

  /**
   * The coupon associated with the mail service.
   * @return mailCoupon
   **/
  
  @Schema(example = "0", description = "The coupon associated with the mail service.")
  
  public String getMailCoupon() {  
    return mailCoupon;
  }



  public void setMailCoupon(String mailCoupon) { 
    this.mailCoupon = mailCoupon;
  }

  public MailServiceInfo mailExtra(String mailExtra) { 

    this.mailExtra = mailExtra;
    return this;
  }

  /**
   * Additional information for the mail service.
   * @return mailExtra
   **/
  
  @Schema(example = "[]", description = "Additional information for the mail service.")
  
  public String getMailExtra() {  
    return mailExtra;
  }



  public void setMailExtra(String mailExtra) { 
    this.mailExtra = mailExtra;
  }

  public MailServiceInfo mailServerStatus(String mailServerStatus) { 

    this.mailServerStatus = mailServerStatus;
    return this;
  }

  /**
   * The server status of the mail service.
   * @return mailServerStatus
   **/
  
  @Schema(description = "The server status of the mail service.")
  
  public String getMailServerStatus() {  
    return mailServerStatus;
  }



  public void setMailServerStatus(String mailServerStatus) { 
    this.mailServerStatus = mailServerStatus;
  }

  public MailServiceInfo mailComment(String mailComment) { 

    this.mailComment = mailComment;
    return this;
  }

  /**
   * Additional comments for the mail service.
   * @return mailComment
   **/
  
  @Schema(description = "Additional comments for the mail service.")
  
  public String getMailComment() {  
    return mailComment;
  }



  public void setMailComment(String mailComment) { 
    this.mailComment = mailComment;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    MailServiceInfo mailServiceInfo = (MailServiceInfo) o;
    return Objects.equals(this.mailId, mailServiceInfo.mailId) &&
        Objects.equals(this.mailUsername, mailServiceInfo.mailUsername) &&
        Objects.equals(this.mailType, mailServiceInfo.mailType) &&
        Objects.equals(this.mailCurrency, mailServiceInfo.mailCurrency) &&
        Objects.equals(this.mailOrderDate, mailServiceInfo.mailOrderDate) &&
        Objects.equals(this.mailCustid, mailServiceInfo.mailCustid) &&
        Objects.equals(this.mailQuota, mailServiceInfo.mailQuota) &&
        Objects.equals(this.mailIp, mailServiceInfo.mailIp) &&
        Objects.equals(this.mailStatus, mailServiceInfo.mailStatus) &&
        Objects.equals(this.mailInvoice, mailServiceInfo.mailInvoice) &&
        Objects.equals(this.mailCoupon, mailServiceInfo.mailCoupon) &&
        Objects.equals(this.mailExtra, mailServiceInfo.mailExtra) &&
        Objects.equals(this.mailServerStatus, mailServiceInfo.mailServerStatus) &&
        Objects.equals(this.mailComment, mailServiceInfo.mailComment);
  }

  @Override
  public int hashCode() {
    return Objects.hash(mailId, mailUsername, mailType, mailCurrency, mailOrderDate, mailCustid, mailQuota, mailIp, mailStatus, mailInvoice, mailCoupon, mailExtra, mailServerStatus, mailComment);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class MailServiceInfo {\n");
    
    sb.append("    mailId: ").append(toIndentedString(mailId)).append("\n");
    sb.append("    mailUsername: ").append(toIndentedString(mailUsername)).append("\n");
    sb.append("    mailType: ").append(toIndentedString(mailType)).append("\n");
    sb.append("    mailCurrency: ").append(toIndentedString(mailCurrency)).append("\n");
    sb.append("    mailOrderDate: ").append(toIndentedString(mailOrderDate)).append("\n");
    sb.append("    mailCustid: ").append(toIndentedString(mailCustid)).append("\n");
    sb.append("    mailQuota: ").append(toIndentedString(mailQuota)).append("\n");
    sb.append("    mailIp: ").append(toIndentedString(mailIp)).append("\n");
    sb.append("    mailStatus: ").append(toIndentedString(mailStatus)).append("\n");
    sb.append("    mailInvoice: ").append(toIndentedString(mailInvoice)).append("\n");
    sb.append("    mailCoupon: ").append(toIndentedString(mailCoupon)).append("\n");
    sb.append("    mailExtra: ").append(toIndentedString(mailExtra)).append("\n");
    sb.append("    mailServerStatus: ").append(toIndentedString(mailServerStatus)).append("\n");
    sb.append("    mailComment: ").append(toIndentedString(mailComment)).append("\n");
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
