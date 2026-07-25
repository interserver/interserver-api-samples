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
 * Affiliate Landing Page information.
 */
@Schema(description = "Affiliate Landing Page information.")
@Validated
@NotUndefined



public class AffiliateDockSetup   {
  @JsonProperty("affiliate_dock_title")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String affiliateDockTitle = null;

  @JsonProperty("affiliate_dock_description")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String affiliateDockDescription = null;

  @JsonProperty("referrer_coupon")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String referrerCoupon = null;


  public AffiliateDockSetup affiliateDockTitle(String affiliateDockTitle) { 

    this.affiliateDockTitle = affiliateDockTitle;
    return this;
  }

  /**
   * Get affiliateDockTitle
   * @return affiliateDockTitle
   **/
  
  @Schema(description = "")
  
  public String getAffiliateDockTitle() {  
    return affiliateDockTitle;
  }



  public void setAffiliateDockTitle(String affiliateDockTitle) { 
    this.affiliateDockTitle = affiliateDockTitle;
  }

  public AffiliateDockSetup affiliateDockDescription(String affiliateDockDescription) { 

    this.affiliateDockDescription = affiliateDockDescription;
    return this;
  }

  /**
   * Get affiliateDockDescription
   * @return affiliateDockDescription
   **/
  
  @Schema(description = "")
  
  public String getAffiliateDockDescription() {  
    return affiliateDockDescription;
  }



  public void setAffiliateDockDescription(String affiliateDockDescription) { 
    this.affiliateDockDescription = affiliateDockDescription;
  }

  public AffiliateDockSetup referrerCoupon(String referrerCoupon) { 

    this.referrerCoupon = referrerCoupon;
    return this;
  }

  /**
   * Get referrerCoupon
   * @return referrerCoupon
   **/
  
  @Schema(description = "")
  
  public String getReferrerCoupon() {  
    return referrerCoupon;
  }



  public void setReferrerCoupon(String referrerCoupon) { 
    this.referrerCoupon = referrerCoupon;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    AffiliateDockSetup affiliateDockSetup = (AffiliateDockSetup) o;
    return Objects.equals(this.affiliateDockTitle, affiliateDockSetup.affiliateDockTitle) &&
        Objects.equals(this.affiliateDockDescription, affiliateDockSetup.affiliateDockDescription) &&
        Objects.equals(this.referrerCoupon, affiliateDockSetup.referrerCoupon);
  }

  @Override
  public int hashCode() {
    return Objects.hash(affiliateDockTitle, affiliateDockDescription, referrerCoupon);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AffiliateDockSetup {\n");
    
    sb.append("    affiliateDockTitle: ").append(toIndentedString(affiliateDockTitle)).append("\n");
    sb.append("    affiliateDockDescription: ").append(toIndentedString(affiliateDockDescription)).append("\n");
    sb.append("    referrerCoupon: ").append(toIndentedString(referrerCoupon)).append("\n");
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
