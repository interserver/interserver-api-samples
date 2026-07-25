package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class PatchBillingCreditCardVerifyRequest  {
  
 /**
  * The CVV/CVC code on the back of the credit card.
  */
  @ApiModelProperty(required = true, value = "The CVV/CVC code on the back of the credit card.")

  private String ccCcv2;
 /**
   * The CVV/CVC code on the back of the credit card.
   * @return ccCcv2
  **/
  @JsonProperty("cc_ccv2")
  public String getCcCcv2() {
    return ccCcv2;
  }

  public void setCcCcv2(String ccCcv2) {
    this.ccCcv2 = ccCcv2;
  }

  public PatchBillingCreditCardVerifyRequest ccCcv2(String ccCcv2) {
    this.ccCcv2 = ccCcv2;
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
    PatchBillingCreditCardVerifyRequest patchBillingCreditCardVerifyRequest = (PatchBillingCreditCardVerifyRequest) o;
    return Objects.equals(this.ccCcv2, patchBillingCreditCardVerifyRequest.ccCcv2);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ccCcv2);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PatchBillingCreditCardVerifyRequest {\n");
    
    sb.append("    ccCcv2: ").append(toIndentedString(ccCcv2)).append("\n");
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

