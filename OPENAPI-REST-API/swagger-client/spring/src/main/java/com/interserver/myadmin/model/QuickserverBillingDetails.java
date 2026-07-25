package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.QuickserverServiceExtra;
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
 * Billing information for a QuickServer service including payment status, billing cycle, and cost.
 */
@Schema(description = "Billing information for a QuickServer service including payment status, billing cycle, and cost.")
@Validated
@NotUndefined



public class QuickserverBillingDetails   {
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

  @JsonProperty("service_extra")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private QuickserverServiceExtra serviceExtra = null;

  @JsonProperty("service_extra_json")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serviceExtraJson = null;


  public QuickserverBillingDetails serviceLastInvoiceDate(String serviceLastInvoiceDate) { 

    this.serviceLastInvoiceDate = serviceLastInvoiceDate;
    return this;
  }

  /**
   * Last invoice date
   * @return serviceLastInvoiceDate
   **/
  
  @Schema(example = "April 11, 2023", description = "Last invoice date")
  
  public String getServiceLastInvoiceDate() {  
    return serviceLastInvoiceDate;
  }



  public void setServiceLastInvoiceDate(String serviceLastInvoiceDate) { 
    this.serviceLastInvoiceDate = serviceLastInvoiceDate;
  }

  public QuickserverBillingDetails servicePaymentStatus(String servicePaymentStatus) { 

    this.servicePaymentStatus = servicePaymentStatus;
    return this;
  }

  /**
   * Payment status
   * @return servicePaymentStatus
   **/
  
  @Schema(example = "Paid", description = "Payment status")
  
  public String getServicePaymentStatus() {  
    return servicePaymentStatus;
  }



  public void setServicePaymentStatus(String servicePaymentStatus) { 
    this.servicePaymentStatus = servicePaymentStatus;
  }

  public QuickserverBillingDetails serviceFrequency(String serviceFrequency) { 

    this.serviceFrequency = serviceFrequency;
    return this;
  }

  /**
   * Service frequency
   * @return serviceFrequency
   **/
  
  @Schema(example = "Monthly", description = "Service frequency")
  
  public String getServiceFrequency() {  
    return serviceFrequency;
  }



  public void setServiceFrequency(String serviceFrequency) { 
    this.serviceFrequency = serviceFrequency;
  }

  public QuickserverBillingDetails nextDate(String nextDate) { 

    this.nextDate = nextDate;
    return this;
  }

  /**
   * Next date
   * @return nextDate
   **/
  
  @Schema(example = "2023-05-11T20:00:06.000Z", description = "Next date")
  
  public String getNextDate() {  
    return nextDate;
  }



  public void setNextDate(String nextDate) { 
    this.nextDate = nextDate;
  }

  public QuickserverBillingDetails serviceNextInvoiceDate(String serviceNextInvoiceDate) { 

    this.serviceNextInvoiceDate = serviceNextInvoiceDate;
    return this;
  }

  /**
   * Next invoice date
   * @return serviceNextInvoiceDate
   **/
  
  @Schema(example = "May 11, 2023", description = "Next invoice date")
  
  public String getServiceNextInvoiceDate() {  
    return serviceNextInvoiceDate;
  }



  public void setServiceNextInvoiceDate(String serviceNextInvoiceDate) { 
    this.serviceNextInvoiceDate = serviceNextInvoiceDate;
  }

  public QuickserverBillingDetails serviceCurrency(String serviceCurrency) { 

    this.serviceCurrency = serviceCurrency;
    return this;
  }

  /**
   * Currency
   * @return serviceCurrency
   **/
  
  @Schema(example = "USD", description = "Currency")
  
  public String getServiceCurrency() {  
    return serviceCurrency;
  }



  public void setServiceCurrency(String serviceCurrency) { 
    this.serviceCurrency = serviceCurrency;
  }

  public QuickserverBillingDetails serviceCurrencySymbol(String serviceCurrencySymbol) { 

    this.serviceCurrencySymbol = serviceCurrencySymbol;
    return this;
  }

  /**
   * Currency symbol
   * @return serviceCurrencySymbol
   **/
  
  @Schema(example = "$", description = "Currency symbol")
  
  public String getServiceCurrencySymbol() {  
    return serviceCurrencySymbol;
  }



  public void setServiceCurrencySymbol(String serviceCurrencySymbol) { 
    this.serviceCurrencySymbol = serviceCurrencySymbol;
  }

  public QuickserverBillingDetails serviceCostInfo(String serviceCostInfo) { 

    this.serviceCostInfo = serviceCostInfo;
    return this;
  }

  /**
   * Cost information
   * @return serviceCostInfo
   **/
  
  @Schema(example = "49.00", description = "Cost information")
  
  public String getServiceCostInfo() {  
    return serviceCostInfo;
  }



  public void setServiceCostInfo(String serviceCostInfo) { 
    this.serviceCostInfo = serviceCostInfo;
  }

  public QuickserverBillingDetails serviceExtra(QuickserverServiceExtra serviceExtra) { 

    this.serviceExtra = serviceExtra;
    return this;
  }

  /**
   * Get serviceExtra
   * @return serviceExtra
   **/
  
  @Schema(description = "")
  
@Valid
  public QuickserverServiceExtra getServiceExtra() {  
    return serviceExtra;
  }



  public void setServiceExtra(QuickserverServiceExtra serviceExtra) { 
    this.serviceExtra = serviceExtra;
  }

  public QuickserverBillingDetails serviceExtraJson(String serviceExtraJson) { 

    this.serviceExtraJson = serviceExtraJson;
    return this;
  }

  /**
   * Extra information (JSON format)
   * @return serviceExtraJson
   **/
  
  @Schema(example = "{\"platform\":\"kvm\"}", description = "Extra information (JSON format)")
  
  public String getServiceExtraJson() {  
    return serviceExtraJson;
  }



  public void setServiceExtraJson(String serviceExtraJson) { 
    this.serviceExtraJson = serviceExtraJson;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    QuickserverBillingDetails quickserverBillingDetails = (QuickserverBillingDetails) o;
    return Objects.equals(this.serviceLastInvoiceDate, quickserverBillingDetails.serviceLastInvoiceDate) &&
        Objects.equals(this.servicePaymentStatus, quickserverBillingDetails.servicePaymentStatus) &&
        Objects.equals(this.serviceFrequency, quickserverBillingDetails.serviceFrequency) &&
        Objects.equals(this.nextDate, quickserverBillingDetails.nextDate) &&
        Objects.equals(this.serviceNextInvoiceDate, quickserverBillingDetails.serviceNextInvoiceDate) &&
        Objects.equals(this.serviceCurrency, quickserverBillingDetails.serviceCurrency) &&
        Objects.equals(this.serviceCurrencySymbol, quickserverBillingDetails.serviceCurrencySymbol) &&
        Objects.equals(this.serviceCostInfo, quickserverBillingDetails.serviceCostInfo) &&
        Objects.equals(this.serviceExtra, quickserverBillingDetails.serviceExtra) &&
        Objects.equals(this.serviceExtraJson, quickserverBillingDetails.serviceExtraJson);
  }

  @Override
  public int hashCode() {
    return Objects.hash(serviceLastInvoiceDate, servicePaymentStatus, serviceFrequency, nextDate, serviceNextInvoiceDate, serviceCurrency, serviceCurrencySymbol, serviceCostInfo, serviceExtra, serviceExtraJson);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class QuickserverBillingDetails {\n");
    
    sb.append("    serviceLastInvoiceDate: ").append(toIndentedString(serviceLastInvoiceDate)).append("\n");
    sb.append("    servicePaymentStatus: ").append(toIndentedString(servicePaymentStatus)).append("\n");
    sb.append("    serviceFrequency: ").append(toIndentedString(serviceFrequency)).append("\n");
    sb.append("    nextDate: ").append(toIndentedString(nextDate)).append("\n");
    sb.append("    serviceNextInvoiceDate: ").append(toIndentedString(serviceNextInvoiceDate)).append("\n");
    sb.append("    serviceCurrency: ").append(toIndentedString(serviceCurrency)).append("\n");
    sb.append("    serviceCurrencySymbol: ").append(toIndentedString(serviceCurrencySymbol)).append("\n");
    sb.append("    serviceCostInfo: ").append(toIndentedString(serviceCostInfo)).append("\n");
    sb.append("    serviceExtra: ").append(toIndentedString(serviceExtra)).append("\n");
    sb.append("    serviceExtraJson: ").append(toIndentedString(serviceExtraJson)).append("\n");
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
