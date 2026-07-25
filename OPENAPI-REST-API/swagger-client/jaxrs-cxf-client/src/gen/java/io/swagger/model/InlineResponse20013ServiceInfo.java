package io.swagger.model;


import io.swagger.v3.oas.annotations.media.Schema;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonCreator;

public class InlineResponse20013ServiceInfo   {
  
  @Schema(description = "")
  private String scrubIpId = null;
  
  @Schema(description = "")
  private String scrubIpType = null;
  
  @Schema(description = "")
  private String scrubIpCustid = null;
  
  @Schema(description = "")
  private String scrubIpOrderDate = null;
  
  @Schema(description = "")
  private String scrubIpIp = null;
  
  @Schema(description = "")
  private String scrubIpServiceId = null;
  
  @Schema(description = "")
  private String scrubIpServiceModule = null;
  public enum ScrubIpStatusEnum {
    ACTIVE("active"),
    PENDING("pending"),
    CANCELED("canceled"),
    EXPIRED("expired");

    private String value;

    ScrubIpStatusEnum(String value) {
      this.value = value;
    }
    @JsonValue
    public String getValue() {
      return value;
    }

    @Override
    public String toString() {
      return String.valueOf(value);
    }
    @JsonCreator
    public static ScrubIpStatusEnum fromValue(String text) {
      for (ScrubIpStatusEnum b : ScrubIpStatusEnum.values()) {
        if (String.valueOf(b.value).equals(text)) {
          return b;
        }
      }
      return null;
    }
  }  
  @Schema(description = "")
  private ScrubIpStatusEnum scrubIpStatus = null;
  
  @Schema(description = "")
  private String scrubIpInvoice = null;
  
  @Schema(description = "")
  private String scrubIpCurrency = null;
  
  @Schema(description = "")
  private String scrubIpCoupon = null;
  
  @Schema(description = "")
  private String scrubIpComment = null;
 /**
   * Get scrubIpId
   * @return scrubIpId
  **/
  @JsonProperty("scrub_ip_id")
  public String getScrubIpId() {
    return scrubIpId;
  }

  public void setScrubIpId(String scrubIpId) {
    this.scrubIpId = scrubIpId;
  }

  public InlineResponse20013ServiceInfo scrubIpId(String scrubIpId) {
    this.scrubIpId = scrubIpId;
    return this;
  }

 /**
   * Get scrubIpType
   * @return scrubIpType
  **/
  @JsonProperty("scrub_ip_type")
  public String getScrubIpType() {
    return scrubIpType;
  }

  public void setScrubIpType(String scrubIpType) {
    this.scrubIpType = scrubIpType;
  }

  public InlineResponse20013ServiceInfo scrubIpType(String scrubIpType) {
    this.scrubIpType = scrubIpType;
    return this;
  }

 /**
   * Get scrubIpCustid
   * @return scrubIpCustid
  **/
  @JsonProperty("scrub_ip_custid")
  public String getScrubIpCustid() {
    return scrubIpCustid;
  }

  public void setScrubIpCustid(String scrubIpCustid) {
    this.scrubIpCustid = scrubIpCustid;
  }

  public InlineResponse20013ServiceInfo scrubIpCustid(String scrubIpCustid) {
    this.scrubIpCustid = scrubIpCustid;
    return this;
  }

 /**
   * Get scrubIpOrderDate
   * @return scrubIpOrderDate
  **/
  @JsonProperty("scrub_ip_order_date")
  public String getScrubIpOrderDate() {
    return scrubIpOrderDate;
  }

  public void setScrubIpOrderDate(String scrubIpOrderDate) {
    this.scrubIpOrderDate = scrubIpOrderDate;
  }

  public InlineResponse20013ServiceInfo scrubIpOrderDate(String scrubIpOrderDate) {
    this.scrubIpOrderDate = scrubIpOrderDate;
    return this;
  }

 /**
   * Get scrubIpIp
   * @return scrubIpIp
  **/
  @JsonProperty("scrub_ip_ip")
  public String getScrubIpIp() {
    return scrubIpIp;
  }

  public void setScrubIpIp(String scrubIpIp) {
    this.scrubIpIp = scrubIpIp;
  }

  public InlineResponse20013ServiceInfo scrubIpIp(String scrubIpIp) {
    this.scrubIpIp = scrubIpIp;
    return this;
  }

 /**
   * Get scrubIpServiceId
   * @return scrubIpServiceId
  **/
  @JsonProperty("scrub_ip_service_id")
  public String getScrubIpServiceId() {
    return scrubIpServiceId;
  }

  public void setScrubIpServiceId(String scrubIpServiceId) {
    this.scrubIpServiceId = scrubIpServiceId;
  }

  public InlineResponse20013ServiceInfo scrubIpServiceId(String scrubIpServiceId) {
    this.scrubIpServiceId = scrubIpServiceId;
    return this;
  }

 /**
   * Get scrubIpServiceModule
   * @return scrubIpServiceModule
  **/
  @JsonProperty("scrub_ip_service_module")
  public String getScrubIpServiceModule() {
    return scrubIpServiceModule;
  }

  public void setScrubIpServiceModule(String scrubIpServiceModule) {
    this.scrubIpServiceModule = scrubIpServiceModule;
  }

  public InlineResponse20013ServiceInfo scrubIpServiceModule(String scrubIpServiceModule) {
    this.scrubIpServiceModule = scrubIpServiceModule;
    return this;
  }

 /**
   * Get scrubIpStatus
   * @return scrubIpStatus
  **/
  @JsonProperty("scrub_ip_status")
  public String getScrubIpStatus() {
    if (scrubIpStatus == null) {
      return null;
    }
    return scrubIpStatus.getValue();
  }

  public void setScrubIpStatus(ScrubIpStatusEnum scrubIpStatus) {
    this.scrubIpStatus = scrubIpStatus;
  }

  public InlineResponse20013ServiceInfo scrubIpStatus(ScrubIpStatusEnum scrubIpStatus) {
    this.scrubIpStatus = scrubIpStatus;
    return this;
  }

 /**
   * Get scrubIpInvoice
   * @return scrubIpInvoice
  **/
  @JsonProperty("scrub_ip_invoice")
  public String getScrubIpInvoice() {
    return scrubIpInvoice;
  }

  public void setScrubIpInvoice(String scrubIpInvoice) {
    this.scrubIpInvoice = scrubIpInvoice;
  }

  public InlineResponse20013ServiceInfo scrubIpInvoice(String scrubIpInvoice) {
    this.scrubIpInvoice = scrubIpInvoice;
    return this;
  }

 /**
   * Get scrubIpCurrency
   * @return scrubIpCurrency
  **/
  @JsonProperty("scrub_ip_currency")
  public String getScrubIpCurrency() {
    return scrubIpCurrency;
  }

  public void setScrubIpCurrency(String scrubIpCurrency) {
    this.scrubIpCurrency = scrubIpCurrency;
  }

  public InlineResponse20013ServiceInfo scrubIpCurrency(String scrubIpCurrency) {
    this.scrubIpCurrency = scrubIpCurrency;
    return this;
  }

 /**
   * Get scrubIpCoupon
   * @return scrubIpCoupon
  **/
  @JsonProperty("scrub_ip_coupon")
  public String getScrubIpCoupon() {
    return scrubIpCoupon;
  }

  public void setScrubIpCoupon(String scrubIpCoupon) {
    this.scrubIpCoupon = scrubIpCoupon;
  }

  public InlineResponse20013ServiceInfo scrubIpCoupon(String scrubIpCoupon) {
    this.scrubIpCoupon = scrubIpCoupon;
    return this;
  }

 /**
   * Get scrubIpComment
   * @return scrubIpComment
  **/
  @JsonProperty("scrub_ip_comment")
  public String getScrubIpComment() {
    return scrubIpComment;
  }

  public void setScrubIpComment(String scrubIpComment) {
    this.scrubIpComment = scrubIpComment;
  }

  public InlineResponse20013ServiceInfo scrubIpComment(String scrubIpComment) {
    this.scrubIpComment = scrubIpComment;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20013ServiceInfo {\n");
    
    sb.append("    scrubIpId: ").append(toIndentedString(scrubIpId)).append("\n");
    sb.append("    scrubIpType: ").append(toIndentedString(scrubIpType)).append("\n");
    sb.append("    scrubIpCustid: ").append(toIndentedString(scrubIpCustid)).append("\n");
    sb.append("    scrubIpOrderDate: ").append(toIndentedString(scrubIpOrderDate)).append("\n");
    sb.append("    scrubIpIp: ").append(toIndentedString(scrubIpIp)).append("\n");
    sb.append("    scrubIpServiceId: ").append(toIndentedString(scrubIpServiceId)).append("\n");
    sb.append("    scrubIpServiceModule: ").append(toIndentedString(scrubIpServiceModule)).append("\n");
    sb.append("    scrubIpStatus: ").append(toIndentedString(scrubIpStatus)).append("\n");
    sb.append("    scrubIpInvoice: ").append(toIndentedString(scrubIpInvoice)).append("\n");
    sb.append("    scrubIpCurrency: ").append(toIndentedString(scrubIpCurrency)).append("\n");
    sb.append("    scrubIpCoupon: ").append(toIndentedString(scrubIpCoupon)).append("\n");
    sb.append("    scrubIpComment: ").append(toIndentedString(scrubIpComment)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
