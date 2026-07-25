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
 * A navigation link for webhosting-related actions in the client portal.
 */
@Schema(description = "A navigation link for webhosting-related actions in the client portal.")
@Validated
@NotUndefined



public class WebsiteClientLink   {
  @JsonProperty("label")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String label = null;

  @JsonProperty("link")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String link = null;

  @JsonProperty("icon")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String icon = null;

  @JsonProperty("icon_text")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String iconText = null;

  @JsonProperty("help_text")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String helpText = null;

  @JsonProperty("other_attr")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String otherAttr = null;


  public WebsiteClientLink label(String label) { 

    this.label = label;
    return this;
  }

  /**
   * Label for the link
   * @return label
   **/
  
  @Schema(description = "Label for the link")
  
  public String getLabel() {  
    return label;
  }



  public void setLabel(String label) { 
    this.label = label;
  }

  public WebsiteClientLink link(String link) { 

    this.link = link;
    return this;
  }

  /**
   * Link URL
   * @return link
   **/
  
  @Schema(description = "Link URL")
  
  public String getLink() {  
    return link;
  }



  public void setLink(String link) { 
    this.link = link;
  }

  public WebsiteClientLink icon(String icon) { 

    this.icon = icon;
    return this;
  }

  /**
   * Icon for the link
   * @return icon
   **/
  
  @Schema(description = "Icon for the link")
  
  public String getIcon() {  
    return icon;
  }



  public void setIcon(String icon) { 
    this.icon = icon;
  }

  public WebsiteClientLink iconText(String iconText) { 

    this.iconText = iconText;
    return this;
  }

  /**
   * Icon text for the link
   * @return iconText
   **/
  
  @Schema(description = "Icon text for the link")
  
  public String getIconText() {  
    return iconText;
  }



  public void setIconText(String iconText) { 
    this.iconText = iconText;
  }

  public WebsiteClientLink helpText(String helpText) { 

    this.helpText = helpText;
    return this;
  }

  /**
   * Help text for the link
   * @return helpText
   **/
  
  @Schema(description = "Help text for the link")
  
  public String getHelpText() {  
    return helpText;
  }



  public void setHelpText(String helpText) { 
    this.helpText = helpText;
  }

  public WebsiteClientLink otherAttr(String otherAttr) { 

    this.otherAttr = otherAttr;
    return this;
  }

  /**
   * Other attributes for the link
   * @return otherAttr
   **/
  
  @Schema(description = "Other attributes for the link")
  
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
    WebsiteClientLink websiteClientLink = (WebsiteClientLink) o;
    return Objects.equals(this.label, websiteClientLink.label) &&
        Objects.equals(this.link, websiteClientLink.link) &&
        Objects.equals(this.icon, websiteClientLink.icon) &&
        Objects.equals(this.iconText, websiteClientLink.iconText) &&
        Objects.equals(this.helpText, websiteClientLink.helpText) &&
        Objects.equals(this.otherAttr, websiteClientLink.otherAttr);
  }

  @Override
  public int hashCode() {
    return Objects.hash(label, link, icon, iconText, helpText, otherAttr);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class WebsiteClientLink {\n");
    
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
