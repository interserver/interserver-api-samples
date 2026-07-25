package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.VpsTemplateRow;
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
 * A listing of the OS Templates available for use.
 */
@Schema(description = "A listing of the OS Templates available for use.")
@Validated
@NotUndefined



public class VpsTemplatesList   {
  @JsonProperty("templates")
  @Valid
  private List<VpsTemplateRow> templates = new ArrayList<>();

  public VpsTemplatesList templates(List<VpsTemplateRow> templates) { 

    this.templates = templates;
    return this;
  }

  public VpsTemplatesList addTemplatesItem(VpsTemplateRow templatesItem) {
    this.templates.add(templatesItem);
    return this;
  }

  /**
   * A listing of the templates.
   * @return templates
   **/
  
  @Schema(required = true, description = "A listing of the templates.")
  
@Valid
  @NotNull
  public List<VpsTemplateRow> getTemplates() {  
    return templates;
  }



  public void setTemplates(List<VpsTemplateRow> templates) { 

    this.templates = templates;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    VpsTemplatesList vpsTemplatesList = (VpsTemplatesList) o;
    return Objects.equals(this.templates, vpsTemplatesList.templates);
  }

  @Override
  public int hashCode() {
    return Objects.hash(templates);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class VpsTemplatesList {\n");
    
    sb.append("    templates: ").append(toIndentedString(templates)).append("\n");
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
