package io.swagger.model;

import java.math.BigDecimal;
import javax.validation.constraints.*;
import javax.validation.Valid;


import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class InlineResponse20019PackageCosts   {

  private @Valid BigDecimal packageId = null;

  private @Valid BigDecimal packageCost = null;

  private @Valid String currency = null;

  private @Valid String currencySymbol = null;

  /**
   **/
  public InlineResponse20019PackageCosts packageId(BigDecimal packageId) {
    this.packageId = packageId;
    return this;
  }

  
  @ApiModelProperty(example = "11552", value = "")
  @JsonProperty("package_id")
  @NotNull

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

  
  @ApiModelProperty(example = "5", value = "")
  @JsonProperty("package_cost")
  @NotNull

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

  
  @ApiModelProperty(example = "USD", value = "")
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

  
  @ApiModelProperty(example = "$", value = "")
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
