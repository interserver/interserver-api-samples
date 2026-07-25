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
 * ServerClientLink
 */
@Validated
@NotUndefined



public class ServerClientLink   {
  @JsonProperty("label")

  private String label = null;

  @JsonProperty("link")

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


  public ServerClientLink label(String label) { 

    this.label = label;
    return this;
  }

  /**
   * Get label
   * @return label
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public String getLabel() {  
    return label;
  }



  public void setLabel(String label) { 

    this.label = label;
  }

  public ServerClientLink link(String link) { 

    this.link = link;
    return this;
  }

  /**
   * Get link
   * @return link
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public String getLink() {  
    return link;
  }



  public void setLink(String link) { 

    this.link = link;
  }

  public ServerClientLink icon(String icon) { 

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

  public ServerClientLink iconText(String iconText) { 

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

  public ServerClientLink helpText(String helpText) { 

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

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ServerClientLink serverClientLink = (ServerClientLink) o;
    return Objects.equals(this.label, serverClientLink.label) &&
        Objects.equals(this.link, serverClientLink.link) &&
        Objects.equals(this.icon, serverClientLink.icon) &&
        Objects.equals(this.iconText, serverClientLink.iconText) &&
        Objects.equals(this.helpText, serverClientLink.helpText);
  }

  @Override
  public int hashCode() {
    return Objects.hash(label, link, icon, iconText, helpText);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ServerClientLink {\n");
    
    sb.append("    label: ").append(toIndentedString(label)).append("\n");
    sb.append("    link: ").append(toIndentedString(link)).append("\n");
    sb.append("    icon: ").append(toIndentedString(icon)).append("\n");
    sb.append("    iconText: ").append(toIndentedString(iconText)).append("\n");
    sb.append("    helpText: ").append(toIndentedString(helpText)).append("\n");
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
