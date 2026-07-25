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
 * An operating system option available when ordering a dedicated server.
 */
@Schema(description = "An operating system option available when ordering a dedicated server.")
@Validated
@NotUndefined



public class ServerOrderOS   {
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

  @JsonProperty("monthly_price")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer monthlyPrice = null;

  @JsonProperty("active")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String active = null;

  @JsonProperty("price_display")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String priceDisplay = null;

  @JsonProperty("monthly_price_display")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String monthlyPriceDisplay = null;


  public ServerOrderOS id(String id) { 

    this.id = id;
    return this;
  }

  /**
   * Operating System ID.
   * @return id
   **/
  
  @Schema(example = "51", description = "Operating System ID.")
  
  public String getId() {  
    return id;
  }



  public void setId(String id) { 
    this.id = id;
  }

  public ServerOrderOS price(Integer price) { 

    this.price = price;
    return this;
  }

  /**
   * Operating System price.
   * @return price
   **/
  
  @Schema(example = "0", description = "Operating System price.")
  
  public Integer getPrice() {  
    return price;
  }



  public void setPrice(Integer price) { 
    this.price = price;
  }

  public ServerOrderOS img(String img) { 

    this.img = img;
    return this;
  }

  /**
   * Operating System image.
   * @return img
   **/
  
  @Schema(description = "Operating System image.")
  
  public String getImg() {  
    return img;
  }



  public void setImg(String img) { 
    this.img = img;
  }

  public ServerOrderOS shortDesc(String shortDesc) { 

    this.shortDesc = shortDesc;
    return this;
  }

  /**
   * Short description of the OS.
   * @return shortDesc
   **/
  
  @Schema(example = "AlmaLinux", description = "Short description of the OS.")
  
  public String getShortDesc() {  
    return shortDesc;
  }



  public void setShortDesc(String shortDesc) { 
    this.shortDesc = shortDesc;
  }

  public ServerOrderOS longDesc(String longDesc) { 

    this.longDesc = longDesc;
    return this;
  }

  /**
   * Long description of the OS.
   * @return longDesc
   **/
  
  @Schema(description = "Long description of the OS.")
  
  public String getLongDesc() {  
    return longDesc;
  }



  public void setLongDesc(String longDesc) { 
    this.longDesc = longDesc;
  }

  public ServerOrderOS monthlyPrice(Integer monthlyPrice) { 

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

  public ServerOrderOS active(String active) { 

    this.active = active;
    return this;
  }

  /**
   * Active status.
   * @return active
   **/
  
  @Schema(example = "1", description = "Active status.")
  
  public String getActive() {  
    return active;
  }



  public void setActive(String active) { 
    this.active = active;
  }

  public ServerOrderOS priceDisplay(String priceDisplay) { 

    this.priceDisplay = priceDisplay;
    return this;
  }

  /**
   * Display of OS price.
   * @return priceDisplay
   **/
  
  @Schema(example = "$0.00", description = "Display of OS price.")
  
  public String getPriceDisplay() {  
    return priceDisplay;
  }



  public void setPriceDisplay(String priceDisplay) { 
    this.priceDisplay = priceDisplay;
  }

  public ServerOrderOS monthlyPriceDisplay(String monthlyPriceDisplay) { 

    this.monthlyPriceDisplay = monthlyPriceDisplay;
    return this;
  }

  /**
   * Display of monthly OS price.
   * @return monthlyPriceDisplay
   **/
  
  @Schema(example = "$0.00", description = "Display of monthly OS price.")
  
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
    ServerOrderOS serverOrderOS = (ServerOrderOS) o;
    return Objects.equals(this.id, serverOrderOS.id) &&
        Objects.equals(this.price, serverOrderOS.price) &&
        Objects.equals(this.img, serverOrderOS.img) &&
        Objects.equals(this.shortDesc, serverOrderOS.shortDesc) &&
        Objects.equals(this.longDesc, serverOrderOS.longDesc) &&
        Objects.equals(this.monthlyPrice, serverOrderOS.monthlyPrice) &&
        Objects.equals(this.active, serverOrderOS.active) &&
        Objects.equals(this.priceDisplay, serverOrderOS.priceDisplay) &&
        Objects.equals(this.monthlyPriceDisplay, serverOrderOS.monthlyPriceDisplay);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, price, img, shortDesc, longDesc, monthlyPrice, active, priceDisplay, monthlyPriceDisplay);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ServerOrderOS {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    price: ").append(toIndentedString(price)).append("\n");
    sb.append("    img: ").append(toIndentedString(img)).append("\n");
    sb.append("    shortDesc: ").append(toIndentedString(shortDesc)).append("\n");
    sb.append("    longDesc: ").append(toIndentedString(longDesc)).append("\n");
    sb.append("    monthlyPrice: ").append(toIndentedString(monthlyPrice)).append("\n");
    sb.append("    active: ").append(toIndentedString(active)).append("\n");
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
