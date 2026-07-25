package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;
import java.util.ArrayList;
import java.util.List;
import org.springframework.validation.annotation.Validated;
import org.openapitools.jackson.nullable.JsonNullable;
import io.swagger.configuration.NotUndefined;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.Nulls;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * Summary list of invoices for the account.
 */
@Schema(description = "Summary list of invoices for the account.")
@Validated
@NotUndefined



public class BillingInvoiceList   {
  @JsonProperty("rows")
  @Valid
  private List<Object> rows = null;
  @JsonProperty("summary")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Object summary = null;


  public BillingInvoiceList rows(List<Object> rows) { 

    this.rows = rows;
    return this;
  }

  public BillingInvoiceList addRowsItem(Object rowsItem) {
    if (this.rows == null) {
      this.rows = new ArrayList<>();
    }
    this.rows.add(rowsItem);
    return this;
  }

  /**
   * Invoice rows returned for the account.
   * @return rows
   **/
  
  @Schema(description = "Invoice rows returned for the account.")
  
  public List<Object> getRows() {  
    return rows;
  }



  public void setRows(List<Object> rows) { 
    this.rows = rows;
  }

  public BillingInvoiceList summary(Object summary) { 

    this.summary = summary;
    return this;
  }

  /**
   * Totals and summary data for the invoices list.
   * @return summary
   **/
  
  @Schema(description = "Totals and summary data for the invoices list.")
  
  public Object getSummary() {  
    return summary;
  }



  public void setSummary(Object summary) { 
    this.summary = summary;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    BillingInvoiceList billingInvoiceList = (BillingInvoiceList) o;
    return Objects.equals(this.rows, billingInvoiceList.rows) &&
        Objects.equals(this.summary, billingInvoiceList.summary);
  }

  @Override
  public int hashCode() {
    return Objects.hash(rows, summary);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class BillingInvoiceList {\n");
    
    sb.append("    rows: ").append(toIndentedString(rows)).append("\n");
    sb.append("    summary: ").append(toIndentedString(summary)).append("\n");
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
