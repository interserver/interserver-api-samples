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
 * Map of domain service IDs to their hostnames for the account dashboard.
 */
@Schema(description = "Map of domain service IDs to their hostnames for the account dashboard.")
@Validated
@NotUndefined



public class HomeServicesDomainsLinks   {
  @JsonProperty("376114")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String _376114 = null;

  @JsonProperty("376503")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String _376503 = null;

  @JsonProperty("592337")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String _592337 = null;


  public HomeServicesDomainsLinks _376114(String _376114) { 

    this._376114 = _376114;
    return this;
  }

  /**
   * Link to a domain.
   * @return _376114
   **/
  
  @Schema(example = "pimpmy.website", description = "Link to a domain.")
  
  public String get376114() {  
    return _376114;
  }



  public void set376114(String _376114) { 
    this._376114 = _376114;
  }

  public HomeServicesDomainsLinks _376503(String _376503) { 

    this._376503 = _376503;
    return this;
  }

  /**
   * Link to a domain.
   * @return _376503
   **/
  
  @Schema(example = "hostingenuity.com", description = "Link to a domain.")
  
  public String get376503() {  
    return _376503;
  }



  public void set376503(String _376503) { 
    this._376503 = _376503;
  }

  public HomeServicesDomainsLinks _592337(String _592337) { 

    this._592337 = _592337;
    return this;
  }

  /**
   * Link to a domain.
   * @return _592337
   **/
  
  @Schema(example = "detain.dev", description = "Link to a domain.")
  
  public String get592337() {  
    return _592337;
  }



  public void set592337(String _592337) { 
    this._592337 = _592337;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    HomeServicesDomainsLinks homeServicesDomainsLinks = (HomeServicesDomainsLinks) o;
    return Objects.equals(this._376114, homeServicesDomainsLinks._376114) &&
        Objects.equals(this._376503, homeServicesDomainsLinks._376503) &&
        Objects.equals(this._592337, homeServicesDomainsLinks._592337);
  }

  @Override
  public int hashCode() {
    return Objects.hash(_376114, _376503, _592337);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class HomeServicesDomainsLinks {\n");
    
    sb.append("    _376114: ").append(toIndentedString(_376114)).append("\n");
    sb.append("    _376503: ").append(toIndentedString(_376503)).append("\n");
    sb.append("    _592337: ").append(toIndentedString(_592337)).append("\n");
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
