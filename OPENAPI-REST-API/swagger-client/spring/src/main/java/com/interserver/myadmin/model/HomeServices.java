package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.HomeServicesBackups;
import com.interserver.myadmin.model.HomeServicesDomains;
import com.interserver.myadmin.model.HomeServicesLicenses;
import com.interserver.myadmin.model.HomeServicesServers;
import com.interserver.myadmin.model.HomeServicesVps;
import com.interserver.myadmin.model.HomeServicesWebhosting;
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
 * Users services.
 */
@Schema(description = "Users services.")
@Validated
@NotUndefined



public class HomeServices   {
  @JsonProperty("domains")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private HomeServicesDomains domains = null;

  @JsonProperty("webhosting")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private HomeServicesWebhosting webhosting = null;

  @JsonProperty("vps")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private HomeServicesVps vps = null;

  @JsonProperty("licenses")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private HomeServicesLicenses licenses = null;

  @JsonProperty("servers")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private HomeServicesServers servers = null;

  @JsonProperty("backups")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private HomeServicesBackups backups = null;


  public HomeServices domains(HomeServicesDomains domains) { 

    this.domains = domains;
    return this;
  }

  /**
   * Get domains
   * @return domains
   **/
  
  @Schema(description = "")
  
@Valid
  public HomeServicesDomains getDomains() {  
    return domains;
  }



  public void setDomains(HomeServicesDomains domains) { 
    this.domains = domains;
  }

  public HomeServices webhosting(HomeServicesWebhosting webhosting) { 

    this.webhosting = webhosting;
    return this;
  }

  /**
   * Get webhosting
   * @return webhosting
   **/
  
  @Schema(description = "")
  
@Valid
  public HomeServicesWebhosting getWebhosting() {  
    return webhosting;
  }



  public void setWebhosting(HomeServicesWebhosting webhosting) { 
    this.webhosting = webhosting;
  }

  public HomeServices vps(HomeServicesVps vps) { 

    this.vps = vps;
    return this;
  }

  /**
   * Get vps
   * @return vps
   **/
  
  @Schema(description = "")
  
@Valid
  public HomeServicesVps getVps() {  
    return vps;
  }



  public void setVps(HomeServicesVps vps) { 
    this.vps = vps;
  }

  public HomeServices licenses(HomeServicesLicenses licenses) { 

    this.licenses = licenses;
    return this;
  }

  /**
   * Get licenses
   * @return licenses
   **/
  
  @Schema(description = "")
  
@Valid
  public HomeServicesLicenses getLicenses() {  
    return licenses;
  }



  public void setLicenses(HomeServicesLicenses licenses) { 
    this.licenses = licenses;
  }

  public HomeServices servers(HomeServicesServers servers) { 

    this.servers = servers;
    return this;
  }

  /**
   * Get servers
   * @return servers
   **/
  
  @Schema(description = "")
  
@Valid
  public HomeServicesServers getServers() {  
    return servers;
  }



  public void setServers(HomeServicesServers servers) { 
    this.servers = servers;
  }

  public HomeServices backups(HomeServicesBackups backups) { 

    this.backups = backups;
    return this;
  }

  /**
   * Get backups
   * @return backups
   **/
  
  @Schema(description = "")
  
@Valid
  public HomeServicesBackups getBackups() {  
    return backups;
  }



  public void setBackups(HomeServicesBackups backups) { 
    this.backups = backups;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    HomeServices homeServices = (HomeServices) o;
    return Objects.equals(this.domains, homeServices.domains) &&
        Objects.equals(this.webhosting, homeServices.webhosting) &&
        Objects.equals(this.vps, homeServices.vps) &&
        Objects.equals(this.licenses, homeServices.licenses) &&
        Objects.equals(this.servers, homeServices.servers) &&
        Objects.equals(this.backups, homeServices.backups);
  }

  @Override
  public int hashCode() {
    return Objects.hash(domains, webhosting, vps, licenses, servers, backups);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class HomeServices {\n");
    
    sb.append("    domains: ").append(toIndentedString(domains)).append("\n");
    sb.append("    webhosting: ").append(toIndentedString(webhosting)).append("\n");
    sb.append("    vps: ").append(toIndentedString(vps)).append("\n");
    sb.append("    licenses: ").append(toIndentedString(licenses)).append("\n");
    sb.append("    servers: ").append(toIndentedString(servers)).append("\n");
    sb.append("    backups: ").append(toIndentedString(backups)).append("\n");
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
