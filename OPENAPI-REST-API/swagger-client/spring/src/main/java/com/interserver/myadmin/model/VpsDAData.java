package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.VpsDALicense;
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
 * DirectAdmin license options available for a VPS.
 */
@Schema(description = "DirectAdmin license options available for a VPS.")
@Validated
@NotUndefined



public class VpsDAData   {
  @JsonProperty("free")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private VpsDALicense free = null;


  public VpsDAData free(VpsDALicense free) { 

    this.free = free;
    return this;
  }

  /**
   * Get free
   * @return free
   **/
  
  @Schema(description = "")
  
@Valid
  public VpsDALicense getFree() {  
    return free;
  }



  public void setFree(VpsDALicense free) { 
    this.free = free;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    VpsDAData vpsDAData = (VpsDAData) o;
    return Objects.equals(this.free, vpsDAData.free);
  }

  @Override
  public int hashCode() {
    return Objects.hash(free);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class VpsDAData {\n");
    
    sb.append("    free: ").append(toIndentedString(free)).append("\n");
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
