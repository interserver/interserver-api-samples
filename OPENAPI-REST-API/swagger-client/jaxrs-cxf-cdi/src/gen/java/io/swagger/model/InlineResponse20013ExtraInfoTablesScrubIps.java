package io.swagger.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.model.InlineResponse20013ExtraInfoTablesScrubIpsRows;
import java.util.ArrayList;
import java.util.List;
import javax.validation.Valid;
import javax.validation.constraints.*;

import io.swagger.v3.oas.annotations.media.Schema;
import java.util.Objects;

import javax.xml.bind.annotation.*;



public class InlineResponse20013ExtraInfoTablesScrubIps   {
  private String title = null;
  private List<InlineResponse20013ExtraInfoTablesScrubIpsRows> rows = new ArrayList<InlineResponse20013ExtraInfoTablesScrubIpsRows>();

  /**
   **/
  public InlineResponse20013ExtraInfoTablesScrubIps title(String title) {
    this.title = title;
    return this;
  }

  
  
  @Schema(description = "")
  @JsonProperty("title")
  @NotNull
  public String getTitle() {
    return title;
  }
  public void setTitle(String title) {
    this.title = title;
  }

  /**
   **/
  public InlineResponse20013ExtraInfoTablesScrubIps rows(List<InlineResponse20013ExtraInfoTablesScrubIpsRows> rows) {
    this.rows = rows;
    return this;
  }

  
  
  @Schema(description = "")
  @JsonProperty("rows")
  @NotNull
  @Valid
  public List<InlineResponse20013ExtraInfoTablesScrubIpsRows> getRows() {
    return rows;
  }
  public void setRows(List<InlineResponse20013ExtraInfoTablesScrubIpsRows> rows) {
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
    InlineResponse20013ExtraInfoTablesScrubIps inlineResponse20013ExtraInfoTablesScrubIps = (InlineResponse20013ExtraInfoTablesScrubIps) o;
    return Objects.equals(title, inlineResponse20013ExtraInfoTablesScrubIps.title) &&
        Objects.equals(rows, inlineResponse20013ExtraInfoTablesScrubIps.rows);
  }

  @Override
  public int hashCode() {
    return Objects.hash(title, rows);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20013ExtraInfoTablesScrubIps {\n");
    
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
