package io.swagger.model;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;





public class InlineResponse20019ServiceTypes   {
  @JsonProperty("services_id")
  private Integer servicesId = null;
  @JsonProperty("services_name")
  private String servicesName = null;
  @JsonProperty("services_cost")
  private Integer servicesCost = null;
  @JsonProperty("services_field1")
  private String servicesField1 = null;
  @JsonProperty("services_field2")
  private String servicesField2 = null;
  @JsonProperty("services_module")
  private String servicesModule = null;
  /**
   **/
  public InlineResponse20019ServiceTypes servicesId(Integer servicesId) {
    this.servicesId = servicesId;
    return this;
  }

  
  @Schema(example = "11552", description = "")
  @JsonProperty("services_id")
  public Integer getServicesId() {
    return servicesId;
  }
  public void setServicesId(Integer servicesId) {
    this.servicesId = servicesId;
  }

  /**
   **/
  public InlineResponse20019ServiceTypes servicesName(String servicesName) {
    this.servicesName = servicesName;
    return this;
  }

  
  @Schema(example = "Current IP + Scrub", description = "")
  @JsonProperty("services_name")
  public String getServicesName() {
    return servicesName;
  }
  public void setServicesName(String servicesName) {
    this.servicesName = servicesName;
  }

  /**
   **/
  public InlineResponse20019ServiceTypes servicesCost(Integer servicesCost) {
    this.servicesCost = servicesCost;
    return this;
  }

  
  @Schema(example = "5", description = "")
  @JsonProperty("services_cost")
  public Integer getServicesCost() {
    return servicesCost;
  }
  public void setServicesCost(Integer servicesCost) {
    this.servicesCost = servicesCost;
  }

  /**
   **/
  public InlineResponse20019ServiceTypes servicesField1(String servicesField1) {
    this.servicesField1 = servicesField1;
    return this;
  }

  
  @Schema(description = "")
  @JsonProperty("services_field1")
  public String getServicesField1() {
    return servicesField1;
  }
  public void setServicesField1(String servicesField1) {
    this.servicesField1 = servicesField1;
  }

  /**
   **/
  public InlineResponse20019ServiceTypes servicesField2(String servicesField2) {
    this.servicesField2 = servicesField2;
    return this;
  }

  
  @Schema(description = "")
  @JsonProperty("services_field2")
  public String getServicesField2() {
    return servicesField2;
  }
  public void setServicesField2(String servicesField2) {
    this.servicesField2 = servicesField2;
  }

  /**
   **/
  public InlineResponse20019ServiceTypes servicesModule(String servicesModule) {
    this.servicesModule = servicesModule;
    return this;
  }

  
  @Schema(example = "scrub_ips", description = "")
  @JsonProperty("services_module")
  public String getServicesModule() {
    return servicesModule;
  }
  public void setServicesModule(String servicesModule) {
    this.servicesModule = servicesModule;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20019ServiceTypes inlineResponse20019ServiceTypes = (InlineResponse20019ServiceTypes) o;
    return Objects.equals(servicesId, inlineResponse20019ServiceTypes.servicesId) &&
        Objects.equals(servicesName, inlineResponse20019ServiceTypes.servicesName) &&
        Objects.equals(servicesCost, inlineResponse20019ServiceTypes.servicesCost) &&
        Objects.equals(servicesField1, inlineResponse20019ServiceTypes.servicesField1) &&
        Objects.equals(servicesField2, inlineResponse20019ServiceTypes.servicesField2) &&
        Objects.equals(servicesModule, inlineResponse20019ServiceTypes.servicesModule);
  }

  @Override
  public int hashCode() {
    return Objects.hash(servicesId, servicesName, servicesCost, servicesField1, servicesField2, servicesModule);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20019ServiceTypes {\n");
    sb.append("    servicesId: ").append(toIndentedString(servicesId)).append("\n");
    sb.append("    servicesName: ").append(toIndentedString(servicesName)).append("\n");
    sb.append("    servicesCost: ").append(toIndentedString(servicesCost)).append("\n");
    sb.append("    servicesField1: ").append(toIndentedString(servicesField1)).append("\n");
    sb.append("    servicesField2: ").append(toIndentedString(servicesField2)).append("\n");
    sb.append("    servicesModule: ").append(toIndentedString(servicesModule)).append("\n");
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
