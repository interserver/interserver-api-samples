package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.ServerNetworkInfoAssets;
import com.interserver.myadmin.model.ServerNetworkInfoSwitchports;
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
 * ServerNetworkInfo
 */
@Validated
@NotUndefined



public class ServerNetworkInfo   {
  @JsonProperty("vlans")
  @Valid
  private List<String> vlans = new ArrayList<>();
  @JsonProperty("vlans6")
  @Valid
  private List<String> vlans6 = new ArrayList<>();
  @JsonProperty("assets")

  private ServerNetworkInfoAssets assets = null;

  @JsonProperty("switchports")

  private ServerNetworkInfoSwitchports switchports = null;


  public ServerNetworkInfo vlans(List<String> vlans) { 

    this.vlans = vlans;
    return this;
  }

  public ServerNetworkInfo addVlansItem(String vlansItem) {
    this.vlans.add(vlansItem);
    return this;
  }

  /**
   * List of VLANs.
   * @return vlans
   **/
  
  @Schema(example = "[]", required = true, description = "List of VLANs.")
  
  @NotNull
  public List<String> getVlans() {  
    return vlans;
  }



  public void setVlans(List<String> vlans) { 

    this.vlans = vlans;
  }

  public ServerNetworkInfo vlans6(List<String> vlans6) { 

    this.vlans6 = vlans6;
    return this;
  }

  public ServerNetworkInfo addVlans6Item(String vlans6Item) {
    this.vlans6.add(vlans6Item);
    return this;
  }

  /**
   * List of IPv6 VLANs.
   * @return vlans6
   **/
  
  @Schema(example = "[]", required = true, description = "List of IPv6 VLANs.")
  
  @NotNull
  public List<String> getVlans6() {  
    return vlans6;
  }



  public void setVlans6(List<String> vlans6) { 

    this.vlans6 = vlans6;
  }

  public ServerNetworkInfo assets(ServerNetworkInfoAssets assets) { 

    this.assets = assets;
    return this;
  }

  /**
   * Get assets
   * @return assets
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public ServerNetworkInfoAssets getAssets() {  
    return assets;
  }



  public void setAssets(ServerNetworkInfoAssets assets) { 

    this.assets = assets;
  }

  public ServerNetworkInfo switchports(ServerNetworkInfoSwitchports switchports) { 

    this.switchports = switchports;
    return this;
  }

  /**
   * Get switchports
   * @return switchports
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public ServerNetworkInfoSwitchports getSwitchports() {  
    return switchports;
  }



  public void setSwitchports(ServerNetworkInfoSwitchports switchports) { 

    this.switchports = switchports;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ServerNetworkInfo serverNetworkInfo = (ServerNetworkInfo) o;
    return Objects.equals(this.vlans, serverNetworkInfo.vlans) &&
        Objects.equals(this.vlans6, serverNetworkInfo.vlans6) &&
        Objects.equals(this.assets, serverNetworkInfo.assets) &&
        Objects.equals(this.switchports, serverNetworkInfo.switchports);
  }

  @Override
  public int hashCode() {
    return Objects.hash(vlans, vlans6, assets, switchports);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ServerNetworkInfo {\n");
    
    sb.append("    vlans: ").append(toIndentedString(vlans)).append("\n");
    sb.append("    vlans6: ").append(toIndentedString(vlans6)).append("\n");
    sb.append("    assets: ").append(toIndentedString(assets)).append("\n");
    sb.append("    switchports: ").append(toIndentedString(switchports)).append("\n");
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
