package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;
import org.springframework.validation.annotation.Validated;
import org.openapitools.jackson.nullable.JsonNullable;
import io.swagger.configuration.NotUndefined;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.Nulls;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * Place ScrubIP Order
 */
@Schema(description = "Place ScrubIP Order")
@Validated
@NotUndefined



public class ScrubIpPlaceOrder   {
  @JsonProperty("service_type")

  private Integer serviceType = null;

  @JsonProperty("ip")

  private String ip = null;


  public ScrubIpPlaceOrder serviceType(Integer serviceType) { 

    this.serviceType = serviceType;
    return this;
  }

  /**
   * Get serviceType
   * @return serviceType
   **/
  
  @Schema(example = "102", required = true, description = "")
  
  @NotNull
  public Integer getServiceType() {  
    return serviceType;
  }



  public void setServiceType(Integer serviceType) { 

    this.serviceType = serviceType;
  }

  public ScrubIpPlaceOrder ip(String ip) { 

    this.ip = ip;
    return this;
  }

  /**
   * Get ip
   * @return ip
   **/
  
  @Schema(example = "1.2.3.4", required = true, description = "")
  
  @NotNull
  public String getIp() {  
    return ip;
  }



  public void setIp(String ip) { 

    this.ip = ip;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ScrubIpPlaceOrder scrubIpPlaceOrder = (ScrubIpPlaceOrder) o;
    return Objects.equals(this.serviceType, scrubIpPlaceOrder.serviceType) &&
        Objects.equals(this.ip, scrubIpPlaceOrder.ip);
  }

  @Override
  public int hashCode() {
    return Objects.hash(serviceType, ip);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ScrubIpPlaceOrder {\n");
    
    sb.append("    serviceType: ").append(toIndentedString(serviceType)).append("\n");
    sb.append("    ip: ").append(toIndentedString(ip)).append("\n");
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
