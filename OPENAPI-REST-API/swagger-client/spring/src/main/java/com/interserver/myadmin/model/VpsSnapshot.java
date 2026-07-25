package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
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
 * A VPS snapshot (point-in-time backup) stored on the host node.
 */
@Schema(description = "A VPS snapshot (point-in-time backup) stored on the host node.")
@Validated
@NotUndefined



public class VpsSnapshot   {
  @JsonProperty("name")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String name = null;

  @JsonProperty("used")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer used = null;

  @JsonProperty("date")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer date = null;


  public VpsSnapshot name(String name) { 

    this.name = name;
    return this;
  }

  /**
   * Snapshot name.
   * @return name
   **/
  
  @Schema(description = "Snapshot name.")
  
  public String getName() {  
    return name;
  }



  public void setName(String name) { 
    this.name = name;
  }

  public VpsSnapshot used(Integer used) { 

    this.used = used;
    return this;
  }

  /**
   * Disk space used by this snapshot in bytes.
   * @return used
   **/
  
  @Schema(description = "Disk space used by this snapshot in bytes.")
  
  public Integer getUsed() {  
    return used;
  }



  public void setUsed(Integer used) { 
    this.used = used;
  }

  public VpsSnapshot date(Integer date) { 

    this.date = date;
    return this;
  }

  /**
   * Unix timestamp of when the snapshot was created.
   * @return date
   **/
  
  @Schema(description = "Unix timestamp of when the snapshot was created.")
  
  public Integer getDate() {  
    return date;
  }



  public void setDate(Integer date) { 
    this.date = date;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    VpsSnapshot vpsSnapshot = (VpsSnapshot) o;
    return Objects.equals(this.name, vpsSnapshot.name) &&
        Objects.equals(this.used, vpsSnapshot.used) &&
        Objects.equals(this.date, vpsSnapshot.date);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, used, date);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class VpsSnapshot {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    used: ").append(toIndentedString(used)).append("\n");
    sb.append("    date: ").append(toIndentedString(date)).append("\n");
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
