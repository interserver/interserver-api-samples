package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ServerBulkIpmiPowerResponseResultsInner  {
  
 /**
  * Server ID this result corresponds to.
  */
  @ApiModelProperty(example = "2313", value = "Server ID this result corresponds to.")

  private Integer id;

 /**
  * Asset ID that was queried for the server (omitted on errors before asset selection).
  */
  @ApiModelProperty(example = "5432", value = "Asset ID that was queried for the server (omitted on errors before asset selection).")

  private Integer asset;

 /**
  * IPMI power-status output for this server.
  */
  @ApiModelProperty(example = "Chassis Power is on", value = "IPMI power-status output for this server.")

  private String text;

 /**
  * Error message for this server, if processing failed (mutually exclusive with `text`).
  */
  @ApiModelProperty(example = "Service is not active", value = "Error message for this server, if processing failed (mutually exclusive with `text`).")

  private String error;
 /**
   * Server ID this result corresponds to.
   * @return id
  **/
  @JsonProperty("id")
  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public ServerBulkIpmiPowerResponseResultsInner id(Integer id) {
    this.id = id;
    return this;
  }

 /**
   * Asset ID that was queried for the server (omitted on errors before asset selection).
   * @return asset
  **/
  @JsonProperty("asset")
  public Integer getAsset() {
    return asset;
  }

  public void setAsset(Integer asset) {
    this.asset = asset;
  }

  public ServerBulkIpmiPowerResponseResultsInner asset(Integer asset) {
    this.asset = asset;
    return this;
  }

 /**
   * IPMI power-status output for this server.
   * @return text
  **/
  @JsonProperty("text")
  public String getText() {
    return text;
  }

  public void setText(String text) {
    this.text = text;
  }

  public ServerBulkIpmiPowerResponseResultsInner text(String text) {
    this.text = text;
    return this;
  }

 /**
   * Error message for this server, if processing failed (mutually exclusive with &#x60;text&#x60;).
   * @return error
  **/
  @JsonProperty("error")
  public String getError() {
    return error;
  }

  public void setError(String error) {
    this.error = error;
  }

  public ServerBulkIpmiPowerResponseResultsInner error(String error) {
    this.error = error;
    return this;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ServerBulkIpmiPowerResponseResultsInner serverBulkIpmiPowerResponseResultsInner = (ServerBulkIpmiPowerResponseResultsInner) o;
    return Objects.equals(this.id, serverBulkIpmiPowerResponseResultsInner.id) &&
        Objects.equals(this.asset, serverBulkIpmiPowerResponseResultsInner.asset) &&
        Objects.equals(this.text, serverBulkIpmiPowerResponseResultsInner.text) &&
        Objects.equals(this.error, serverBulkIpmiPowerResponseResultsInner.error);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, asset, text, error);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ServerBulkIpmiPowerResponseResultsInner {\n");
    
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
  private static String toIndentedString(Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}

