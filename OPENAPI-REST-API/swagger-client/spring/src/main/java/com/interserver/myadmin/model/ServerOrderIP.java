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
 * An IP block option available when ordering a dedicated server.
 */
@Schema(description = "An IP block option available when ordering a dedicated server.")
@Validated
@NotUndefined



public class ServerOrderIP   {
  @JsonProperty("id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String id = null;

  @JsonProperty("price")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer price = null;

  @JsonProperty("img")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String img = null;

  @JsonProperty("short_desc")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String shortDesc = null;

  @JsonProperty("long_desc")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String longDesc = null;

  @JsonProperty("qty")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qty = null;

  @JsonProperty("monthly_price")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer monthlyPrice = null;

  @JsonProperty("price_display")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String priceDisplay = null;

  @JsonProperty("monthly_price_display")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String monthlyPriceDisplay = null;


  public ServerOrderIP id(String id) { 

    this.id = id;
    return this;
  }

  /**
   * IP ID.
   * @return id
   **/
  
  @Schema(example = "9", description = "IP ID.")
  
  public String getId() {  
    return id;
  }



  public void setId(String id) { 
    this.id = id;
  }

  public ServerOrderIP price(Integer price) { 

    this.price = price;
    return this;
  }

  /**
   * IP price.
   * @return price
   **/
  
  @Schema(example = "0", description = "IP price.")
  
  public Integer getPrice() {  
    return price;
  }



  public void setPrice(Integer price) { 
    this.price = price;
  }

  public ServerOrderIP img(String img) { 

    this.img = img;
    return this;
  }

  /**
   * IP image.
   * @return img
   **/
  
  @Schema(example = "ips.jpg", description = "IP image.")
  
  public String getImg() {  
    return img;
  }



  public void setImg(String img) { 
    this.img = img;
  }

  public ServerOrderIP shortDesc(String shortDesc) { 

    this.shortDesc = shortDesc;
    return this;
  }

  /**
   * Short description of the IP.
   * @return shortDesc
   **/
  
  @Schema(example = "1 Vlan Ip (/30)", description = "Short description of the IP.")
  
  public String getShortDesc() {  
    return shortDesc;
  }



  public void setShortDesc(String shortDesc) { 
    this.shortDesc = shortDesc;
  }

  public ServerOrderIP longDesc(String longDesc) { 

    this.longDesc = longDesc;
    return this;
  }

  /**
   * Long description of the IP.
   * @return longDesc
   **/
  
  @Schema(example = "1 IP In personal Vlan", description = "Long description of the IP.")
  
  public String getLongDesc() {  
    return longDesc;
  }



  public void setLongDesc(String longDesc) { 
    this.longDesc = longDesc;
  }

  public ServerOrderIP qty(String qty) { 

    this.qty = qty;
    return this;
  }

  /**
   * Quantity of IPs.
   * @return qty
   **/
  
  @Schema(example = "1", description = "Quantity of IPs.")
  
  public String getQty() {  
    return qty;
  }



  public void setQty(String qty) { 
    this.qty = qty;
  }

  public ServerOrderIP monthlyPrice(Integer monthlyPrice) { 

    this.monthlyPrice = monthlyPrice;
    return this;
  }

  /**
   * Monthly price.
   * @return monthlyPrice
   **/
  
  @Schema(example = "0", description = "Monthly price.")
  
  public Integer getMonthlyPrice() {  
    return monthlyPrice;
  }



  public void setMonthlyPrice(Integer monthlyPrice) { 
    this.monthlyPrice = monthlyPrice;
  }

  public ServerOrderIP priceDisplay(String priceDisplay) { 

    this.priceDisplay = priceDisplay;
    return this;
  }

  /**
   * Display of IP price.
   * @return priceDisplay
   **/
  
  @Schema(example = "$0.00", description = "Display of IP price.")
  
  public String getPriceDisplay() {  
    return priceDisplay;
  }



  public void setPriceDisplay(String priceDisplay) { 
    this.priceDisplay = priceDisplay;
  }

  public ServerOrderIP monthlyPriceDisplay(String monthlyPriceDisplay) { 

    this.monthlyPriceDisplay = monthlyPriceDisplay;
    return this;
  }

  /**
   * Display of monthly IP price.
   * @return monthlyPriceDisplay
   **/
  
  @Schema(example = "$0.00", description = "Display of monthly IP price.")
  
  public String getMonthlyPriceDisplay() {  
    return monthlyPriceDisplay;
  }



  public void setMonthlyPriceDisplay(String monthlyPriceDisplay) { 
    this.monthlyPriceDisplay = monthlyPriceDisplay;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ServerOrderIP serverOrderIP = (ServerOrderIP) o;
    return Objects.equals(this.id, serverOrderIP.id) &&
        Objects.equals(this.price, serverOrderIP.price) &&
        Objects.equals(this.img, serverOrderIP.img) &&
        Objects.equals(this.shortDesc, serverOrderIP.shortDesc) &&
        Objects.equals(this.longDesc, serverOrderIP.longDesc) &&
        Objects.equals(this.qty, serverOrderIP.qty) &&
        Objects.equals(this.monthlyPrice, serverOrderIP.monthlyPrice) &&
        Objects.equals(this.priceDisplay, serverOrderIP.priceDisplay) &&
        Objects.equals(this.monthlyPriceDisplay, serverOrderIP.monthlyPriceDisplay);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, price, img, shortDesc, longDesc, qty, monthlyPrice, priceDisplay, monthlyPriceDisplay);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ServerOrderIP {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    price: ").append(toIndentedString(price)).append("\n");
    sb.append("    img: ").append(toIndentedString(img)).append("\n");
    sb.append("    shortDesc: ").append(toIndentedString(shortDesc)).append("\n");
    sb.append("    longDesc: ").append(toIndentedString(longDesc)).append("\n");
    sb.append("    qty: ").append(toIndentedString(qty)).append("\n");
    sb.append("    monthlyPrice: ").append(toIndentedString(monthlyPrice)).append("\n");
    sb.append("    priceDisplay: ").append(toIndentedString(priceDisplay)).append("\n");
    sb.append("    monthlyPriceDisplay: ").append(toIndentedString(monthlyPriceDisplay)).append("\n");
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
