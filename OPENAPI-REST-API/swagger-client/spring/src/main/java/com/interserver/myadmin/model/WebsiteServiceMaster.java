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
 * WebsiteServiceMaster
 */
@Validated
@NotUndefined



public class WebsiteServiceMaster   {
  @JsonProperty("website_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String websiteId = null;

  @JsonProperty("website_name")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String websiteName = null;

  @JsonProperty("website_ip")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String websiteIp = null;

  @JsonProperty("website_type")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String websiteType = null;

  @JsonProperty("website_available")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String websiteAvailable = null;

  @JsonProperty("website_hdsize")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String websiteHdsize = null;

  @JsonProperty("website_hdfree")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String websiteHdfree = null;

  @JsonProperty("website_load")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String websiteLoad = null;

  @JsonProperty("website_last_update")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String websiteLastUpdate = null;

  @JsonProperty("website_max_sites")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String websiteMaxSites = null;

  @JsonProperty("website_order")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String websiteOrder = null;

  @JsonProperty("website_partitions")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String websitePartitions = null;

  @JsonProperty("website_dns1")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String websiteDns1 = null;

  @JsonProperty("website_dns2")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String websiteDns2 = null;


  public WebsiteServiceMaster websiteId(String websiteId) { 

    this.websiteId = websiteId;
    return this;
  }

  /**
   * Website ID for the service master
   * @return websiteId
   **/
  
  @Schema(example = "543", description = "Website ID for the service master")
  
  public String getWebsiteId() {  
    return websiteId;
  }



  public void setWebsiteId(String websiteId) { 
    this.websiteId = websiteId;
  }

  public WebsiteServiceMaster websiteName(String websiteName) { 

    this.websiteName = websiteName;
    return this;
  }

  /**
   * Website name for the service master
   * @return websiteName
   **/
  
  @Schema(example = "vda4200.is.cc", description = "Website name for the service master")
  
  public String getWebsiteName() {  
    return websiteName;
  }



  public void setWebsiteName(String websiteName) { 
    this.websiteName = websiteName;
  }

  public WebsiteServiceMaster websiteIp(String websiteIp) { 

    this.websiteIp = websiteIp;
    return this;
  }

  /**
   * IP address for the service master
   * @return websiteIp
   **/
  
  @Schema(example = "74.50.80.15", description = "IP address for the service master")
  
  public String getWebsiteIp() {  
    return websiteIp;
  }



  public void setWebsiteIp(String websiteIp) { 
    this.websiteIp = websiteIp;
  }

  public WebsiteServiceMaster websiteType(String websiteType) { 

    this.websiteType = websiteType;
    return this;
  }

  /**
   * Website type for the service master
   * @return websiteType
   **/
  
  @Schema(example = "206", description = "Website type for the service master")
  
  public String getWebsiteType() {  
    return websiteType;
  }



  public void setWebsiteType(String websiteType) { 
    this.websiteType = websiteType;
  }

  public WebsiteServiceMaster websiteAvailable(String websiteAvailable) { 

    this.websiteAvailable = websiteAvailable;
    return this;
  }

  /**
   * Availability status for the service master
   * @return websiteAvailable
   **/
  
  @Schema(example = "0", description = "Availability status for the service master")
  
  public String getWebsiteAvailable() {  
    return websiteAvailable;
  }



  public void setWebsiteAvailable(String websiteAvailable) { 
    this.websiteAvailable = websiteAvailable;
  }

  public WebsiteServiceMaster websiteHdsize(String websiteHdsize) { 

    this.websiteHdsize = websiteHdsize;
    return this;
  }

  /**
   * Hard drive size for the service master
   * @return websiteHdsize
   **/
  
  @Schema(example = "2062", description = "Hard drive size for the service master")
  
  public String getWebsiteHdsize() {  
    return websiteHdsize;
  }



  public void setWebsiteHdsize(String websiteHdsize) { 
    this.websiteHdsize = websiteHdsize;
  }

  public WebsiteServiceMaster websiteHdfree(String websiteHdfree) { 

    this.websiteHdfree = websiteHdfree;
    return this;
  }

  /**
   * Free hard drive space for the service master
   * @return websiteHdfree
   **/
  
  @Schema(example = "196", description = "Free hard drive space for the service master")
  
  public String getWebsiteHdfree() {  
    return websiteHdfree;
  }



  public void setWebsiteHdfree(String websiteHdfree) { 
    this.websiteHdfree = websiteHdfree;
  }

  public WebsiteServiceMaster websiteLoad(String websiteLoad) { 

    this.websiteLoad = websiteLoad;
    return this;
  }

  /**
   * Load for the service master
   * @return websiteLoad
   **/
  
  @Schema(example = "6.55", description = "Load for the service master")
  
  public String getWebsiteLoad() {  
    return websiteLoad;
  }



  public void setWebsiteLoad(String websiteLoad) { 
    this.websiteLoad = websiteLoad;
  }

  public WebsiteServiceMaster websiteLastUpdate(String websiteLastUpdate) { 

    this.websiteLastUpdate = websiteLastUpdate;
    return this;
  }

  /**
   * Last update date for the service master
   * @return websiteLastUpdate
   **/
  
  @Schema(example = "2023-08-17T23:01:02.000Z", description = "Last update date for the service master")
  
  public String getWebsiteLastUpdate() {  
    return websiteLastUpdate;
  }



  public void setWebsiteLastUpdate(String websiteLastUpdate) { 
    this.websiteLastUpdate = websiteLastUpdate;
  }

  public WebsiteServiceMaster websiteMaxSites(String websiteMaxSites) { 

    this.websiteMaxSites = websiteMaxSites;
    return this;
  }

  /**
   * Maximum number of sites for the service master
   * @return websiteMaxSites
   **/
  
  @Schema(example = "300", description = "Maximum number of sites for the service master")
  
  public String getWebsiteMaxSites() {  
    return websiteMaxSites;
  }



  public void setWebsiteMaxSites(String websiteMaxSites) { 
    this.websiteMaxSites = websiteMaxSites;
  }

  public WebsiteServiceMaster websiteOrder(String websiteOrder) { 

    this.websiteOrder = websiteOrder;
    return this;
  }

  /**
   * Order number for the service master
   * @return websiteOrder
   **/
  
  @Schema(example = "58984", description = "Order number for the service master")
  
  public String getWebsiteOrder() {  
    return websiteOrder;
  }



  public void setWebsiteOrder(String websiteOrder) { 
    this.websiteOrder = websiteOrder;
  }

  public WebsiteServiceMaster websitePartitions(String websitePartitions) { 

    this.websitePartitions = websitePartitions;
    return this;
  }

  /**
   * Partitions for the service master
   * @return websitePartitions
   **/
  
  @Schema(description = "Partitions for the service master")
  
  public String getWebsitePartitions() {  
    return websitePartitions;
  }



  public void setWebsitePartitions(String websitePartitions) { 
    this.websitePartitions = websitePartitions;
  }

  public WebsiteServiceMaster websiteDns1(String websiteDns1) { 

    this.websiteDns1 = websiteDns1;
    return this;
  }

  /**
   * DNS server 1 for the service master
   * @return websiteDns1
   **/
  
  @Schema(example = "vda4200a.trouble-free.net", description = "DNS server 1 for the service master")
  
  public String getWebsiteDns1() {  
    return websiteDns1;
  }



  public void setWebsiteDns1(String websiteDns1) { 
    this.websiteDns1 = websiteDns1;
  }

  public WebsiteServiceMaster websiteDns2(String websiteDns2) { 

    this.websiteDns2 = websiteDns2;
    return this;
  }

  /**
   * DNS server 2 for the service master
   * @return websiteDns2
   **/
  
  @Schema(example = "vda4200b.trouble-free.net", description = "DNS server 2 for the service master")
  
  public String getWebsiteDns2() {  
    return websiteDns2;
  }



  public void setWebsiteDns2(String websiteDns2) { 
    this.websiteDns2 = websiteDns2;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    WebsiteServiceMaster websiteServiceMaster = (WebsiteServiceMaster) o;
    return Objects.equals(this.websiteId, websiteServiceMaster.websiteId) &&
        Objects.equals(this.websiteName, websiteServiceMaster.websiteName) &&
        Objects.equals(this.websiteIp, websiteServiceMaster.websiteIp) &&
        Objects.equals(this.websiteType, websiteServiceMaster.websiteType) &&
        Objects.equals(this.websiteAvailable, websiteServiceMaster.websiteAvailable) &&
        Objects.equals(this.websiteHdsize, websiteServiceMaster.websiteHdsize) &&
        Objects.equals(this.websiteHdfree, websiteServiceMaster.websiteHdfree) &&
        Objects.equals(this.websiteLoad, websiteServiceMaster.websiteLoad) &&
        Objects.equals(this.websiteLastUpdate, websiteServiceMaster.websiteLastUpdate) &&
        Objects.equals(this.websiteMaxSites, websiteServiceMaster.websiteMaxSites) &&
        Objects.equals(this.websiteOrder, websiteServiceMaster.websiteOrder) &&
        Objects.equals(this.websitePartitions, websiteServiceMaster.websitePartitions) &&
        Objects.equals(this.websiteDns1, websiteServiceMaster.websiteDns1) &&
        Objects.equals(this.websiteDns2, websiteServiceMaster.websiteDns2);
  }

  @Override
  public int hashCode() {
    return Objects.hash(websiteId, websiteName, websiteIp, websiteType, websiteAvailable, websiteHdsize, websiteHdfree, websiteLoad, websiteLastUpdate, websiteMaxSites, websiteOrder, websitePartitions, websiteDns1, websiteDns2);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class WebsiteServiceMaster {\n");
    
    sb.append("    websiteId: ").append(toIndentedString(websiteId)).append("\n");
    sb.append("    websiteName: ").append(toIndentedString(websiteName)).append("\n");
    sb.append("    websiteIp: ").append(toIndentedString(websiteIp)).append("\n");
    sb.append("    websiteType: ").append(toIndentedString(websiteType)).append("\n");
    sb.append("    websiteAvailable: ").append(toIndentedString(websiteAvailable)).append("\n");
    sb.append("    websiteHdsize: ").append(toIndentedString(websiteHdsize)).append("\n");
    sb.append("    websiteHdfree: ").append(toIndentedString(websiteHdfree)).append("\n");
    sb.append("    websiteLoad: ").append(toIndentedString(websiteLoad)).append("\n");
    sb.append("    websiteLastUpdate: ").append(toIndentedString(websiteLastUpdate)).append("\n");
    sb.append("    websiteMaxSites: ").append(toIndentedString(websiteMaxSites)).append("\n");
    sb.append("    websiteOrder: ").append(toIndentedString(websiteOrder)).append("\n");
    sb.append("    websitePartitions: ").append(toIndentedString(websitePartitions)).append("\n");
    sb.append("    websiteDns1: ").append(toIndentedString(websiteDns1)).append("\n");
    sb.append("    websiteDns2: ").append(toIndentedString(websiteDns2)).append("\n");
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
