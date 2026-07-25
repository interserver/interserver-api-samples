package io.swagger.model;

import java.math.BigDecimal;

import io.swagger.v3.oas.annotations.media.Schema;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonCreator;

public class InlineResponse20019PackageCosts   {
  
  @Schema(example = "11552", description = "")
  private BigDecimal packageId = null;
  
  @Schema(example = "5", description = "")
  private BigDecimal packageCost = null;
  
  @Schema(example = "USD", description = "")
  private String currency = null;
  
  @Schema(example = "$", description = "")
  private String currencySymbol = null;
 /**
   * Get packageId
   * @return packageId
  **/
  @JsonProperty("package_id")
  public BigDecimal getPackageId() {
    return packageId;
  }

  public void setPackageId(BigDecimal packageId) {
    this.packageId = packageId;
  }

  public InlineResponse20019PackageCosts packageId(BigDecimal packageId) {
    this.packageId = packageId;
    return this;
  }

 /**
   * Get packageCost
   * @return packageCost
  **/
  @JsonProperty("package_cost")
  public BigDecimal getPackageCost() {
    return packageCost;
  }

  public void setPackageCost(BigDecimal packageCost) {
    this.packageCost = packageCost;
  }

  public InlineResponse20019PackageCosts packageCost(BigDecimal packageCost) {
    this.packageCost = packageCost;
    return this;
  }

 /**
   * Get currency
   * @return currency
  **/
  @JsonProperty("currency")
  public String getCurrency() {
    return currency;
  }

  public void setCurrency(String currency) {
    this.currency = currency;
  }

  public InlineResponse20019PackageCosts currency(String currency) {
    this.currency = currency;
    return this;
  }

 /**
   * Get currencySymbol
   * @return currencySymbol
  **/
  @JsonProperty("currencySymbol")
  public String getCurrencySymbol() {
    return currencySymbol;
  }

  public void setCurrencySymbol(String currencySymbol) {
    this.currencySymbol = currencySymbol;
  }

  public InlineResponse20019PackageCosts currencySymbol(String currencySymbol) {
    this.currencySymbol = currencySymbol;
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
