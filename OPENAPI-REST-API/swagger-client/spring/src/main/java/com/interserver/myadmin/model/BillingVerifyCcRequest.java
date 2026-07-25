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
 * Payload for verifying a credit card through the verification flow.
 */
@Schema(description = "Payload for verifying a credit card through the verification flow.")
@Validated
@NotUndefined



public class BillingVerifyCcRequest   {
  @JsonProperty("idx")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer idx = null;

  @JsonProperty("cc_ccv2")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ccCcv2 = null;

  @JsonProperty("cc_amount1")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ccAmount1 = null;

  @JsonProperty("cc_amount2")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ccAmount2 = null;

  @JsonProperty("terms")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Boolean terms = null;


  public BillingVerifyCcRequest idx(Integer idx) { 

    this.idx = idx;
    return this;
  }

  /**
   * Card index to verify.
   * @return idx
   **/
  
  @Schema(description = "Card index to verify.")
  
  public Integer getIdx() {  
    return idx;
  }



  public void setIdx(Integer idx) { 
    this.idx = idx;
  }

  public BillingVerifyCcRequest ccCcv2(String ccCcv2) { 

    this.ccCcv2 = ccCcv2;
    return this;
  }

  /**
   * CVV code for verification.
   * @return ccCcv2
   **/
  
  @Schema(description = "CVV code for verification.")
  
  public String getCcCcv2() {  
    return ccCcv2;
  }



  public void setCcCcv2(String ccCcv2) { 
    this.ccCcv2 = ccCcv2;
  }

  public BillingVerifyCcRequest ccAmount1(String ccAmount1) { 

    this.ccAmount1 = ccAmount1;
    return this;
  }

  /**
   * First micro-charge amount for verification.
   * @return ccAmount1
   **/
  
  @Schema(description = "First micro-charge amount for verification.")
  
  public String getCcAmount1() {  
    return ccAmount1;
  }



  public void setCcAmount1(String ccAmount1) { 
    this.ccAmount1 = ccAmount1;
  }

  public BillingVerifyCcRequest ccAmount2(String ccAmount2) { 

    this.ccAmount2 = ccAmount2;
    return this;
  }

  /**
   * Second micro-charge amount for verification.
   * @return ccAmount2
   **/
  
  @Schema(description = "Second micro-charge amount for verification.")
  
  public String getCcAmount2() {  
    return ccAmount2;
  }



  public void setCcAmount2(String ccAmount2) { 
    this.ccAmount2 = ccAmount2;
  }

  public BillingVerifyCcRequest terms(Boolean terms) { 

    this.terms = terms;
    return this;
  }

  /**
   * Whether terms were accepted for verification.
   * @return terms
   **/
  
  @Schema(description = "Whether terms were accepted for verification.")
  
  public Boolean isTerms() {  
    return terms;
  }



  public void setTerms(Boolean terms) { 
    this.terms = terms;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    BillingVerifyCcRequest billingVerifyCcRequest = (BillingVerifyCcRequest) o;
    return Objects.equals(this.idx, billingVerifyCcRequest.idx) &&
        Objects.equals(this.ccCcv2, billingVerifyCcRequest.ccCcv2) &&
        Objects.equals(this.ccAmount1, billingVerifyCcRequest.ccAmount1) &&
        Objects.equals(this.ccAmount2, billingVerifyCcRequest.ccAmount2) &&
        Objects.equals(this.terms, billingVerifyCcRequest.terms);
  }

  @Override
  public int hashCode() {
    return Objects.hash(idx, ccCcv2, ccAmount1, ccAmount2, terms);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class BillingVerifyCcRequest {\n");
    
    sb.append("    idx: ").append(toIndentedString(idx)).append("\n");
    sb.append("    ccCcv2: ").append(toIndentedString(ccCcv2)).append("\n");
    sb.append("    ccAmount1: ").append(toIndentedString(ccAmount1)).append("\n");
    sb.append("    ccAmount2: ").append(toIndentedString(ccAmount2)).append("\n");
    sb.append("    terms: ").append(toIndentedString(terms)).append("\n");
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
