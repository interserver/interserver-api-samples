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
 * Generic response returned after placing a service order. Contains invoice IDs for payment and the new service ID.
 */
@Schema(description = "Generic response returned after placing a service order. Contains invoice IDs for payment and the new service ID.")
@Validated
@NotUndefined



public class ServiceOrderPostResponse   {
  @JsonProperty("continue")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Boolean _continue = null;

  @JsonProperty("errors")
  @Valid
  private List<String> errors = null;
  @JsonProperty("total_cost")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String totalCost = null;

  @JsonProperty("iid")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String iid = null;

  @JsonProperty("iids")
  @Valid
  private List<String> iids = null;
  @JsonProperty("real_iids")
  @Valid
  private List<String> realIids = null;
  @JsonProperty("serviceId")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer serviceId = null;

  @JsonProperty("invoice_description")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String invoiceDescription = null;


  public ServiceOrderPostResponse _continue(Boolean _continue) { 

    this._continue = _continue;
    return this;
  }

  /**
   * Whether the order was accepted and can proceed to payment.
   * @return _continue
   **/
  
  @Schema(description = "Whether the order was accepted and can proceed to payment.")
  
  public Boolean isContinue() {  
    return _continue;
  }



  public void setContinue(Boolean _continue) { 
    this._continue = _continue;
  }

  public ServiceOrderPostResponse errors(List<String> errors) { 

    this.errors = errors;
    return this;
  }

  public ServiceOrderPostResponse addErrorsItem(String errorsItem) {
    if (this.errors == null) {
      this.errors = new ArrayList<>();
    }
    this.errors.add(errorsItem);
    return this;
  }

  /**
   * List of validation errors (empty on success).
   * @return errors
   **/
  
  @Schema(description = "List of validation errors (empty on success).")
  
  public List<String> getErrors() {  
    return errors;
  }



  public void setErrors(List<String> errors) { 
    this.errors = errors;
  }

  public ServiceOrderPostResponse totalCost(String totalCost) { 

    this.totalCost = totalCost;
    return this;
  }

  /**
   * Total cost of the order.
   * @return totalCost
   **/
  
  @Schema(description = "Total cost of the order.")
  
  public String getTotalCost() {  
    return totalCost;
  }



  public void setTotalCost(String totalCost) { 
    this.totalCost = totalCost;
  }

  public ServiceOrderPostResponse iid(String iid) { 

    this.iid = iid;
    return this;
  }

  /**
   * Primary invoice ID for payment.
   * @return iid
   **/
  
  @Schema(description = "Primary invoice ID for payment.")
  
  public String getIid() {  
    return iid;
  }



  public void setIid(String iid) { 
    this.iid = iid;
  }

  public ServiceOrderPostResponse iids(List<String> iids) { 

    this.iids = iids;
    return this;
  }

  public ServiceOrderPostResponse addIidsItem(String iidsItem) {
    if (this.iids == null) {
      this.iids = new ArrayList<>();
    }
    this.iids.add(iidsItem);
    return this;
  }

  /**
   * All invoice identifiers associated with the order.
   * @return iids
   **/
  
  @Schema(description = "All invoice identifiers associated with the order.")
  
  public List<String> getIids() {  
    return iids;
  }



  public void setIids(List<String> iids) { 
    this.iids = iids;
  }

  public ServiceOrderPostResponse realIids(List<String> realIids) { 

    this.realIids = realIids;
    return this;
  }

  public ServiceOrderPostResponse addRealIidsItem(String realIidsItem) {
    if (this.realIids == null) {
      this.realIids = new ArrayList<>();
    }
    this.realIids.add(realIidsItem);
    return this;
  }

  /**
   * Numeric invoice IDs for use with billing endpoints.
   * @return realIids
   **/
  
  @Schema(description = "Numeric invoice IDs for use with billing endpoints.")
  
  public List<String> getRealIids() {  
    return realIids;
  }



  public void setRealIids(List<String> realIids) { 
    this.realIids = realIids;
  }

  public ServiceOrderPostResponse serviceId(Integer serviceId) { 

    this.serviceId = serviceId;
    return this;
  }

  /**
   * The new service ID created by the order.
   * @return serviceId
   **/
  
  @Schema(description = "The new service ID created by the order.")
  
  public Integer getServiceId() {  
    return serviceId;
  }



  public void setServiceId(Integer serviceId) { 
    this.serviceId = serviceId;
  }

  public ServiceOrderPostResponse invoiceDescription(String invoiceDescription) { 

    this.invoiceDescription = invoiceDescription;
    return this;
  }

  /**
   * Human-readable description of the invoice.
   * @return invoiceDescription
   **/
  
  @Schema(description = "Human-readable description of the invoice.")
  
  public String getInvoiceDescription() {  
    return invoiceDescription;
  }



  public void setInvoiceDescription(String invoiceDescription) { 
    this.invoiceDescription = invoiceDescription;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ServiceOrderPostResponse serviceOrderPostResponse = (ServiceOrderPostResponse) o;
    return Objects.equals(this._continue, serviceOrderPostResponse._continue) &&
        Objects.equals(this.errors, serviceOrderPostResponse.errors) &&
        Objects.equals(this.totalCost, serviceOrderPostResponse.totalCost) &&
        Objects.equals(this.iid, serviceOrderPostResponse.iid) &&
        Objects.equals(this.iids, serviceOrderPostResponse.iids) &&
        Objects.equals(this.realIids, serviceOrderPostResponse.realIids) &&
        Objects.equals(this.serviceId, serviceOrderPostResponse.serviceId) &&
        Objects.equals(this.invoiceDescription, serviceOrderPostResponse.invoiceDescription);
  }

  @Override
  public int hashCode() {
    return Objects.hash(_continue, errors, totalCost, iid, iids, realIids, serviceId, invoiceDescription);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ServiceOrderPostResponse {\n");
    
    sb.append("    _continue: ").append(toIndentedString(_continue)).append("\n");
    sb.append("    errors: ").append(toIndentedString(errors)).append("\n");
    sb.append("    totalCost: ").append(toIndentedString(totalCost)).append("\n");
    sb.append("    iid: ").append(toIndentedString(iid)).append("\n");
    sb.append("    iids: ").append(toIndentedString(iids)).append("\n");
    sb.append("    realIids: ").append(toIndentedString(realIids)).append("\n");
    sb.append("    serviceId: ").append(toIndentedString(serviceId)).append("\n");
    sb.append("    invoiceDescription: ").append(toIndentedString(invoiceDescription)).append("\n");
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
