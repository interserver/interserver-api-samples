package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
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
 * Add-on services and IP address information for a VPS, including control panel licenses and extra IP assignments.
 */
@Schema(description = "Add-on services and IP address information for a VPS, including control panel licenses and extra IP assignments.")
@Validated
@NotUndefined



public class VpsServiceAddons   {
  @JsonProperty("has_cpanel")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Boolean hasCpanel = null;

  @JsonProperty("has_directadmin")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Boolean hasDirectadmin = null;

  @JsonProperty("has_fantastico")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Boolean hasFantastico = null;

  @JsonProperty("has_softaculous")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Boolean hasSoftaculous = null;

  @JsonProperty("has_hdspace")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Boolean hasHdspace = null;

  @JsonProperty("dedicated_ip")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Boolean dedicatedIp = null;

  @JsonProperty("extra_ips")
  @Valid
  private List<String> extraIps = null;
  @JsonProperty("extra_ips6")
  @Valid
  private List<String> extraIps6 = null;
  @JsonProperty("unpaid_ips")
  @Valid
  private List<String> unpaidIps = null;
  @JsonProperty("ips")
  @Valid
  private List<String> ips = null;
  @JsonProperty("ips6")
  @Valid
  private List<String> ips6 = null;
  @JsonProperty("cpanel_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer cpanelId = null;

  @JsonProperty("cost")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer cost = null;

  @JsonProperty("ids")
  @Valid
  private List<String> ids = null;
  @JsonProperty("rdata")
  @Valid
  private List<String> rdata = null;

  public VpsServiceAddons hasCpanel(Boolean hasCpanel) { 

    this.hasCpanel = hasCpanel;
    return this;
  }

  /**
   * Whether a cPanel license is active on this VPS.
   * @return hasCpanel
   **/
  
  @Schema(description = "Whether a cPanel license is active on this VPS.")
  
  public Boolean isHasCpanel() {  
    return hasCpanel;
  }



  public void setHasCpanel(Boolean hasCpanel) { 
    this.hasCpanel = hasCpanel;
  }

  public VpsServiceAddons hasDirectadmin(Boolean hasDirectadmin) { 

    this.hasDirectadmin = hasDirectadmin;
    return this;
  }

  /**
   * Whether a DirectAdmin license is active on this VPS.
   * @return hasDirectadmin
   **/
  
  @Schema(description = "Whether a DirectAdmin license is active on this VPS.")
  
  public Boolean isHasDirectadmin() {  
    return hasDirectadmin;
  }



  public void setHasDirectadmin(Boolean hasDirectadmin) { 
    this.hasDirectadmin = hasDirectadmin;
  }

  public VpsServiceAddons hasFantastico(Boolean hasFantastico) { 

    this.hasFantastico = hasFantastico;
    return this;
  }

  /**
   * Whether a Fantastico license is active on this VPS.
   * @return hasFantastico
   **/
  
  @Schema(description = "Whether a Fantastico license is active on this VPS.")
  
  public Boolean isHasFantastico() {  
    return hasFantastico;
  }



  public void setHasFantastico(Boolean hasFantastico) { 
    this.hasFantastico = hasFantastico;
  }

  public VpsServiceAddons hasSoftaculous(Boolean hasSoftaculous) { 

    this.hasSoftaculous = hasSoftaculous;
    return this;
  }

  /**
   * Whether a Softaculous license is active on this VPS.
   * @return hasSoftaculous
   **/
  
  @Schema(description = "Whether a Softaculous license is active on this VPS.")
  
  public Boolean isHasSoftaculous() {  
    return hasSoftaculous;
  }



  public void setHasSoftaculous(Boolean hasSoftaculous) { 
    this.hasSoftaculous = hasSoftaculous;
  }

  public VpsServiceAddons hasHdspace(Boolean hasHdspace) { 

    this.hasHdspace = hasHdspace;
    return this;
  }

  /**
   * Whether extra disk space has been added to this VPS.
   * @return hasHdspace
   **/
  
  @Schema(description = "Whether extra disk space has been added to this VPS.")
  
  public Boolean isHasHdspace() {  
    return hasHdspace;
  }



  public void setHasHdspace(Boolean hasHdspace) { 
    this.hasHdspace = hasHdspace;
  }

  public VpsServiceAddons dedicatedIp(Boolean dedicatedIp) { 

    this.dedicatedIp = dedicatedIp;
    return this;
  }

  /**
   * Whether a dedicated IP address is assigned to this VPS.
   * @return dedicatedIp
   **/
  
  @Schema(description = "Whether a dedicated IP address is assigned to this VPS.")
  
  public Boolean isDedicatedIp() {  
    return dedicatedIp;
  }



  public void setDedicatedIp(Boolean dedicatedIp) { 
    this.dedicatedIp = dedicatedIp;
  }

  public VpsServiceAddons extraIps(List<String> extraIps) { 

    this.extraIps = extraIps;
    return this;
  }

  public VpsServiceAddons addExtraIpsItem(String extraIpsItem) {
    if (this.extraIps == null) {
      this.extraIps = new ArrayList<>();
    }
    this.extraIps.add(extraIpsItem);
    return this;
  }

  /**
   * List of additional IPv4 addresses assigned to this VPS.
   * @return extraIps
   **/
  
  @Schema(description = "List of additional IPv4 addresses assigned to this VPS.")
  
  public List<String> getExtraIps() {  
    return extraIps;
  }



  public void setExtraIps(List<String> extraIps) { 
    this.extraIps = extraIps;
  }

  public VpsServiceAddons extraIps6(List<String> extraIps6) { 

    this.extraIps6 = extraIps6;
    return this;
  }

  public VpsServiceAddons addExtraIps6Item(String extraIps6Item) {
    if (this.extraIps6 == null) {
      this.extraIps6 = new ArrayList<>();
    }
    this.extraIps6.add(extraIps6Item);
    return this;
  }

  /**
   * List of additional IPv6 addresses assigned to this VPS.
   * @return extraIps6
   **/
  
  @Schema(description = "List of additional IPv6 addresses assigned to this VPS.")
  
  public List<String> getExtraIps6() {  
    return extraIps6;
  }



  public void setExtraIps6(List<String> extraIps6) { 
    this.extraIps6 = extraIps6;
  }

  public VpsServiceAddons unpaidIps(List<String> unpaidIps) { 

    this.unpaidIps = unpaidIps;
    return this;
  }

  public VpsServiceAddons addUnpaidIpsItem(String unpaidIpsItem) {
    if (this.unpaidIps == null) {
      this.unpaidIps = new ArrayList<>();
    }
    this.unpaidIps.add(unpaidIpsItem);
    return this;
  }

  /**
   * List of IP addresses that have unpaid charges.
   * @return unpaidIps
   **/
  
  @Schema(description = "List of IP addresses that have unpaid charges.")
  
  public List<String> getUnpaidIps() {  
    return unpaidIps;
  }



  public void setUnpaidIps(List<String> unpaidIps) { 
    this.unpaidIps = unpaidIps;
  }

  public VpsServiceAddons ips(List<String> ips) { 

    this.ips = ips;
    return this;
  }

  public VpsServiceAddons addIpsItem(String ipsItem) {
    if (this.ips == null) {
      this.ips = new ArrayList<>();
    }
    this.ips.add(ipsItem);
    return this;
  }

  /**
   * All IPv4 addresses assigned to this VPS.
   * @return ips
   **/
  
  @Schema(description = "All IPv4 addresses assigned to this VPS.")
  
  public List<String> getIps() {  
    return ips;
  }



  public void setIps(List<String> ips) { 
    this.ips = ips;
  }

  public VpsServiceAddons ips6(List<String> ips6) { 

    this.ips6 = ips6;
    return this;
  }

  public VpsServiceAddons addIps6Item(String ips6Item) {
    if (this.ips6 == null) {
      this.ips6 = new ArrayList<>();
    }
    this.ips6.add(ips6Item);
    return this;
  }

  /**
   * All IPv6 addresses assigned to this VPS.
   * @return ips6
   **/
  
  @Schema(description = "All IPv6 addresses assigned to this VPS.")
  
  public List<String> getIps6() {  
    return ips6;
  }



  public void setIps6(List<String> ips6) { 
    this.ips6 = ips6;
  }

  public VpsServiceAddons cpanelId(Integer cpanelId) { 

    this.cpanelId = cpanelId;
    return this;
  }

  /**
   * The add-on service ID for the cPanel license.
   * @return cpanelId
   **/
  
  @Schema(description = "The add-on service ID for the cPanel license.")
  
  public Integer getCpanelId() {  
    return cpanelId;
  }



  public void setCpanelId(Integer cpanelId) { 
    this.cpanelId = cpanelId;
  }

  public VpsServiceAddons cost(Integer cost) { 

    this.cost = cost;
    return this;
  }

  /**
   * Total monthly add-on cost in cents.
   * @return cost
   **/
  
  @Schema(description = "Total monthly add-on cost in cents.")
  
  public Integer getCost() {  
    return cost;
  }



  public void setCost(Integer cost) { 
    this.cost = cost;
  }

  public VpsServiceAddons ids(List<String> ids) { 

    this.ids = ids;
    return this;
  }

  public VpsServiceAddons addIdsItem(String idsItem) {
    if (this.ids == null) {
      this.ids = new ArrayList<>();
    }
    this.ids.add(idsItem);
    return this;
  }

  /**
   * List of add-on service IDs active on this VPS.
   * @return ids
   **/
  
  @Schema(description = "List of add-on service IDs active on this VPS.")
  
  public List<String> getIds() {  
    return ids;
  }



  public void setIds(List<String> ids) { 
    this.ids = ids;
  }

  public VpsServiceAddons rdata(List<String> rdata) { 

    this.rdata = rdata;
    return this;
  }

  public VpsServiceAddons addRdataItem(String rdataItem) {
    if (this.rdata == null) {
      this.rdata = new ArrayList<>();
    }
    this.rdata.add(rdataItem);
    return this;
  }

  /**
   * Raw add-on data entries.
   * @return rdata
   **/
  
  @Schema(description = "Raw add-on data entries.")
  
  public List<String> getRdata() {  
    return rdata;
  }



  public void setRdata(List<String> rdata) { 
    this.rdata = rdata;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    VpsServiceAddons vpsServiceAddons = (VpsServiceAddons) o;
    return Objects.equals(this.hasCpanel, vpsServiceAddons.hasCpanel) &&
        Objects.equals(this.hasDirectadmin, vpsServiceAddons.hasDirectadmin) &&
        Objects.equals(this.hasFantastico, vpsServiceAddons.hasFantastico) &&
        Objects.equals(this.hasSoftaculous, vpsServiceAddons.hasSoftaculous) &&
        Objects.equals(this.hasHdspace, vpsServiceAddons.hasHdspace) &&
        Objects.equals(this.dedicatedIp, vpsServiceAddons.dedicatedIp) &&
        Objects.equals(this.extraIps, vpsServiceAddons.extraIps) &&
        Objects.equals(this.extraIps6, vpsServiceAddons.extraIps6) &&
        Objects.equals(this.unpaidIps, vpsServiceAddons.unpaidIps) &&
        Objects.equals(this.ips, vpsServiceAddons.ips) &&
        Objects.equals(this.ips6, vpsServiceAddons.ips6) &&
        Objects.equals(this.cpanelId, vpsServiceAddons.cpanelId) &&
        Objects.equals(this.cost, vpsServiceAddons.cost) &&
        Objects.equals(this.ids, vpsServiceAddons.ids) &&
        Objects.equals(this.rdata, vpsServiceAddons.rdata);
  }

  @Override
  public int hashCode() {
    return Objects.hash(hasCpanel, hasDirectadmin, hasFantastico, hasSoftaculous, hasHdspace, dedicatedIp, extraIps, extraIps6, unpaidIps, ips, ips6, cpanelId, cost, ids, rdata);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class VpsServiceAddons {\n");
    
    sb.append("    hasCpanel: ").append(toIndentedString(hasCpanel)).append("\n");
    sb.append("    hasDirectadmin: ").append(toIndentedString(hasDirectadmin)).append("\n");
    sb.append("    hasFantastico: ").append(toIndentedString(hasFantastico)).append("\n");
    sb.append("    hasSoftaculous: ").append(toIndentedString(hasSoftaculous)).append("\n");
    sb.append("    hasHdspace: ").append(toIndentedString(hasHdspace)).append("\n");
    sb.append("    dedicatedIp: ").append(toIndentedString(dedicatedIp)).append("\n");
    sb.append("    extraIps: ").append(toIndentedString(extraIps)).append("\n");
    sb.append("    extraIps6: ").append(toIndentedString(extraIps6)).append("\n");
    sb.append("    unpaidIps: ").append(toIndentedString(unpaidIps)).append("\n");
    sb.append("    ips: ").append(toIndentedString(ips)).append("\n");
    sb.append("    ips6: ").append(toIndentedString(ips6)).append("\n");
    sb.append("    cpanelId: ").append(toIndentedString(cpanelId)).append("\n");
    sb.append("    cost: ").append(toIndentedString(cost)).append("\n");
    sb.append("    ids: ").append(toIndentedString(ids)).append("\n");
    sb.append("    rdata: ").append(toIndentedString(rdata)).append("\n");
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
