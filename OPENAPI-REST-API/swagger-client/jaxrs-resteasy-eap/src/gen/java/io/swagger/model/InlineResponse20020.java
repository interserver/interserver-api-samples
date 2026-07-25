package io.swagger.model;

import java.util.Objects;
import java.util.ArrayList;
import java.util.HashMap;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import java.math.BigDecimal;
import java.util.List;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;



public class InlineResponse20020   {
  private Boolean _continue = null;
  private List<String> errors = new ArrayList<String>();
  private Integer serviceType = null;
  private BigDecimal serviceCost = null;
  private BigDecimal originalCost = null;
  private BigDecimal repeatServiceCost = null;

  /**
   **/
  
  @Schema(description = "")
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
  
  @Schema(description = "")
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
  
  @Schema(description = "")
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
  
  @Schema(description = "")
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
  
  @Schema(description = "")
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
  
  @Schema(description = "")
  @JsonProperty("repeatServiceCost")
  @NotNull
  public BigDecimal getRepeatServiceCost() {
    return repeatServiceCost;
  }
  public void setRepeatServiceCost(BigDecimal repeatServiceCost) {
    this.repeatServiceCost = repeatServiceCost;
  }


  @Override
  public boolean equals(Object o) {
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
