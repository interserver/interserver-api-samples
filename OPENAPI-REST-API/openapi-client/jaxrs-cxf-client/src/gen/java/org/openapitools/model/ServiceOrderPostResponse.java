package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Generic response returned after placing a service order. Contains invoice IDs for payment and the new service ID.
 */
@ApiModel(description="Generic response returned after placing a service order. Contains invoice IDs for payment and the new service ID.")

public class ServiceOrderPostResponse  {
  
 /**
  * Whether the order was accepted and can proceed to payment.
  */
  @ApiModelProperty(value = "Whether the order was accepted and can proceed to payment.")

  private Boolean _continue;

 /**
  * List of validation errors (empty on success).
  */
  @ApiModelProperty(value = "List of validation errors (empty on success).")

  private List<String> errors = new ArrayList<>();

 /**
  * Total cost of the order.
  */
  @ApiModelProperty(value = "Total cost of the order.")

  private String totalCost;

 /**
  * Primary invoice ID for payment.
  */
  @ApiModelProperty(value = "Primary invoice ID for payment.")

  private String iid;

 /**
  * All invoice identifiers associated with the order.
  */
  @ApiModelProperty(value = "All invoice identifiers associated with the order.")

  private List<String> iids = new ArrayList<>();

 /**
  * Numeric invoice IDs for use with billing endpoints.
  */
  @ApiModelProperty(value = "Numeric invoice IDs for use with billing endpoints.")

  private List<String> realIids = new ArrayList<>();

 /**
  * The new service ID created by the order.
  */
  @ApiModelProperty(value = "The new service ID created by the order.")

  private Integer serviceId;

 /**
  * Human-readable description of the invoice.
  */
  @ApiModelProperty(value = "Human-readable description of the invoice.")

  private String invoiceDescription;
 /**
   * Whether the order was accepted and can proceed to payment.
   * @return _continue
  **/
  @JsonProperty("continue")
  public Boolean isContinue() {
    return _continue;
  }

  public void setContinue(Boolean _continue) {
    this._continue = _continue;
  }

  public ServiceOrderPostResponse _continue(Boolean _continue) {
    this._continue = _continue;
    return this;
  }

 /**
   * List of validation errors (empty on success).
   * @return errors
  **/
  @JsonProperty("errors")
  public List<String> getErrors() {
    return errors;
  }

  public void setErrors(List<String> errors) {
    this.errors = errors;
  }

  public ServiceOrderPostResponse errors(List<String> errors) {
    this.errors = errors;
    return this;
  }

  public ServiceOrderPostResponse addErrorsItem(String errorsItem) {
    this.errors.add(errorsItem);
    return this;
  }

 /**
   * Total cost of the order.
   * @return totalCost
  **/
  @JsonProperty("total_cost")
  public String getTotalCost() {
    return totalCost;
  }

  public void setTotalCost(String totalCost) {
    this.totalCost = totalCost;
  }

  public ServiceOrderPostResponse totalCost(String totalCost) {
    this.totalCost = totalCost;
    return this;
  }

 /**
   * Primary invoice ID for payment.
   * @return iid
  **/
  @JsonProperty("iid")
  public String getIid() {
    return iid;
  }

  public void setIid(String iid) {
    this.iid = iid;
  }

  public ServiceOrderPostResponse iid(String iid) {
    this.iid = iid;
    return this;
  }

 /**
   * All invoice identifiers associated with the order.
   * @return iids
  **/
  @JsonProperty("iids")
  public List<String> getIids() {
    return iids;
  }

  public void setIids(List<String> iids) {
    this.iids = iids;
  }

  public ServiceOrderPostResponse iids(List<String> iids) {
    this.iids = iids;
    return this;
  }

  public ServiceOrderPostResponse addIidsItem(String iidsItem) {
    this.iids.add(iidsItem);
    return this;
  }

 /**
   * Numeric invoice IDs for use with billing endpoints.
   * @return realIids
  **/
  @JsonProperty("real_iids")
  public List<String> getRealIids() {
    return realIids;
  }

  public void setRealIids(List<String> realIids) {
    this.realIids = realIids;
  }

  public ServiceOrderPostResponse realIids(List<String> realIids) {
    this.realIids = realIids;
    return this;
  }

  public ServiceOrderPostResponse addRealIidsItem(String realIidsItem) {
    this.realIids.add(realIidsItem);
    return this;
  }

 /**
   * The new service ID created by the order.
   * @return serviceId
  **/
  @JsonProperty("serviceId")
  public Integer getServiceId() {
    return serviceId;
  }

  public void setServiceId(Integer serviceId) {
    this.serviceId = serviceId;
  }

  public ServiceOrderPostResponse serviceId(Integer serviceId) {
    this.serviceId = serviceId;
    return this;
  }

 /**
   * Human-readable description of the invoice.
   * @return invoiceDescription
  **/
  @JsonProperty("invoice_description")
  public String getInvoiceDescription() {
    return invoiceDescription;
  }

  public void setInvoiceDescription(String invoiceDescription) {
    this.invoiceDescription = invoiceDescription;
  }

  public ServiceOrderPostResponse invoiceDescription(String invoiceDescription) {
    this.invoiceDescription = invoiceDescription;
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
  private static String toIndentedString(Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}

