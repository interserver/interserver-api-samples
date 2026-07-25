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
 * Dashboard module configuration for backup storage services.
 */
@Schema(description = "Dashboard module configuration for backup storage services.")
@Validated
@NotUndefined



public class HomeDetailsModulesBackups   {
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


  public HomeDetailsModulesBackups icon(String icon) { 

    this.icon = icon;
    return this;
  }

  /**
   * The icon for storages.
   * @return icon
   **/
  
  @Schema(example = "warehouse", description = "The icon for storages.")
  
  public String getIcon() {  
    return icon;
  }



  public void setIcon(String icon) { 
    this.icon = icon;
  }

  public HomeDetailsModulesBackups viewLink(String viewLink) { 

    this.viewLink = viewLink;
    return this;
  }

  /**
   * Link to view backup.
   * @return viewLink
   **/
  
  @Schema(example = "view_backup", description = "Link to view backup.")
  
  public String getViewLink() {  
    return viewLink;
  }



  public void setViewLink(String viewLink) { 
    this.viewLink = viewLink;
  }

  public HomeDetailsModulesBackups heading(String heading) { 

    this.heading = heading;
    return this;
  }

  /**
   * Heading for storages.
   * @return heading
   **/
  
  @Schema(example = "Storages", description = "Heading for storages.")
  
  public String getHeading() {  
    return heading;
  }



  public void setHeading(String heading) { 
    this.heading = heading;
  }

  public HomeDetailsModulesBackups buyLink(String buyLink) { 

    this.buyLink = buyLink;
    return this;
  }

  /**
   * Link to order storage.
   * @return buyLink
   **/
  
  @Schema(example = "order_storage", description = "Link to order storage.")
  
  public String getBuyLink() {  
    return buyLink;
  }



  public void setBuyLink(String buyLink) { 
    this.buyLink = buyLink;
  }

  public HomeDetailsModulesBackups listLink(String listLink) { 

    this.listLink = listLink;
    return this;
  }

  /**
   * Link to view backups list.
   * @return listLink
   **/
  
  @Schema(example = "view_backups_list", description = "Link to view backups list.")
  
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
    HomeDetailsModulesBackups homeDetailsModulesBackups = (HomeDetailsModulesBackups) o;
    return Objects.equals(this.icon, homeDetailsModulesBackups.icon) &&
        Objects.equals(this.viewLink, homeDetailsModulesBackups.viewLink) &&
        Objects.equals(this.heading, homeDetailsModulesBackups.heading) &&
        Objects.equals(this.buyLink, homeDetailsModulesBackups.buyLink) &&
        Objects.equals(this.listLink, homeDetailsModulesBackups.listLink);
  }

  @Override
  public int hashCode() {
    return Objects.hash(icon, viewLink, heading, buyLink, listLink);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class HomeDetailsModulesBackups {\n");
    
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
