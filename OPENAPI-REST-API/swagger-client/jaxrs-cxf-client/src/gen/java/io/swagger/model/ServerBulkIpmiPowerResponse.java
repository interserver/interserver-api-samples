package io.swagger.model;

import io.swagger.model.ServerBulkIpmiPowerResponseResults;
import io.swagger.v3.oas.annotations.media.Schema;
import java.util.ArrayList;
import java.util.List;

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

/**
  * Per-server IPMI power-status results for a bulk lookup.
 **/
@Schema(description="Per-server IPMI power-status results for a bulk lookup.")
public class ServerBulkIpmiPowerResponse   {
  
  @Schema(required = true, description = "")
  private List<ServerBulkIpmiPowerResponseResults> results = new ArrayList<ServerBulkIpmiPowerResponseResults>();
 /**
   * Get results
   * @return results
  **/
  @JsonProperty("results")
  public List<ServerBulkIpmiPowerResponseResults> getResults() {
    return results;
  }

  public void setResults(List<ServerBulkIpmiPowerResponseResults> results) {
    this.results = results;
  }

  public ServerBulkIpmiPowerResponse results(List<ServerBulkIpmiPowerResponseResults> results) {
    this.results = results;
    return this;
  }

  public ServerBulkIpmiPowerResponse addResultsItem(ServerBulkIpmiPowerResponseResults resultsItem) {
    this.results.add(resultsItem);
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ServerBulkIpmiPowerResponse {\n");
    
    sb.append("    results: ").append(toIndentedString(results)).append("\n");
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
