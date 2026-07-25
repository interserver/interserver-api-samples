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
 * A VPS OS Template.
 */
@Schema(description = "A VPS OS Template.")
@Validated
@NotUndefined



public class VpsTemplateRow   {
  @JsonProperty("template_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String templateId = null;

  @JsonProperty("template_type")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String templateType = null;

  @JsonProperty("template_os")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String templateOs = null;

  @JsonProperty("template_version")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String templateVersion = null;

  @JsonProperty("template_bits")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String templateBits = null;

  @JsonProperty("template_file")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String templateFile = null;

  @JsonProperty("template_available")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String templateAvailable = null;

  @JsonProperty("template_name")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String templateName = null;

  @JsonProperty("template_dir")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String templateDir = null;


  public VpsTemplateRow templateId(String templateId) { 

    this.templateId = templateId;
    return this;
  }

  /**
   * Get templateId
   * @return templateId
   **/
  
  @Schema(description = "")
  
  public String getTemplateId() {  
    return templateId;
  }



  public void setTemplateId(String templateId) { 
    this.templateId = templateId;
  }

  public VpsTemplateRow templateType(String templateType) { 

    this.templateType = templateType;
    return this;
  }

  /**
   * Get templateType
   * @return templateType
   **/
  
  @Schema(description = "")
  
  public String getTemplateType() {  
    return templateType;
  }



  public void setTemplateType(String templateType) { 
    this.templateType = templateType;
  }

  public VpsTemplateRow templateOs(String templateOs) { 

    this.templateOs = templateOs;
    return this;
  }

  /**
   * Get templateOs
   * @return templateOs
   **/
  
  @Schema(description = "")
  
  public String getTemplateOs() {  
    return templateOs;
  }



  public void setTemplateOs(String templateOs) { 
    this.templateOs = templateOs;
  }

  public VpsTemplateRow templateVersion(String templateVersion) { 

    this.templateVersion = templateVersion;
    return this;
  }

  /**
   * Get templateVersion
   * @return templateVersion
   **/
  
  @Schema(description = "")
  
  public String getTemplateVersion() {  
    return templateVersion;
  }



  public void setTemplateVersion(String templateVersion) { 
    this.templateVersion = templateVersion;
  }

  public VpsTemplateRow templateBits(String templateBits) { 

    this.templateBits = templateBits;
    return this;
  }

  /**
   * Get templateBits
   * @return templateBits
   **/
  
  @Schema(description = "")
  
  public String getTemplateBits() {  
    return templateBits;
  }



  public void setTemplateBits(String templateBits) { 
    this.templateBits = templateBits;
  }

  public VpsTemplateRow templateFile(String templateFile) { 

    this.templateFile = templateFile;
    return this;
  }

  /**
   * Get templateFile
   * @return templateFile
   **/
  
  @Schema(description = "")
  
  public String getTemplateFile() {  
    return templateFile;
  }



  public void setTemplateFile(String templateFile) { 
    this.templateFile = templateFile;
  }

  public VpsTemplateRow templateAvailable(String templateAvailable) { 

    this.templateAvailable = templateAvailable;
    return this;
  }

  /**
   * Get templateAvailable
   * @return templateAvailable
   **/
  
  @Schema(description = "")
  
  public String getTemplateAvailable() {  
    return templateAvailable;
  }



  public void setTemplateAvailable(String templateAvailable) { 
    this.templateAvailable = templateAvailable;
  }

  public VpsTemplateRow templateName(String templateName) { 

    this.templateName = templateName;
    return this;
  }

  /**
   * Get templateName
   * @return templateName
   **/
  
  @Schema(description = "")
  
  public String getTemplateName() {  
    return templateName;
  }



  public void setTemplateName(String templateName) { 
    this.templateName = templateName;
  }

  public VpsTemplateRow templateDir(String templateDir) { 

    this.templateDir = templateDir;
    return this;
  }

  /**
   * Get templateDir
   * @return templateDir
   **/
  
  @Schema(description = "")
  
  public String getTemplateDir() {  
    return templateDir;
  }



  public void setTemplateDir(String templateDir) { 
    this.templateDir = templateDir;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    VpsTemplateRow vpsTemplateRow = (VpsTemplateRow) o;
    return Objects.equals(this.templateId, vpsTemplateRow.templateId) &&
        Objects.equals(this.templateType, vpsTemplateRow.templateType) &&
        Objects.equals(this.templateOs, vpsTemplateRow.templateOs) &&
        Objects.equals(this.templateVersion, vpsTemplateRow.templateVersion) &&
        Objects.equals(this.templateBits, vpsTemplateRow.templateBits) &&
        Objects.equals(this.templateFile, vpsTemplateRow.templateFile) &&
        Objects.equals(this.templateAvailable, vpsTemplateRow.templateAvailable) &&
        Objects.equals(this.templateName, vpsTemplateRow.templateName) &&
        Objects.equals(this.templateDir, vpsTemplateRow.templateDir);
  }

  @Override
  public int hashCode() {
    return Objects.hash(templateId, templateType, templateOs, templateVersion, templateBits, templateFile, templateAvailable, templateName, templateDir);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class VpsTemplateRow {\n");
    
    sb.append("    templateId: ").append(toIndentedString(templateId)).append("\n");
    sb.append("    templateType: ").append(toIndentedString(templateType)).append("\n");
    sb.append("    templateOs: ").append(toIndentedString(templateOs)).append("\n");
    sb.append("    templateVersion: ").append(toIndentedString(templateVersion)).append("\n");
    sb.append("    templateBits: ").append(toIndentedString(templateBits)).append("\n");
    sb.append("    templateFile: ").append(toIndentedString(templateFile)).append("\n");
    sb.append("    templateAvailable: ").append(toIndentedString(templateAvailable)).append("\n");
    sb.append("    templateName: ").append(toIndentedString(templateName)).append("\n");
    sb.append("    templateDir: ").append(toIndentedString(templateDir)).append("\n");
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
