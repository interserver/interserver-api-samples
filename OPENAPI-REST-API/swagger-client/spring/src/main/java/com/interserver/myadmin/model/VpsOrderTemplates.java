package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.VpsOrderTemplatesHyperv;
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
 * Templates
 */
@Schema(description = "Templates")
@Validated
@NotUndefined



public class VpsOrderTemplates   {
  @JsonProperty("hyperv")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private VpsOrderTemplatesHyperv hyperv = null;


  public VpsOrderTemplates hyperv(VpsOrderTemplatesHyperv hyperv) { 

    this.hyperv = hyperv;
    return this;
  }

  /**
   * Get hyperv
   * @return hyperv
   **/
  
  @Schema(description = "")
  
@Valid
  public VpsOrderTemplatesHyperv getHyperv() {  
    return hyperv;
  }



  public void setHyperv(VpsOrderTemplatesHyperv hyperv) { 
    this.hyperv = hyperv;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    VpsOrderTemplates vpsOrderTemplates = (VpsOrderTemplates) o;
    return Objects.equals(this.hyperv, vpsOrderTemplates.hyperv);
  }

  @Override
  public int hashCode() {
    return Objects.hash(hyperv);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class VpsOrderTemplates {\n");
    
    sb.append("    hyperv: ").append(toIndentedString(hyperv)).append("\n");
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
