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
 * Request payload for creating a new prepay balance.
 */
@Schema(description = "Request payload for creating a new prepay balance.")
@Validated
@NotUndefined



public class BillingPrepayRequest   {
  @JsonProperty("module")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String module = null;

  @JsonProperty("amount")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private BigDecimal amount = null;

  @JsonProperty("automatic_use")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String automaticUse = null;


  public BillingPrepayRequest module(String module) { 

    this.module = module;
    return this;
  }

  /**
   * Module the prepay should be applied to (for example `default`).
   * @return module
   **/
  
  @Schema(description = "Module the prepay should be applied to (for example `default`).")
  
  public String getModule() {  
    return module;
  }



  public void setModule(String module) { 
    this.module = module;
  }

  public BillingPrepayRequest amount(BigDecimal amount) { 

    this.amount = amount;
    return this;
  }

  /**
   * Amount to add to prepay balance. Minimum is $10.
   * @return amount
   **/
  
  @Schema(description = "Amount to add to prepay balance. Minimum is $10.")
  
@Valid
  public BigDecimal getAmount() {  
    return amount;
  }



  public void setAmount(BigDecimal amount) { 
    this.amount = amount;
  }

  public BillingPrepayRequest automaticUse(String automaticUse) { 

    this.automaticUse = automaticUse;
    return this;
  }

  /**
   * Whether the prepay balance should be used automatically.
   * @return automaticUse
   **/
  
  @Schema(example = "1", description = "Whether the prepay balance should be used automatically.")
  
  public String getAutomaticUse() {  
    return automaticUse;
  }



  public void setAutomaticUse(String automaticUse) { 
    this.automaticUse = automaticUse;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    BillingPrepayRequest billingPrepayRequest = (BillingPrepayRequest) o;
    return Objects.equals(this.module, billingPrepayRequest.module) &&
        Objects.equals(this.amount, billingPrepayRequest.amount) &&
        Objects.equals(this.automaticUse, billingPrepayRequest.automaticUse);
  }

  @Override
  public int hashCode() {
    return Objects.hash(module, amount, automaticUse);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class BillingPrepayRequest {\n");
    
    sb.append("    module: ").append(toIndentedString(module)).append("\n");
    sb.append("    amount: ").append(toIndentedString(amount)).append("\n");
    sb.append("    automaticUse: ").append(toIndentedString(automaticUse)).append("\n");
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
