package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class GetScrubIpDetails200ResponseServiceInfo  {
  
  @ApiModelProperty(value = "")

  private String scrubIpId;

  @ApiModelProperty(value = "")

  private String scrubIpType;

  @ApiModelProperty(value = "")

  private String scrubIpCustid;

  @ApiModelProperty(value = "")

  private String scrubIpOrderDate;

  @ApiModelProperty(value = "")

  private String scrubIpIp;

  @ApiModelProperty(value = "")

  private String scrubIpServiceId;

  @ApiModelProperty(value = "")

  private String scrubIpServiceModule;

public enum ScrubIpStatusEnum {

ACTIVE(String.valueOf("active")), PENDING(String.valueOf("pending")), CANCELED(String.valueOf("canceled")), EXPIRED(String.valueOf("expired")), UNKNOWN_DEFAULT_OPEN_API(String.valueOf("unknown_default_open_api"));


    private String value;

    ScrubIpStatusEnum (String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    @Override
    public String toString() {
        return String.valueOf(value);
    }

    public static ScrubIpStatusEnum fromValue(String value) {
        for (ScrubIpStatusEnum b : ScrubIpStatusEnum.values()) {
            if (b.value.equals(value)) {
                return b;
            }
        }
        throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }
}

  @ApiModelProperty(value = "")

  private ScrubIpStatusEnum scrubIpStatus;

  @ApiModelProperty(value = "")

  private String scrubIpInvoice;

  @ApiModelProperty(value = "")

  private String scrubIpCurrency;

  @ApiModelProperty(value = "")

  private String scrubIpCoupon;

  @ApiModelProperty(value = "")

  private String scrubIpComment;
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

  public GetScrubIpDetails200ResponseServiceInfo scrubIpId(String scrubIpId) {
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

  public GetScrubIpDetails200ResponseServiceInfo scrubIpType(String scrubIpType) {
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

  public GetScrubIpDetails200ResponseServiceInfo scrubIpCustid(String scrubIpCustid) {
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

  public GetScrubIpDetails200ResponseServiceInfo scrubIpOrderDate(String scrubIpOrderDate) {
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

  public GetScrubIpDetails200ResponseServiceInfo scrubIpIp(String scrubIpIp) {
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

  public GetScrubIpDetails200ResponseServiceInfo scrubIpServiceId(String scrubIpServiceId) {
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

  public GetScrubIpDetails200ResponseServiceInfo scrubIpServiceModule(String scrubIpServiceModule) {
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
    return scrubIpStatus.value();
  }

  public void setScrubIpStatus(ScrubIpStatusEnum scrubIpStatus) {
    this.scrubIpStatus = scrubIpStatus;
  }

  public GetScrubIpDetails200ResponseServiceInfo scrubIpStatus(ScrubIpStatusEnum scrubIpStatus) {
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

  public GetScrubIpDetails200ResponseServiceInfo scrubIpInvoice(String scrubIpInvoice) {
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

  public GetScrubIpDetails200ResponseServiceInfo scrubIpCurrency(String scrubIpCurrency) {
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

  public GetScrubIpDetails200ResponseServiceInfo scrubIpCoupon(String scrubIpCoupon) {
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

  public GetScrubIpDetails200ResponseServiceInfo scrubIpComment(String scrubIpComment) {
    this.scrubIpComment = scrubIpComment;
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
    GetScrubIpDetails200ResponseServiceInfo getScrubIpDetails200ResponseServiceInfo = (GetScrubIpDetails200ResponseServiceInfo) o;
    return Objects.equals(this.scrubIpId, getScrubIpDetails200ResponseServiceInfo.scrubIpId) &&
        Objects.equals(this.scrubIpType, getScrubIpDetails200ResponseServiceInfo.scrubIpType) &&
        Objects.equals(this.scrubIpCustid, getScrubIpDetails200ResponseServiceInfo.scrubIpCustid) &&
        Objects.equals(this.scrubIpOrderDate, getScrubIpDetails200ResponseServiceInfo.scrubIpOrderDate) &&
        Objects.equals(this.scrubIpIp, getScrubIpDetails200ResponseServiceInfo.scrubIpIp) &&
        Objects.equals(this.scrubIpServiceId, getScrubIpDetails200ResponseServiceInfo.scrubIpServiceId) &&
        Objects.equals(this.scrubIpServiceModule, getScrubIpDetails200ResponseServiceInfo.scrubIpServiceModule) &&
        Objects.equals(this.scrubIpStatus, getScrubIpDetails200ResponseServiceInfo.scrubIpStatus) &&
        Objects.equals(this.scrubIpInvoice, getScrubIpDetails200ResponseServiceInfo.scrubIpInvoice) &&
        Objects.equals(this.scrubIpCurrency, getScrubIpDetails200ResponseServiceInfo.scrubIpCurrency) &&
        Objects.equals(this.scrubIpCoupon, getScrubIpDetails200ResponseServiceInfo.scrubIpCoupon) &&
        Objects.equals(this.scrubIpComment, getScrubIpDetails200ResponseServiceInfo.scrubIpComment);
  }

  @Override
  public int hashCode() {
    return Objects.hash(scrubIpId, scrubIpType, scrubIpCustid, scrubIpOrderDate, scrubIpIp, scrubIpServiceId, scrubIpServiceModule, scrubIpStatus, scrubIpInvoice, scrubIpCurrency, scrubIpCoupon, scrubIpComment);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GetScrubIpDetails200ResponseServiceInfo {\n");
    
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
  private static String toIndentedString(Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}

