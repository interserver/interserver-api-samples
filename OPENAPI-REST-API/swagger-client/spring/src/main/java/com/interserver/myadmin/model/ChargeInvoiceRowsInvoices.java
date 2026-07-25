package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import com.interserver.myadmin.model.ChargeInvoiceRowsPaidInvoices;
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
 * ChargeInvoiceRowsInvoices
 */
@Validated
@NotUndefined



public class ChargeInvoiceRowsInvoices   {
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

  /**
   * Gets or Sets invoicesPaid
   */
  public enum InvoicesPaidEnum {
    NUMBER_0(new BigDecimal(0)),
    
    NUMBER_1(new BigDecimal(1));

    private BigDecimal value;

    InvoicesPaidEnum(BigDecimal value) {
      this.value = value;
    }

    @Override
    @JsonValue
    public String toString() {
      return String.valueOf(value);
    }

    @JsonCreator
    public static InvoicesPaidEnum fromValue(String text) {
      for (InvoicesPaidEnum b : InvoicesPaidEnum.values()) {
        if (String.valueOf(b.value).equals(text)) {
          return b;
        }
      }
      return null;
    }
  }
  @JsonProperty("invoices_paid")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private InvoicesPaidEnum invoicesPaid = null;

  @JsonProperty("invoices_due_date")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String invoicesDueDate = null;

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

  @JsonProperty("paid_invoices")
  @Valid
  private Map<String, ChargeInvoiceRowsPaidInvoices> paidInvoices = null;

  public ChargeInvoiceRowsInvoices invoicesId(BigDecimal invoicesId) { 

    this.invoicesId = invoicesId;
    return this;
  }

  /**
   * Unique invoice ID.
   * @return invoicesId
   **/
  
  @Schema(description = "Unique invoice ID.")
  
@Valid
  public BigDecimal getInvoicesId() {  
    return invoicesId;
  }



  public void setInvoicesId(BigDecimal invoicesId) { 
    this.invoicesId = invoicesId;
  }

  public ChargeInvoiceRowsInvoices invoicesDescription(String invoicesDescription) { 

    this.invoicesDescription = invoicesDescription;
    return this;
  }

  /**
   * Description of the invoice charge.
   * @return invoicesDescription
   **/
  
  @Schema(description = "Description of the invoice charge.")
  
  public String getInvoicesDescription() {  
    return invoicesDescription;
  }



  public void setInvoicesDescription(String invoicesDescription) { 
    this.invoicesDescription = invoicesDescription;
  }

  public ChargeInvoiceRowsInvoices invoicesAmount(BigDecimal invoicesAmount) { 

    this.invoicesAmount = invoicesAmount;
    return this;
  }

  /**
   * Invoice amount.
   * @return invoicesAmount
   **/
  
  @Schema(description = "Invoice amount.")
  
@Valid
  public BigDecimal getInvoicesAmount() {  
    return invoicesAmount;
  }



  public void setInvoicesAmount(BigDecimal invoicesAmount) { 
    this.invoicesAmount = invoicesAmount;
  }

  public ChargeInvoiceRowsInvoices invoicesDate(String invoicesDate) { 

    this.invoicesDate = invoicesDate;
    return this;
  }

  /**
   * Invoice date.
   * @return invoicesDate
   **/
  
  @Schema(description = "Invoice date.")
  
  public String getInvoicesDate() {  
    return invoicesDate;
  }



  public void setInvoicesDate(String invoicesDate) { 
    this.invoicesDate = invoicesDate;
  }

  public ChargeInvoiceRowsInvoices invoicesPaid(InvoicesPaidEnum invoicesPaid) { 

    this.invoicesPaid = invoicesPaid;
    return this;
  }

  /**
   * Get invoicesPaid
   * @return invoicesPaid
   **/
  
  @Schema(description = "")
  
@Valid
  public InvoicesPaidEnum getInvoicesPaid() {  
    return invoicesPaid;
  }



  public void setInvoicesPaid(InvoicesPaidEnum invoicesPaid) { 
    this.invoicesPaid = invoicesPaid;
  }

  public ChargeInvoiceRowsInvoices invoicesDueDate(String invoicesDueDate) { 

    this.invoicesDueDate = invoicesDueDate;
    return this;
  }

  /**
   * Get invoicesDueDate
   * @return invoicesDueDate
   **/
  
  @Schema(description = "")
  
  public String getInvoicesDueDate() {  
    return invoicesDueDate;
  }



  public void setInvoicesDueDate(String invoicesDueDate) { 
    this.invoicesDueDate = invoicesDueDate;
  }

  public ChargeInvoiceRowsInvoices invoicesCurrency(String invoicesCurrency) { 

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

  public ChargeInvoiceRowsInvoices currencySymbol(String currencySymbol) { 

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

  public ChargeInvoiceRowsInvoices invoicesDateFormatted(String invoicesDateFormatted) { 

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

  public ChargeInvoiceRowsInvoices paidInvoices(Map<String, ChargeInvoiceRowsPaidInvoices> paidInvoices) { 

    this.paidInvoices = paidInvoices;
    return this;
  }

  public ChargeInvoiceRowsInvoices putPaidInvoicesItem(String key, ChargeInvoiceRowsPaidInvoices paidInvoicesItem) {
    if (this.paidInvoices == null) {
      this.paidInvoices = new HashMap<>();
    }
    this.paidInvoices.put(key, paidInvoicesItem);
    return this;
  }

  /**
   * This is optional when invoices_paid = 1 this array will show
   * @return paidInvoices
   **/
  
  @Schema(description = "This is optional when invoices_paid = 1 this array will show")
  @Valid
  public Map<String, ChargeInvoiceRowsPaidInvoices> getPaidInvoices() {  
    return paidInvoices;
  }



  public void setPaidInvoices(Map<String, ChargeInvoiceRowsPaidInvoices> paidInvoices) { 
    this.paidInvoices = paidInvoices;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ChargeInvoiceRowsInvoices chargeInvoiceRowsInvoices = (ChargeInvoiceRowsInvoices) o;
    return Objects.equals(this.invoicesId, chargeInvoiceRowsInvoices.invoicesId) &&
        Objects.equals(this.invoicesDescription, chargeInvoiceRowsInvoices.invoicesDescription) &&
        Objects.equals(this.invoicesAmount, chargeInvoiceRowsInvoices.invoicesAmount) &&
        Objects.equals(this.invoicesDate, chargeInvoiceRowsInvoices.invoicesDate) &&
        Objects.equals(this.invoicesPaid, chargeInvoiceRowsInvoices.invoicesPaid) &&
        Objects.equals(this.invoicesDueDate, chargeInvoiceRowsInvoices.invoicesDueDate) &&
        Objects.equals(this.invoicesCurrency, chargeInvoiceRowsInvoices.invoicesCurrency) &&
        Objects.equals(this.currencySymbol, chargeInvoiceRowsInvoices.currencySymbol) &&
        Objects.equals(this.invoicesDateFormatted, chargeInvoiceRowsInvoices.invoicesDateFormatted) &&
        Objects.equals(this.paidInvoices, chargeInvoiceRowsInvoices.paidInvoices);
  }

  @Override
  public int hashCode() {
    return Objects.hash(invoicesId, invoicesDescription, invoicesAmount, invoicesDate, invoicesPaid, invoicesDueDate, invoicesCurrency, currencySymbol, invoicesDateFormatted, paidInvoices);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ChargeInvoiceRowsInvoices {\n");
    
    sb.append("    invoicesId: ").append(toIndentedString(invoicesId)).append("\n");
    sb.append("    invoicesDescription: ").append(toIndentedString(invoicesDescription)).append("\n");
    sb.append("    invoicesAmount: ").append(toIndentedString(invoicesAmount)).append("\n");
    sb.append("    invoicesDate: ").append(toIndentedString(invoicesDate)).append("\n");
    sb.append("    invoicesPaid: ").append(toIndentedString(invoicesPaid)).append("\n");
    sb.append("    invoicesDueDate: ").append(toIndentedString(invoicesDueDate)).append("\n");
    sb.append("    invoicesCurrency: ").append(toIndentedString(invoicesCurrency)).append("\n");
    sb.append("    currencySymbol: ").append(toIndentedString(currencySymbol)).append("\n");
    sb.append("    invoicesDateFormatted: ").append(toIndentedString(invoicesDateFormatted)).append("\n");
    sb.append("    paidInvoices: ").append(toIndentedString(paidInvoices)).append("\n");
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
