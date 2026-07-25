package io.swagger.model;

import java.util.Objects;
import java.util.ArrayList;
import java.util.HashMap;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.model.InlineResponse20019Ips;
import io.swagger.model.InlineResponse20019PackageCosts;
import io.swagger.model.InlineResponse20019ServiceTypes;
import java.util.List;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;



public class InlineResponse20019   {
  private InlineResponse20019PackageCosts packageCosts = null;
  private List<InlineResponse20019ServiceTypes> serviceTypes = new ArrayList<InlineResponse20019ServiceTypes>();
  private List<InlineResponse20019Ips> ips = new ArrayList<InlineResponse20019Ips>();

  /**
   **/
  
  @Schema(description = "")
  @JsonProperty("packageCosts")
  @NotNull
  public InlineResponse20019PackageCosts getPackageCosts() {
    return packageCosts;
  }
  public void setPackageCosts(InlineResponse20019PackageCosts packageCosts) {
    this.packageCosts = packageCosts;
  }

  /**
   **/
  
  @Schema(description = "")
  @JsonProperty("serviceTypes")
  @NotNull
  public List<InlineResponse20019ServiceTypes> getServiceTypes() {
    return serviceTypes;
  }
  public void setServiceTypes(List<InlineResponse20019ServiceTypes> serviceTypes) {
    this.serviceTypes = serviceTypes;
  }

  /**
   **/
  
  @Schema(description = "")
  @JsonProperty("ips")
  @NotNull
  public List<InlineResponse20019Ips> getIps() {
    return ips;
  }
  public void setIps(List<InlineResponse20019Ips> ips) {
    this.ips = ips;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20019 inlineResponse20019 = (InlineResponse20019) o;
    return Objects.equals(packageCosts, inlineResponse20019.packageCosts) &&
        Objects.equals(serviceTypes, inlineResponse20019.serviceTypes) &&
        Objects.equals(ips, inlineResponse20019.ips);
  }

  @Override
  public int hashCode() {
    return Objects.hash(packageCosts, serviceTypes, ips);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20019 {\n");
    
    sb.append("    packageCosts: ").append(toIndentedString(packageCosts)).append("\n");
    sb.append("    serviceTypes: ").append(toIndentedString(serviceTypes)).append("\n");
    sb.append("    ips: ").append(toIndentedString(ips)).append("\n");
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
