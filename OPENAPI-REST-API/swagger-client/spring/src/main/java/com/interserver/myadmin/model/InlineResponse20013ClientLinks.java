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
 * InlineResponse20013ClientLinks
 */
@Validated
@NotUndefined



public class InlineResponse20013ClientLinks   {
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


  public InlineResponse20013ClientLinks label(String label) { 

    this.label = label;
    return this;
  }

  /**
   * Get label
   * @return label
   **/
  
  @Schema(description = "")
  
  public String getLabel() {  
    return label;
  }



  public void setLabel(String label) { 
    this.label = label;
  }

  public InlineResponse20013ClientLinks link(String link) { 

    this.link = link;
    return this;
  }

  /**
   * Get link
   * @return link
   **/
  
  @Schema(description = "")
  
  public String getLink() {  
    return link;
  }



  public void setLink(String link) { 
    this.link = link;
  }

  public InlineResponse20013ClientLinks icon(String icon) { 

    this.icon = icon;
    return this;
  }

  /**
   * Get icon
   * @return icon
   **/
  
  @Schema(description = "")
  
  public String getIcon() {  
    return icon;
  }



  public void setIcon(String icon) { 
    this.icon = icon;
  }

  public InlineResponse20013ClientLinks iconText(String iconText) { 

    this.iconText = iconText;
    return this;
  }

  /**
   * Get iconText
   * @return iconText
   **/
  
  @Schema(description = "")
  
  public String getIconText() {  
    return iconText;
  }



  public void setIconText(String iconText) { 
    this.iconText = iconText;
  }

  public InlineResponse20013ClientLinks helpText(String helpText) { 

    this.helpText = helpText;
    return this;
  }

  /**
   * Get helpText
   * @return helpText
   **/
  
  @Schema(description = "")
  
  public String getHelpText() {  
    return helpText;
  }



  public void setHelpText(String helpText) { 
    this.helpText = helpText;
  }

  public InlineResponse20013ClientLinks otherAttr(String otherAttr) { 

    this.otherAttr = otherAttr;
    return this;
  }

  /**
   * Get otherAttr
   * @return otherAttr
   **/
  
  @Schema(description = "")
  
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
    InlineResponse20013ClientLinks inlineResponse20013ClientLinks = (InlineResponse20013ClientLinks) o;
    return Objects.equals(this.label, inlineResponse20013ClientLinks.label) &&
        Objects.equals(this.link, inlineResponse20013ClientLinks.link) &&
        Objects.equals(this.icon, inlineResponse20013ClientLinks.icon) &&
        Objects.equals(this.iconText, inlineResponse20013ClientLinks.iconText) &&
        Objects.equals(this.helpText, inlineResponse20013ClientLinks.helpText) &&
        Objects.equals(this.otherAttr, inlineResponse20013ClientLinks.otherAttr);
  }

  @Override
  public int hashCode() {
    return Objects.hash(label, link, icon, iconText, helpText, otherAttr);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20013ClientLinks {\n");
    
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
