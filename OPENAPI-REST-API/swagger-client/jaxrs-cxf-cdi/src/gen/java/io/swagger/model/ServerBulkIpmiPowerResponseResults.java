package io.swagger.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import javax.validation.constraints.*;

import io.swagger.v3.oas.annotations.media.Schema;
import java.util.Objects;

import javax.xml.bind.annotation.*;



public class ServerBulkIpmiPowerResponseResults   {
  private Integer id = null;
  private Integer asset = null;
  private String text = null;
  private String error = null;

  /**
   * Server ID this result corresponds to.
   **/
  public ServerBulkIpmiPowerResponseResults id(Integer id) {
    this.id = id;
    return this;
  }

  
  
  @Schema(example = "2313", description = "Server ID this result corresponds to.")
  @JsonProperty("id")
  @NotNull
  public Integer getId() {
    return id;
  }
  public void setId(Integer id) {
    this.id = id;
  }

  /**
   * Asset ID that was queried for the server (omitted on errors before asset selection).
   **/
  public ServerBulkIpmiPowerResponseResults asset(Integer asset) {
    this.asset = asset;
    return this;
  }

  
  
  @Schema(example = "5432", description = "Asset ID that was queried for the server (omitted on errors before asset selection).")
  @JsonProperty("asset")
  @NotNull
  public Integer getAsset() {
    return asset;
  }
  public void setAsset(Integer asset) {
    this.asset = asset;
  }

  /**
   * IPMI power-status output for this server.
   **/
  public ServerBulkIpmiPowerResponseResults text(String text) {
    this.text = text;
    return this;
  }

  
  
  @Schema(example = "Chassis Power is on", description = "IPMI power-status output for this server.")
  @JsonProperty("text")
  @NotNull
  public String getText() {
    return text;
  }
  public void setText(String text) {
    this.text = text;
  }

  /**
   * Error message for this server, if processing failed (mutually exclusive with &#x60;text&#x60;).
   **/
  public ServerBulkIpmiPowerResponseResults error(String error) {
    this.error = error;
    return this;
  }

  
  
  @Schema(example = "Service is not active", description = "Error message for this server, if processing failed (mutually exclusive with `text`).")
  @JsonProperty("error")
  @NotNull
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
    return Objects.equals(id, serverBulkIpmiPowerResponseResults.id) &&
        Objects.equals(asset, serverBulkIpmiPowerResponseResults.asset) &&
        Objects.equals(text, serverBulkIpmiPowerResponseResults.text) &&
        Objects.equals(error, serverBulkIpmiPowerResponseResults.error);
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
