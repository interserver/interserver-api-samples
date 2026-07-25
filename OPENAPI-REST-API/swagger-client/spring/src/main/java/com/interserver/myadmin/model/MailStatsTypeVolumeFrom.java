package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
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
 * MailStatsTypeVolumeFrom
 */
@Validated
@NotUndefined



public class MailStatsTypeVolumeFrom   {
  @JsonProperty("billing@somedomain.com")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer billingAtSomedomainCom = null;

  @JsonProperty("sales@somedomain.com")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer salesAtSomedomainCom = null;


  public MailStatsTypeVolumeFrom billingAtSomedomainCom(Integer billingAtSomedomainCom) { 

    this.billingAtSomedomainCom = billingAtSomedomainCom;
    return this;
  }

  /**
   * Get billingAtSomedomainCom
   * @return billingAtSomedomainCom
   **/
  
  @Schema(description = "")
  
  public Integer getBillingAtSomedomainCom() {  
    return billingAtSomedomainCom;
  }



  public void setBillingAtSomedomainCom(Integer billingAtSomedomainCom) { 
    this.billingAtSomedomainCom = billingAtSomedomainCom;
  }

  public MailStatsTypeVolumeFrom salesAtSomedomainCom(Integer salesAtSomedomainCom) { 

    this.salesAtSomedomainCom = salesAtSomedomainCom;
    return this;
  }

  /**
   * Get salesAtSomedomainCom
   * @return salesAtSomedomainCom
   **/
  
  @Schema(description = "")
  
  public Integer getSalesAtSomedomainCom() {  
    return salesAtSomedomainCom;
  }



  public void setSalesAtSomedomainCom(Integer salesAtSomedomainCom) { 
    this.salesAtSomedomainCom = salesAtSomedomainCom;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    MailStatsTypeVolumeFrom mailStatsTypeVolumeFrom = (MailStatsTypeVolumeFrom) o;
    return Objects.equals(this.billingAtSomedomainCom, mailStatsTypeVolumeFrom.billingAtSomedomainCom) &&
        Objects.equals(this.salesAtSomedomainCom, mailStatsTypeVolumeFrom.salesAtSomedomainCom);
  }

  @Override
  public int hashCode() {
    return Objects.hash(billingAtSomedomainCom, salesAtSomedomainCom);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class MailStatsTypeVolumeFrom {\n");
    
    sb.append("    billingAtSomedomainCom: ").append(toIndentedString(billingAtSomedomainCom)).append("\n");
    sb.append("    salesAtSomedomainCom: ").append(toIndentedString(salesAtSomedomainCom)).append("\n");
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
