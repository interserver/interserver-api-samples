package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;
import java.util.ArrayList;
import java.util.List;
import org.springframework.validation.annotation.Validated;
import org.openapitools.jackson.nullable.JsonNullable;
import io.swagger.configuration.NotUndefined;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.Nulls;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * A control panel option available when ordering a dedicated server.
 */
@Schema(description = "A control panel option available when ordering a dedicated server.")
@Validated
@NotUndefined



public class ServerOrderControlPanel   {
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

  @JsonProperty("os_type")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String osType = null;

  @JsonProperty("monthly_price")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer monthlyPrice = null;

  @JsonProperty("types")
  @Valid
  private List<String> types = null;
  @JsonProperty("price_display")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String priceDisplay = null;

  @JsonProperty("monthly_price_display")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String monthlyPriceDisplay = null;


  public ServerOrderControlPanel id(String id) { 

    this.id = id;
    return this;
  }

  /**
   * Control Panel ID.
   * @return id
   **/
  
  @Schema(example = "9", description = "Control Panel ID.")
  
  public String getId() {  
    return id;
  }



  public void setId(String id) { 
    this.id = id;
  }

  public ServerOrderControlPanel price(Integer price) { 

    this.price = price;
    return this;
  }

  /**
   * Control Panel price.
   * @return price
   **/
  
  @Schema(example = "80", description = "Control Panel price.")
  
  public Integer getPrice() {  
    return price;
  }



  public void setPrice(Integer price) { 
    this.price = price;
  }

  public ServerOrderControlPanel img(String img) { 

    this.img = img;
    return this;
  }

  /**
   * Control Panel image.
   * @return img
   **/
  
  @Schema(example = "cpanel.gif", description = "Control Panel image.")
  
  public String getImg() {  
    return img;
  }



  public void setImg(String img) { 
    this.img = img;
  }

  public ServerOrderControlPanel shortDesc(String shortDesc) { 

    this.shortDesc = shortDesc;
    return this;
  }

  /**
   * Short description of the control panel.
   * @return shortDesc
   **/
  
  @Schema(example = "cPanel ($45+)", description = "Short description of the control panel.")
  
  public String getShortDesc() {  
    return shortDesc;
  }



  public void setShortDesc(String shortDesc) { 
    this.shortDesc = shortDesc;
  }

  public ServerOrderControlPanel longDesc(String longDesc) { 

    this.longDesc = longDesc;
    return this;
  }

  /**
   * Long description of the control panel.
   * @return longDesc
   **/
  
  @Schema(description = "Long description of the control panel.")
  
  public String getLongDesc() {  
    return longDesc;
  }



  public void setLongDesc(String longDesc) { 
    this.longDesc = longDesc;
  }

  public ServerOrderControlPanel osType(String osType) { 

    this.osType = osType;
    return this;
  }

  /**
   * OS types compatible with the control panel.
   * @return osType
   **/
  
  @Schema(description = "OS types compatible with the control panel.")
  
  public String getOsType() {  
    return osType;
  }



  public void setOsType(String osType) { 
    this.osType = osType;
  }

  public ServerOrderControlPanel monthlyPrice(Integer monthlyPrice) { 

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

  public ServerOrderControlPanel types(List<String> types) { 

    this.types = types;
    return this;
  }

  public ServerOrderControlPanel addTypesItem(String typesItem) {
    if (this.types == null) {
      this.types = new ArrayList<>();
    }
    this.types.add(typesItem);
    return this;
  }

  /**
   * List of types.
   * @return types
   **/
  
  @Schema(example = "[\"1\",\"2\",\"4\",\"5\",\"8\",\"17\",\"23\",\"30\",\"51\"]", description = "List of types.")
  
  public List<String> getTypes() {  
    return types;
  }



  public void setTypes(List<String> types) { 
    this.types = types;
  }

  public ServerOrderControlPanel priceDisplay(String priceDisplay) { 

    this.priceDisplay = priceDisplay;
    return this;
  }

  /**
   * Display of control panel price.
   * @return priceDisplay
   **/
  
  @Schema(example = "$80.00", description = "Display of control panel price.")
  
  public String getPriceDisplay() {  
    return priceDisplay;
  }



  public void setPriceDisplay(String priceDisplay) { 
    this.priceDisplay = priceDisplay;
  }

  public ServerOrderControlPanel monthlyPriceDisplay(String monthlyPriceDisplay) { 

    this.monthlyPriceDisplay = monthlyPriceDisplay;
    return this;
  }

  /**
   * Display of monthly control panel price.
   * @return monthlyPriceDisplay
   **/
  
  @Schema(example = "$0.00", description = "Display of monthly control panel price.")
  
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
    ServerOrderControlPanel serverOrderControlPanel = (ServerOrderControlPanel) o;
    return Objects.equals(this.id, serverOrderControlPanel.id) &&
        Objects.equals(this.price, serverOrderControlPanel.price) &&
        Objects.equals(this.img, serverOrderControlPanel.img) &&
        Objects.equals(this.shortDesc, serverOrderControlPanel.shortDesc) &&
        Objects.equals(this.longDesc, serverOrderControlPanel.longDesc) &&
        Objects.equals(this.osType, serverOrderControlPanel.osType) &&
        Objects.equals(this.monthlyPrice, serverOrderControlPanel.monthlyPrice) &&
        Objects.equals(this.types, serverOrderControlPanel.types) &&
        Objects.equals(this.priceDisplay, serverOrderControlPanel.priceDisplay) &&
        Objects.equals(this.monthlyPriceDisplay, serverOrderControlPanel.monthlyPriceDisplay);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, price, img, shortDesc, longDesc, osType, monthlyPrice, types, priceDisplay, monthlyPriceDisplay);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ServerOrderControlPanel {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    price: ").append(toIndentedString(price)).append("\n");
    sb.append("    img: ").append(toIndentedString(img)).append("\n");
    sb.append("    shortDesc: ").append(toIndentedString(shortDesc)).append("\n");
    sb.append("    longDesc: ").append(toIndentedString(longDesc)).append("\n");
    sb.append("    osType: ").append(toIndentedString(osType)).append("\n");
    sb.append("    monthlyPrice: ").append(toIndentedString(monthlyPrice)).append("\n");
    sb.append("    types: ").append(toIndentedString(types)).append("\n");
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
