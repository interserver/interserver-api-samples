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
 * A result row from the &#x60;Vps&#x60; &#x60;GET&#x60; request.
 */
@Schema(description = "A result row from the `Vps` `GET` request.")
@Validated
@NotUndefined



public class VpsRow   {
  @JsonProperty("vps_id")

  private String vpsId = null;

  @JsonProperty("vps_name")

  private String vpsName = null;

  @JsonProperty("repeat_invoices_cost")

  private String repeatInvoicesCost = null;

  @JsonProperty("vps_hostname")

  private String vpsHostname = null;

  @JsonProperty("vps_ip")

  private String vpsIp = null;

  @JsonProperty("vps_status")

  private String vpsStatus = null;

  @JsonProperty("services_name")

  private String servicesName = null;

  @JsonProperty("vps_comment")

  private String vpsComment = null;


  public VpsRow vpsId(String vpsId) { 

    this.vpsId = vpsId;
    return this;
  }

  /**
   * The id of the vps.
   * @return vpsId
   **/
  
  @Schema(example = "100", required = true, description = "The id of the vps.")
  
  @NotNull
  public String getVpsId() {  
    return vpsId;
  }



  public void setVpsId(String vpsId) { 

    this.vpsId = vpsId;
  }

  public VpsRow vpsName(String vpsName) { 

    this.vpsName = vpsName;
    return this;
  }

  /**
   * The name of the vps.
   * @return vpsName
   **/
  
  @Schema(example = "Builder", required = true, description = "The name of the vps.")
  
  @NotNull
  public String getVpsName() {  
    return vpsName;
  }



  public void setVpsName(String vpsName) { 

    this.vpsName = vpsName;
  }

  public VpsRow repeatInvoicesCost(String repeatInvoicesCost) { 

    this.repeatInvoicesCost = repeatInvoicesCost;
    return this;
  }

  /**
   * The repeat invoices cost of the vps.
   * @return repeatInvoicesCost
   **/
  
  @Schema(example = "10.00", required = true, description = "The repeat invoices cost of the vps.")
  
  @NotNull
  public String getRepeatInvoicesCost() {  
    return repeatInvoicesCost;
  }



  public void setRepeatInvoicesCost(String repeatInvoicesCost) { 

    this.repeatInvoicesCost = repeatInvoicesCost;
  }

  public VpsRow vpsHostname(String vpsHostname) { 

    this.vpsHostname = vpsHostname;
    return this;
  }

  /**
   * The hostname of the vps.
   * @return vpsHostname
   **/
  
  @Schema(example = "vps100", required = true, description = "The hostname of the vps.")
  
  @NotNull
  public String getVpsHostname() {  
    return vpsHostname;
  }



  public void setVpsHostname(String vpsHostname) { 

    this.vpsHostname = vpsHostname;
  }

  public VpsRow vpsIp(String vpsIp) { 

    this.vpsIp = vpsIp;
    return this;
  }

  /**
   * The ip of the vps.
   * @return vpsIp
   **/
  
  @Schema(example = "64.20.46.220", required = true, description = "The ip of the vps.")
  
  @NotNull
  public String getVpsIp() {  
    return vpsIp;
  }



  public void setVpsIp(String vpsIp) { 

    this.vpsIp = vpsIp;
  }

  public VpsRow vpsStatus(String vpsStatus) { 

    this.vpsStatus = vpsStatus;
    return this;
  }

  /**
   * The status of the vps.
   * @return vpsStatus
   **/
  
  @Schema(example = "active", required = true, description = "The status of the vps.")
  
  @NotNull
  public String getVpsStatus() {  
    return vpsStatus;
  }



  public void setVpsStatus(String vpsStatus) { 

    this.vpsStatus = vpsStatus;
  }

  public VpsRow servicesName(String servicesName) { 

    this.servicesName = servicesName;
    return this;
  }

  /**
   * The services name of the vps.
   * @return servicesName
   **/
  
  @Schema(example = "KVM Windows VPS Slice", required = true, description = "The services name of the vps.")
  
  @NotNull
  public String getServicesName() {  
    return servicesName;
  }



  public void setServicesName(String servicesName) { 

    this.servicesName = servicesName;
  }

  public VpsRow vpsComment(String vpsComment) { 

    this.vpsComment = vpsComment;
    return this;
  }

  /**
   * The comment of the vps.
   * @return vpsComment
   **/
  
  @Schema(required = true, description = "The comment of the vps.")
  
  @NotNull
  public String getVpsComment() {  
    return vpsComment;
  }



  public void setVpsComment(String vpsComment) { 

    this.vpsComment = vpsComment;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    VpsRow vpsRow = (VpsRow) o;
    return Objects.equals(this.vpsId, vpsRow.vpsId) &&
        Objects.equals(this.vpsName, vpsRow.vpsName) &&
        Objects.equals(this.repeatInvoicesCost, vpsRow.repeatInvoicesCost) &&
        Objects.equals(this.vpsHostname, vpsRow.vpsHostname) &&
        Objects.equals(this.vpsIp, vpsRow.vpsIp) &&
        Objects.equals(this.vpsStatus, vpsRow.vpsStatus) &&
        Objects.equals(this.servicesName, vpsRow.servicesName) &&
        Objects.equals(this.vpsComment, vpsRow.vpsComment);
  }

  @Override
  public int hashCode() {
    return Objects.hash(vpsId, vpsName, repeatInvoicesCost, vpsHostname, vpsIp, vpsStatus, servicesName, vpsComment);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class VpsRow {\n");
    
    sb.append("    vpsId: ").append(toIndentedString(vpsId)).append("\n");
    sb.append("    vpsName: ").append(toIndentedString(vpsName)).append("\n");
    sb.append("    repeatInvoicesCost: ").append(toIndentedString(repeatInvoicesCost)).append("\n");
    sb.append("    vpsHostname: ").append(toIndentedString(vpsHostname)).append("\n");
    sb.append("    vpsIp: ").append(toIndentedString(vpsIp)).append("\n");
    sb.append("    vpsStatus: ").append(toIndentedString(vpsStatus)).append("\n");
    sb.append("    servicesName: ").append(toIndentedString(servicesName)).append("\n");
    sb.append("    vpsComment: ").append(toIndentedString(vpsComment)).append("\n");
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
