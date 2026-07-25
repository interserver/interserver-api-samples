package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.DomainOrderServices;
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
 * Ordering metadata for domain registration and transfers.
 */
@Schema(description = "Ordering metadata for domain registration and transfers.")
@Validated
@NotUndefined



public class DomainOrder   {
  @JsonProperty("whoisPrivacyCost")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String whoisPrivacyCost = null;

  @JsonProperty("services")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private DomainOrderServices services = null;

  @JsonProperty("tldServices")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Object tldServices = null;


  public DomainOrder whoisPrivacyCost(String whoisPrivacyCost) { 

    this.whoisPrivacyCost = whoisPrivacyCost;
    return this;
  }

  /**
   * Cost of Whois Privacy
   * @return whoisPrivacyCost
   **/
  
  @Schema(example = "5", description = "Cost of Whois Privacy")
  
  public String getWhoisPrivacyCost() {  
    return whoisPrivacyCost;
  }



  public void setWhoisPrivacyCost(String whoisPrivacyCost) { 
    this.whoisPrivacyCost = whoisPrivacyCost;
  }

  public DomainOrder services(DomainOrderServices services) { 

    this.services = services;
    return this;
  }

  /**
   * Get services
   * @return services
   **/
  
  @Schema(description = "")
  
@Valid
  public DomainOrderServices getServices() {  
    return services;
  }



  public void setServices(DomainOrderServices services) { 
    this.services = services;
  }

  public DomainOrder tldServices(Object tldServices) { 

    this.tldServices = tldServices;
    return this;
  }

  /**
   * Map of TLDs to domain service IDs.
   * @return tldServices
   **/
  
  @Schema(description = "Map of TLDs to domain service IDs.")
  
  public Object getTldServices() {  
    return tldServices;
  }



  public void setTldServices(Object tldServices) { 
    this.tldServices = tldServices;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    DomainOrder domainOrder = (DomainOrder) o;
    return Objects.equals(this.whoisPrivacyCost, domainOrder.whoisPrivacyCost) &&
        Objects.equals(this.services, domainOrder.services) &&
        Objects.equals(this.tldServices, domainOrder.tldServices);
  }

  @Override
  public int hashCode() {
    return Objects.hash(whoisPrivacyCost, services, tldServices);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DomainOrder {\n");
    
    sb.append("    whoisPrivacyCost: ").append(toIndentedString(whoisPrivacyCost)).append("\n");
    sb.append("    services: ").append(toIndentedString(services)).append("\n");
    sb.append("    tldServices: ").append(toIndentedString(tldServices)).append("\n");
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
