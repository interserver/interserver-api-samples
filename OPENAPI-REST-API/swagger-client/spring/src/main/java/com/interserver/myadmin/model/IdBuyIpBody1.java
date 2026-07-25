package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.validation.annotation.Validated;
import org.openapitools.jackson.nullable.JsonNullable;
import io.swagger.configuration.NotUndefined;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.Nulls;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * IdBuyIpBody1
 */
@Validated
@NotUndefined



public class IdBuyIpBody1   {
  @JsonProperty("ips")
  @Valid
  private Map<String, String> ips = null;

  public IdBuyIpBody1 ips(Map<String, String> ips) { 

    this.ips = ips;
    return this;
  }

  public IdBuyIpBody1 putIpsItem(String key, String ipsItem) {
    if (this.ips == null) {
      this.ips = new HashMap<>();
    }
    this.ips.put(key, ipsItem);
    return this;
  }

  /**
   * A map of IP addresses to their desired reverse DNS hostnames.
   * @return ips
   **/
  
  @Schema(description = "A map of IP addresses to their desired reverse DNS hostnames.")
  
  public Map<String, String> getIps() {  
    return ips;
  }



  public void setIps(Map<String, String> ips) { 
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
    IdBuyIpBody1 idBuyIpBody1 = (IdBuyIpBody1) o;
    return Objects.equals(this.ips, idBuyIpBody1.ips);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ips);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class IdBuyIpBody1 {\n");
    
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
