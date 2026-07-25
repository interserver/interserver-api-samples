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
 * BackupBillingDetails
 */
@Validated
@NotUndefined



public class BackupBillingDetails   {
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
  private String serviceExtra = null;

  @JsonProperty("service_extra_json")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serviceExtraJson = null;


  public BackupBillingDetails serviceLastInvoiceDate(String serviceLastInvoiceDate) { 

    this.serviceLastInvoiceDate = serviceLastInvoiceDate;
    return this;
  }

  /**
   * Last invoice date of the service.
   * @return serviceLastInvoiceDate
   **/
  
  @Schema(example = "December 29, 2021", description = "Last invoice date of the service.")
  
  public String getServiceLastInvoiceDate() {  
    return serviceLastInvoiceDate;
  }



  public void setServiceLastInvoiceDate(String serviceLastInvoiceDate) { 
    this.serviceLastInvoiceDate = serviceLastInvoiceDate;
  }

  public BackupBillingDetails servicePaymentStatus(String servicePaymentStatus) { 

    this.servicePaymentStatus = servicePaymentStatus;
    return this;
  }

  /**
   * Payment status of the service.
   * @return servicePaymentStatus
   **/
  
  @Schema(example = "Paid", description = "Payment status of the service.")
  
  public String getServicePaymentStatus() {  
    return servicePaymentStatus;
  }



  public void setServicePaymentStatus(String servicePaymentStatus) { 
    this.servicePaymentStatus = servicePaymentStatus;
  }

  public BackupBillingDetails serviceFrequency(String serviceFrequency) { 

    this.serviceFrequency = serviceFrequency;
    return this;
  }

  /**
   * Billing frequency of the service.
   * @return serviceFrequency
   **/
  
  @Schema(example = "Monthly", description = "Billing frequency of the service.")
  
  public String getServiceFrequency() {  
    return serviceFrequency;
  }



  public void setServiceFrequency(String serviceFrequency) { 
    this.serviceFrequency = serviceFrequency;
  }

  public BackupBillingDetails nextDate(String nextDate) { 

    this.nextDate = nextDate;
    return this;
  }

  /**
   * Next billing date of the service.
   * @return nextDate
   **/
  
  @Schema(example = "2022-01-29T14:09:57.000Z", description = "Next billing date of the service.")
  
  public String getNextDate() {  
    return nextDate;
  }



  public void setNextDate(String nextDate) { 
    this.nextDate = nextDate;
  }

  public BackupBillingDetails serviceNextInvoiceDate(String serviceNextInvoiceDate) { 

    this.serviceNextInvoiceDate = serviceNextInvoiceDate;
    return this;
  }

  /**
   * Next invoice date of the service.
   * @return serviceNextInvoiceDate
   **/
  
  @Schema(example = "January 29, 2022", description = "Next invoice date of the service.")
  
  public String getServiceNextInvoiceDate() {  
    return serviceNextInvoiceDate;
  }



  public void setServiceNextInvoiceDate(String serviceNextInvoiceDate) { 
    this.serviceNextInvoiceDate = serviceNextInvoiceDate;
  }

  public BackupBillingDetails serviceCurrency(String serviceCurrency) { 

    this.serviceCurrency = serviceCurrency;
    return this;
  }

  /**
   * Currency of the service.
   * @return serviceCurrency
   **/
  
  @Schema(example = "USD", description = "Currency of the service.")
  
  public String getServiceCurrency() {  
    return serviceCurrency;
  }



  public void setServiceCurrency(String serviceCurrency) { 
    this.serviceCurrency = serviceCurrency;
  }

  public BackupBillingDetails serviceCurrencySymbol(String serviceCurrencySymbol) { 

    this.serviceCurrencySymbol = serviceCurrencySymbol;
    return this;
  }

  /**
   * Currency symbol of the service.
   * @return serviceCurrencySymbol
   **/
  
  @Schema(example = "$", description = "Currency symbol of the service.")
  
  public String getServiceCurrencySymbol() {  
    return serviceCurrencySymbol;
  }



  public void setServiceCurrencySymbol(String serviceCurrencySymbol) { 
    this.serviceCurrencySymbol = serviceCurrencySymbol;
  }

  public BackupBillingDetails serviceCostInfo(String serviceCostInfo) { 

    this.serviceCostInfo = serviceCostInfo;
    return this;
  }

  /**
   * Cost information of the service.
   * @return serviceCostInfo
   **/
  
  @Schema(example = "3", description = "Cost information of the service.")
  
  public String getServiceCostInfo() {  
    return serviceCostInfo;
  }



  public void setServiceCostInfo(String serviceCostInfo) { 
    this.serviceCostInfo = serviceCostInfo;
  }

  public BackupBillingDetails serviceExtra(String serviceExtra) { 

    this.serviceExtra = serviceExtra;
    return this;
  }

  /**
   * Service Extra Info
   * @return serviceExtra
   **/
  
  @Schema(example = "[]", description = "Service Extra Info")
  
  public String getServiceExtra() {  
    return serviceExtra;
  }



  public void setServiceExtra(String serviceExtra) { 
    this.serviceExtra = serviceExtra;
  }

  public BackupBillingDetails serviceExtraJson(String serviceExtraJson) { 

    this.serviceExtraJson = serviceExtraJson;
    return this;
  }

  /**
   * JSON representation of extra service information.
   * @return serviceExtraJson
   **/
  
  @Schema(example = "[]", description = "JSON representation of extra service information.")
  
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
    BackupBillingDetails backupBillingDetails = (BackupBillingDetails) o;
    return Objects.equals(this.serviceLastInvoiceDate, backupBillingDetails.serviceLastInvoiceDate) &&
        Objects.equals(this.servicePaymentStatus, backupBillingDetails.servicePaymentStatus) &&
        Objects.equals(this.serviceFrequency, backupBillingDetails.serviceFrequency) &&
        Objects.equals(this.nextDate, backupBillingDetails.nextDate) &&
        Objects.equals(this.serviceNextInvoiceDate, backupBillingDetails.serviceNextInvoiceDate) &&
        Objects.equals(this.serviceCurrency, backupBillingDetails.serviceCurrency) &&
        Objects.equals(this.serviceCurrencySymbol, backupBillingDetails.serviceCurrencySymbol) &&
        Objects.equals(this.serviceCostInfo, backupBillingDetails.serviceCostInfo) &&
        Objects.equals(this.serviceExtra, backupBillingDetails.serviceExtra) &&
        Objects.equals(this.serviceExtraJson, backupBillingDetails.serviceExtraJson);
  }

  @Override
  public int hashCode() {
    return Objects.hash(serviceLastInvoiceDate, servicePaymentStatus, serviceFrequency, nextDate, serviceNextInvoiceDate, serviceCurrency, serviceCurrencySymbol, serviceCostInfo, serviceExtra, serviceExtraJson);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class BackupBillingDetails {\n");
    
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
