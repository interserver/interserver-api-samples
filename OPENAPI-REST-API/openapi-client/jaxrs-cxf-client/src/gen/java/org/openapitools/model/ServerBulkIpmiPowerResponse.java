package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.ServerBulkIpmiPowerResponseResultsInner;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Per-server IPMI power-status results for a bulk lookup.
 */
@ApiModel(description="Per-server IPMI power-status results for a bulk lookup.")

public class ServerBulkIpmiPowerResponse  {
  
  @ApiModelProperty(required = true, value = "")

  private List<ServerBulkIpmiPowerResponseResultsInner> results = new ArrayList<>();
 /**
   * Get results
   * @return results
  **/
  @JsonProperty("results")
  public List<ServerBulkIpmiPowerResponseResultsInner> getResults() {
    return results;
  }

  public void setResults(List<ServerBulkIpmiPowerResponseResultsInner> results) {
    this.results = results;
  }

  public ServerBulkIpmiPowerResponse results(List<ServerBulkIpmiPowerResponseResultsInner> results) {
    this.results = results;
    return this;
  }

  public ServerBulkIpmiPowerResponse addResultsItem(ServerBulkIpmiPowerResponseResultsInner resultsItem) {
    this.results.add(resultsItem);
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
    ServerBulkIpmiPowerResponse serverBulkIpmiPowerResponse = (ServerBulkIpmiPowerResponse) o;
    return Objects.equals(this.results, serverBulkIpmiPowerResponse.results);
  }

  @Override
  public int hashCode() {
    return Objects.hash(results);
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
  private static String toIndentedString(Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}

