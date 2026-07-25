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
 * Affiliate Payment Setup.  Here you can set if you want the payments to go to &#x60;prepay&#x60; or &#x60;paypal&#x60; and the PayPal email address.
 */
@Schema(description = "Affiliate Payment Setup.  Here you can set if you want the payments to go to `prepay` or `paypal` and the PayPal email address.")
@Validated
@NotUndefined



public class AffiliatePaymentSetup   {
  @JsonProperty("affiliate_paypal")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String affiliatePaypal = null;

  @JsonProperty("affiliate_payment_method")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String affiliatePaymentMethod = null;


  public AffiliatePaymentSetup affiliatePaypal(String affiliatePaypal) { 

    this.affiliatePaypal = affiliatePaypal;
    return this;
  }

  /**
   * Get affiliatePaypal
   * @return affiliatePaypal
   **/
  
  @Schema(description = "")
  
  public String getAffiliatePaypal() {  
    return affiliatePaypal;
  }



  public void setAffiliatePaypal(String affiliatePaypal) { 
    this.affiliatePaypal = affiliatePaypal;
  }

  public AffiliatePaymentSetup affiliatePaymentMethod(String affiliatePaymentMethod) { 

    this.affiliatePaymentMethod = affiliatePaymentMethod;
    return this;
  }

  /**
   * Get affiliatePaymentMethod
   * @return affiliatePaymentMethod
   **/
  
  @Schema(description = "")
  
  public String getAffiliatePaymentMethod() {  
    return affiliatePaymentMethod;
  }



  public void setAffiliatePaymentMethod(String affiliatePaymentMethod) { 
    this.affiliatePaymentMethod = affiliatePaymentMethod;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    AffiliatePaymentSetup affiliatePaymentSetup = (AffiliatePaymentSetup) o;
    return Objects.equals(this.affiliatePaypal, affiliatePaymentSetup.affiliatePaypal) &&
        Objects.equals(this.affiliatePaymentMethod, affiliatePaymentSetup.affiliatePaymentMethod);
  }

  @Override
  public int hashCode() {
    return Objects.hash(affiliatePaypal, affiliatePaymentMethod);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AffiliatePaymentSetup {\n");
    
    sb.append("    affiliatePaypal: ").append(toIndentedString(affiliatePaypal)).append("\n");
    sb.append("    affiliatePaymentMethod: ").append(toIndentedString(affiliatePaymentMethod)).append("\n");
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
