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
 * A result row from the &#x60;Domains&#x60; &#x60;GET&#x60; request.
 */
@Schema(description = "A result row from the `Domains` `GET` request.")
@Validated
@NotUndefined



public class DomainRow   {
  @JsonProperty("domain_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String domainId = null;

  @JsonProperty("domain_hostname")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String domainHostname = null;

  @JsonProperty("domain_expire_date")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String domainExpireDate = null;

  @JsonProperty("cost")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String cost = null;

  @JsonProperty("domain_status")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String domainStatus = null;


  public DomainRow domainId(String domainId) { 

    this.domainId = domainId;
    return this;
  }

  /**
   * The ID number of the domain in our billing system.
   * @return domainId
   **/
  
  @Schema(example = "59237", description = "The ID number of the domain in our billing system.")
  
  public String getDomainId() {  
    return domainId;
  }



  public void setDomainId(String domainId) { 
    this.domainId = domainId;
  }

  public DomainRow domainHostname(String domainHostname) { 

    this.domainHostname = domainHostname;
    return this;
  }

  /**
   * The hostname of the domain.
   * @return domainHostname
   **/
  
  @Schema(example = "mydomain.com", description = "The hostname of the domain.")
  
  public String getDomainHostname() {  
    return domainHostname;
  }



  public void setDomainHostname(String domainHostname) { 
    this.domainHostname = domainHostname;
  }

  public DomainRow domainExpireDate(String domainExpireDate) { 

    this.domainExpireDate = domainExpireDate;
    return this;
  }

  /**
   * The expiration date of the domain.
   * @return domainExpireDate
   **/
  
  @Schema(example = "2023-08-14T00:59:38.000Z", description = "The expiration date of the domain.")
  
  public String getDomainExpireDate() {  
    return domainExpireDate;
  }



  public void setDomainExpireDate(String domainExpireDate) { 
    this.domainExpireDate = domainExpireDate;
  }

  public DomainRow cost(String cost) { 

    this.cost = cost;
    return this;
  }

  /**
   * The cost of the domain.
   * @return cost
   **/
  
  @Schema(example = "11.00", description = "The cost of the domain.")
  
  public String getCost() {  
    return cost;
  }



  public void setCost(String cost) { 
    this.cost = cost;
  }

  public DomainRow domainStatus(String domainStatus) { 

    this.domainStatus = domainStatus;
    return this;
  }

  /**
   * The billing / registration status of the domain.
   * @return domainStatus
   **/
  
  @Schema(example = "active", description = "The billing / registration status of the domain.")
  
  public String getDomainStatus() {  
    return domainStatus;
  }



  public void setDomainStatus(String domainStatus) { 
    this.domainStatus = domainStatus;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    DomainRow domainRow = (DomainRow) o;
    return Objects.equals(this.domainId, domainRow.domainId) &&
        Objects.equals(this.domainHostname, domainRow.domainHostname) &&
        Objects.equals(this.domainExpireDate, domainRow.domainExpireDate) &&
        Objects.equals(this.cost, domainRow.cost) &&
        Objects.equals(this.domainStatus, domainRow.domainStatus);
  }

  @Override
  public int hashCode() {
    return Objects.hash(domainId, domainHostname, domainExpireDate, cost, domainStatus);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DomainRow {\n");
    
    sb.append("    domainId: ").append(toIndentedString(domainId)).append("\n");
    sb.append("    domainHostname: ").append(toIndentedString(domainHostname)).append("\n");
    sb.append("    domainExpireDate: ").append(toIndentedString(domainExpireDate)).append("\n");
    sb.append("    cost: ").append(toIndentedString(cost)).append("\n");
    sb.append("    domainStatus: ").append(toIndentedString(domainStatus)).append("\n");
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
