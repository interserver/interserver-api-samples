package io.swagger.model;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;





public class InlineResponseMap200   {
  @JsonProperty("name")
  private String name = null;
  @JsonProperty("local_name")
  private String localName = null;
  /**
   * English display name of the locale.
   **/
  public InlineResponseMap200 name(String name) {
    this.name = name;
    return this;
  }

  
  @Schema(description = "English display name of the locale.")
  @JsonProperty("name")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

  /**
   * Display name of the locale in its own language.
   **/
  public InlineResponseMap200 localName(String localName) {
    this.localName = localName;
    return this;
  }

  
  @Schema(description = "Display name of the locale in its own language.")
  @JsonProperty("local_name")
  public String getLocalName() {
    return localName;
  }
  public void setLocalName(String localName) {
    this.localName = localName;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponseMap200 inlineResponseMap200 = (InlineResponseMap200) o;
    return Objects.equals(name, inlineResponseMap200.name) &&
        Objects.equals(localName, inlineResponseMap200.localName);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, localName);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponseMap200 {\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    localName: ").append(toIndentedString(localName)).append("\n");
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
