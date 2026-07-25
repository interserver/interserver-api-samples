package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.DomainOrderServices10001;
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
 * Available domain service catalog entries keyed by service ID.
 */
@Schema(description = "Available domain service catalog entries keyed by service ID.")
@Validated
@NotUndefined



public class DomainOrderServices   {
  @JsonProperty("DomainOrderServices10001")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private DomainOrderServices10001 domainOrderServices10001 = null;


  public DomainOrderServices domainOrderServices10001(DomainOrderServices10001 domainOrderServices10001) { 

    this.domainOrderServices10001 = domainOrderServices10001;
    return this;
  }

  /**
   * Get domainOrderServices10001
   * @return domainOrderServices10001
   **/
  
  @Schema(description = "")
  
@Valid
  public DomainOrderServices10001 getDomainOrderServices10001() {  
    return domainOrderServices10001;
  }



  public void setDomainOrderServices10001(DomainOrderServices10001 domainOrderServices10001) { 
    this.domainOrderServices10001 = domainOrderServices10001;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    DomainOrderServices domainOrderServices = (DomainOrderServices) o;
    return Objects.equals(this.domainOrderServices10001, domainOrderServices.domainOrderServices10001);
  }

  @Override
  public int hashCode() {
    return Objects.hash(domainOrderServices10001);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DomainOrderServices {\n");
    
    sb.append("    domainOrderServices10001: ").append(toIndentedString(domainOrderServices10001)).append("\n");
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
