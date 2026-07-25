package io.swagger.model;


import io.swagger.v3.oas.annotations.media.Schema;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonCreator;

public class ServerBulkIpmiPowerResponseResults   {
  
  @Schema(example = "2313", description = "Server ID this result corresponds to.")
 /**
   * Server ID this result corresponds to.  
  **/
  private Integer id = null;
  
  @Schema(example = "5432", description = "Asset ID that was queried for the server (omitted on errors before asset selection).")
 /**
   * Asset ID that was queried for the server (omitted on errors before asset selection).  
  **/
  private Integer asset = null;
  
  @Schema(example = "Chassis Power is on", description = "IPMI power-status output for this server.")
 /**
   * IPMI power-status output for this server.  
  **/
  private String text = null;
  
  @Schema(example = "Service is not active", description = "Error message for this server, if processing failed (mutually exclusive with `text`).")
 /**
   * Error message for this server, if processing failed (mutually exclusive with `text`).  
  **/
  private String error = null;
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

  public ServerBulkIpmiPowerResponseResults id(Integer id) {
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

  public ServerBulkIpmiPowerResponseResults asset(Integer asset) {
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

  public ServerBulkIpmiPowerResponseResults text(String text) {
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

  public ServerBulkIpmiPowerResponseResults error(String error) {
    this.error = error;
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
