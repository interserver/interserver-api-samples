package io.swagger.model;

import java.util.Objects;
import java.util.ArrayList;
import java.util.HashMap;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.model.ServerBulkIpmiPowerResponseResults;
import io.swagger.v3.oas.annotations.media.Schema;
import java.util.List;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;

@Schema(description="Per-server IPMI power-status results for a bulk lookup.")

public class ServerBulkIpmiPowerResponse   {
  private List<ServerBulkIpmiPowerResponseResults> results = new ArrayList<ServerBulkIpmiPowerResponseResults>();

  /**
   **/
  
  @Schema(required = true, description = "")
  @JsonProperty("results")
  @NotNull
  public List<ServerBulkIpmiPowerResponseResults> getResults() {
    return results;
  }
  public void setResults(List<ServerBulkIpmiPowerResponseResults> results) {
    this.results = results;
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
    return Objects.equals(results, serverBulkIpmiPowerResponse.results);
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
