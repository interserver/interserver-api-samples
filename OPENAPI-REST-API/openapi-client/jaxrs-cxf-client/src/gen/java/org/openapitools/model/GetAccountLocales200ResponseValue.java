package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class GetAccountLocales200ResponseValue  {
  
 /**
  * English display name of the locale.
  */
  @ApiModelProperty(value = "English display name of the locale.")

  private String name;

 /**
  * Display name of the locale in its own language.
  */
  @ApiModelProperty(value = "Display name of the locale in its own language.")

  private String localName;
 /**
   * English display name of the locale.
   * @return name
  **/
  @JsonProperty("name")
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public GetAccountLocales200ResponseValue name(String name) {
    this.name = name;
    return this;
  }

 /**
   * Display name of the locale in its own language.
   * @return localName
  **/
  @JsonProperty("local_name")
  public String getLocalName() {
    return localName;
  }

  public void setLocalName(String localName) {
    this.localName = localName;
  }

  public GetAccountLocales200ResponseValue localName(String localName) {
    this.localName = localName;
    return this;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GetAccountLocales200ResponseValue getAccountLocales200ResponseValue = (GetAccountLocales200ResponseValue) o;
    return Objects.equals(this.name, getAccountLocales200ResponseValue.name) &&
        Objects.equals(this.localName, getAccountLocales200ResponseValue.localName);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, localName);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GetAccountLocales200ResponseValue {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    localName: ").append(toIndentedString(localName)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private static String toIndentedString(Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}

