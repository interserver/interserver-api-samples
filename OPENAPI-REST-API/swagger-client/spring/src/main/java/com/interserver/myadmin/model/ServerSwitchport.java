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
 * ServerSwitchport
 */
@Validated
@NotUndefined



public class ServerSwitchport   {
  @JsonProperty("switchport_id")

  private Integer switchportId = null;

  @JsonProperty("switch_id")

  private String switchId = null;

  @JsonProperty("switch")

  private String _switch = null;

  @JsonProperty("port")

  private String port = null;

  @JsonProperty("blade")

  private String blade = null;

  @JsonProperty("justport")

  private String justport = null;

  @JsonProperty("graph_id")

  private String graphId = null;

  @JsonProperty("vlans")
  @Valid
  private List<String> vlans = null;
  @JsonProperty("vlans6")
  @Valid
  private List<String> vlans6 = null;
  @JsonProperty("asset_id")

  private Integer assetId = null;


  public ServerSwitchport switchportId(Integer switchportId) { 

    this.switchportId = switchportId;
    return this;
  }

  /**
   * Unique identifier for the switchport.
   * @return switchportId
   **/
  
  @Schema(example = "10414", required = true, description = "Unique identifier for the switchport.")
  
  @NotNull
  public Integer getSwitchportId() {  
    return switchportId;
  }



  public void setSwitchportId(Integer switchportId) { 

    this.switchportId = switchportId;
  }

  public ServerSwitchport switchId(String switchId) { 

    this.switchId = switchId;
    return this;
  }

  /**
   * Unique identifier for the switch associated with the switchport.
   * @return switchId
   **/
  
  @Schema(example = "118", required = true, description = "Unique identifier for the switch associated with the switchport.")
  
  @NotNull
  public String getSwitchId() {  
    return switchId;
  }



  public void setSwitchId(String switchId) { 

    this.switchId = switchId;
  }

  public ServerSwitchport _switch(String _switch) { 

    this._switch = _switch;
    return this;
  }

  /**
   * Name of the switch associated with the switchport.
   * @return _switch
   **/
  
  @Schema(example = "edge1", required = true, description = "Name of the switch associated with the switchport.")
  
  @NotNull
  public String getSwitch() {  
    return _switch;
  }



  public void setSwitch(String _switch) { 

    this._switch = _switch;
  }

  public ServerSwitchport port(String port) { 

    this.port = port;
    return this;
  }

  /**
   * Port name on the switch.
   * @return port
   **/
  
  @Schema(example = "Ethernet1/33", required = true, description = "Port name on the switch.")
  
  @NotNull
  public String getPort() {  
    return port;
  }



  public void setPort(String port) { 

    this.port = port;
  }

  public ServerSwitchport blade(String blade) { 

    this.blade = blade;
    return this;
  }

  /**
   * Blade name associated with the port.
   * @return blade
   **/
  
  @Schema(example = "Ethernet1", required = true, description = "Blade name associated with the port.")
  
  @NotNull
  public String getBlade() {  
    return blade;
  }



  public void setBlade(String blade) { 

    this.blade = blade;
  }

  public ServerSwitchport justport(String justport) { 

    this.justport = justport;
    return this;
  }

  /**
   * Port identifier.
   * @return justport
   **/
  
  @Schema(example = "33", required = true, description = "Port identifier.")
  
  @NotNull
  public String getJustport() {  
    return justport;
  }



  public void setJustport(String justport) { 

    this.justport = justport;
  }

  public ServerSwitchport graphId(String graphId) { 

    this.graphId = graphId;
    return this;
  }

  /**
   * Identifier for the graph associated with the switchport.
   * @return graphId
   **/
  
  @Schema(example = "12622", required = true, description = "Identifier for the graph associated with the switchport.")
  
  @NotNull
  public String getGraphId() {  
    return graphId;
  }



  public void setGraphId(String graphId) { 

    this.graphId = graphId;
  }

  public ServerSwitchport vlans(List<String> vlans) { 

    this.vlans = vlans;
    return this;
  }

  public ServerSwitchport addVlansItem(String vlansItem) {
    if (this.vlans == null) {
      this.vlans = new ArrayList<>();
    }
    this.vlans.add(vlansItem);
    return this;
  }

  /**
   * List of VLANs associated with the switchport.
   * @return vlans
   **/
  
  @Schema(example = "[]", description = "List of VLANs associated with the switchport.")
  
  public List<String> getVlans() {  
    return vlans;
  }



  public void setVlans(List<String> vlans) { 
    this.vlans = vlans;
  }

  public ServerSwitchport vlans6(List<String> vlans6) { 

    this.vlans6 = vlans6;
    return this;
  }

  public ServerSwitchport addVlans6Item(String vlans6Item) {
    if (this.vlans6 == null) {
      this.vlans6 = new ArrayList<>();
    }
    this.vlans6.add(vlans6Item);
    return this;
  }

  /**
   * List of IPv6 VLANs associated with the switchport.
   * @return vlans6
   **/
  
  @Schema(example = "[]", description = "List of IPv6 VLANs associated with the switchport.")
  
  public List<String> getVlans6() {  
    return vlans6;
  }



  public void setVlans6(List<String> vlans6) { 
    this.vlans6 = vlans6;
  }

  public ServerSwitchport assetId(Integer assetId) { 

    this.assetId = assetId;
    return this;
  }

  /**
   * Unique identifier of the asset associated with the switchport.
   * @return assetId
   **/
  
  @Schema(example = "3497", required = true, description = "Unique identifier of the asset associated with the switchport.")
  
  @NotNull
  public Integer getAssetId() {  
    return assetId;
  }



  public void setAssetId(Integer assetId) { 

    this.assetId = assetId;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ServerSwitchport serverSwitchport = (ServerSwitchport) o;
    return Objects.equals(this.switchportId, serverSwitchport.switchportId) &&
        Objects.equals(this.switchId, serverSwitchport.switchId) &&
        Objects.equals(this._switch, serverSwitchport._switch) &&
        Objects.equals(this.port, serverSwitchport.port) &&
        Objects.equals(this.blade, serverSwitchport.blade) &&
        Objects.equals(this.justport, serverSwitchport.justport) &&
        Objects.equals(this.graphId, serverSwitchport.graphId) &&
        Objects.equals(this.vlans, serverSwitchport.vlans) &&
        Objects.equals(this.vlans6, serverSwitchport.vlans6) &&
        Objects.equals(this.assetId, serverSwitchport.assetId);
  }

  @Override
  public int hashCode() {
    return Objects.hash(switchportId, switchId, _switch, port, blade, justport, graphId, vlans, vlans6, assetId);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ServerSwitchport {\n");
    
    sb.append("    switchportId: ").append(toIndentedString(switchportId)).append("\n");
    sb.append("    switchId: ").append(toIndentedString(switchId)).append("\n");
    sb.append("    _switch: ").append(toIndentedString(_switch)).append("\n");
    sb.append("    port: ").append(toIndentedString(port)).append("\n");
    sb.append("    blade: ").append(toIndentedString(blade)).append("\n");
    sb.append("    justport: ").append(toIndentedString(justport)).append("\n");
    sb.append("    graphId: ").append(toIndentedString(graphId)).append("\n");
    sb.append("    vlans: ").append(toIndentedString(vlans)).append("\n");
    sb.append("    vlans6: ").append(toIndentedString(vlans6)).append("\n");
    sb.append("    assetId: ").append(toIndentedString(assetId)).append("\n");
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
