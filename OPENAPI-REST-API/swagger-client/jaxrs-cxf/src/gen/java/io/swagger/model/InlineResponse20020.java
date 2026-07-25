package io.swagger.model;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import javax.validation.constraints.*;

import io.swagger.v3.oas.annotations.media.Schema;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonCreator;

public class InlineResponse20020   {
  
  @Schema(description = "")
  private Boolean _continue = null;
  
  @Schema(description = "")
  private List<String> errors = null;
  
  @Schema(description = "")
  private Integer serviceType = null;
  
  @Schema(description = "")
  private BigDecimal serviceCost = null;
  
  @Schema(description = "")
  private BigDecimal originalCost = null;
  
  @Schema(description = "")
  private BigDecimal repeatServiceCost = null;
 /**
   * Get _continue
   * @return _continue
  **/
  @JsonProperty("continue")
  @NotNull
  public Boolean isContinue() {
    return _continue;
  }

  public void setContinue(Boolean _continue) {
    this._continue = _continue;
  }

  public InlineResponse20020 _continue(Boolean _continue) {
    this._continue = _continue;
    return this;
  }

 /**
   * Get errors
   * @return errors
  **/
  @JsonProperty("errors")
  @NotNull
  public List<String> getErrors() {
    return errors;
  }

  public void setErrors(List<String> errors) {
    this.errors = errors;
  }

  public InlineResponse20020 errors(List<String> errors) {
    this.errors = errors;
    return this;
  }

  public InlineResponse20020 addErrorsItem(String errorsItem) {
    this.errors.add(errorsItem);
    return this;
  }

 /**
   * Get serviceType
   * @return serviceType
  **/
  @JsonProperty("serviceType")
  @NotNull
  public Integer getServiceType() {
    return serviceType;
  }

  public void setServiceType(Integer serviceType) {
    this.serviceType = serviceType;
  }

  public InlineResponse20020 serviceType(Integer serviceType) {
    this.serviceType = serviceType;
    return this;
  }

 /**
   * Get serviceCost
   * @return serviceCost
  **/
  @JsonProperty("serviceCost")
  @NotNull
  public BigDecimal getServiceCost() {
    return serviceCost;
  }

  public void setServiceCost(BigDecimal serviceCost) {
    this.serviceCost = serviceCost;
  }

  public InlineResponse20020 serviceCost(BigDecimal serviceCost) {
    this.serviceCost = serviceCost;
    return this;
  }

 /**
   * Get originalCost
   * @return originalCost
  **/
  @JsonProperty("originalCost")
  @NotNull
  public BigDecimal getOriginalCost() {
    return originalCost;
  }

  public void setOriginalCost(BigDecimal originalCost) {
    this.originalCost = originalCost;
  }

  public InlineResponse20020 originalCost(BigDecimal originalCost) {
    this.originalCost = originalCost;
    return this;
  }

 /**
   * Get repeatServiceCost
   * @return repeatServiceCost
  **/
  @JsonProperty("repeatServiceCost")
  @NotNull
  public BigDecimal getRepeatServiceCost() {
    return repeatServiceCost;
  }

  public void setRepeatServiceCost(BigDecimal repeatServiceCost) {
    this.repeatServiceCost = repeatServiceCost;
  }

  public InlineResponse20020 repeatServiceCost(BigDecimal repeatServiceCost) {
    this.repeatServiceCost = repeatServiceCost;
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
