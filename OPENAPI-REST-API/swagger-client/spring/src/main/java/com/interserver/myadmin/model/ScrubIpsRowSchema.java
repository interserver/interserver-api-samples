package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;
import java.math.BigDecimal;
import org.springframework.validation.annotation.Validated;
import org.openapitools.jackson.nullable.JsonNullable;
import io.swagger.configuration.NotUndefined;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.Nulls;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * ScrubIpsRowSchema
 */
@Validated
@NotUndefined



public class ScrubIpsRowSchema   {
  @JsonProperty("scrub_ip_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer scrubIpId = null;

  @JsonProperty("repeat_invoices_cost")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private BigDecimal repeatInvoicesCost = null;

  @JsonProperty("scrub_ip_ip")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String scrubIpIp = null;

  @JsonProperty("scrub_ip_status")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String scrubIpStatus = null;

  @JsonProperty("services_name")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String servicesName = null;


  public ScrubIpsRowSchema scrubIpId(Integer scrubIpId) { 

    this.scrubIpId = scrubIpId;
    return this;
  }

  /**
   * Get scrubIpId
   * @return scrubIpId
   **/
  
  @Schema(description = "")
  
  public Integer getScrubIpId() {  
    return scrubIpId;
  }



  public void setScrubIpId(Integer scrubIpId) { 
    this.scrubIpId = scrubIpId;
  }

  public ScrubIpsRowSchema repeatInvoicesCost(BigDecimal repeatInvoicesCost) { 

    this.repeatInvoicesCost = repeatInvoicesCost;
    return this;
  }

  /**
   * Get repeatInvoicesCost
   * @return repeatInvoicesCost
   **/
  
  @Schema(description = "")
  
@Valid
  public BigDecimal getRepeatInvoicesCost() {  
    return repeatInvoicesCost;
  }



  public void setRepeatInvoicesCost(BigDecimal repeatInvoicesCost) { 
    this.repeatInvoicesCost = repeatInvoicesCost;
  }

  public ScrubIpsRowSchema scrubIpIp(String scrubIpIp) { 

    this.scrubIpIp = scrubIpIp;
    return this;
  }

  /**
   * Get scrubIpIp
   * @return scrubIpIp
   **/
  
  @Schema(description = "")
  
  public String getScrubIpIp() {  
    return scrubIpIp;
  }



  public void setScrubIpIp(String scrubIpIp) { 
    this.scrubIpIp = scrubIpIp;
  }

  public ScrubIpsRowSchema scrubIpStatus(String scrubIpStatus) { 

    this.scrubIpStatus = scrubIpStatus;
    return this;
  }

  /**
   * Get scrubIpStatus
   * @return scrubIpStatus
   **/
  
  @Schema(description = "")
  
  public String getScrubIpStatus() {  
    return scrubIpStatus;
  }



  public void setScrubIpStatus(String scrubIpStatus) { 
    this.scrubIpStatus = scrubIpStatus;
  }

  public ScrubIpsRowSchema servicesName(String servicesName) { 

    this.servicesName = servicesName;
    return this;
  }

  /**
   * Get servicesName
   * @return servicesName
   **/
  
  @Schema(description = "")
  
  public String getServicesName() {  
    return servicesName;
  }



  public void setServicesName(String servicesName) { 
    this.servicesName = servicesName;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ScrubIpsRowSchema scrubIpsRowSchema = (ScrubIpsRowSchema) o;
    return Objects.equals(this.scrubIpId, scrubIpsRowSchema.scrubIpId) &&
        Objects.equals(this.repeatInvoicesCost, scrubIpsRowSchema.repeatInvoicesCost) &&
        Objects.equals(this.scrubIpIp, scrubIpsRowSchema.scrubIpIp) &&
        Objects.equals(this.scrubIpStatus, scrubIpsRowSchema.scrubIpStatus) &&
        Objects.equals(this.servicesName, scrubIpsRowSchema.servicesName);
  }

  @Override
  public int hashCode() {
    return Objects.hash(scrubIpId, repeatInvoicesCost, scrubIpIp, scrubIpStatus, servicesName);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ScrubIpsRowSchema {\n");
    
    sb.append("    scrubIpId: ").append(toIndentedString(scrubIpId)).append("\n");
    sb.append("    repeatInvoicesCost: ").append(toIndentedString(repeatInvoicesCost)).append("\n");
    sb.append("    scrubIpIp: ").append(toIndentedString(scrubIpIp)).append("\n");
    sb.append("    scrubIpStatus: ").append(toIndentedString(scrubIpStatus)).append("\n");
    sb.append("    servicesName: ").append(toIndentedString(servicesName)).append("\n");
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
