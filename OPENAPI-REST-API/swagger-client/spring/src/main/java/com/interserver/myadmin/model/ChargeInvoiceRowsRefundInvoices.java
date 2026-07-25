package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;
import java.math.BigDecimal;
import org.springframework.validation.annotation.Validated;
import org.openapitools.jackson.nullable.JsonNullable;
import io.swagger.configuration.NotUndefined;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.Nulls;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * ChargeInvoiceRowsRefundInvoices
 */
@Validated
@NotUndefined



public class ChargeInvoiceRowsRefundInvoices   {
  @JsonProperty("invoices_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private BigDecimal invoicesId = null;

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


  public ChargeInvoiceRowsRefundInvoices invoicesId(BigDecimal invoicesId) { 

    this.invoicesId = invoicesId;
    return this;
  }

  /**
   * Get invoicesId
   * @return invoicesId
   **/
  
  @Schema(description = "")
  
@Valid
  public BigDecimal getInvoicesId() {  
    return invoicesId;
  }



  public void setInvoicesId(BigDecimal invoicesId) { 
    this.invoicesId = invoicesId;
  }

  public ChargeInvoiceRowsRefundInvoices invoicesDescription(String invoicesDescription) { 

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

  public ChargeInvoiceRowsRefundInvoices invoicesAmount(BigDecimal invoicesAmount) { 

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

  public ChargeInvoiceRowsRefundInvoices invoicesDate(String invoicesDate) { 

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

  public ChargeInvoiceRowsRefundInvoices invoicesCurrency(String invoicesCurrency) { 

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

  public ChargeInvoiceRowsRefundInvoices currencySymbol(String currencySymbol) { 

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

  public ChargeInvoiceRowsRefundInvoices invoicesDateFormatted(String invoicesDateFormatted) { 

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

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ChargeInvoiceRowsRefundInvoices chargeInvoiceRowsRefundInvoices = (ChargeInvoiceRowsRefundInvoices) o;
    return Objects.equals(this.invoicesId, chargeInvoiceRowsRefundInvoices.invoicesId) &&
        Objects.equals(this.invoicesDescription, chargeInvoiceRowsRefundInvoices.invoicesDescription) &&
        Objects.equals(this.invoicesAmount, chargeInvoiceRowsRefundInvoices.invoicesAmount) &&
        Objects.equals(this.invoicesDate, chargeInvoiceRowsRefundInvoices.invoicesDate) &&
        Objects.equals(this.invoicesCurrency, chargeInvoiceRowsRefundInvoices.invoicesCurrency) &&
        Objects.equals(this.currencySymbol, chargeInvoiceRowsRefundInvoices.currencySymbol) &&
        Objects.equals(this.invoicesDateFormatted, chargeInvoiceRowsRefundInvoices.invoicesDateFormatted);
  }

  @Override
  public int hashCode() {
    return Objects.hash(invoicesId, invoicesDescription, invoicesAmount, invoicesDate, invoicesCurrency, currencySymbol, invoicesDateFormatted);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ChargeInvoiceRowsRefundInvoices {\n");
    
    sb.append("    invoicesId: ").append(toIndentedString(invoicesId)).append("\n");
    sb.append("    invoicesDescription: ").append(toIndentedString(invoicesDescription)).append("\n");
    sb.append("    invoicesAmount: ").append(toIndentedString(invoicesAmount)).append("\n");
    sb.append("    invoicesDate: ").append(toIndentedString(invoicesDate)).append("\n");
    sb.append("    invoicesCurrency: ").append(toIndentedString(invoicesCurrency)).append("\n");
    sb.append("    currencySymbol: ").append(toIndentedString(currencySymbol)).append("\n");
    sb.append("    invoicesDateFormatted: ").append(toIndentedString(invoicesDateFormatted)).append("\n");
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
