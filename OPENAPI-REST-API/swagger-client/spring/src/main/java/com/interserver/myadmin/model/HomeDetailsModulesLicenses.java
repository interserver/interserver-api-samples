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
 * Dashboard module configuration for software license services.
 */
@Schema(description = "Dashboard module configuration for software license services.")
@Validated
@NotUndefined



public class HomeDetailsModulesLicenses   {
  @JsonProperty("icon")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String icon = null;

  @JsonProperty("view_link")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String viewLink = null;

  @JsonProperty("heading")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String heading = null;

  @JsonProperty("buy_link")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String buyLink = null;

  @JsonProperty("list_link")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String listLink = null;


  public HomeDetailsModulesLicenses icon(String icon) { 

    this.icon = icon;
    return this;
  }

  /**
   * The icon for licenses.
   * @return icon
   **/
  
  @Schema(example = "id-card", description = "The icon for licenses.")
  
  public String getIcon() {  
    return icon;
  }



  public void setIcon(String icon) { 
    this.icon = icon;
  }

  public HomeDetailsModulesLicenses viewLink(String viewLink) { 

    this.viewLink = viewLink;
    return this;
  }

  /**
   * Link to view license.
   * @return viewLink
   **/
  
  @Schema(example = "view_license", description = "Link to view license.")
  
  public String getViewLink() {  
    return viewLink;
  }



  public void setViewLink(String viewLink) { 
    this.viewLink = viewLink;
  }

  public HomeDetailsModulesLicenses heading(String heading) { 

    this.heading = heading;
    return this;
  }

  /**
   * Heading for licenses.
   * @return heading
   **/
  
  @Schema(example = "Licenses", description = "Heading for licenses.")
  
  public String getHeading() {  
    return heading;
  }



  public void setHeading(String heading) { 
    this.heading = heading;
  }

  public HomeDetailsModulesLicenses buyLink(String buyLink) { 

    this.buyLink = buyLink;
    return this;
  }

  /**
   * Link to order license.
   * @return buyLink
   **/
  
  @Schema(example = "order_license", description = "Link to order license.")
  
  public String getBuyLink() {  
    return buyLink;
  }



  public void setBuyLink(String buyLink) { 
    this.buyLink = buyLink;
  }

  public HomeDetailsModulesLicenses listLink(String listLink) { 

    this.listLink = listLink;
    return this;
  }

  /**
   * Link to view licenses list.
   * @return listLink
   **/
  
  @Schema(example = "view_licenses_list", description = "Link to view licenses list.")
  
  public String getListLink() {  
    return listLink;
  }



  public void setListLink(String listLink) { 
    this.listLink = listLink;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    HomeDetailsModulesLicenses homeDetailsModulesLicenses = (HomeDetailsModulesLicenses) o;
    return Objects.equals(this.icon, homeDetailsModulesLicenses.icon) &&
        Objects.equals(this.viewLink, homeDetailsModulesLicenses.viewLink) &&
        Objects.equals(this.heading, homeDetailsModulesLicenses.heading) &&
        Objects.equals(this.buyLink, homeDetailsModulesLicenses.buyLink) &&
        Objects.equals(this.listLink, homeDetailsModulesLicenses.listLink);
  }

  @Override
  public int hashCode() {
    return Objects.hash(icon, viewLink, heading, buyLink, listLink);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class HomeDetailsModulesLicenses {\n");
    
    sb.append("    icon: ").append(toIndentedString(icon)).append("\n");
    sb.append("    viewLink: ").append(toIndentedString(viewLink)).append("\n");
    sb.append("    heading: ").append(toIndentedString(heading)).append("\n");
    sb.append("    buyLink: ").append(toIndentedString(buyLink)).append("\n");
    sb.append("    listLink: ").append(toIndentedString(listLink)).append("\n");
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
