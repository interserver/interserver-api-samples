package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.ServerOrderMemory;
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
 * ServerOrderMemoryLi254
 */
@Validated
@NotUndefined



public class ServerOrderMemoryLi254   {
  @JsonProperty("65")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private ServerOrderMemory _65 = null;


  public ServerOrderMemoryLi254 _65(ServerOrderMemory _65) { 

    this._65 = _65;
    return this;
  }

  /**
   * Get _65
   * @return _65
   **/
  
  @Schema(description = "")
  
@Valid
  public ServerOrderMemory get65() {  
    return _65;
  }



  public void set65(ServerOrderMemory _65) { 
    this._65 = _65;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ServerOrderMemoryLi254 serverOrderMemoryLi254 = (ServerOrderMemoryLi254) o;
    return Objects.equals(this._65, serverOrderMemoryLi254._65);
  }

  @Override
  public int hashCode() {
    return Objects.hash(_65);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ServerOrderMemoryLi254 {\n");
    
    sb.append("    _65: ").append(toIndentedString(_65)).append("\n");
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
