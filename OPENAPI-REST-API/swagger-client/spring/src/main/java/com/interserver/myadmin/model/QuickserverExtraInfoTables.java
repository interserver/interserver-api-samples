package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.QuickserverAddons;
import com.interserver.myadmin.model.QuickserverIpInfo;
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
 * QuickserverExtraInfoTables
 */
@Validated
@NotUndefined



public class QuickserverExtraInfoTables   {
  @JsonProperty("ip_info")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private QuickserverIpInfo ipInfo = null;

  @JsonProperty("addons")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private QuickserverAddons addons = null;


  public QuickserverExtraInfoTables ipInfo(QuickserverIpInfo ipInfo) { 

    this.ipInfo = ipInfo;
    return this;
  }

  /**
   * Get ipInfo
   * @return ipInfo
   **/
  
  @Schema(description = "")
  
@Valid
  public QuickserverIpInfo getIpInfo() {  
    return ipInfo;
  }



  public void setIpInfo(QuickserverIpInfo ipInfo) { 
    this.ipInfo = ipInfo;
  }

  public QuickserverExtraInfoTables addons(QuickserverAddons addons) { 

    this.addons = addons;
    return this;
  }

  /**
   * Get addons
   * @return addons
   **/
  
  @Schema(description = "")
  
@Valid
  public QuickserverAddons getAddons() {  
    return addons;
  }



  public void setAddons(QuickserverAddons addons) { 
    this.addons = addons;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    QuickserverExtraInfoTables quickserverExtraInfoTables = (QuickserverExtraInfoTables) o;
    return Objects.equals(this.ipInfo, quickserverExtraInfoTables.ipInfo) &&
        Objects.equals(this.addons, quickserverExtraInfoTables.addons);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ipInfo, addons);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class QuickserverExtraInfoTables {\n");
    
    sb.append("    ipInfo: ").append(toIndentedString(ipInfo)).append("\n");
    sb.append("    addons: ").append(toIndentedString(addons)).append("\n");
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
