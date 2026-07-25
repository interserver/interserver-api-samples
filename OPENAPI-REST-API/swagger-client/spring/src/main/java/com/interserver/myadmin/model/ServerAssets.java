package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;
import java.util.ArrayList;
import java.util.List;
import org.springframework.validation.annotation.Validated;
import org.openapitools.jackson.nullable.JsonNullable;
import io.swagger.configuration.NotUndefined;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.Nulls;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * ServerAssets
 */
@Validated
@NotUndefined



public class ServerAssets   {
  @JsonProperty("title")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String title = null;

  @JsonProperty("size")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer size = null;

  @JsonProperty("type")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String type = null;

  @JsonProperty("header")
  @Valid
  private List<String> header = null;
  @JsonProperty("rows")
  @Valid
  private List<List<String>> rows = null;

  public ServerAssets title(String title) { 

    this.title = title;
    return this;
  }

  /**
   * The title of the assets.
   * @return title
   **/
  
  @Schema(example = "Assets", description = "The title of the assets.")
  
  public String getTitle() {  
    return title;
  }



  public void setTitle(String title) { 
    this.title = title;
  }

  public ServerAssets size(Integer size) { 

    this.size = size;
    return this;
  }

  /**
   * The size of the assets.
   * @return size
   **/
  
  @Schema(example = "2", description = "The size of the assets.")
  
  public Integer getSize() {  
    return size;
  }



  public void setSize(Integer size) { 
    this.size = size;
  }

  public ServerAssets type(String type) { 

    this.type = type;
    return this;
  }

  /**
   * The type of the assets.
   * @return type
   **/
  
  @Schema(example = "table", description = "The type of the assets.")
  
  public String getType() {  
    return type;
  }



  public void setType(String type) { 
    this.type = type;
  }

  public ServerAssets header(List<String> header) { 

    this.header = header;
    return this;
  }

  public ServerAssets addHeaderItem(String headerItem) {
    if (this.header == null) {
      this.header = new ArrayList<>();
    }
    this.header.add(headerItem);
    return this;
  }

  /**
   * The header of the assets table.
   * @return header
   **/
  
  @Schema(description = "The header of the assets table.")
  
  public List<String> getHeader() {  
    return header;
  }



  public void setHeader(List<String> header) { 
    this.header = header;
  }

  public ServerAssets rows(List<List<String>> rows) { 

    this.rows = rows;
    return this;
  }

  public ServerAssets addRowsItem(List<String> rowsItem) {
    if (this.rows == null) {
      this.rows = new ArrayList<>();
    }
    this.rows.add(rowsItem);
    return this;
  }

  /**
   * The rows of the assets table.
   * @return rows
   **/
  
  @Schema(description = "The rows of the assets table.")
  @Valid
  public List<List<String>> getRows() {  
    return rows;
  }



  public void setRows(List<List<String>> rows) { 
    this.rows = rows;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ServerAssets serverAssets = (ServerAssets) o;
    return Objects.equals(this.title, serverAssets.title) &&
        Objects.equals(this.size, serverAssets.size) &&
        Objects.equals(this.type, serverAssets.type) &&
        Objects.equals(this.header, serverAssets.header) &&
        Objects.equals(this.rows, serverAssets.rows);
  }

  @Override
  public int hashCode() {
    return Objects.hash(title, size, type, header, rows);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ServerAssets {\n");
    
    sb.append("    title: ").append(toIndentedString(title)).append("\n");
    sb.append("    size: ").append(toIndentedString(size)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    header: ").append(toIndentedString(header)).append("\n");
    sb.append("    rows: ").append(toIndentedString(rows)).append("\n");
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
