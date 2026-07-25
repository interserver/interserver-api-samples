package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.model.ServerBulkIpmiPowerResponseResults;
import io.swagger.v3.oas.annotations.media.Schema;
import java.util.ArrayList;
import java.util.List;
import io.micronaut.core.annotation.Introspected;
import io.micronaut.validation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * Per-server IPMI power-status results for a bulk lookup.
 */
@Schema(description = "Per-server IPMI power-status results for a bulk lookup.")
@Validated
@Introspected

public class ServerBulkIpmiPowerResponse   {
  @JsonProperty("results")
  @Valid
  private List<ServerBulkIpmiPowerResponseResults> results = new ArrayList<ServerBulkIpmiPowerResponseResults>();

  public ServerBulkIpmiPowerResponse results(List<ServerBulkIpmiPowerResponseResults> results) {
    this.results = results;
    return this;
  }

  public ServerBulkIpmiPowerResponse addResultsItem(ServerBulkIpmiPowerResponseResults resultsItem) {
    this.results.add(resultsItem);
    return this;
  }

  /**
   * Get results
   * @return results
  **/
  @Schema(required = true, description = "")
  @NotNull
  @Valid
  public List<ServerBulkIpmiPowerResponseResults> getResults() {
    return results;
  }

  public void setResults(List<ServerBulkIpmiPowerResponseResults> results) {
    this.results = results;
  }


  @Override
  public boolean equals(java.lang.Object o) {
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
