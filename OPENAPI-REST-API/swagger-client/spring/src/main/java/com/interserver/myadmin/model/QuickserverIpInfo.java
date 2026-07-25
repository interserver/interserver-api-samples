package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.QuickserverIpTableRow;
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
 * IP address information table for a QuickServer service.
 */
@Schema(description = "IP address information table for a QuickServer service.")
@Validated
@NotUndefined



public class QuickserverIpInfo   {
  @JsonProperty("title")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String title = null;

  @JsonProperty("rows")
  @Valid
  private List<QuickserverIpTableRow> rows = null;

  public QuickserverIpInfo title(String title) { 

    this.title = title;
    return this;
  }

  /**
   * Table title
   * @return title
   **/
  
  @Schema(example = "IP Information", description = "Table title")
  
  public String getTitle() {  
    return title;
  }



  public void setTitle(String title) { 
    this.title = title;
  }

  public QuickserverIpInfo rows(List<QuickserverIpTableRow> rows) { 

    this.rows = rows;
    return this;
  }

  public QuickserverIpInfo addRowsItem(QuickserverIpTableRow rowsItem) {
    if (this.rows == null) {
      this.rows = new ArrayList<>();
    }
    this.rows.add(rowsItem);
    return this;
  }

  /**
   * Get rows
   * @return rows
   **/
  
  @Schema(description = "")
  @Valid
  public List<QuickserverIpTableRow> getRows() {  
    return rows;
  }



  public void setRows(List<QuickserverIpTableRow> rows) { 
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
    QuickserverIpInfo quickserverIpInfo = (QuickserverIpInfo) o;
    return Objects.equals(this.title, quickserverIpInfo.title) &&
        Objects.equals(this.rows, quickserverIpInfo.rows);
  }

  @Override
  public int hashCode() {
    return Objects.hash(title, rows);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class QuickserverIpInfo {\n");
    
    sb.append("    title: ").append(toIndentedString(title)).append("\n");
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
