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
 * Payload for adding a registered nameserver (glue record).
 */
@Schema(description = "Payload for adding a registered nameserver (glue record).")
@Validated
@NotUndefined



public class DomainNameserverPostRequest   {
  @JsonProperty("name")

  private String name = null;

  @JsonProperty("ipAddress")

  private String ipAddress = null;


  public DomainNameserverPostRequest name(String name) { 

    this.name = name;
    return this;
  }

  /**
   * Get name
   * @return name
   **/
  
  @Schema(example = "ns1.host.com", required = true, description = "")
  
  @NotNull
  public String getName() {  
    return name;
  }



  public void setName(String name) { 

    this.name = name;
  }

  public DomainNameserverPostRequest ipAddress(String ipAddress) { 

    this.ipAddress = ipAddress;
    return this;
  }

  /**
   * Get ipAddress
   * @return ipAddress
   **/
  
  @Schema(example = "1.2.3.4Get", required = true, description = "")
  
  @NotNull
  public String getIpAddress() {  
    return ipAddress;
  }



  public void setIpAddress(String ipAddress) { 

    this.ipAddress = ipAddress;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    DomainNameserverPostRequest domainNameserverPostRequest = (DomainNameserverPostRequest) o;
    return Objects.equals(this.name, domainNameserverPostRequest.name) &&
        Objects.equals(this.ipAddress, domainNameserverPostRequest.ipAddress);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, ipAddress);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DomainNameserverPostRequest {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    ipAddress: ").append(toIndentedString(ipAddress)).append("\n");
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
