package org.openapitools.model;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class PutScrubIps200Response  {
  
  @ApiModelProperty(value = "")

  private Boolean _continue;

  @ApiModelProperty(value = "")

  private List<String> errors = new ArrayList<>();

  @ApiModelProperty(value = "")

  private Integer serviceType;

  @ApiModelProperty(value = "")

  private BigDecimal serviceCost;

  @ApiModelProperty(value = "")

  private BigDecimal originalCost;

  @ApiModelProperty(value = "")

  private BigDecimal repeatServiceCost;
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

  public PutScrubIps200Response _continue(Boolean _continue) {
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

  public PutScrubIps200Response errors(List<String> errors) {
    this.errors = errors;
    return this;
  }

  public PutScrubIps200Response addErrorsItem(String errorsItem) {
    this.errors.add(errorsItem);
    return this;
  }

 /**
   * Get serviceType
   * @return serviceType
  **/
  @JsonProperty("serviceType")
  public Integer getServiceType() {
    return serviceType;
  }

  public void setServiceType(Integer serviceType) {
    this.serviceType = serviceType;
  }

  public PutScrubIps200Response serviceType(Integer serviceType) {
    this.serviceType = serviceType;
    return this;
  }

 /**
   * Get serviceCost
   * @return serviceCost
  **/
  @JsonProperty("serviceCost")
  public BigDecimal getServiceCost() {
    return serviceCost;
  }

  public void setServiceCost(BigDecimal serviceCost) {
    this.serviceCost = serviceCost;
  }

  public PutScrubIps200Response serviceCost(BigDecimal serviceCost) {
    this.serviceCost = serviceCost;
    return this;
  }

 /**
   * Get originalCost
   * @return originalCost
  **/
  @JsonProperty("originalCost")
  public BigDecimal getOriginalCost() {
    return originalCost;
  }

  public void setOriginalCost(BigDecimal originalCost) {
    this.originalCost = originalCost;
  }

  public PutScrubIps200Response originalCost(BigDecimal originalCost) {
    this.originalCost = originalCost;
    return this;
  }

 /**
   * Get repeatServiceCost
   * @return repeatServiceCost
  **/
  @JsonProperty("repeatServiceCost")
  public BigDecimal getRepeatServiceCost() {
    return repeatServiceCost;
  }

  public void setRepeatServiceCost(BigDecimal repeatServiceCost) {
    this.repeatServiceCost = repeatServiceCost;
  }

  public PutScrubIps200Response repeatServiceCost(BigDecimal repeatServiceCost) {
    this.repeatServiceCost = repeatServiceCost;
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
    PutScrubIps200Response putScrubIps200Response = (PutScrubIps200Response) o;
    return Objects.equals(this._continue, putScrubIps200Response._continue) &&
        Objects.equals(this.errors, putScrubIps200Response.errors) &&
        Objects.equals(this.serviceType, putScrubIps200Response.serviceType) &&
        Objects.equals(this.serviceCost, putScrubIps200Response.serviceCost) &&
        Objects.equals(this.originalCost, putScrubIps200Response.originalCost) &&
        Objects.equals(this.repeatServiceCost, putScrubIps200Response.repeatServiceCost);
  }

  @Override
  public int hashCode() {
    return Objects.hash(_continue, errors, serviceType, serviceCost, originalCost, repeatServiceCost);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PutScrubIps200Response {\n");
    
    sb.append("    _continue: ").append(toIndentedString(_continue)).append("\n");
    sb.append("    errors: ").append(toIndentedString(errors)).append("\n");
    sb.append("    serviceType: ").append(toIndentedString(serviceType)).append("\n");
    sb.append("    serviceCost: ").append(toIndentedString(serviceCost)).append("\n");
    sb.append("    originalCost: ").append(toIndentedString(originalCost)).append("\n");
    sb.append("    repeatServiceCost: ").append(toIndentedString(repeatServiceCost)).append("\n");
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

