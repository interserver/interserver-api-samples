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
 * Schema for the jsonServices field in WebsitesOrder
 */
@Schema(description = "Schema for the jsonServices field in WebsitesOrder")
@Validated
@NotUndefined



public class WebsitesOrderJsonServices   {
  @JsonProperty("11447")

  private String _11447 = null;


  public WebsitesOrderJsonServices _11447(String _11447) { 

    this._11447 = _11447;
    return this;
  }

  /**
   * JSON services description
   * @return _11447
   **/
  
  @Schema(example = "5.00", required = true, description = "JSON services description")
  
  @NotNull
  public String get11447() {  
    return _11447;
  }



  public void set11447(String _11447) { 

    this._11447 = _11447;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    WebsitesOrderJsonServices websitesOrderJsonServices = (WebsitesOrderJsonServices) o;
    return Objects.equals(this._11447, websitesOrderJsonServices._11447);
  }

  @Override
  public int hashCode() {
    return Objects.hash(_11447);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class WebsitesOrderJsonServices {\n");
    
    sb.append("    _11447: ").append(toIndentedString(_11447)).append("\n");
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
