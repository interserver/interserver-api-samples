package io.swagger.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import java.math.BigDecimal;
import javax.validation.Valid;
import javax.validation.constraints.*;

import io.swagger.v3.oas.annotations.media.Schema;
import java.util.Objects;

import javax.xml.bind.annotation.*;



public class InlineResponse20019PackageCosts   {
  private BigDecimal packageId = null;
  private BigDecimal packageCost = null;
  private String currency = null;
  private String currencySymbol = null;

  /**
   **/
  public InlineResponse20019PackageCosts packageId(BigDecimal packageId) {
    this.packageId = packageId;
    return this;
  }

  
  
  @Schema(example = "11552", description = "")
  @JsonProperty("package_id")
  @NotNull
  @Valid
  public BigDecimal getPackageId() {
    return packageId;
  }
  public void setPackageId(BigDecimal packageId) {
    this.packageId = packageId;
  }

  /**
   **/
  public InlineResponse20019PackageCosts packageCost(BigDecimal packageCost) {
    this.packageCost = packageCost;
    return this;
  }

  
  
  @Schema(example = "5", description = "")
  @JsonProperty("package_cost")
  @NotNull
  @Valid
  public BigDecimal getPackageCost() {
    return packageCost;
  }
  public void setPackageCost(BigDecimal packageCost) {
    this.packageCost = packageCost;
  }

  /**
   **/
  public InlineResponse20019PackageCosts currency(String currency) {
    this.currency = currency;
    return this;
  }

  
  
  @Schema(example = "USD", description = "")
  @JsonProperty("currency")
  @NotNull
  public String getCurrency() {
    return currency;
  }
  public void setCurrency(String currency) {
    this.currency = currency;
  }

  /**
   **/
  public InlineResponse20019PackageCosts currencySymbol(String currencySymbol) {
    this.currencySymbol = currencySymbol;
    return this;
  }

  
  
  @Schema(example = "$", description = "")
  @JsonProperty("currencySymbol")
  @NotNull
  public String getCurrencySymbol() {
    return currencySymbol;
  }
  public void setCurrencySymbol(String currencySymbol) {
    this.currencySymbol = currencySymbol;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20019PackageCosts inlineResponse20019PackageCosts = (InlineResponse20019PackageCosts) o;
    return Objects.equals(packageId, inlineResponse20019PackageCosts.packageId) &&
        Objects.equals(packageCost, inlineResponse20019PackageCosts.packageCost) &&
        Objects.equals(currency, inlineResponse20019PackageCosts.currency) &&
        Objects.equals(currencySymbol, inlineResponse20019PackageCosts.currencySymbol);
  }

  @Override
  public int hashCode() {
    return Objects.hash(packageId, packageCost, currency, currencySymbol);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20019PackageCosts {\n");
    
    sb.append("    packageId: ").append(toIndentedString(packageId)).append("\n");
    sb.append("    packageCost: ").append(toIndentedString(packageCost)).append("\n");
    sb.append("    currency: ").append(toIndentedString(currency)).append("\n");
    sb.append("    currencySymbol: ").append(toIndentedString(currencySymbol)).append("\n");
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
