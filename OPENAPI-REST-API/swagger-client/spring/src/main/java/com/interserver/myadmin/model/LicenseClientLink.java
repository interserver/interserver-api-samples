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
 * LicenseClientLink
 */
@Validated
@NotUndefined



public class LicenseClientLink   {
  @JsonProperty("label")

  private String label = null;

  @JsonProperty("link")

  private String link = null;

  @JsonProperty("icon")

  private String icon = null;

  @JsonProperty("icon_text")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String iconText = null;

  @JsonProperty("help_text")

  private String helpText = null;

  @JsonProperty("other_attr")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String otherAttr = null;


  public LicenseClientLink label(String label) { 

    this.label = label;
    return this;
  }

  /**
   * Link label
   * @return label
   **/
  
  @Schema(example = "Invoices", required = true, description = "Link label")
  
  @NotNull
  public String getLabel() {  
    return label;
  }



  public void setLabel(String label) { 

    this.label = label;
  }

  public LicenseClientLink link(String link) { 

    this.link = link;
    return this;
  }

  /**
   * Link URL
   * @return link
   **/
  
  @Schema(example = "invoices", required = true, description = "Link URL")
  
  @NotNull
  public String getLink() {  
    return link;
  }



  public void setLink(String link) { 

    this.link = link;
  }

  public LicenseClientLink icon(String icon) { 

    this.icon = icon;
    return this;
  }

  /**
   * Link icon
   * @return icon
   **/
  
  @Schema(example = "fas fa-file-invoice-dollar fa-w-12", required = true, description = "Link icon")
  
  @NotNull
  public String getIcon() {  
    return icon;
  }



  public void setIcon(String icon) { 

    this.icon = icon;
  }

  public LicenseClientLink iconText(String iconText) { 

    this.iconText = iconText;
    return this;
  }

  /**
   * Icon text
   * @return iconText
   **/
  
  @Schema(description = "Icon text")
  
  public String getIconText() {  
    return iconText;
  }



  public void setIconText(String iconText) { 
    this.iconText = iconText;
  }

  public LicenseClientLink helpText(String helpText) { 

    this.helpText = helpText;
    return this;
  }

  /**
   * Help text
   * @return helpText
   **/
  
  @Schema(example = "Invoice History", required = true, description = "Help text")
  
  @NotNull
  public String getHelpText() {  
    return helpText;
  }



  public void setHelpText(String helpText) { 

    this.helpText = helpText;
  }

  public LicenseClientLink otherAttr(String otherAttr) { 

    this.otherAttr = otherAttr;
    return this;
  }

  /**
   * Other attributes
   * @return otherAttr
   **/
  
  @Schema(description = "Other attributes")
  
  public String getOtherAttr() {  
    return otherAttr;
  }



  public void setOtherAttr(String otherAttr) { 
    this.otherAttr = otherAttr;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    LicenseClientLink licenseClientLink = (LicenseClientLink) o;
    return Objects.equals(this.label, licenseClientLink.label) &&
        Objects.equals(this.link, licenseClientLink.link) &&
        Objects.equals(this.icon, licenseClientLink.icon) &&
        Objects.equals(this.iconText, licenseClientLink.iconText) &&
        Objects.equals(this.helpText, licenseClientLink.helpText) &&
        Objects.equals(this.otherAttr, licenseClientLink.otherAttr);
  }

  @Override
  public int hashCode() {
    return Objects.hash(label, link, icon, iconText, helpText, otherAttr);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class LicenseClientLink {\n");
    
    sb.append("    label: ").append(toIndentedString(label)).append("\n");
    sb.append("    link: ").append(toIndentedString(link)).append("\n");
    sb.append("    icon: ").append(toIndentedString(icon)).append("\n");
    sb.append("    iconText: ").append(toIndentedString(iconText)).append("\n");
    sb.append("    helpText: ").append(toIndentedString(helpText)).append("\n");
    sb.append("    otherAttr: ").append(toIndentedString(otherAttr)).append("\n");
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
