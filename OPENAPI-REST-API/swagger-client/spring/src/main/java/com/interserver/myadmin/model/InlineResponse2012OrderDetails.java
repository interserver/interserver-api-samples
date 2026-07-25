package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.InlineResponse2012OrderDetailsCjParams;
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
 * InlineResponse2012OrderDetails
 */
@Validated
@NotUndefined



public class InlineResponse2012OrderDetails   {
  @JsonProperty("total_cost")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer totalCost = null;

  @JsonProperty("service_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer serviceId = null;

  @JsonProperty("invoice_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer invoiceId = null;

  @JsonProperty("invoice_description")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String invoiceDescription = null;

  @JsonProperty("cj_params")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private InlineResponse2012OrderDetailsCjParams cjParams = null;


  public InlineResponse2012OrderDetails totalCost(Integer totalCost) { 

    this.totalCost = totalCost;
    return this;
  }

  /**
   * Get totalCost
   * @return totalCost
   **/
  
  @Schema(example = "5", description = "")
  
  public Integer getTotalCost() {  
    return totalCost;
  }



  public void setTotalCost(Integer totalCost) { 
    this.totalCost = totalCost;
  }

  public InlineResponse2012OrderDetails serviceId(Integer serviceId) { 

    this.serviceId = serviceId;
    return this;
  }

  /**
   * Get serviceId
   * @return serviceId
   **/
  
  @Schema(example = "12346", description = "")
  
  public Integer getServiceId() {  
    return serviceId;
  }



  public void setServiceId(Integer serviceId) { 
    this.serviceId = serviceId;
  }

  public InlineResponse2012OrderDetails invoiceId(Integer invoiceId) { 

    this.invoiceId = invoiceId;
    return this;
  }

  /**
   * Get invoiceId
   * @return invoiceId
   **/
  
  @Schema(example = "2746273", description = "")
  
  public Integer getInvoiceId() {  
    return invoiceId;
  }



  public void setInvoiceId(Integer invoiceId) { 
    this.invoiceId = invoiceId;
  }

  public InlineResponse2012OrderDetails invoiceDescription(String invoiceDescription) { 

    this.invoiceDescription = invoiceDescription;
    return this;
  }

  /**
   * Get invoiceDescription
   * @return invoiceDescription
   **/
  
  @Schema(example = "Scrub + Current Ip", description = "")
  
  public String getInvoiceDescription() {  
    return invoiceDescription;
  }



  public void setInvoiceDescription(String invoiceDescription) { 
    this.invoiceDescription = invoiceDescription;
  }

  public InlineResponse2012OrderDetails cjParams(InlineResponse2012OrderDetailsCjParams cjParams) { 

    this.cjParams = cjParams;
    return this;
  }

  /**
   * Get cjParams
   * @return cjParams
   **/
  
  @Schema(description = "")
  
@Valid
  public InlineResponse2012OrderDetailsCjParams getCjParams() {  
    return cjParams;
  }



  public void setCjParams(InlineResponse2012OrderDetailsCjParams cjParams) { 
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
    InlineResponse2012OrderDetails inlineResponse2012OrderDetails = (InlineResponse2012OrderDetails) o;
    return Objects.equals(this.totalCost, inlineResponse2012OrderDetails.totalCost) &&
        Objects.equals(this.serviceId, inlineResponse2012OrderDetails.serviceId) &&
        Objects.equals(this.invoiceId, inlineResponse2012OrderDetails.invoiceId) &&
        Objects.equals(this.invoiceDescription, inlineResponse2012OrderDetails.invoiceDescription) &&
        Objects.equals(this.cjParams, inlineResponse2012OrderDetails.cjParams);
  }

  @Override
  public int hashCode() {
    return Objects.hash(totalCost, serviceId, invoiceId, invoiceDescription, cjParams);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse2012OrderDetails {\n");
    
    sb.append("    totalCost: ").append(toIndentedString(totalCost)).append("\n");
    sb.append("    serviceId: ").append(toIndentedString(serviceId)).append("\n");
    sb.append("    invoiceId: ").append(toIndentedString(invoiceId)).append("\n");
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
