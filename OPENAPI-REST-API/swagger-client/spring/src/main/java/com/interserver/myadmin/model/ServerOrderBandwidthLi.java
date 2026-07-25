package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.ServerOrderBandwidth;
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
 * Bandwidth options for the server order.
 */
@Schema(description = "Bandwidth options for the server order.")
@Validated
@NotUndefined



public class ServerOrderBandwidthLi   {
  @JsonProperty("15")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private ServerOrderBandwidth _15 = null;


  public ServerOrderBandwidthLi _15(ServerOrderBandwidth _15) { 

    this._15 = _15;
    return this;
  }

  /**
   * Get _15
   * @return _15
   **/
  
  @Schema(description = "")
  
@Valid
  public ServerOrderBandwidth get15() {  
    return _15;
  }



  public void set15(ServerOrderBandwidth _15) { 
    this._15 = _15;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ServerOrderBandwidthLi serverOrderBandwidthLi = (ServerOrderBandwidthLi) o;
    return Objects.equals(this._15, serverOrderBandwidthLi._15);
  }

  @Override
  public int hashCode() {
    return Objects.hash(_15);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ServerOrderBandwidthLi {\n");
    
    sb.append("    _15: ").append(toIndentedString(_15)).append("\n");
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
