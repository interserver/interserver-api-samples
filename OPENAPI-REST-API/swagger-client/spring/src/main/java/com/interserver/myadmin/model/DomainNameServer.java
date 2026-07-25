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
 * A single registered nameserver entry with glue IPs.
 */
@Schema(description = "A single registered nameserver entry with glue IPs.")
@Validated
@NotUndefined



public class DomainNameServer   {
  @JsonProperty("sortorder")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String sortorder = null;

  @JsonProperty("name")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String name = null;

  @JsonProperty("ipaddress")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ipaddress = null;


  public DomainNameServer sortorder(String sortorder) { 

    this.sortorder = sortorder;
    return this;
  }

  /**
   * Get sortorder
   * @return sortorder
   **/
  
  @Schema(description = "")
  
  public String getSortorder() {  
    return sortorder;
  }



  public void setSortorder(String sortorder) { 
    this.sortorder = sortorder;
  }

  public DomainNameServer name(String name) { 

    this.name = name;
    return this;
  }

  /**
   * Get name
   * @return name
   **/
  
  @Schema(description = "")
  
  public String getName() {  
    return name;
  }



  public void setName(String name) { 
    this.name = name;
  }

  public DomainNameServer ipaddress(String ipaddress) { 

    this.ipaddress = ipaddress;
    return this;
  }

  /**
   * Get ipaddress
   * @return ipaddress
   **/
  
  @Schema(description = "")
  
  public String getIpaddress() {  
    return ipaddress;
  }



  public void setIpaddress(String ipaddress) { 
    this.ipaddress = ipaddress;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    DomainNameServer domainNameServer = (DomainNameServer) o;
    return Objects.equals(this.sortorder, domainNameServer.sortorder) &&
        Objects.equals(this.name, domainNameServer.name) &&
        Objects.equals(this.ipaddress, domainNameServer.ipaddress);
  }

  @Override
  public int hashCode() {
    return Objects.hash(sortorder, name, ipaddress);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DomainNameServer {\n");
    
    sb.append("    sortorder: ").append(toIndentedString(sortorder)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    ipaddress: ").append(toIndentedString(ipaddress)).append("\n");
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
