package io.swagger.model;

import java.math.BigDecimal;
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

public class InlineResponse20019Ips   {
  
  @Schema(example = "12345", description = "")
  private BigDecimal serviceId = null;
  
  @Schema(example = "vps", description = "")
  private String serviceModule = null;
  
  @Schema(example = "server.gtest.com", description = "")
  private String serviceHostname = null;
 /**
   * Get serviceId
   * @return serviceId
  **/
  @JsonProperty("service_id")
  @NotNull
  public BigDecimal getServiceId() {
    return serviceId;
  }

  public void setServiceId(BigDecimal serviceId) {
    this.serviceId = serviceId;
  }

  public InlineResponse20019Ips serviceId(BigDecimal serviceId) {
    this.serviceId = serviceId;
    return this;
  }

 /**
   * Get serviceModule
   * @return serviceModule
  **/
  @JsonProperty("service_module")
  @NotNull
  public String getServiceModule() {
    return serviceModule;
  }

  public void setServiceModule(String serviceModule) {
    this.serviceModule = serviceModule;
  }

  public InlineResponse20019Ips serviceModule(String serviceModule) {
    this.serviceModule = serviceModule;
    return this;
  }

 /**
   * Get serviceHostname
   * @return serviceHostname
  **/
  @JsonProperty("service_hostname")
  @NotNull
  public String getServiceHostname() {
    return serviceHostname;
  }

  public void setServiceHostname(String serviceHostname) {
    this.serviceHostname = serviceHostname;
  }

  public InlineResponse20019Ips serviceHostname(String serviceHostname) {
    this.serviceHostname = serviceHostname;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20019Ips {\n");
    
    sb.append("    serviceId: ").append(toIndentedString(serviceId)).append("\n");
    sb.append("    serviceModule: ").append(toIndentedString(serviceModule)).append("\n");
    sb.append("    serviceHostname: ").append(toIndentedString(serviceHostname)).append("\n");
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
