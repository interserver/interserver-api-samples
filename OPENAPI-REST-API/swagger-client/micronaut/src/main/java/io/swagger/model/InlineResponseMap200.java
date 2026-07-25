package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;
import io.micronaut.core.annotation.Introspected;
import io.micronaut.validation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * InlineResponseMap200
 */
@Validated
@Introspected

public class InlineResponseMap200   {
  @JsonProperty("name")
  private String name = null;

  @JsonProperty("local_name")
  private String localName = null;

  public InlineResponseMap200 name(String name) {
    this.name = name;
    return this;
  }

  /**
   * English display name of the locale.
   * @return name
  **/
  @Schema(description = "English display name of the locale.")
  @NotNull

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public InlineResponseMap200 localName(String localName) {
    this.localName = localName;
    return this;
  }

  /**
   * Display name of the locale in its own language.
   * @return localName
  **/
  @Schema(description = "Display name of the locale in its own language.")
  @NotNull

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
    return Objects.equals(this.name, inlineResponseMap200.name) &&
        Objects.equals(this.localName, inlineResponseMap200.localName);
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
