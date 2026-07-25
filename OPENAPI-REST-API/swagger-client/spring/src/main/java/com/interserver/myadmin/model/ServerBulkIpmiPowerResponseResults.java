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
 * ServerBulkIpmiPowerResponseResults
 */
@Validated
@NotUndefined



public class ServerBulkIpmiPowerResponseResults   {
  @JsonProperty("id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer id = null;

  @JsonProperty("asset")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer asset = null;

  @JsonProperty("text")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String text = null;

  @JsonProperty("error")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String error = null;


  public ServerBulkIpmiPowerResponseResults id(Integer id) { 

    this.id = id;
    return this;
  }

  /**
   * Server ID this result corresponds to.
   * @return id
   **/
  
  @Schema(example = "2313", description = "Server ID this result corresponds to.")
  
  public Integer getId() {  
    return id;
  }



  public void setId(Integer id) { 
    this.id = id;
  }

  public ServerBulkIpmiPowerResponseResults asset(Integer asset) { 

    this.asset = asset;
    return this;
  }

  /**
   * Asset ID that was queried for the server (omitted on errors before asset selection).
   * @return asset
   **/
  
  @Schema(example = "5432", description = "Asset ID that was queried for the server (omitted on errors before asset selection).")
  
  public Integer getAsset() {  
    return asset;
  }



  public void setAsset(Integer asset) { 
    this.asset = asset;
  }

  public ServerBulkIpmiPowerResponseResults text(String text) { 

    this.text = text;
    return this;
  }

  /**
   * IPMI power-status output for this server.
   * @return text
   **/
  
  @Schema(example = "Chassis Power is on", description = "IPMI power-status output for this server.")
  
  public String getText() {  
    return text;
  }



  public void setText(String text) { 
    this.text = text;
  }

  public ServerBulkIpmiPowerResponseResults error(String error) { 

    this.error = error;
    return this;
  }

  /**
   * Error message for this server, if processing failed (mutually exclusive with `text`).
   * @return error
   **/
  
  @Schema(example = "Service is not active", description = "Error message for this server, if processing failed (mutually exclusive with `text`).")
  
  public String getError() {  
    return error;
  }



  public void setError(String error) { 
    this.error = error;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ServerBulkIpmiPowerResponseResults serverBulkIpmiPowerResponseResults = (ServerBulkIpmiPowerResponseResults) o;
    return Objects.equals(this.id, serverBulkIpmiPowerResponseResults.id) &&
        Objects.equals(this.asset, serverBulkIpmiPowerResponseResults.asset) &&
        Objects.equals(this.text, serverBulkIpmiPowerResponseResults.text) &&
        Objects.equals(this.error, serverBulkIpmiPowerResponseResults.error);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, asset, text, error);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ServerBulkIpmiPowerResponseResults {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    asset: ").append(toIndentedString(asset)).append("\n");
    sb.append("    text: ").append(toIndentedString(text)).append("\n");
    sb.append("    error: ").append(toIndentedString(error)).append("\n");
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
