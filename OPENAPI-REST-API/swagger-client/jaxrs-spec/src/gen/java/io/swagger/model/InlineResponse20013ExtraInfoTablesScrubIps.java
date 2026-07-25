package io.swagger.model;

import io.swagger.model.InlineResponse20013ExtraInfoTablesScrubIpsRows;
import java.util.ArrayList;
import java.util.List;
import javax.validation.constraints.*;
import javax.validation.Valid;


import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class InlineResponse20013ExtraInfoTablesScrubIps   {

  private @Valid String title = null;

  private @Valid List<InlineResponse20013ExtraInfoTablesScrubIpsRows> rows = new ArrayList<InlineResponse20013ExtraInfoTablesScrubIpsRows>();

  /**
   **/
  public InlineResponse20013ExtraInfoTablesScrubIps title(String title) {
    this.title = title;
    return this;
  }

  
  @ApiModelProperty(value = "")
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

  
  @ApiModelProperty(value = "")
  @JsonProperty("rows")
  @NotNull

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
