package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;
import java.math.BigDecimal;
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
 * InlineResponse20020
 */
@Validated
@NotUndefined



public class InlineResponse20020   {
  @JsonProperty("continue")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Boolean _continue = null;

  @JsonProperty("errors")
  @Valid
  private List<String> errors = null;
  @JsonProperty("serviceType")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer serviceType = null;

  @JsonProperty("serviceCost")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private BigDecimal serviceCost = null;

  @JsonProperty("originalCost")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private BigDecimal originalCost = null;

  @JsonProperty("repeatServiceCost")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private BigDecimal repeatServiceCost = null;


  public InlineResponse20020 _continue(Boolean _continue) { 

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

  public InlineResponse20020 errors(List<String> errors) { 

    this.errors = errors;
    return this;
  }

  public InlineResponse20020 addErrorsItem(String errorsItem) {
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

  public InlineResponse20020 serviceType(Integer serviceType) { 

    this.serviceType = serviceType;
    return this;
  }

  /**
   * Get serviceType
   * @return serviceType
   **/
  
  @Schema(description = "")
  
  public Integer getServiceType() {  
    return serviceType;
  }



  public void setServiceType(Integer serviceType) { 
    this.serviceType = serviceType;
  }

  public InlineResponse20020 serviceCost(BigDecimal serviceCost) { 

    this.serviceCost = serviceCost;
    return this;
  }

  /**
   * Get serviceCost
   * @return serviceCost
   **/
  
  @Schema(description = "")
  
@Valid
  public BigDecimal getServiceCost() {  
    return serviceCost;
  }



  public void setServiceCost(BigDecimal serviceCost) { 
    this.serviceCost = serviceCost;
  }

  public InlineResponse20020 originalCost(BigDecimal originalCost) { 

    this.originalCost = originalCost;
    return this;
  }

  /**
   * Get originalCost
   * @return originalCost
   **/
  
  @Schema(description = "")
  
@Valid
  public BigDecimal getOriginalCost() {  
    return originalCost;
  }



  public void setOriginalCost(BigDecimal originalCost) { 
    this.originalCost = originalCost;
  }

  public InlineResponse20020 repeatServiceCost(BigDecimal repeatServiceCost) { 

    this.repeatServiceCost = repeatServiceCost;
    return this;
  }

  /**
   * Get repeatServiceCost
   * @return repeatServiceCost
   **/
  
  @Schema(description = "")
  
@Valid
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
    return Objects.equals(this._continue, inlineResponse20020._continue) &&
        Objects.equals(this.errors, inlineResponse20020.errors) &&
        Objects.equals(this.serviceType, inlineResponse20020.serviceType) &&
        Objects.equals(this.serviceCost, inlineResponse20020.serviceCost) &&
        Objects.equals(this.originalCost, inlineResponse20020.originalCost) &&
        Objects.equals(this.repeatServiceCost, inlineResponse20020.repeatServiceCost);
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
