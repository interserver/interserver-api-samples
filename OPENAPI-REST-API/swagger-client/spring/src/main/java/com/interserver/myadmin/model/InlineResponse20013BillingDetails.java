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
 * InlineResponse20013BillingDetails
 */
@Validated
@NotUndefined



public class InlineResponse20013BillingDetails   {
  @JsonProperty("service_last_invoice_date")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serviceLastInvoiceDate = null;

  @JsonProperty("service_payment_status")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String servicePaymentStatus = null;

  @JsonProperty("service_frequency")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serviceFrequency = null;

  @JsonProperty("next_date")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String nextDate = null;

  @JsonProperty("service_next_invoice_date")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serviceNextInvoiceDate = null;

  @JsonProperty("service_currency")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serviceCurrency = null;

  @JsonProperty("service_currency_symbol")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serviceCurrencySymbol = null;

  @JsonProperty("service_cost_info")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serviceCostInfo = null;


  public InlineResponse20013BillingDetails serviceLastInvoiceDate(String serviceLastInvoiceDate) { 

    this.serviceLastInvoiceDate = serviceLastInvoiceDate;
    return this;
  }

  /**
   * Get serviceLastInvoiceDate
   * @return serviceLastInvoiceDate
   **/
  
  @Schema(description = "")
  
  public String getServiceLastInvoiceDate() {  
    return serviceLastInvoiceDate;
  }



  public void setServiceLastInvoiceDate(String serviceLastInvoiceDate) { 
    this.serviceLastInvoiceDate = serviceLastInvoiceDate;
  }

  public InlineResponse20013BillingDetails servicePaymentStatus(String servicePaymentStatus) { 

    this.servicePaymentStatus = servicePaymentStatus;
    return this;
  }

  /**
   * Get servicePaymentStatus
   * @return servicePaymentStatus
   **/
  
  @Schema(description = "")
  
  public String getServicePaymentStatus() {  
    return servicePaymentStatus;
  }



  public void setServicePaymentStatus(String servicePaymentStatus) { 
    this.servicePaymentStatus = servicePaymentStatus;
  }

  public InlineResponse20013BillingDetails serviceFrequency(String serviceFrequency) { 

    this.serviceFrequency = serviceFrequency;
    return this;
  }

  /**
   * Get serviceFrequency
   * @return serviceFrequency
   **/
  
  @Schema(description = "")
  
  public String getServiceFrequency() {  
    return serviceFrequency;
  }



  public void setServiceFrequency(String serviceFrequency) { 
    this.serviceFrequency = serviceFrequency;
  }

  public InlineResponse20013BillingDetails nextDate(String nextDate) { 

    this.nextDate = nextDate;
    return this;
  }

  /**
   * Get nextDate
   * @return nextDate
   **/
  
  @Schema(description = "")
  
  public String getNextDate() {  
    return nextDate;
  }



  public void setNextDate(String nextDate) { 
    this.nextDate = nextDate;
  }

  public InlineResponse20013BillingDetails serviceNextInvoiceDate(String serviceNextInvoiceDate) { 

    this.serviceNextInvoiceDate = serviceNextInvoiceDate;
    return this;
  }

  /**
   * Get serviceNextInvoiceDate
   * @return serviceNextInvoiceDate
   **/
  
  @Schema(description = "")
  
  public String getServiceNextInvoiceDate() {  
    return serviceNextInvoiceDate;
  }



  public void setServiceNextInvoiceDate(String serviceNextInvoiceDate) { 
    this.serviceNextInvoiceDate = serviceNextInvoiceDate;
  }

  public InlineResponse20013BillingDetails serviceCurrency(String serviceCurrency) { 

    this.serviceCurrency = serviceCurrency;
    return this;
  }

  /**
   * Get serviceCurrency
   * @return serviceCurrency
   **/
  
  @Schema(description = "")
  
  public String getServiceCurrency() {  
    return serviceCurrency;
  }



  public void setServiceCurrency(String serviceCurrency) { 
    this.serviceCurrency = serviceCurrency;
  }

  public InlineResponse20013BillingDetails serviceCurrencySymbol(String serviceCurrencySymbol) { 

    this.serviceCurrencySymbol = serviceCurrencySymbol;
    return this;
  }

  /**
   * Get serviceCurrencySymbol
   * @return serviceCurrencySymbol
   **/
  
  @Schema(description = "")
  
  public String getServiceCurrencySymbol() {  
    return serviceCurrencySymbol;
  }



  public void setServiceCurrencySymbol(String serviceCurrencySymbol) { 
    this.serviceCurrencySymbol = serviceCurrencySymbol;
  }

  public InlineResponse20013BillingDetails serviceCostInfo(String serviceCostInfo) { 

    this.serviceCostInfo = serviceCostInfo;
    return this;
  }

  /**
   * Get serviceCostInfo
   * @return serviceCostInfo
   **/
  
  @Schema(description = "")
  
  public String getServiceCostInfo() {  
    return serviceCostInfo;
  }



  public void setServiceCostInfo(String serviceCostInfo) { 
    this.serviceCostInfo = serviceCostInfo;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20013BillingDetails inlineResponse20013BillingDetails = (InlineResponse20013BillingDetails) o;
    return Objects.equals(this.serviceLastInvoiceDate, inlineResponse20013BillingDetails.serviceLastInvoiceDate) &&
        Objects.equals(this.servicePaymentStatus, inlineResponse20013BillingDetails.servicePaymentStatus) &&
        Objects.equals(this.serviceFrequency, inlineResponse20013BillingDetails.serviceFrequency) &&
        Objects.equals(this.nextDate, inlineResponse20013BillingDetails.nextDate) &&
        Objects.equals(this.serviceNextInvoiceDate, inlineResponse20013BillingDetails.serviceNextInvoiceDate) &&
        Objects.equals(this.serviceCurrency, inlineResponse20013BillingDetails.serviceCurrency) &&
        Objects.equals(this.serviceCurrencySymbol, inlineResponse20013BillingDetails.serviceCurrencySymbol) &&
        Objects.equals(this.serviceCostInfo, inlineResponse20013BillingDetails.serviceCostInfo);
  }

  @Override
  public int hashCode() {
    return Objects.hash(serviceLastInvoiceDate, servicePaymentStatus, serviceFrequency, nextDate, serviceNextInvoiceDate, serviceCurrency, serviceCurrencySymbol, serviceCostInfo);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20013BillingDetails {\n");
    
    sb.append("    serviceLastInvoiceDate: ").append(toIndentedString(serviceLastInvoiceDate)).append("\n");
    sb.append("    servicePaymentStatus: ").append(toIndentedString(servicePaymentStatus)).append("\n");
    sb.append("    serviceFrequency: ").append(toIndentedString(serviceFrequency)).append("\n");
    sb.append("    nextDate: ").append(toIndentedString(nextDate)).append("\n");
    sb.append("    serviceNextInvoiceDate: ").append(toIndentedString(serviceNextInvoiceDate)).append("\n");
    sb.append("    serviceCurrency: ").append(toIndentedString(serviceCurrency)).append("\n");
    sb.append("    serviceCurrencySymbol: ").append(toIndentedString(serviceCurrencySymbol)).append("\n");
    sb.append("    serviceCostInfo: ").append(toIndentedString(serviceCostInfo)).append("\n");
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
