package org.openapitools.model;

import java.util.HashMap;
import java.util.Map;
import org.openapitools.model.ChargeInvoiceRowsInvoicesValue;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Billing invoices associated with a service, including invoice IDs, descriptions, amounts, and payment status.
 */
@ApiModel(description="Billing invoices associated with a service, including invoice IDs, descriptions, amounts, and payment status.")

public class ChargeInvoiceRows  {
  
 /**
  * Whether the invoice retrieval was successful.
  */
  @ApiModelProperty(value = "Whether the invoice retrieval was successful.")

  private Boolean success;

 /**
  * List of invoices for the service.
  */
  @ApiModelProperty(value = "List of invoices for the service.")

  private Map<String, ChargeInvoiceRowsInvoicesValue> invoices = new HashMap<>();
 /**
   * Whether the invoice retrieval was successful.
   * @return success
  **/
  @JsonProperty("success")
  public Boolean isSuccess() {
    return success;
  }

  public void setSuccess(Boolean success) {
    this.success = success;
  }

  public ChargeInvoiceRows success(Boolean success) {
    this.success = success;
    return this;
  }

 /**
   * List of invoices for the service.
   * @return invoices
  **/
  @JsonProperty("invoices")
  public Map<String, ChargeInvoiceRowsInvoicesValue> getInvoices() {
    return invoices;
  }

  public void setInvoices(Map<String, ChargeInvoiceRowsInvoicesValue> invoices) {
    this.invoices = invoices;
  }

  public ChargeInvoiceRows invoices(Map<String, ChargeInvoiceRowsInvoicesValue> invoices) {
    this.invoices = invoices;
    return this;
  }

  public ChargeInvoiceRows putInvoicesItem(String key, ChargeInvoiceRowsInvoicesValue invoicesItem) {
    this.invoices.put(key, invoicesItem);
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
    ChargeInvoiceRows chargeInvoiceRows = (ChargeInvoiceRows) o;
    return Objects.equals(this.success, chargeInvoiceRows.success) &&
        Objects.equals(this.invoices, chargeInvoiceRows.invoices);
  }

  @Override
  public int hashCode() {
    return Objects.hash(success, invoices);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ChargeInvoiceRows {\n");
    
    sb.append("    success: ").append(toIndentedString(success)).append("\n");
    sb.append("    invoices: ").append(toIndentedString(invoices)).append("\n");
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

