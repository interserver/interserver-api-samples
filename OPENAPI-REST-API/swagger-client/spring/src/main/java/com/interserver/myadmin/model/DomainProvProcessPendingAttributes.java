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
 * DomainProvProcessPendingAttributes
 */
@Validated
@NotUndefined



public class DomainProvProcessPendingAttributes   {
  @JsonProperty("id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String id = null;

  @JsonProperty("order_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String orderId = null;

  @JsonProperty("registration expiration date")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String registrationExpirationDate = null;

  @JsonProperty("f_auto_renew")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String fAutoRenew = null;


  public DomainProvProcessPendingAttributes id(String id) { 

    this.id = id;
    return this;
  }

  /**
   * Get id
   * @return id
   **/
  
  @Schema(description = "")
  
  public String getId() {  
    return id;
  }



  public void setId(String id) { 
    this.id = id;
  }

  public DomainProvProcessPendingAttributes orderId(String orderId) { 

    this.orderId = orderId;
    return this;
  }

  /**
   * Get orderId
   * @return orderId
   **/
  
  @Schema(description = "")
  
  public String getOrderId() {  
    return orderId;
  }



  public void setOrderId(String orderId) { 
    this.orderId = orderId;
  }

  public DomainProvProcessPendingAttributes registrationExpirationDate(String registrationExpirationDate) { 

    this.registrationExpirationDate = registrationExpirationDate;
    return this;
  }

  /**
   * Get registrationExpirationDate
   * @return registrationExpirationDate
   **/
  
  @Schema(description = "")
  
  public String getRegistrationExpirationDate() {  
    return registrationExpirationDate;
  }



  public void setRegistrationExpirationDate(String registrationExpirationDate) { 
    this.registrationExpirationDate = registrationExpirationDate;
  }

  public DomainProvProcessPendingAttributes fAutoRenew(String fAutoRenew) { 

    this.fAutoRenew = fAutoRenew;
    return this;
  }

  /**
   * Get fAutoRenew
   * @return fAutoRenew
   **/
  
  @Schema(description = "")
  
  public String getFAutoRenew() {  
    return fAutoRenew;
  }



  public void setFAutoRenew(String fAutoRenew) { 
    this.fAutoRenew = fAutoRenew;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    DomainProvProcessPendingAttributes domainProvProcessPendingAttributes = (DomainProvProcessPendingAttributes) o;
    return Objects.equals(this.id, domainProvProcessPendingAttributes.id) &&
        Objects.equals(this.orderId, domainProvProcessPendingAttributes.orderId) &&
        Objects.equals(this.registrationExpirationDate, domainProvProcessPendingAttributes.registrationExpirationDate) &&
        Objects.equals(this.fAutoRenew, domainProvProcessPendingAttributes.fAutoRenew);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, orderId, registrationExpirationDate, fAutoRenew);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DomainProvProcessPendingAttributes {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    orderId: ").append(toIndentedString(orderId)).append("\n");
    sb.append("    registrationExpirationDate: ").append(toIndentedString(registrationExpirationDate)).append("\n");
    sb.append("    fAutoRenew: ").append(toIndentedString(fAutoRenew)).append("\n");
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
