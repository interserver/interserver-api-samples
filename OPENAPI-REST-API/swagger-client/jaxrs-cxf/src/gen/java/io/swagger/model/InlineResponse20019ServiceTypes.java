package io.swagger.model;

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

public class InlineResponse20019ServiceTypes   {
  
  @Schema(example = "11552", description = "")
  private Integer servicesId = null;
  
  @Schema(example = "Current IP + Scrub", description = "")
  private String servicesName = null;
  
  @Schema(example = "5", description = "")
  private Integer servicesCost = null;
  
  @Schema(description = "")
  private String servicesField1 = null;
  
  @Schema(description = "")
  private String servicesField2 = null;
  
  @Schema(example = "scrub_ips", description = "")
  private String servicesModule = null;
 /**
   * Get servicesId
   * @return servicesId
  **/
  @JsonProperty("services_id")
  @NotNull
  public Integer getServicesId() {
    return servicesId;
  }

  public void setServicesId(Integer servicesId) {
    this.servicesId = servicesId;
  }

  public InlineResponse20019ServiceTypes servicesId(Integer servicesId) {
    this.servicesId = servicesId;
    return this;
  }

 /**
   * Get servicesName
   * @return servicesName
  **/
  @JsonProperty("services_name")
  @NotNull
  public String getServicesName() {
    return servicesName;
  }

  public void setServicesName(String servicesName) {
    this.servicesName = servicesName;
  }

  public InlineResponse20019ServiceTypes servicesName(String servicesName) {
    this.servicesName = servicesName;
    return this;
  }

 /**
   * Get servicesCost
   * @return servicesCost
  **/
  @JsonProperty("services_cost")
  @NotNull
  public Integer getServicesCost() {
    return servicesCost;
  }

  public void setServicesCost(Integer servicesCost) {
    this.servicesCost = servicesCost;
  }

  public InlineResponse20019ServiceTypes servicesCost(Integer servicesCost) {
    this.servicesCost = servicesCost;
    return this;
  }

 /**
   * Get servicesField1
   * @return servicesField1
  **/
  @JsonProperty("services_field1")
  @NotNull
  public String getServicesField1() {
    return servicesField1;
  }

  public void setServicesField1(String servicesField1) {
    this.servicesField1 = servicesField1;
  }

  public InlineResponse20019ServiceTypes servicesField1(String servicesField1) {
    this.servicesField1 = servicesField1;
    return this;
  }

 /**
   * Get servicesField2
   * @return servicesField2
  **/
  @JsonProperty("services_field2")
  @NotNull
  public String getServicesField2() {
    return servicesField2;
  }

  public void setServicesField2(String servicesField2) {
    this.servicesField2 = servicesField2;
  }

  public InlineResponse20019ServiceTypes servicesField2(String servicesField2) {
    this.servicesField2 = servicesField2;
    return this;
  }

 /**
   * Get servicesModule
   * @return servicesModule
  **/
  @JsonProperty("services_module")
  @NotNull
  public String getServicesModule() {
    return servicesModule;
  }

  public void setServicesModule(String servicesModule) {
    this.servicesModule = servicesModule;
  }

  public InlineResponse20019ServiceTypes servicesModule(String servicesModule) {
    this.servicesModule = servicesModule;
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
