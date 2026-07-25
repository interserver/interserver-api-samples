package io.swagger.model;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import javax.validation.constraints.*;
import javax.validation.Valid;


import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class InlineResponse20020   {

  private @Valid Boolean _continue = null;

  private @Valid List<String> errors = new ArrayList<String>();

  private @Valid Integer serviceType = null;

  private @Valid BigDecimal serviceCost = null;

  private @Valid BigDecimal originalCost = null;

  private @Valid BigDecimal repeatServiceCost = null;

  /**
   **/
  public InlineResponse20020 _continue(Boolean _continue) {
    this._continue = _continue;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("continue")
  @NotNull

  public Boolean isContinue() {
    return _continue;
  }
  public void setContinue(Boolean _continue) {
    this._continue = _continue;
  }

  /**
   **/
  public InlineResponse20020 errors(List<String> errors) {
    this.errors = errors;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("errors")
  @NotNull

  public List<String> getErrors() {
    return errors;
  }
  public void setErrors(List<String> errors) {
    this.errors = errors;
  }

  /**
   **/
  public InlineResponse20020 serviceType(Integer serviceType) {
    this.serviceType = serviceType;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("serviceType")
  @NotNull

  public Integer getServiceType() {
    return serviceType;
  }
  public void setServiceType(Integer serviceType) {
    this.serviceType = serviceType;
  }

  /**
   **/
  public InlineResponse20020 serviceCost(BigDecimal serviceCost) {
    this.serviceCost = serviceCost;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("serviceCost")
  @NotNull

  public BigDecimal getServiceCost() {
    return serviceCost;
  }
  public void setServiceCost(BigDecimal serviceCost) {
    this.serviceCost = serviceCost;
  }

  /**
   **/
  public InlineResponse20020 originalCost(BigDecimal originalCost) {
    this.originalCost = originalCost;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("originalCost")
  @NotNull

  public BigDecimal getOriginalCost() {
    return originalCost;
  }
  public void setOriginalCost(BigDecimal originalCost) {
    this.originalCost = originalCost;
  }

  /**
   **/
  public InlineResponse20020 repeatServiceCost(BigDecimal repeatServiceCost) {
    this.repeatServiceCost = repeatServiceCost;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("repeatServiceCost")
  @NotNull

  public BigDecimal getRepeatServiceCost() {
    return repeatServiceCost;
  }
  public void setRepeatServiceCost(BigDecimal repeatServiceCost) {
    this.repeatServiceCost = repeatServiceCost;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20020 inlineResponse20020 = (InlineResponse20020) o;
    return Objects.equals(_continue, inlineResponse20020._continue) &&
        Objects.equals(errors, inlineResponse20020.errors) &&
        Objects.equals(serviceType, inlineResponse20020.serviceType) &&
        Objects.equals(serviceCost, inlineResponse20020.serviceCost) &&
        Objects.equals(originalCost, inlineResponse20020.originalCost) &&
        Objects.equals(repeatServiceCost, inlineResponse20020.repeatServiceCost);
  }

  @Override
  public int hashCode() {
    return Objects.hash(_continue, errors, serviceType, serviceCost, originalCost, repeatServiceCost);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20020 {\n");
    
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
