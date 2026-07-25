package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.ServerSwitchport;
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
 * Object containing switchport information.
 */
@Schema(description = "Object containing switchport information.")
@Validated
@NotUndefined



public class ServerNetworkInfoSwitchports   {
  @JsonProperty("10414")

  private ServerSwitchport _10414 = null;


  public ServerNetworkInfoSwitchports _10414(ServerSwitchport _10414) { 

    this._10414 = _10414;
    return this;
  }

  /**
   * Get _10414
   * @return _10414
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public ServerSwitchport get10414() {  
    return _10414;
  }



  public void set10414(ServerSwitchport _10414) { 

    this._10414 = _10414;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ServerNetworkInfoSwitchports serverNetworkInfoSwitchports = (ServerNetworkInfoSwitchports) o;
    return Objects.equals(this._10414, serverNetworkInfoSwitchports._10414);
  }

  @Override
  public int hashCode() {
    return Objects.hash(_10414);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ServerNetworkInfoSwitchports {\n");
    
    sb.append("    _10414: ").append(toIndentedString(_10414)).append("\n");
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
