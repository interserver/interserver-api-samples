package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.QuickserverOrderDistroSel;
import com.interserver.myadmin.model.QuickserverOrderServerDetails;
import com.interserver.myadmin.model.QuickserverOrderTemplates;
import com.interserver.myadmin.model.QuickserverOrderVersion;
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
 * Available QuickServer options and OS templates for ordering a new QuickServer.
 */
@Schema(description = "Available QuickServer options and OS templates for ordering a new QuickServer.")
@Validated
@NotUndefined



public class QuickserverOrder   {
  @JsonProperty("qs_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String qsId = null;

  @JsonProperty("server_details")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private QuickserverOrderServerDetails serverDetails = null;

  @JsonProperty("templates")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private QuickserverOrderTemplates templates = null;

  @JsonProperty("version")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private QuickserverOrderVersion version = null;

  @JsonProperty("distro_sel")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private QuickserverOrderDistroSel distroSel = null;


  public QuickserverOrder qsId(String qsId) { 

    this.qsId = qsId;
    return this;
  }

  /**
   * Quickserver ID.
   * @return qsId
   **/
  
  @Schema(example = "221", description = "Quickserver ID.")
  
  public String getQsId() {  
    return qsId;
  }



  public void setQsId(String qsId) { 
    this.qsId = qsId;
  }

  public QuickserverOrder serverDetails(QuickserverOrderServerDetails serverDetails) { 

    this.serverDetails = serverDetails;
    return this;
  }

  /**
   * Get serverDetails
   * @return serverDetails
   **/
  
  @Schema(description = "")
  
@Valid
  public QuickserverOrderServerDetails getServerDetails() {  
    return serverDetails;
  }



  public void setServerDetails(QuickserverOrderServerDetails serverDetails) { 
    this.serverDetails = serverDetails;
  }

  public QuickserverOrder templates(QuickserverOrderTemplates templates) { 

    this.templates = templates;
    return this;
  }

  /**
   * Get templates
   * @return templates
   **/
  
  @Schema(description = "")
  
@Valid
  public QuickserverOrderTemplates getTemplates() {  
    return templates;
  }



  public void setTemplates(QuickserverOrderTemplates templates) { 
    this.templates = templates;
  }

  public QuickserverOrder version(QuickserverOrderVersion version) { 

    this.version = version;
    return this;
  }

  /**
   * Get version
   * @return version
   **/
  
  @Schema(description = "")
  
@Valid
  public QuickserverOrderVersion getVersion() {  
    return version;
  }



  public void setVersion(QuickserverOrderVersion version) { 
    this.version = version;
  }

  public QuickserverOrder distroSel(QuickserverOrderDistroSel distroSel) { 

    this.distroSel = distroSel;
    return this;
  }

  /**
   * Get distroSel
   * @return distroSel
   **/
  
  @Schema(description = "")
  
@Valid
  public QuickserverOrderDistroSel getDistroSel() {  
    return distroSel;
  }



  public void setDistroSel(QuickserverOrderDistroSel distroSel) { 
    this.distroSel = distroSel;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    QuickserverOrder quickserverOrder = (QuickserverOrder) o;
    return Objects.equals(this.qsId, quickserverOrder.qsId) &&
        Objects.equals(this.serverDetails, quickserverOrder.serverDetails) &&
        Objects.equals(this.templates, quickserverOrder.templates) &&
        Objects.equals(this.version, quickserverOrder.version) &&
        Objects.equals(this.distroSel, quickserverOrder.distroSel);
  }

  @Override
  public int hashCode() {
    return Objects.hash(qsId, serverDetails, templates, version, distroSel);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class QuickserverOrder {\n");
    
    sb.append("    qsId: ").append(toIndentedString(qsId)).append("\n");
    sb.append("    serverDetails: ").append(toIndentedString(serverDetails)).append("\n");
    sb.append("    templates: ").append(toIndentedString(templates)).append("\n");
    sb.append("    version: ").append(toIndentedString(version)).append("\n");
    sb.append("    distroSel: ").append(toIndentedString(distroSel)).append("\n");
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
