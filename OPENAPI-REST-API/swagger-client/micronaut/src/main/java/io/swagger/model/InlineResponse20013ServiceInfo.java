package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import io.swagger.v3.oas.annotations.media.Schema;
import io.micronaut.core.annotation.Introspected;
import io.micronaut.validation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * InlineResponse20013ServiceInfo
 */
@Validated
@Introspected

public class InlineResponse20013ServiceInfo   {
  @JsonProperty("scrub_ip_id")
  private String scrubIpId = null;

  @JsonProperty("scrub_ip_type")
  private String scrubIpType = null;

  @JsonProperty("scrub_ip_custid")
  private String scrubIpCustid = null;

  @JsonProperty("scrub_ip_order_date")
  private String scrubIpOrderDate = null;

  @JsonProperty("scrub_ip_ip")
  private String scrubIpIp = null;

  @JsonProperty("scrub_ip_service_id")
  private String scrubIpServiceId = null;

  @JsonProperty("scrub_ip_service_module")
  private String scrubIpServiceModule = null;

  /**
   * Gets or Sets scrubIpStatus
   */
  public enum ScrubIpStatusEnum {
    ACTIVE("active"),
    PENDING("pending"),
    CANCELED("canceled"),
    EXPIRED("expired");

    private String value;

    ScrubIpStatusEnum(String value) {
      this.value = value;
    }

    @Override
    @JsonValue
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
  @JsonProperty("scrub_ip_status")
  private ScrubIpStatusEnum scrubIpStatus = null;

  @JsonProperty("scrub_ip_invoice")
  private String scrubIpInvoice = null;

  @JsonProperty("scrub_ip_currency")
  private String scrubIpCurrency = null;

  @JsonProperty("scrub_ip_coupon")
  private String scrubIpCoupon = null;

  @JsonProperty("scrub_ip_comment")
  private String scrubIpComment = null;

  public InlineResponse20013ServiceInfo scrubIpId(String scrubIpId) {
    this.scrubIpId = scrubIpId;
    return this;
  }

  /**
   * Get scrubIpId
   * @return scrubIpId
  **/
  @Schema(description = "")
  @NotNull

  public String getScrubIpId() {
    return scrubIpId;
  }

  public void setScrubIpId(String scrubIpId) {
    this.scrubIpId = scrubIpId;
  }

  public InlineResponse20013ServiceInfo scrubIpType(String scrubIpType) {
    this.scrubIpType = scrubIpType;
    return this;
  }

  /**
   * Get scrubIpType
   * @return scrubIpType
  **/
  @Schema(description = "")
  @NotNull

  public String getScrubIpType() {
    return scrubIpType;
  }

  public void setScrubIpType(String scrubIpType) {
    this.scrubIpType = scrubIpType;
  }

  public InlineResponse20013ServiceInfo scrubIpCustid(String scrubIpCustid) {
    this.scrubIpCustid = scrubIpCustid;
    return this;
  }

  /**
   * Get scrubIpCustid
   * @return scrubIpCustid
  **/
  @Schema(description = "")
  @NotNull

  public String getScrubIpCustid() {
    return scrubIpCustid;
  }

  public void setScrubIpCustid(String scrubIpCustid) {
    this.scrubIpCustid = scrubIpCustid;
  }

  public InlineResponse20013ServiceInfo scrubIpOrderDate(String scrubIpOrderDate) {
    this.scrubIpOrderDate = scrubIpOrderDate;
    return this;
  }

  /**
   * Get scrubIpOrderDate
   * @return scrubIpOrderDate
  **/
  @Schema(description = "")
  @NotNull

  public String getScrubIpOrderDate() {
    return scrubIpOrderDate;
  }

  public void setScrubIpOrderDate(String scrubIpOrderDate) {
    this.scrubIpOrderDate = scrubIpOrderDate;
  }

  public InlineResponse20013ServiceInfo scrubIpIp(String scrubIpIp) {
    this.scrubIpIp = scrubIpIp;
    return this;
  }

  /**
   * Get scrubIpIp
   * @return scrubIpIp
  **/
  @Schema(description = "")
  @NotNull

  public String getScrubIpIp() {
    return scrubIpIp;
  }

  public void setScrubIpIp(String scrubIpIp) {
    this.scrubIpIp = scrubIpIp;
  }

  public InlineResponse20013ServiceInfo scrubIpServiceId(String scrubIpServiceId) {
    this.scrubIpServiceId = scrubIpServiceId;
    return this;
  }

  /**
   * Get scrubIpServiceId
   * @return scrubIpServiceId
  **/
  @Schema(description = "")
  @NotNull

  public String getScrubIpServiceId() {
    return scrubIpServiceId;
  }

  public void setScrubIpServiceId(String scrubIpServiceId) {
    this.scrubIpServiceId = scrubIpServiceId;
  }

  public InlineResponse20013ServiceInfo scrubIpServiceModule(String scrubIpServiceModule) {
    this.scrubIpServiceModule = scrubIpServiceModule;
    return this;
  }

  /**
   * Get scrubIpServiceModule
   * @return scrubIpServiceModule
  **/
  @Schema(description = "")
  @NotNull

  public String getScrubIpServiceModule() {
    return scrubIpServiceModule;
  }

  public void setScrubIpServiceModule(String scrubIpServiceModule) {
    this.scrubIpServiceModule = scrubIpServiceModule;
  }

  public InlineResponse20013ServiceInfo scrubIpStatus(ScrubIpStatusEnum scrubIpStatus) {
    this.scrubIpStatus = scrubIpStatus;
    return this;
  }

  /**
   * Get scrubIpStatus
   * @return scrubIpStatus
  **/
  @Schema(description = "")
  @NotNull

  public ScrubIpStatusEnum getScrubIpStatus() {
    return scrubIpStatus;
  }

  public void setScrubIpStatus(ScrubIpStatusEnum scrubIpStatus) {
    this.scrubIpStatus = scrubIpStatus;
  }

  public InlineResponse20013ServiceInfo scrubIpInvoice(String scrubIpInvoice) {
    this.scrubIpInvoice = scrubIpInvoice;
    return this;
  }

  /**
   * Get scrubIpInvoice
   * @return scrubIpInvoice
  **/
  @Schema(description = "")
  @NotNull

  public String getScrubIpInvoice() {
    return scrubIpInvoice;
  }

  public void setScrubIpInvoice(String scrubIpInvoice) {
    this.scrubIpInvoice = scrubIpInvoice;
  }

  public InlineResponse20013ServiceInfo scrubIpCurrency(String scrubIpCurrency) {
    this.scrubIpCurrency = scrubIpCurrency;
    return this;
  }

  /**
   * Get scrubIpCurrency
   * @return scrubIpCurrency
  **/
  @Schema(description = "")
  @NotNull

  public String getScrubIpCurrency() {
    return scrubIpCurrency;
  }

  public void setScrubIpCurrency(String scrubIpCurrency) {
    this.scrubIpCurrency = scrubIpCurrency;
  }

  public InlineResponse20013ServiceInfo scrubIpCoupon(String scrubIpCoupon) {
    this.scrubIpCoupon = scrubIpCoupon;
    return this;
  }

  /**
   * Get scrubIpCoupon
   * @return scrubIpCoupon
  **/
  @Schema(description = "")
  @NotNull

  public String getScrubIpCoupon() {
    return scrubIpCoupon;
  }

  public void setScrubIpCoupon(String scrubIpCoupon) {
    this.scrubIpCoupon = scrubIpCoupon;
  }

  public InlineResponse20013ServiceInfo scrubIpComment(String scrubIpComment) {
    this.scrubIpComment = scrubIpComment;
    return this;
  }

  /**
   * Get scrubIpComment
   * @return scrubIpComment
  **/
  @Schema(description = "")
  @NotNull

  public String getScrubIpComment() {
    return scrubIpComment;
  }

  public void setScrubIpComment(String scrubIpComment) {
    this.scrubIpComment = scrubIpComment;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20013ServiceInfo inlineResponse20013ServiceInfo = (InlineResponse20013ServiceInfo) o;
    return Objects.equals(this.scrubIpId, inlineResponse20013ServiceInfo.scrubIpId) &&
        Objects.equals(this.scrubIpType, inlineResponse20013ServiceInfo.scrubIpType) &&
        Objects.equals(this.scrubIpCustid, inlineResponse20013ServiceInfo.scrubIpCustid) &&
        Objects.equals(this.scrubIpOrderDate, inlineResponse20013ServiceInfo.scrubIpOrderDate) &&
        Objects.equals(this.scrubIpIp, inlineResponse20013ServiceInfo.scrubIpIp) &&
        Objects.equals(this.scrubIpServiceId, inlineResponse20013ServiceInfo.scrubIpServiceId) &&
        Objects.equals(this.scrubIpServiceModule, inlineResponse20013ServiceInfo.scrubIpServiceModule) &&
        Objects.equals(this.scrubIpStatus, inlineResponse20013ServiceInfo.scrubIpStatus) &&
        Objects.equals(this.scrubIpInvoice, inlineResponse20013ServiceInfo.scrubIpInvoice) &&
        Objects.equals(this.scrubIpCurrency, inlineResponse20013ServiceInfo.scrubIpCurrency) &&
        Objects.equals(this.scrubIpCoupon, inlineResponse20013ServiceInfo.scrubIpCoupon) &&
        Objects.equals(this.scrubIpComment, inlineResponse20013ServiceInfo.scrubIpComment);
  }

  @Override
  public int hashCode() {
    return Objects.hash(scrubIpId, scrubIpType, scrubIpCustid, scrubIpOrderDate, scrubIpIp, scrubIpServiceId, scrubIpServiceModule, scrubIpStatus, scrubIpInvoice, scrubIpCurrency, scrubIpCoupon, scrubIpComment);
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
