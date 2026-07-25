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
 * A RAID configuration option available when ordering a dedicated server.
 */
@Schema(description = "A RAID configuration option available when ordering a dedicated server.")
@Validated
@NotUndefined



public class ServerOrderRAID   {
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


  public ServerOrderRAID id(String id) { 

    this.id = id;
    return this;
  }

  /**
   * RAID ID.
   * @return id
   **/
  
  @Schema(example = "7", description = "RAID ID.")
  
  public String getId() {  
    return id;
  }



  public void setId(String id) { 
    this.id = id;
  }

  public ServerOrderRAID price(Integer price) { 

    this.price = price;
    return this;
  }

  /**
   * RAID price.
   * @return price
   **/
  
  @Schema(example = "50", description = "RAID price.")
  
  public Integer getPrice() {  
    return price;
  }



  public void setPrice(Integer price) { 
    this.price = price;
  }

  public ServerOrderRAID img(String img) { 

    this.img = img;
    return this;
  }

  /**
   * RAID image.
   * @return img
   **/
  
  @Schema(example = "raid.png", description = "RAID image.")
  
  public String getImg() {  
    return img;
  }



  public void setImg(String img) { 
    this.img = img;
  }

  public ServerOrderRAID shortDesc(String shortDesc) { 

    this.shortDesc = shortDesc;
    return this;
  }

  /**
   * Short description of the RAID.
   * @return shortDesc
   **/
  
  @Schema(example = "Hardware Raid 5", description = "Short description of the RAID.")
  
  public String getShortDesc() {  
    return shortDesc;
  }



  public void setShortDesc(String shortDesc) { 
    this.shortDesc = shortDesc;
  }

  public ServerOrderRAID longDesc(String longDesc) { 

    this.longDesc = longDesc;
    return this;
  }

  /**
   * Long description of the RAID.
   * @return longDesc
   **/
  
  @Schema(example = "Hardware Raid 5", description = "Long description of the RAID.")
  
  public String getLongDesc() {  
    return longDesc;
  }



  public void setLongDesc(String longDesc) { 
    this.longDesc = longDesc;
  }

  public ServerOrderRAID monthlyPrice(Integer monthlyPrice) { 

    this.monthlyPrice = monthlyPrice;
    return this;
  }

  /**
   * Monthly price.
   * @return monthlyPrice
   **/
  
  @Schema(example = "50", description = "Monthly price.")
  
  public Integer getMonthlyPrice() {  
    return monthlyPrice;
  }



  public void setMonthlyPrice(Integer monthlyPrice) { 
    this.monthlyPrice = monthlyPrice;
  }

  public ServerOrderRAID active(String active) { 

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

  public ServerOrderRAID priceDisplay(String priceDisplay) { 

    this.priceDisplay = priceDisplay;
    return this;
  }

  /**
   * Display of RAID price.
   * @return priceDisplay
   **/
  
  @Schema(example = "$50.00", description = "Display of RAID price.")
  
  public String getPriceDisplay() {  
    return priceDisplay;
  }



  public void setPriceDisplay(String priceDisplay) { 
    this.priceDisplay = priceDisplay;
  }

  public ServerOrderRAID monthlyPriceDisplay(String monthlyPriceDisplay) { 

    this.monthlyPriceDisplay = monthlyPriceDisplay;
    return this;
  }

  /**
   * Display of monthly RAID price.
   * @return monthlyPriceDisplay
   **/
  
  @Schema(example = "$50.00", description = "Display of monthly RAID price.")
  
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
    ServerOrderRAID serverOrderRAID = (ServerOrderRAID) o;
    return Objects.equals(this.id, serverOrderRAID.id) &&
        Objects.equals(this.price, serverOrderRAID.price) &&
        Objects.equals(this.img, serverOrderRAID.img) &&
        Objects.equals(this.shortDesc, serverOrderRAID.shortDesc) &&
        Objects.equals(this.longDesc, serverOrderRAID.longDesc) &&
        Objects.equals(this.monthlyPrice, serverOrderRAID.monthlyPrice) &&
        Objects.equals(this.active, serverOrderRAID.active) &&
        Objects.equals(this.priceDisplay, serverOrderRAID.priceDisplay) &&
        Objects.equals(this.monthlyPriceDisplay, serverOrderRAID.monthlyPriceDisplay);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, price, img, shortDesc, longDesc, monthlyPrice, active, priceDisplay, monthlyPriceDisplay);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ServerOrderRAID {\n");
    
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
