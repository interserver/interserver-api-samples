package io.swagger.model;

import io.swagger.model.InlineResponse20013ExtraInfoTablesScrubIpsRows;
import java.util.ArrayList;
import java.util.List;
import javax.validation.constraints.*;

import io.swagger.v3.oas.annotations.media.Schema;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonCreator;

public class InlineResponse20013ExtraInfoTablesScrubIps   {
  
  @Schema(description = "")
  private String title = null;
  
  @Schema(description = "")
  private List<InlineResponse20013ExtraInfoTablesScrubIpsRows> rows = null;
 /**
   * Get title
   * @return title
  **/
  @JsonProperty("title")
  @NotNull
  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public InlineResponse20013ExtraInfoTablesScrubIps title(String title) {
    this.title = title;
    return this;
  }

 /**
   * Get rows
   * @return rows
  **/
  @JsonProperty("rows")
  @NotNull
  public List<InlineResponse20013ExtraInfoTablesScrubIpsRows> getRows() {
    return rows;
  }

  public void setRows(List<InlineResponse20013ExtraInfoTablesScrubIpsRows> rows) {
    this.rows = rows;
  }

  public InlineResponse20013ExtraInfoTablesScrubIps rows(List<InlineResponse20013ExtraInfoTablesScrubIpsRows> rows) {
    this.rows = rows;
    return this;
  }

  public InlineResponse20013ExtraInfoTablesScrubIps addRowsItem(InlineResponse20013ExtraInfoTablesScrubIpsRows rowsItem) {
    this.rows.add(rowsItem);
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
