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
 * Delete geo firewall rule for your scrub ip
 */
@Schema(description = "Delete geo firewall rule for your scrub ip")
@Validated
@NotUndefined



public class DeleteGeoFirewallRule   {
  @JsonProperty("rule_id")

  private Integer ruleId = null;


  public DeleteGeoFirewallRule ruleId(Integer ruleId) { 

    this.ruleId = ruleId;
    return this;
  }

  /**
   * Get ruleId
   * @return ruleId
   **/
  
  @Schema(example = "2045", required = true, description = "")
  
  @NotNull
  public Integer getRuleId() {  
    return ruleId;
  }



  public void setRuleId(Integer ruleId) { 

    this.ruleId = ruleId;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    DeleteGeoFirewallRule deleteGeoFirewallRule = (DeleteGeoFirewallRule) o;
    return Objects.equals(this.ruleId, deleteGeoFirewallRule.ruleId);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ruleId);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DeleteGeoFirewallRule {\n");
    
    sb.append("    ruleId: ").append(toIndentedString(ruleId)).append("\n");
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
