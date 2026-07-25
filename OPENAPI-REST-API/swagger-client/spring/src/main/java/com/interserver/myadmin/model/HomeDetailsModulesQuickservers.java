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
 * Dashboard module configuration for QuickServer services.
 */
@Schema(description = "Dashboard module configuration for QuickServer services.")
@Validated
@NotUndefined



public class HomeDetailsModulesQuickservers   {
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


  public HomeDetailsModulesQuickservers icon(String icon) { 

    this.icon = icon;
    return this;
  }

  /**
   * The icon for quick servers.
   * @return icon
   **/
  
  @Schema(example = "database", description = "The icon for quick servers.")
  
  public String getIcon() {  
    return icon;
  }



  public void setIcon(String icon) { 
    this.icon = icon;
  }

  public HomeDetailsModulesQuickservers viewLink(String viewLink) { 

    this.viewLink = viewLink;
    return this;
  }

  /**
   * Link to view quick servers.
   * @return viewLink
   **/
  
  @Schema(example = "view_qs", description = "Link to view quick servers.")
  
  public String getViewLink() {  
    return viewLink;
  }



  public void setViewLink(String viewLink) { 
    this.viewLink = viewLink;
  }

  public HomeDetailsModulesQuickservers heading(String heading) { 

    this.heading = heading;
    return this;
  }

  /**
   * Heading for quick servers.
   * @return heading
   **/
  
  @Schema(example = "Quick Servers", description = "Heading for quick servers.")
  
  public String getHeading() {  
    return heading;
  }



  public void setHeading(String heading) { 
    this.heading = heading;
  }

  public HomeDetailsModulesQuickservers buyLink(String buyLink) { 

    this.buyLink = buyLink;
    return this;
  }

  /**
   * Link to order quick server.
   * @return buyLink
   **/
  
  @Schema(example = "order_quickserver", description = "Link to order quick server.")
  
  public String getBuyLink() {  
    return buyLink;
  }



  public void setBuyLink(String buyLink) { 
    this.buyLink = buyLink;
  }

  public HomeDetailsModulesQuickservers listLink(String listLink) { 

    this.listLink = listLink;
    return this;
  }

  /**
   * Link to view quick servers list.
   * @return listLink
   **/
  
  @Schema(example = "view_quickservers_list", description = "Link to view quick servers list.")
  
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
    HomeDetailsModulesQuickservers homeDetailsModulesQuickservers = (HomeDetailsModulesQuickservers) o;
    return Objects.equals(this.icon, homeDetailsModulesQuickservers.icon) &&
        Objects.equals(this.viewLink, homeDetailsModulesQuickservers.viewLink) &&
        Objects.equals(this.heading, homeDetailsModulesQuickservers.heading) &&
        Objects.equals(this.buyLink, homeDetailsModulesQuickservers.buyLink) &&
        Objects.equals(this.listLink, homeDetailsModulesQuickservers.listLink);
  }

  @Override
  public int hashCode() {
    return Objects.hash(icon, viewLink, heading, buyLink, listLink);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class HomeDetailsModulesQuickservers {\n");
    
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
