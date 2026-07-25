package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.ServerAsset;
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
 * Object containing asset information.
 */
@Schema(description = "Object containing asset information.")
@Validated
@NotUndefined



public class ServerNetworkInfoAssets   {
  @JsonProperty("3497")

  private ServerAsset _3497 = null;


  public ServerNetworkInfoAssets _3497(ServerAsset _3497) { 

    this._3497 = _3497;
    return this;
  }

  /**
   * Get _3497
   * @return _3497
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public ServerAsset get3497() {  
    return _3497;
  }



  public void set3497(ServerAsset _3497) { 

    this._3497 = _3497;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ServerNetworkInfoAssets serverNetworkInfoAssets = (ServerNetworkInfoAssets) o;
    return Objects.equals(this._3497, serverNetworkInfoAssets._3497);
  }

  @Override
  public int hashCode() {
    return Objects.hash(_3497);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ServerNetworkInfoAssets {\n");
    
    sb.append("    _3497: ").append(toIndentedString(_3497)).append("\n");
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
