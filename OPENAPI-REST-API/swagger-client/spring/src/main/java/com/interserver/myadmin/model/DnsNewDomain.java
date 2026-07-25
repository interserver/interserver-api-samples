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
 * The request for a new domain to be managed by the dns servers.
 */
@Schema(description = "The request for a new domain to be managed by the dns servers.")
@Validated
@NotUndefined



public class DnsNewDomain   {
  @JsonProperty("domain")

  private String domain = null;

  @JsonProperty("ip")

  private String ip = null;


  public DnsNewDomain domain(String domain) { 

    this.domain = domain;
    return this;
  }

  /**
   * The domain name.
   * @return domain
   **/
  
  @Schema(example = "mydomain.com", required = true, description = "The domain name.")
  
  @NotNull
  public String getDomain() {  
    return domain;
  }



  public void setDomain(String domain) { 

    this.domain = domain;
  }

  public DnsNewDomain ip(String ip) { 

    this.ip = ip;
    return this;
  }

  /**
   * IP Address to point the domain to.
   * @return ip
   **/
  
  @Schema(example = "1.2.3.4", required = true, description = "IP Address to point the domain to.")
  
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
    DnsNewDomain dnsNewDomain = (DnsNewDomain) o;
    return Objects.equals(this.domain, dnsNewDomain.domain) &&
        Objects.equals(this.ip, dnsNewDomain.ip);
  }

  @Override
  public int hashCode() {
    return Objects.hash(domain, ip);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DnsNewDomain {\n");
    
    sb.append("    domain: ").append(toIndentedString(domain)).append("\n");
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
