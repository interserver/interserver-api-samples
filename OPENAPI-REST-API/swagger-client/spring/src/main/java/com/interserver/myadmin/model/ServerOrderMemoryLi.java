package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.ServerOrderMemoryLi254;
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
 * Memory options for the server order.
 */
@Schema(description = "Memory options for the server order.")
@Validated
@NotUndefined



public class ServerOrderMemoryLi   {
  @JsonProperty("254")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private ServerOrderMemoryLi254 _254 = null;


  public ServerOrderMemoryLi _254(ServerOrderMemoryLi254 _254) { 

    this._254 = _254;
    return this;
  }

  /**
   * Get _254
   * @return _254
   **/
  
  @Schema(description = "")
  
@Valid
  public ServerOrderMemoryLi254 get254() {  
    return _254;
  }



  public void set254(ServerOrderMemoryLi254 _254) { 
    this._254 = _254;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ServerOrderMemoryLi serverOrderMemoryLi = (ServerOrderMemoryLi) o;
    return Objects.equals(this._254, serverOrderMemoryLi._254);
  }

  @Override
  public int hashCode() {
    return Objects.hash(_254);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ServerOrderMemoryLi {\n");
    
    sb.append("    _254: ").append(toIndentedString(_254)).append("\n");
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
