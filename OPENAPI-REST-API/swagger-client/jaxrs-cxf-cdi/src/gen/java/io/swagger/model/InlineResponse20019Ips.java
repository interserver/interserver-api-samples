package io.swagger.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import java.math.BigDecimal;
import javax.validation.Valid;
import javax.validation.constraints.*;

import io.swagger.v3.oas.annotations.media.Schema;
import java.util.Objects;

import javax.xml.bind.annotation.*;



public class InlineResponse20019Ips   {
  private BigDecimal serviceId = null;
  private String serviceModule = null;
  private String serviceHostname = null;

  /**
   **/
  public InlineResponse20019Ips serviceId(BigDecimal serviceId) {
    this.serviceId = serviceId;
    return this;
  }

  
  
  @Schema(example = "12345", description = "")
  @JsonProperty("service_id")
  @NotNull
  @Valid
  public BigDecimal getServiceId() {
    return serviceId;
  }
  public void setServiceId(BigDecimal serviceId) {
    this.serviceId = serviceId;
  }

  /**
   **/
  public InlineResponse20019Ips serviceModule(String serviceModule) {
    this.serviceModule = serviceModule;
    return this;
  }

  
  
  @Schema(example = "vps", description = "")
  @JsonProperty("service_module")
  @NotNull
  public String getServiceModule() {
    return serviceModule;
  }
  public void setServiceModule(String serviceModule) {
    this.serviceModule = serviceModule;
  }

  /**
   **/
  public InlineResponse20019Ips serviceHostname(String serviceHostname) {
    this.serviceHostname = serviceHostname;
    return this;
  }

  
  
  @Schema(example = "server.gtest.com", description = "")
  @JsonProperty("service_hostname")
  @NotNull
  public String getServiceHostname() {
    return serviceHostname;
  }
  public void setServiceHostname(String serviceHostname) {
    this.serviceHostname = serviceHostname;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20019Ips inlineResponse20019Ips = (InlineResponse20019Ips) o;
    return Objects.equals(serviceId, inlineResponse20019Ips.serviceId) &&
        Objects.equals(serviceModule, inlineResponse20019Ips.serviceModule) &&
        Objects.equals(serviceHostname, inlineResponse20019Ips.serviceHostname);
  }

  @Override
  public int hashCode() {
    return Objects.hash(serviceId, serviceModule, serviceHostname);
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
