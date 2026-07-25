package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.BackupOrderPostResponseCjParams;
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
 * Backup Order Placement Response
 */
@Schema(description = "Backup Order Placement Response")
@Validated
@NotUndefined



public class BackupOrderPostResponse   {
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

  @JsonProperty("cj_params")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private BackupOrderPostResponseCjParams cjParams = null;


  public BackupOrderPostResponse _continue(Boolean _continue) { 

    this._continue = _continue;
    return this;
  }

  /**
   * Get _continue
   * @return _continue
   **/
  
  @Schema(description = "")
  
  public Boolean isContinue() {  
    return _continue;
  }



  public void setContinue(Boolean _continue) { 
    this._continue = _continue;
  }

  public BackupOrderPostResponse errors(List<String> errors) { 

    this.errors = errors;
    return this;
  }

  public BackupOrderPostResponse addErrorsItem(String errorsItem) {
    if (this.errors == null) {
      this.errors = new ArrayList<>();
    }
    this.errors.add(errorsItem);
    return this;
  }

  /**
   * Get errors
   * @return errors
   **/
  
  @Schema(description = "")
  
  public List<String> getErrors() {  
    return errors;
  }



  public void setErrors(List<String> errors) { 
    this.errors = errors;
  }

  public BackupOrderPostResponse totalCost(String totalCost) { 

    this.totalCost = totalCost;
    return this;
  }

  /**
   * Get totalCost
   * @return totalCost
   **/
  
  @Schema(description = "")
  
  public String getTotalCost() {  
    return totalCost;
  }



  public void setTotalCost(String totalCost) { 
    this.totalCost = totalCost;
  }

  public BackupOrderPostResponse iid(String iid) { 

    this.iid = iid;
    return this;
  }

  /**
   * Get iid
   * @return iid
   **/
  
  @Schema(description = "")
  
  public String getIid() {  
    return iid;
  }



  public void setIid(String iid) { 
    this.iid = iid;
  }

  public BackupOrderPostResponse iids(List<String> iids) { 

    this.iids = iids;
    return this;
  }

  public BackupOrderPostResponse addIidsItem(String iidsItem) {
    if (this.iids == null) {
      this.iids = new ArrayList<>();
    }
    this.iids.add(iidsItem);
    return this;
  }

  /**
   * Get iids
   * @return iids
   **/
  
  @Schema(description = "")
  
  public List<String> getIids() {  
    return iids;
  }



  public void setIids(List<String> iids) { 
    this.iids = iids;
  }

  public BackupOrderPostResponse realIids(List<String> realIids) { 

    this.realIids = realIids;
    return this;
  }

  public BackupOrderPostResponse addRealIidsItem(String realIidsItem) {
    if (this.realIids == null) {
      this.realIids = new ArrayList<>();
    }
    this.realIids.add(realIidsItem);
    return this;
  }

  /**
   * Get realIids
   * @return realIids
   **/
  
  @Schema(description = "")
  
  public List<String> getRealIids() {  
    return realIids;
  }



  public void setRealIids(List<String> realIids) { 
    this.realIids = realIids;
  }

  public BackupOrderPostResponse serviceId(Integer serviceId) { 

    this.serviceId = serviceId;
    return this;
  }

  /**
   * Get serviceId
   * @return serviceId
   **/
  
  @Schema(description = "")
  
  public Integer getServiceId() {  
    return serviceId;
  }



  public void setServiceId(Integer serviceId) { 
    this.serviceId = serviceId;
  }

  public BackupOrderPostResponse invoiceDescription(String invoiceDescription) { 

    this.invoiceDescription = invoiceDescription;
    return this;
  }

  /**
   * Get invoiceDescription
   * @return invoiceDescription
   **/
  
  @Schema(description = "")
  
  public String getInvoiceDescription() {  
    return invoiceDescription;
  }



  public void setInvoiceDescription(String invoiceDescription) { 
    this.invoiceDescription = invoiceDescription;
  }

  public BackupOrderPostResponse cjParams(BackupOrderPostResponseCjParams cjParams) { 

    this.cjParams = cjParams;
    return this;
  }

  /**
   * Get cjParams
   * @return cjParams
   **/
  
  @Schema(description = "")
  
@Valid
  public BackupOrderPostResponseCjParams getCjParams() {  
    return cjParams;
  }



  public void setCjParams(BackupOrderPostResponseCjParams cjParams) { 
    this.cjParams = cjParams;
  }

  @Override
  public boolean equals(java.lang.Object o) {
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
