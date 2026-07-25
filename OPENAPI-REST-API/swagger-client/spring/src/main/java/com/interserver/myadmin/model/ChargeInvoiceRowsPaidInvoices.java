package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.ChargeInvoiceRowsRefundInvoices;
import io.swagger.v3.oas.annotations.media.Schema;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.validation.annotation.Validated;
import org.openapitools.jackson.nullable.JsonNullable;
import io.swagger.configuration.NotUndefined;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.Nulls;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * ChargeInvoiceRowsPaidInvoices
 */
@Validated
@NotUndefined



public class ChargeInvoiceRowsPaidInvoices   {
  @JsonProperty("invoices_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String invoicesId = null;

  @JsonProperty("invoices_description")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String invoicesDescription = null;

  @JsonProperty("invoices_amount")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private BigDecimal invoicesAmount = null;

  @JsonProperty("invoices_date")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String invoicesDate = null;

  @JsonProperty("invoices_currency")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String invoicesCurrency = null;

  @JsonProperty("currency_symbol")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String currencySymbol = null;

  @JsonProperty("invoices_date_formatted")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String invoicesDateFormatted = null;

  @JsonProperty("payment_type")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String paymentType = null;

  @JsonProperty("refund_invoices")
  @Valid
  private Map<String, ChargeInvoiceRowsRefundInvoices> refundInvoices = null;

  public ChargeInvoiceRowsPaidInvoices invoicesId(String invoicesId) { 

    this.invoicesId = invoicesId;
    return this;
  }

  /**
   * Get invoicesId
   * @return invoicesId
   **/
  
  @Schema(description = "")
  
  public String getInvoicesId() {  
    return invoicesId;
  }



  public void setInvoicesId(String invoicesId) { 
    this.invoicesId = invoicesId;
  }

  public ChargeInvoiceRowsPaidInvoices invoicesDescription(String invoicesDescription) { 

    this.invoicesDescription = invoicesDescription;
    return this;
  }

  /**
   * Get invoicesDescription
   * @return invoicesDescription
   **/
  
  @Schema(description = "")
  
  public String getInvoicesDescription() {  
    return invoicesDescription;
  }



  public void setInvoicesDescription(String invoicesDescription) { 
    this.invoicesDescription = invoicesDescription;
  }

  public ChargeInvoiceRowsPaidInvoices invoicesAmount(BigDecimal invoicesAmount) { 

    this.invoicesAmount = invoicesAmount;
    return this;
  }

  /**
   * Get invoicesAmount
   * @return invoicesAmount
   **/
  
  @Schema(description = "")
  
@Valid
  public BigDecimal getInvoicesAmount() {  
    return invoicesAmount;
  }



  public void setInvoicesAmount(BigDecimal invoicesAmount) { 
    this.invoicesAmount = invoicesAmount;
  }

  public ChargeInvoiceRowsPaidInvoices invoicesDate(String invoicesDate) { 

    this.invoicesDate = invoicesDate;
    return this;
  }

  /**
   * Get invoicesDate
   * @return invoicesDate
   **/
  
  @Schema(description = "")
  
  public String getInvoicesDate() {  
    return invoicesDate;
  }



  public void setInvoicesDate(String invoicesDate) { 
    this.invoicesDate = invoicesDate;
  }

  public ChargeInvoiceRowsPaidInvoices invoicesCurrency(String invoicesCurrency) { 

    this.invoicesCurrency = invoicesCurrency;
    return this;
  }

  /**
   * Get invoicesCurrency
   * @return invoicesCurrency
   **/
  
  @Schema(description = "")
  
  public String getInvoicesCurrency() {  
    return invoicesCurrency;
  }



  public void setInvoicesCurrency(String invoicesCurrency) { 
    this.invoicesCurrency = invoicesCurrency;
  }

  public ChargeInvoiceRowsPaidInvoices currencySymbol(String currencySymbol) { 

    this.currencySymbol = currencySymbol;
    return this;
  }

  /**
   * Get currencySymbol
   * @return currencySymbol
   **/
  
  @Schema(description = "")
  
  public String getCurrencySymbol() {  
    return currencySymbol;
  }



  public void setCurrencySymbol(String currencySymbol) { 
    this.currencySymbol = currencySymbol;
  }

  public ChargeInvoiceRowsPaidInvoices invoicesDateFormatted(String invoicesDateFormatted) { 

    this.invoicesDateFormatted = invoicesDateFormatted;
    return this;
  }

  /**
   * Get invoicesDateFormatted
   * @return invoicesDateFormatted
   **/
  
  @Schema(description = "")
  
  public String getInvoicesDateFormatted() {  
    return invoicesDateFormatted;
  }



  public void setInvoicesDateFormatted(String invoicesDateFormatted) { 
    this.invoicesDateFormatted = invoicesDateFormatted;
  }

  public ChargeInvoiceRowsPaidInvoices paymentType(String paymentType) { 

    this.paymentType = paymentType;
    return this;
  }

  /**
   * Get paymentType
   * @return paymentType
   **/
  
  @Schema(description = "")
  
  public String getPaymentType() {  
    return paymentType;
  }



  public void setPaymentType(String paymentType) { 
    this.paymentType = paymentType;
  }

  public ChargeInvoiceRowsPaidInvoices refundInvoices(Map<String, ChargeInvoiceRowsRefundInvoices> refundInvoices) { 

    this.refundInvoices = refundInvoices;
    return this;
  }

  public ChargeInvoiceRowsPaidInvoices putRefundInvoicesItem(String key, ChargeInvoiceRowsRefundInvoices refundInvoicesItem) {
    if (this.refundInvoices == null) {
      this.refundInvoices = new HashMap<>();
    }
    this.refundInvoices.put(key, refundInvoicesItem);
    return this;
  }

  /**
   * This is optional when refund is present this will show
   * @return refundInvoices
   **/
  
  @Schema(description = "This is optional when refund is present this will show")
  @Valid
  public Map<String, ChargeInvoiceRowsRefundInvoices> getRefundInvoices() {  
    return refundInvoices;
  }



  public void setRefundInvoices(Map<String, ChargeInvoiceRowsRefundInvoices> refundInvoices) { 
    this.refundInvoices = refundInvoices;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ChargeInvoiceRowsPaidInvoices chargeInvoiceRowsPaidInvoices = (ChargeInvoiceRowsPaidInvoices) o;
    return Objects.equals(this.invoicesId, chargeInvoiceRowsPaidInvoices.invoicesId) &&
        Objects.equals(this.invoicesDescription, chargeInvoiceRowsPaidInvoices.invoicesDescription) &&
        Objects.equals(this.invoicesAmount, chargeInvoiceRowsPaidInvoices.invoicesAmount) &&
        Objects.equals(this.invoicesDate, chargeInvoiceRowsPaidInvoices.invoicesDate) &&
        Objects.equals(this.invoicesCurrency, chargeInvoiceRowsPaidInvoices.invoicesCurrency) &&
        Objects.equals(this.currencySymbol, chargeInvoiceRowsPaidInvoices.currencySymbol) &&
        Objects.equals(this.invoicesDateFormatted, chargeInvoiceRowsPaidInvoices.invoicesDateFormatted) &&
        Objects.equals(this.paymentType, chargeInvoiceRowsPaidInvoices.paymentType) &&
        Objects.equals(this.refundInvoices, chargeInvoiceRowsPaidInvoices.refundInvoices);
  }

  @Override
  public int hashCode() {
    return Objects.hash(invoicesId, invoicesDescription, invoicesAmount, invoicesDate, invoicesCurrency, currencySymbol, invoicesDateFormatted, paymentType, refundInvoices);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ChargeInvoiceRowsPaidInvoices {\n");
    
    sb.append("    invoicesId: ").append(toIndentedString(invoicesId)).append("\n");
    sb.append("    invoicesDescription: ").append(toIndentedString(invoicesDescription)).append("\n");
    sb.append("    invoicesAmount: ").append(toIndentedString(invoicesAmount)).append("\n");
    sb.append("    invoicesDate: ").append(toIndentedString(invoicesDate)).append("\n");
    sb.append("    invoicesCurrency: ").append(toIndentedString(invoicesCurrency)).append("\n");
    sb.append("    currencySymbol: ").append(toIndentedString(currencySymbol)).append("\n");
    sb.append("    invoicesDateFormatted: ").append(toIndentedString(invoicesDateFormatted)).append("\n");
    sb.append("    paymentType: ").append(toIndentedString(paymentType)).append("\n");
    sb.append("    refundInvoices: ").append(toIndentedString(refundInvoices)).append("\n");
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
