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
 * The Reverse DNS entries.
 */
@Schema(description = "The Reverse DNS entries.")
@Validated
@NotUndefined



public class ReverseDnsEntries   {
  @JsonProperty("ips")
  @Valid
  private Map<String, Object> ips = null;

  public ReverseDnsEntries ips(Map<String, Object> ips) { 

    this.ips = ips;
    return this;
  }

  public ReverseDnsEntries putIpsItem(String key, Object ipsItem) {
    if (this.ips == null) {
      this.ips = new HashMap<>();
    }
    this.ips.put(key, ipsItem);
    return this;
  }

  /**
   * The IPs you have access to and their current reverse dns mapping.
   * @return ips
   **/
  
  @Schema(description = "The IPs you have access to and their current reverse dns mapping.")
  
  public Map<String, Object> getIps() {  
    return ips;
  }



  public void setIps(Map<String, Object> ips) { 
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
    ReverseDnsEntries reverseDnsEntries = (ReverseDnsEntries) o;
    return Objects.equals(this.ips, reverseDnsEntries.ips);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ips);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ReverseDnsEntries {\n");
    
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
