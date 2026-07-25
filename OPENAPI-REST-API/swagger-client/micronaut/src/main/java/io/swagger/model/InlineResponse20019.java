package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.model.InlineResponse20019Ips;
import io.swagger.model.InlineResponse20019PackageCosts;
import io.swagger.model.InlineResponse20019ServiceTypes;
import io.swagger.v3.oas.annotations.media.Schema;
import java.util.ArrayList;
import java.util.List;
import io.micronaut.core.annotation.Introspected;
import io.micronaut.validation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * InlineResponse20019
 */
@Validated
@Introspected

public class InlineResponse20019   {
  @JsonProperty("packageCosts")
  private InlineResponse20019PackageCosts packageCosts = null;

  @JsonProperty("serviceTypes")
  @Valid
  private List<InlineResponse20019ServiceTypes> serviceTypes = null;

  @JsonProperty("ips")
  @Valid
  private List<InlineResponse20019Ips> ips = null;

  public InlineResponse20019 packageCosts(InlineResponse20019PackageCosts packageCosts) {
    this.packageCosts = packageCosts;
    return this;
  }

  /**
   * Get packageCosts
   * @return packageCosts
  **/
  @Schema(description = "")
  @NotNull

  @Valid
  public InlineResponse20019PackageCosts getPackageCosts() {
    return packageCosts;
  }

  public void setPackageCosts(InlineResponse20019PackageCosts packageCosts) {
    this.packageCosts = packageCosts;
  }

  public InlineResponse20019 serviceTypes(List<InlineResponse20019ServiceTypes> serviceTypes) {
    this.serviceTypes = serviceTypes;
    return this;
  }

  public InlineResponse20019 addServiceTypesItem(InlineResponse20019ServiceTypes serviceTypesItem) {
    if (this.serviceTypes == null) {
      this.serviceTypes = new ArrayList<InlineResponse20019ServiceTypes>();
    }
    this.serviceTypes.add(serviceTypesItem);
    return this;
  }

  /**
   * Get serviceTypes
   * @return serviceTypes
  **/
  @Schema(description = "")
  @NotNull
  @Valid
  public List<InlineResponse20019ServiceTypes> getServiceTypes() {
    return serviceTypes;
  }

  public void setServiceTypes(List<InlineResponse20019ServiceTypes> serviceTypes) {
    this.serviceTypes = serviceTypes;
  }

  public InlineResponse20019 ips(List<InlineResponse20019Ips> ips) {
    this.ips = ips;
    return this;
  }

  public InlineResponse20019 addIpsItem(InlineResponse20019Ips ipsItem) {
    if (this.ips == null) {
      this.ips = new ArrayList<InlineResponse20019Ips>();
    }
    this.ips.add(ipsItem);
    return this;
  }

  /**
   * Get ips
   * @return ips
  **/
  @Schema(description = "")
  @NotNull
  @Valid
  public List<InlineResponse20019Ips> getIps() {
    return ips;
  }

  public void setIps(List<InlineResponse20019Ips> ips) {
    this.ips = ips;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20019 inlineResponse20019 = (InlineResponse20019) o;
    return Objects.equals(this.packageCosts, inlineResponse20019.packageCosts) &&
        Objects.equals(this.serviceTypes, inlineResponse20019.serviceTypes) &&
        Objects.equals(this.ips, inlineResponse20019.ips);
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
