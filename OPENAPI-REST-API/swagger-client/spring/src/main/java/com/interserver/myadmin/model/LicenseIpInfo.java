package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.LicenseIpInfoRow;
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
 * IP address information table for a software license service.
 */
@Schema(description = "IP address information table for a software license service.")
@Validated
@NotUndefined



public class LicenseIpInfo   {
  @JsonProperty("title")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String title = null;

  @JsonProperty("rows")
  @Valid
  private List<LicenseIpInfoRow> rows = null;

  public LicenseIpInfo title(String title) { 

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

  public LicenseIpInfo rows(List<LicenseIpInfoRow> rows) { 

    this.rows = rows;
    return this;
  }

  public LicenseIpInfo addRowsItem(LicenseIpInfoRow rowsItem) {
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
  public List<LicenseIpInfoRow> getRows() {  
    return rows;
  }



  public void setRows(List<LicenseIpInfoRow> rows) { 
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
    LicenseIpInfo licenseIpInfo = (LicenseIpInfo) o;
    return Objects.equals(this.title, licenseIpInfo.title) &&
        Objects.equals(this.rows, licenseIpInfo.rows);
  }

  @Override
  public int hashCode() {
    return Objects.hash(title, rows);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class LicenseIpInfo {\n");
    
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
