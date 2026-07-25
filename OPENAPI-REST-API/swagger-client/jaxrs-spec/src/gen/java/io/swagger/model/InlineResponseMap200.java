package io.swagger.model;

import javax.validation.constraints.*;
import javax.validation.Valid;


import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class InlineResponseMap200   {

  private @Valid String name = null;

  private @Valid String localName = null;

  /**
   * English display name of the locale.
   **/
  public InlineResponseMap200 name(String name) {
    this.name = name;
    return this;
  }

  
  @ApiModelProperty(value = "English display name of the locale.")
  @JsonProperty("name")
  @NotNull

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

  
  @ApiModelProperty(value = "Display name of the locale in its own language.")
  @JsonProperty("local_name")
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
