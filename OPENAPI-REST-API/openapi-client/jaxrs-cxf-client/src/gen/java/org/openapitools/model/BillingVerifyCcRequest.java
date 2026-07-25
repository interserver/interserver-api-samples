package org.openapitools.model;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Payload for verifying a credit card through the verification flow.
 */
@ApiModel(description="Payload for verifying a credit card through the verification flow.")

public class BillingVerifyCcRequest  {
  
 /**
  * Card index to verify.
  */
  @ApiModelProperty(value = "Card index to verify.")

  private Integer idx;

 /**
  * CVV code for verification.
  */
  @ApiModelProperty(value = "CVV code for verification.")

  private String ccCcv2;

 /**
  * First micro-charge amount for verification.
  */
  @ApiModelProperty(value = "First micro-charge amount for verification.")

  private String ccAmount1;

 /**
  * Second micro-charge amount for verification.
  */
  @ApiModelProperty(value = "Second micro-charge amount for verification.")

  private String ccAmount2;

 /**
  * Whether terms were accepted for verification.
  */
  @ApiModelProperty(value = "Whether terms were accepted for verification.")

  private Boolean terms;
 /**
   * Card index to verify.
   * @return idx
  **/
  @JsonProperty("idx")
  public Integer getIdx() {
    return idx;
  }

  public void setIdx(Integer idx) {
    this.idx = idx;
  }

  public BillingVerifyCcRequest idx(Integer idx) {
    this.idx = idx;
    return this;
  }

 /**
   * CVV code for verification.
   * @return ccCcv2
  **/
  @JsonProperty("cc_ccv2")
  public String getCcCcv2() {
    return ccCcv2;
  }

  public void setCcCcv2(String ccCcv2) {
    this.ccCcv2 = ccCcv2;
  }

  public BillingVerifyCcRequest ccCcv2(String ccCcv2) {
    this.ccCcv2 = ccCcv2;
    return this;
  }

 /**
   * First micro-charge amount for verification.
   * @return ccAmount1
  **/
  @JsonProperty("cc_amount1")
  public String getCcAmount1() {
    return ccAmount1;
  }

  public void setCcAmount1(String ccAmount1) {
    this.ccAmount1 = ccAmount1;
  }

  public BillingVerifyCcRequest ccAmount1(String ccAmount1) {
    this.ccAmount1 = ccAmount1;
    return this;
  }

 /**
   * Second micro-charge amount for verification.
   * @return ccAmount2
  **/
  @JsonProperty("cc_amount2")
  public String getCcAmount2() {
    return ccAmount2;
  }

  public void setCcAmount2(String ccAmount2) {
    this.ccAmount2 = ccAmount2;
  }

  public BillingVerifyCcRequest ccAmount2(String ccAmount2) {
    this.ccAmount2 = ccAmount2;
    return this;
  }

 /**
   * Whether terms were accepted for verification.
   * @return terms
  **/
  @JsonProperty("terms")
  public Boolean isTerms() {
    return terms;
  }

  public void setTerms(Boolean terms) {
    this.terms = terms;
  }

  public BillingVerifyCcRequest terms(Boolean terms) {
    this.terms = terms;
    return this;
  }

  @Override
  public boolean equals(Object o) {
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
  private static String toIndentedString(Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}

