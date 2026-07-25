package io.swagger.model;

import io.swagger.model.InlineResponse20019Ips;
import io.swagger.model.InlineResponse20019PackageCosts;
import io.swagger.model.InlineResponse20019ServiceTypes;
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

public class InlineResponse20019   {
  
  @Schema(description = "")
  private InlineResponse20019PackageCosts packageCosts = null;
  
  @Schema(description = "")
  private List<InlineResponse20019ServiceTypes> serviceTypes = null;
  
  @Schema(description = "")
  private List<InlineResponse20019Ips> ips = null;
 /**
   * Get packageCosts
   * @return packageCosts
  **/
  @JsonProperty("packageCosts")
  @NotNull
  public InlineResponse20019PackageCosts getPackageCosts() {
    return packageCosts;
  }

  public void setPackageCosts(InlineResponse20019PackageCosts packageCosts) {
    this.packageCosts = packageCosts;
  }

  public InlineResponse20019 packageCosts(InlineResponse20019PackageCosts packageCosts) {
    this.packageCosts = packageCosts;
    return this;
  }

 /**
   * Get serviceTypes
   * @return serviceTypes
  **/
  @JsonProperty("serviceTypes")
  @NotNull
  public List<InlineResponse20019ServiceTypes> getServiceTypes() {
    return serviceTypes;
  }

  public void setServiceTypes(List<InlineResponse20019ServiceTypes> serviceTypes) {
    this.serviceTypes = serviceTypes;
  }

  public InlineResponse20019 serviceTypes(List<InlineResponse20019ServiceTypes> serviceTypes) {
    this.serviceTypes = serviceTypes;
    return this;
  }

  public InlineResponse20019 addServiceTypesItem(InlineResponse20019ServiceTypes serviceTypesItem) {
    this.serviceTypes.add(serviceTypesItem);
    return this;
  }

 /**
   * Get ips
   * @return ips
  **/
  @JsonProperty("ips")
  @NotNull
  public List<InlineResponse20019Ips> getIps() {
    return ips;
  }

  public void setIps(List<InlineResponse20019Ips> ips) {
    this.ips = ips;
  }

  public InlineResponse20019 ips(List<InlineResponse20019Ips> ips) {
    this.ips = ips;
    return this;
  }

  public InlineResponse20019 addIpsItem(InlineResponse20019Ips ipsItem) {
    this.ips.add(ipsItem);
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
