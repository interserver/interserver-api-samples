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
 * A CPU option available when ordering a dedicated server.
 */
@Schema(description = "A CPU option available when ordering a dedicated server.")
@Validated
@NotUndefined



public class ServerOrderCPU   {
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

  @JsonProperty("location")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String location = null;

  @JsonProperty("fsb")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String fsb = null;

  @JsonProperty("manu")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String manu = null;

  @JsonProperty("type")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String type = null;

  @JsonProperty("speed")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String speed = null;

  @JsonProperty("cache")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String cache = null;

  @JsonProperty("active")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String active = null;

  @JsonProperty("num_cores")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String numCores = null;

  @JsonProperty("num_cpus")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String numCpus = null;

  @JsonProperty("benchmark")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String benchmark = null;

  @JsonProperty("monthly_price")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer monthlyPrice = null;

  @JsonProperty("max_ram")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String maxRam = null;

  @JsonProperty("min_ram")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String minRam = null;

  @JsonProperty("max_lff")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String maxLff = null;

  @JsonProperty("max_sff")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String maxSff = null;

  @JsonProperty("max_nve")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String maxNve = null;

  @JsonProperty("visible")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String visible = null;

  @JsonProperty("hd_ids")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String hdIds = null;

  @JsonProperty("price_display")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String priceDisplay = null;

  @JsonProperty("monthly_price_display")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String monthlyPriceDisplay = null;


  public ServerOrderCPU id(String id) { 

    this.id = id;
    return this;
  }

  /**
   * CPU ID.
   * @return id
   **/
  
  @Schema(example = "254", description = "CPU ID.")
  
  public String getId() {  
    return id;
  }



  public void setId(String id) { 
    this.id = id;
  }

  public ServerOrderCPU price(Integer price) { 

    this.price = price;
    return this;
  }

  /**
   * CPU price.
   * @return price
   **/
  
  @Schema(example = "0", description = "CPU price.")
  
  public Integer getPrice() {  
    return price;
  }



  public void setPrice(Integer price) { 
    this.price = price;
  }

  public ServerOrderCPU img(String img) { 

    this.img = img;
    return this;
  }

  /**
   * CPU image.
   * @return img
   **/
  
  @Schema(example = "ryzen.png", description = "CPU image.")
  
  public String getImg() {  
    return img;
  }



  public void setImg(String img) { 
    this.img = img;
  }

  public ServerOrderCPU shortDesc(String shortDesc) { 

    this.shortDesc = shortDesc;
    return this;
  }

  /**
   * Short description of the CPU.
   * @return shortDesc
   **/
  
  @Schema(example = "AMD RYZEN 7900X", description = "Short description of the CPU.")
  
  public String getShortDesc() {  
    return shortDesc;
  }



  public void setShortDesc(String shortDesc) { 
    this.shortDesc = shortDesc;
  }

  public ServerOrderCPU longDesc(String longDesc) { 

    this.longDesc = longDesc;
    return this;
  }

  /**
   * Long description of the CPU.
   * @return longDesc
   **/
  
  @Schema(example = "High core and thread count...", description = "Long description of the CPU.")
  
  public String getLongDesc() {  
    return longDesc;
  }



  public void setLongDesc(String longDesc) { 
    this.longDesc = longDesc;
  }

  public ServerOrderCPU location(String location) { 

    this.location = location;
    return this;
  }

  /**
   * Location of the CPU.
   * @return location
   **/
  
  @Schema(example = "New York", description = "Location of the CPU.")
  
  public String getLocation() {  
    return location;
  }



  public void setLocation(String location) { 
    this.location = location;
  }

  public ServerOrderCPU fsb(String fsb) { 

    this.fsb = fsb;
    return this;
  }

  /**
   * Front Side Bus information.
   * @return fsb
   **/
  
  @Schema(description = "Front Side Bus information.")
  
  public String getFsb() {  
    return fsb;
  }



  public void setFsb(String fsb) { 
    this.fsb = fsb;
  }

  public ServerOrderCPU manu(String manu) { 

    this.manu = manu;
    return this;
  }

  /**
   * Manufacturer information.
   * @return manu
   **/
  
  @Schema(description = "Manufacturer information.")
  
  public String getManu() {  
    return manu;
  }



  public void setManu(String manu) { 
    this.manu = manu;
  }

  public ServerOrderCPU type(String type) { 

    this.type = type;
    return this;
  }

  /**
   * CPU type.
   * @return type
   **/
  
  @Schema(example = "AMD", description = "CPU type.")
  
  public String getType() {  
    return type;
  }



  public void setType(String type) { 
    this.type = type;
  }

  public ServerOrderCPU speed(String speed) { 

    this.speed = speed;
    return this;
  }

  /**
   * CPU speed.
   * @return speed
   **/
  
  @Schema(example = "4.7", description = "CPU speed.")
  
  public String getSpeed() {  
    return speed;
  }



  public void setSpeed(String speed) { 
    this.speed = speed;
  }

  public ServerOrderCPU cache(String cache) { 

    this.cache = cache;
    return this;
  }

  /**
   * Cache information.
   * @return cache
   **/
  
  @Schema(description = "Cache information.")
  
  public String getCache() {  
    return cache;
  }



  public void setCache(String cache) { 
    this.cache = cache;
  }

  public ServerOrderCPU active(String active) { 

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

  public ServerOrderCPU numCores(String numCores) { 

    this.numCores = numCores;
    return this;
  }

  /**
   * Number of cores.
   * @return numCores
   **/
  
  @Schema(example = "12", description = "Number of cores.")
  
  public String getNumCores() {  
    return numCores;
  }



  public void setNumCores(String numCores) { 
    this.numCores = numCores;
  }

  public ServerOrderCPU numCpus(String numCpus) { 

    this.numCpus = numCpus;
    return this;
  }

  /**
   * Number of CPUs.
   * @return numCpus
   **/
  
  @Schema(example = "1", description = "Number of CPUs.")
  
  public String getNumCpus() {  
    return numCpus;
  }



  public void setNumCpus(String numCpus) { 
    this.numCpus = numCpus;
  }

  public ServerOrderCPU benchmark(String benchmark) { 

    this.benchmark = benchmark;
    return this;
  }

  /**
   * CPU benchmark.
   * @return benchmark
   **/
  
  @Schema(example = "121148", description = "CPU benchmark.")
  
  public String getBenchmark() {  
    return benchmark;
  }



  public void setBenchmark(String benchmark) { 
    this.benchmark = benchmark;
  }

  public ServerOrderCPU monthlyPrice(Integer monthlyPrice) { 

    this.monthlyPrice = monthlyPrice;
    return this;
  }

  /**
   * Monthly price.
   * @return monthlyPrice
   **/
  
  @Schema(example = "75", description = "Monthly price.")
  
  public Integer getMonthlyPrice() {  
    return monthlyPrice;
  }



  public void setMonthlyPrice(Integer monthlyPrice) { 
    this.monthlyPrice = monthlyPrice;
  }

  public ServerOrderCPU maxRam(String maxRam) { 

    this.maxRam = maxRam;
    return this;
  }

  /**
   * Maximum RAM supported.
   * @return maxRam
   **/
  
  @Schema(example = "128", description = "Maximum RAM supported.")
  
  public String getMaxRam() {  
    return maxRam;
  }



  public void setMaxRam(String maxRam) { 
    this.maxRam = maxRam;
  }

  public ServerOrderCPU minRam(String minRam) { 

    this.minRam = minRam;
    return this;
  }

  /**
   * Minimum RAM required.
   * @return minRam
   **/
  
  @Schema(example = "128", description = "Minimum RAM required.")
  
  public String getMinRam() {  
    return minRam;
  }



  public void setMinRam(String minRam) { 
    this.minRam = minRam;
  }

  public ServerOrderCPU maxLff(String maxLff) { 

    this.maxLff = maxLff;
    return this;
  }

  /**
   * Maximum LFF (Large Form Factor) supported.
   * @return maxLff
   **/
  
  @Schema(example = "4", description = "Maximum LFF (Large Form Factor) supported.")
  
  public String getMaxLff() {  
    return maxLff;
  }



  public void setMaxLff(String maxLff) { 
    this.maxLff = maxLff;
  }

  public ServerOrderCPU maxSff(String maxSff) { 

    this.maxSff = maxSff;
    return this;
  }

  /**
   * Maximum SFF (Small Form Factor) supported.
   * @return maxSff
   **/
  
  @Schema(example = "4", description = "Maximum SFF (Small Form Factor) supported.")
  
  public String getMaxSff() {  
    return maxSff;
  }



  public void setMaxSff(String maxSff) { 
    this.maxSff = maxSff;
  }

  public ServerOrderCPU maxNve(String maxNve) { 

    this.maxNve = maxNve;
    return this;
  }

  /**
   * Maximum NVMe drives supported.
   * @return maxNve
   **/
  
  @Schema(example = "2", description = "Maximum NVMe drives supported.")
  
  public String getMaxNve() {  
    return maxNve;
  }



  public void setMaxNve(String maxNve) { 
    this.maxNve = maxNve;
  }

  public ServerOrderCPU visible(String visible) { 

    this.visible = visible;
    return this;
  }

  /**
   * Visibility status.
   * @return visible
   **/
  
  @Schema(example = "yes", description = "Visibility status.")
  
  public String getVisible() {  
    return visible;
  }



  public void setVisible(String visible) { 
    this.visible = visible;
  }

  public ServerOrderCPU hdIds(String hdIds) { 

    this.hdIds = hdIds;
    return this;
  }

  /**
   * Hard drive IDs.
   * @return hdIds
   **/
  
  @Schema(description = "Hard drive IDs.")
  
  public String getHdIds() {  
    return hdIds;
  }



  public void setHdIds(String hdIds) { 
    this.hdIds = hdIds;
  }

  public ServerOrderCPU priceDisplay(String priceDisplay) { 

    this.priceDisplay = priceDisplay;
    return this;
  }

  /**
   * Display of CPU price.
   * @return priceDisplay
   **/
  
  @Schema(example = "$0.00", description = "Display of CPU price.")
  
  public String getPriceDisplay() {  
    return priceDisplay;
  }



  public void setPriceDisplay(String priceDisplay) { 
    this.priceDisplay = priceDisplay;
  }

  public ServerOrderCPU monthlyPriceDisplay(String monthlyPriceDisplay) { 

    this.monthlyPriceDisplay = monthlyPriceDisplay;
    return this;
  }

  /**
   * Display of monthly CPU price.
   * @return monthlyPriceDisplay
   **/
  
  @Schema(example = "$75.00", description = "Display of monthly CPU price.")
  
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
    ServerOrderCPU serverOrderCPU = (ServerOrderCPU) o;
    return Objects.equals(this.id, serverOrderCPU.id) &&
        Objects.equals(this.price, serverOrderCPU.price) &&
        Objects.equals(this.img, serverOrderCPU.img) &&
        Objects.equals(this.shortDesc, serverOrderCPU.shortDesc) &&
        Objects.equals(this.longDesc, serverOrderCPU.longDesc) &&
        Objects.equals(this.location, serverOrderCPU.location) &&
        Objects.equals(this.fsb, serverOrderCPU.fsb) &&
        Objects.equals(this.manu, serverOrderCPU.manu) &&
        Objects.equals(this.type, serverOrderCPU.type) &&
        Objects.equals(this.speed, serverOrderCPU.speed) &&
        Objects.equals(this.cache, serverOrderCPU.cache) &&
        Objects.equals(this.active, serverOrderCPU.active) &&
        Objects.equals(this.numCores, serverOrderCPU.numCores) &&
        Objects.equals(this.numCpus, serverOrderCPU.numCpus) &&
        Objects.equals(this.benchmark, serverOrderCPU.benchmark) &&
        Objects.equals(this.monthlyPrice, serverOrderCPU.monthlyPrice) &&
        Objects.equals(this.maxRam, serverOrderCPU.maxRam) &&
        Objects.equals(this.minRam, serverOrderCPU.minRam) &&
        Objects.equals(this.maxLff, serverOrderCPU.maxLff) &&
        Objects.equals(this.maxSff, serverOrderCPU.maxSff) &&
        Objects.equals(this.maxNve, serverOrderCPU.maxNve) &&
        Objects.equals(this.visible, serverOrderCPU.visible) &&
        Objects.equals(this.hdIds, serverOrderCPU.hdIds) &&
        Objects.equals(this.priceDisplay, serverOrderCPU.priceDisplay) &&
        Objects.equals(this.monthlyPriceDisplay, serverOrderCPU.monthlyPriceDisplay);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, price, img, shortDesc, longDesc, location, fsb, manu, type, speed, cache, active, numCores, numCpus, benchmark, monthlyPrice, maxRam, minRam, maxLff, maxSff, maxNve, visible, hdIds, priceDisplay, monthlyPriceDisplay);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ServerOrderCPU {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    price: ").append(toIndentedString(price)).append("\n");
    sb.append("    img: ").append(toIndentedString(img)).append("\n");
    sb.append("    shortDesc: ").append(toIndentedString(shortDesc)).append("\n");
    sb.append("    longDesc: ").append(toIndentedString(longDesc)).append("\n");
    sb.append("    location: ").append(toIndentedString(location)).append("\n");
    sb.append("    fsb: ").append(toIndentedString(fsb)).append("\n");
    sb.append("    manu: ").append(toIndentedString(manu)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    speed: ").append(toIndentedString(speed)).append("\n");
    sb.append("    cache: ").append(toIndentedString(cache)).append("\n");
    sb.append("    active: ").append(toIndentedString(active)).append("\n");
    sb.append("    numCores: ").append(toIndentedString(numCores)).append("\n");
    sb.append("    numCpus: ").append(toIndentedString(numCpus)).append("\n");
    sb.append("    benchmark: ").append(toIndentedString(benchmark)).append("\n");
    sb.append("    monthlyPrice: ").append(toIndentedString(monthlyPrice)).append("\n");
    sb.append("    maxRam: ").append(toIndentedString(maxRam)).append("\n");
    sb.append("    minRam: ").append(toIndentedString(minRam)).append("\n");
    sb.append("    maxLff: ").append(toIndentedString(maxLff)).append("\n");
    sb.append("    maxSff: ").append(toIndentedString(maxSff)).append("\n");
    sb.append("    maxNve: ").append(toIndentedString(maxNve)).append("\n");
    sb.append("    visible: ").append(toIndentedString(visible)).append("\n");
    sb.append("    hdIds: ").append(toIndentedString(hdIds)).append("\n");
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
