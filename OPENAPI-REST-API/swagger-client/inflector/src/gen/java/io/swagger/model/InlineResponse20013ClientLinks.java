package io.swagger.model;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;





public class InlineResponse20013ClientLinks   {
  @JsonProperty("label")
  private String label = null;
  @JsonProperty("link")
  private String link = null;
  @JsonProperty("icon")
  private String icon = null;
  @JsonProperty("icon_text")
  private String iconText = null;
  @JsonProperty("help_text")
  private String helpText = null;
  @JsonProperty("other_attr")
  private String otherAttr = null;
  /**
   **/
  public InlineResponse20013ClientLinks label(String label) {
    this.label = label;
    return this;
  }

  
  @Schema(description = "")
  @JsonProperty("label")
  public String getLabel() {
    return label;
  }
  public void setLabel(String label) {
    this.label = label;
  }

  /**
   **/
  public InlineResponse20013ClientLinks link(String link) {
    this.link = link;
    return this;
  }

  
  @Schema(description = "")
  @JsonProperty("link")
  public String getLink() {
    return link;
  }
  public void setLink(String link) {
    this.link = link;
  }

  /**
   **/
  public InlineResponse20013ClientLinks icon(String icon) {
    this.icon = icon;
    return this;
  }

  
  @Schema(description = "")
  @JsonProperty("icon")
  public String getIcon() {
    return icon;
  }
  public void setIcon(String icon) {
    this.icon = icon;
  }

  /**
   **/
  public InlineResponse20013ClientLinks iconText(String iconText) {
    this.iconText = iconText;
    return this;
  }

  
  @Schema(description = "")
  @JsonProperty("icon_text")
  public String getIconText() {
    return iconText;
  }
  public void setIconText(String iconText) {
    this.iconText = iconText;
  }

  /**
   **/
  public InlineResponse20013ClientLinks helpText(String helpText) {
    this.helpText = helpText;
    return this;
  }

  
  @Schema(description = "")
  @JsonProperty("help_text")
  public String getHelpText() {
    return helpText;
  }
  public void setHelpText(String helpText) {
    this.helpText = helpText;
  }

  /**
   **/
  public InlineResponse20013ClientLinks otherAttr(String otherAttr) {
    this.otherAttr = otherAttr;
    return this;
  }

  
  @Schema(description = "")
  @JsonProperty("other_attr")
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
    return Objects.equals(label, inlineResponse20013ClientLinks.label) &&
        Objects.equals(link, inlineResponse20013ClientLinks.link) &&
        Objects.equals(icon, inlineResponse20013ClientLinks.icon) &&
        Objects.equals(iconText, inlineResponse20013ClientLinks.iconText) &&
        Objects.equals(helpText, inlineResponse20013ClientLinks.helpText) &&
        Objects.equals(otherAttr, inlineResponse20013ClientLinks.otherAttr);
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
