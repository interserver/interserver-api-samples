package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.VpsIPInfo;
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
 * Additional informational tables displayed for a VPS service.
 */
@Schema(description = "Additional informational tables displayed for a VPS service.")
@Validated
@NotUndefined



public class VpsExtraInfoTables   {
  @JsonProperty("ip_info")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private VpsIPInfo ipInfo = null;


  public VpsExtraInfoTables ipInfo(VpsIPInfo ipInfo) { 

    this.ipInfo = ipInfo;
    return this;
  }

  /**
   * Get ipInfo
   * @return ipInfo
   **/
  
  @Schema(description = "")
  
@Valid
  public VpsIPInfo getIpInfo() {  
    return ipInfo;
  }



  public void setIpInfo(VpsIPInfo ipInfo) { 
    this.ipInfo = ipInfo;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    VpsExtraInfoTables vpsExtraInfoTables = (VpsExtraInfoTables) o;
    return Objects.equals(this.ipInfo, vpsExtraInfoTables.ipInfo);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ipInfo);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class VpsExtraInfoTables {\n");
    
    sb.append("    ipInfo: ").append(toIndentedString(ipInfo)).append("\n");
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
