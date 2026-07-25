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
 * InlineResponse20021
 */
@Validated
@NotUndefined



public class InlineResponse20021   {
  @JsonProperty("text")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String text = null;

  @JsonProperty("invoice")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer invoice = null;

  @JsonProperty("order")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer order = null;


  public InlineResponse20021 text(String text) { 

    this.text = text;
    return this;
  }

  /**
   * Status message.
   * @return text
   **/
  
  @Schema(example = "Order Completed", description = "Status message.")
  
  public String getText() {  
    return text;
  }



  public void setText(String text) { 
    this.text = text;
  }

  public InlineResponse20021 invoice(Integer invoice) { 

    this.invoice = invoice;
    return this;
  }

  /**
   * Invoice ID for payment.
   * @return invoice
   **/
  
  @Schema(description = "Invoice ID for payment.")
  
  public Integer getInvoice() {  
    return invoice;
  }



  public void setInvoice(Integer invoice) { 
    this.invoice = invoice;
  }

  public InlineResponse20021 order(Integer order) { 

    this.order = order;
    return this;
  }

  /**
   * Server order ID.
   * @return order
   **/
  
  @Schema(description = "Server order ID.")
  
  public Integer getOrder() {  
    return order;
  }



  public void setOrder(Integer order) { 
    this.order = order;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20021 inlineResponse20021 = (InlineResponse20021) o;
    return Objects.equals(this.text, inlineResponse20021.text) &&
        Objects.equals(this.invoice, inlineResponse20021.invoice) &&
        Objects.equals(this.order, inlineResponse20021.order);
  }

  @Override
  public int hashCode() {
    return Objects.hash(text, invoice, order);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20021 {\n");
    
    sb.append("    text: ").append(toIndentedString(text)).append("\n");
    sb.append("    invoice: ").append(toIndentedString(invoice)).append("\n");
    sb.append("    order: ").append(toIndentedString(order)).append("\n");
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
