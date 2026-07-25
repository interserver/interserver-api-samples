package org.openapitools.model;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;
import org.openapitools.model.ChargeInvoiceRowsInvoicesValuePaidInvoicesValue;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ChargeInvoiceRowsInvoicesValue  {
  
 /**
  * Unique invoice ID.
  */
  @ApiModelProperty(value = "Unique invoice ID.")

  private BigDecimal invoicesId;

 /**
  * Description of the invoice charge.
  */
  @ApiModelProperty(value = "Description of the invoice charge.")

  private String invoicesDescription;

 /**
  * Invoice amount.
  */
  @ApiModelProperty(value = "Invoice amount.")

  private BigDecimal invoicesAmount;

 /**
  * Invoice date.
  */
  @ApiModelProperty(value = "Invoice date.")

  private String invoicesDate;

public enum InvoicesPaidEnum {

NUMBER_0(BigDecimal.valueOf(new BigDecimal("0"))), NUMBER_1(BigDecimal.valueOf(new BigDecimal("1"))), NUMBER_unknown_default_open_api(BigDecimal.valueOf(new BigDecimal("11184809")));


    private BigDecimal value;

    InvoicesPaidEnum (BigDecimal v) {
        value = v;
    }

    public BigDecimal value() {
        return value;
    }

    @Override
    public String toString() {
        return String.valueOf(value);
    }

    public static InvoicesPaidEnum fromValue(BigDecimal value) {
        for (InvoicesPaidEnum b : InvoicesPaidEnum.values()) {
            if (b.value.equals(value)) {
                return b;
            }
        }
        throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }
}

  @ApiModelProperty(value = "")

  private InvoicesPaidEnum invoicesPaid;

  @ApiModelProperty(value = "")

  private String invoicesDueDate;

  @ApiModelProperty(value = "")

  private String invoicesCurrency;

  @ApiModelProperty(value = "")

  private String currencySymbol;

  @ApiModelProperty(value = "")

  private String invoicesDateFormatted;

 /**
  * This is optional when invoices_paid = 1 this array will show
  */
  @ApiModelProperty(value = "This is optional when invoices_paid = 1 this array will show")

  private Map<String, ChargeInvoiceRowsInvoicesValuePaidInvoicesValue> paidInvoices = new HashMap<>();
 /**
   * Unique invoice ID.
   * @return invoicesId
  **/
  @JsonProperty("invoices_id")
  public BigDecimal getInvoicesId() {
    return invoicesId;
  }

  public void setInvoicesId(BigDecimal invoicesId) {
    this.invoicesId = invoicesId;
  }

  public ChargeInvoiceRowsInvoicesValue invoicesId(BigDecimal invoicesId) {
    this.invoicesId = invoicesId;
    return this;
  }

 /**
   * Description of the invoice charge.
   * @return invoicesDescription
  **/
  @JsonProperty("invoices_description")
  public String getInvoicesDescription() {
    return invoicesDescription;
  }

  public void setInvoicesDescription(String invoicesDescription) {
    this.invoicesDescription = invoicesDescription;
  }

  public ChargeInvoiceRowsInvoicesValue invoicesDescription(String invoicesDescription) {
    this.invoicesDescription = invoicesDescription;
    return this;
  }

 /**
   * Invoice amount.
   * @return invoicesAmount
  **/
  @JsonProperty("invoices_amount")
  public BigDecimal getInvoicesAmount() {
    return invoicesAmount;
  }

  public void setInvoicesAmount(BigDecimal invoicesAmount) {
    this.invoicesAmount = invoicesAmount;
  }

  public ChargeInvoiceRowsInvoicesValue invoicesAmount(BigDecimal invoicesAmount) {
    this.invoicesAmount = invoicesAmount;
    return this;
  }

 /**
   * Invoice date.
   * @return invoicesDate
  **/
  @JsonProperty("invoices_date")
  public String getInvoicesDate() {
    return invoicesDate;
  }

  public void setInvoicesDate(String invoicesDate) {
    this.invoicesDate = invoicesDate;
  }

  public ChargeInvoiceRowsInvoicesValue invoicesDate(String invoicesDate) {
    this.invoicesDate = invoicesDate;
    return this;
  }

 /**
   * Get invoicesPaid
   * @return invoicesPaid
  **/
  @JsonProperty("invoices_paid")
  public BigDecimal getInvoicesPaid() {
    if (invoicesPaid == null) {
      return null;
    }
    return invoicesPaid.value();
  }

  public void setInvoicesPaid(InvoicesPaidEnum invoicesPaid) {
    this.invoicesPaid = invoicesPaid;
  }

  public ChargeInvoiceRowsInvoicesValue invoicesPaid(InvoicesPaidEnum invoicesPaid) {
    this.invoicesPaid = invoicesPaid;
    return this;
  }

 /**
   * Get invoicesDueDate
   * @return invoicesDueDate
  **/
  @JsonProperty("invoices_due_date")
  public String getInvoicesDueDate() {
    return invoicesDueDate;
  }

  public void setInvoicesDueDate(String invoicesDueDate) {
    this.invoicesDueDate = invoicesDueDate;
  }

  public ChargeInvoiceRowsInvoicesValue invoicesDueDate(String invoicesDueDate) {
    this.invoicesDueDate = invoicesDueDate;
    return this;
  }

 /**
   * Get invoicesCurrency
   * @return invoicesCurrency
  **/
  @JsonProperty("invoices_currency")
  public String getInvoicesCurrency() {
    return invoicesCurrency;
  }

  public void setInvoicesCurrency(String invoicesCurrency) {
    this.invoicesCurrency = invoicesCurrency;
  }

  public ChargeInvoiceRowsInvoicesValue invoicesCurrency(String invoicesCurrency) {
    this.invoicesCurrency = invoicesCurrency;
    return this;
  }

 /**
   * Get currencySymbol
   * @return currencySymbol
  **/
  @JsonProperty("currency_symbol")
  public String getCurrencySymbol() {
    return currencySymbol;
  }

  public void setCurrencySymbol(String currencySymbol) {
    this.currencySymbol = currencySymbol;
  }

  public ChargeInvoiceRowsInvoicesValue currencySymbol(String currencySymbol) {
    this.currencySymbol = currencySymbol;
    return this;
  }

 /**
   * Get invoicesDateFormatted
   * @return invoicesDateFormatted
  **/
  @JsonProperty("invoices_date_formatted")
  public String getInvoicesDateFormatted() {
    return invoicesDateFormatted;
  }

  public void setInvoicesDateFormatted(String invoicesDateFormatted) {
    this.invoicesDateFormatted = invoicesDateFormatted;
  }

  public ChargeInvoiceRowsInvoicesValue invoicesDateFormatted(String invoicesDateFormatted) {
    this.invoicesDateFormatted = invoicesDateFormatted;
    return this;
  }

 /**
   * This is optional when invoices_paid &#x3D; 1 this array will show
   * @return paidInvoices
  **/
  @JsonProperty("paid_invoices")
  public Map<String, ChargeInvoiceRowsInvoicesValuePaidInvoicesValue> getPaidInvoices() {
    return paidInvoices;
  }

  public void setPaidInvoices(Map<String, ChargeInvoiceRowsInvoicesValuePaidInvoicesValue> paidInvoices) {
    this.paidInvoices = paidInvoices;
  }

  public ChargeInvoiceRowsInvoicesValue paidInvoices(Map<String, ChargeInvoiceRowsInvoicesValuePaidInvoicesValue> paidInvoices) {
    this.paidInvoices = paidInvoices;
    return this;
  }

  public ChargeInvoiceRowsInvoicesValue putPaidInvoicesItem(String key, ChargeInvoiceRowsInvoicesValuePaidInvoicesValue paidInvoicesItem) {
    this.paidInvoices.put(key, paidInvoicesItem);
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
    ChargeInvoiceRowsInvoicesValue chargeInvoiceRowsInvoicesValue = (ChargeInvoiceRowsInvoicesValue) o;
    return Objects.equals(this.invoicesId, chargeInvoiceRowsInvoicesValue.invoicesId) &&
        Objects.equals(this.invoicesDescription, chargeInvoiceRowsInvoicesValue.invoicesDescription) &&
        Objects.equals(this.invoicesAmount, chargeInvoiceRowsInvoicesValue.invoicesAmount) &&
        Objects.equals(this.invoicesDate, chargeInvoiceRowsInvoicesValue.invoicesDate) &&
        Objects.equals(this.invoicesPaid, chargeInvoiceRowsInvoicesValue.invoicesPaid) &&
        Objects.equals(this.invoicesDueDate, chargeInvoiceRowsInvoicesValue.invoicesDueDate) &&
        Objects.equals(this.invoicesCurrency, chargeInvoiceRowsInvoicesValue.invoicesCurrency) &&
        Objects.equals(this.currencySymbol, chargeInvoiceRowsInvoicesValue.currencySymbol) &&
        Objects.equals(this.invoicesDateFormatted, chargeInvoiceRowsInvoicesValue.invoicesDateFormatted) &&
        Objects.equals(this.paidInvoices, chargeInvoiceRowsInvoicesValue.paidInvoices);
  }

  @Override
  public int hashCode() {
    return Objects.hash(invoicesId, invoicesDescription, invoicesAmount, invoicesDate, invoicesPaid, invoicesDueDate, invoicesCurrency, currencySymbol, invoicesDateFormatted, paidInvoices);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ChargeInvoiceRowsInvoicesValue {\n");
    
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
  private static String toIndentedString(Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}

