package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.BackupOrderPostResponseCjParams;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Backup Order Placement Response
 */
@ApiModel(description="Backup Order Placement Response")

public class BackupOrderPostResponse  {
  
  @ApiModelProperty(value = "")

  private Boolean _continue;

  @ApiModelProperty(value = "")

  private List<String> errors = new ArrayList<>();

  @ApiModelProperty(value = "")

  private String totalCost;

  @ApiModelProperty(value = "")

  private String iid;

  @ApiModelProperty(value = "")

  private List<String> iids = new ArrayList<>();

  @ApiModelProperty(value = "")

  private List<String> realIids = new ArrayList<>();

  @ApiModelProperty(value = "")

  private Integer serviceId;

  @ApiModelProperty(value = "")

  private String invoiceDescription;

  @ApiModelProperty(value = "")

  private BackupOrderPostResponseCjParams cjParams;
 /**
   * Get _continue
   * @return _continue
  **/
  @JsonProperty("continue")
  public Boolean isContinue() {
    return _continue;
  }

  public void setContinue(Boolean _continue) {
    this._continue = _continue;
  }

  public BackupOrderPostResponse _continue(Boolean _continue) {
    this._continue = _continue;
    return this;
  }

 /**
   * Get errors
   * @return errors
  **/
  @JsonProperty("errors")
  public List<String> getErrors() {
    return errors;
  }

  public void setErrors(List<String> errors) {
    this.errors = errors;
  }

  public BackupOrderPostResponse errors(List<String> errors) {
    this.errors = errors;
    return this;
  }

  public BackupOrderPostResponse addErrorsItem(String errorsItem) {
    this.errors.add(errorsItem);
    return this;
  }

 /**
   * Get totalCost
   * @return totalCost
  **/
  @JsonProperty("total_cost")
  public String getTotalCost() {
    return totalCost;
  }

  public void setTotalCost(String totalCost) {
    this.totalCost = totalCost;
  }

  public BackupOrderPostResponse totalCost(String totalCost) {
    this.totalCost = totalCost;
    return this;
  }

 /**
   * Get iid
   * @return iid
  **/
  @JsonProperty("iid")
  public String getIid() {
    return iid;
  }

  public void setIid(String iid) {
    this.iid = iid;
  }

  public BackupOrderPostResponse iid(String iid) {
    this.iid = iid;
    return this;
  }

 /**
   * Get iids
   * @return iids
  **/
  @JsonProperty("iids")
  public List<String> getIids() {
    return iids;
  }

  public void setIids(List<String> iids) {
    this.iids = iids;
  }

  public BackupOrderPostResponse iids(List<String> iids) {
    this.iids = iids;
    return this;
  }

  public BackupOrderPostResponse addIidsItem(String iidsItem) {
    this.iids.add(iidsItem);
    return this;
  }

 /**
   * Get realIids
   * @return realIids
  **/
  @JsonProperty("real_iids")
  public List<String> getRealIids() {
    return realIids;
  }

  public void setRealIids(List<String> realIids) {
    this.realIids = realIids;
  }

  public BackupOrderPostResponse realIids(List<String> realIids) {
    this.realIids = realIids;
    return this;
  }

  public BackupOrderPostResponse addRealIidsItem(String realIidsItem) {
    this.realIids.add(realIidsItem);
    return this;
  }

 /**
   * Get serviceId
   * @return serviceId
  **/
  @JsonProperty("serviceId")
  public Integer getServiceId() {
    return serviceId;
  }

  public void setServiceId(Integer serviceId) {
    this.serviceId = serviceId;
  }

  public BackupOrderPostResponse serviceId(Integer serviceId) {
    this.serviceId = serviceId;
    return this;
  }

 /**
   * Get invoiceDescription
   * @return invoiceDescription
  **/
  @JsonProperty("invoice_description")
  public String getInvoiceDescription() {
    return invoiceDescription;
  }

  public void setInvoiceDescription(String invoiceDescription) {
    this.invoiceDescription = invoiceDescription;
  }

  public BackupOrderPostResponse invoiceDescription(String invoiceDescription) {
    this.invoiceDescription = invoiceDescription;
    return this;
  }

 /**
   * Get cjParams
   * @return cjParams
  **/
  @JsonProperty("cj_params")
  public BackupOrderPostResponseCjParams getCjParams() {
    return cjParams;
  }

  public void setCjParams(BackupOrderPostResponseCjParams cjParams) {
    this.cjParams = cjParams;
  }

  public BackupOrderPostResponse cjParams(BackupOrderPostResponseCjParams cjParams) {
    this.cjParams = cjParams;
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
    BackupOrderPostResponse backupOrderPostResponse = (BackupOrderPostResponse) o;
    return Objects.equals(this._continue, backupOrderPostResponse._continue) &&
        Objects.equals(this.errors, backupOrderPostResponse.errors) &&
        Objects.equals(this.totalCost, backupOrderPostResponse.totalCost) &&
        Objects.equals(this.iid, backupOrderPostResponse.iid) &&
        Objects.equals(this.iids, backupOrderPostResponse.iids) &&
        Objects.equals(this.realIids, backupOrderPostResponse.realIids) &&
        Objects.equals(this.serviceId, backupOrderPostResponse.serviceId) &&
        Objects.equals(this.invoiceDescription, backupOrderPostResponse.invoiceDescription) &&
        Objects.equals(this.cjParams, backupOrderPostResponse.cjParams);
  }

  @Override
  public int hashCode() {
    return Objects.hash(_continue, errors, totalCost, iid, iids, realIids, serviceId, invoiceDescription, cjParams);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class BackupOrderPostResponse {\n");
    
    sb.append("    _continue: ").append(toIndentedString(_continue)).append("\n");
    sb.append("    errors: ").append(toIndentedString(errors)).append("\n");
    sb.append("    totalCost: ").append(toIndentedString(totalCost)).append("\n");
    sb.append("    iid: ").append(toIndentedString(iid)).append("\n");
    sb.append("    iids: ").append(toIndentedString(iids)).append("\n");
    sb.append("    realIids: ").append(toIndentedString(realIids)).append("\n");
    sb.append("    serviceId: ").append(toIndentedString(serviceId)).append("\n");
    sb.append("    invoiceDescription: ").append(toIndentedString(invoiceDescription)).append("\n");
    sb.append("    cjParams: ").append(toIndentedString(cjParams)).append("\n");
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

