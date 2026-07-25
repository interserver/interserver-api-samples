package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;
import java.util.ArrayList;
import java.util.List;
import org.springframework.validation.annotation.Validated;
import org.openapitools.jackson.nullable.JsonNullable;
import io.swagger.configuration.NotUndefined;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.Nulls;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * Payload for replacing the assigned nameserver list for a domain.
 */
@Schema(description = "Payload for replacing the assigned nameserver list for a domain.")
@Validated
@NotUndefined



public class DomainNameserverPutRequest   {
  @JsonProperty("nameserver")
  @Valid
  private List<String> nameserver = new ArrayList<>();

  public DomainNameserverPutRequest nameserver(List<String> nameserver) { 

    this.nameserver = nameserver;
    return this;
  }

  public DomainNameserverPutRequest addNameserverItem(String nameserverItem) {
    this.nameserver.add(nameserverItem);
    return this;
  }

  /**
   * Get nameserver
   * @return nameserver
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public List<String> getNameserver() {  
    return nameserver;
  }



  public void setNameserver(List<String> nameserver) { 

    this.nameserver = nameserver;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    DomainNameserverPutRequest domainNameserverPutRequest = (DomainNameserverPutRequest) o;
    return Objects.equals(this.nameserver, domainNameserverPutRequest.nameserver);
  }

  @Override
  public int hashCode() {
    return Objects.hash(nameserver);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DomainNameserverPutRequest {\n");
    
    sb.append("    nameserver: ").append(toIndentedString(nameserver)).append("\n");
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
