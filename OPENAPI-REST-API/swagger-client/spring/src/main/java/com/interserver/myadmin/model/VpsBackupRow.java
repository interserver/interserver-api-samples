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
 * A single backed-up item and information about it.
 */
@Schema(description = "A single backed-up item and information about it.")
@Validated
@NotUndefined



public class VpsBackupRow   {
  @JsonProperty("type")

  private String type = null;

  @JsonProperty("service")

  private Integer service = null;

  @JsonProperty("name")

  private String name = null;

  @JsonProperty("size")

  private Integer size = null;

  @JsonProperty("date")

  private Integer date = null;


  public VpsBackupRow type(String type) { 

    this.type = type;
    return this;
  }

  /**
   * Backup Type
   * @return type
   **/
  
  @Schema(example = "zfs", required = true, description = "Backup Type")
  
  @NotNull
  public String getType() {  
    return type;
  }



  public void setType(String type) { 

    this.type = type;
  }

  public VpsBackupRow service(Integer service) { 

    this.service = service;
    return this;
  }

  /**
   * The service id such as vps  id.
   * @return service
   **/
  
  @Schema(example = "12343", required = true, description = "The service id such as vps  id.")
  
  @NotNull
  public Integer getService() {  
    return service;
  }



  public void setService(Integer service) { 

    this.service = service;
  }

  public VpsBackupRow name(String name) { 

    this.name = name;
    return this;
  }

  /**
   * The name of the backup.
   * @return name
   **/
  
  @Schema(example = "automated_backup", required = true, description = "The name of the backup.")
  
  @NotNull
  public String getName() {  
    return name;
  }



  public void setName(String name) { 

    this.name = name;
  }

  public VpsBackupRow size(Integer size) { 

    this.size = size;
    return this;
  }

  /**
   * Size of the file in bytes
   * @return size
   **/
  
  @Schema(example = "132412343124213", required = true, description = "Size of the file in bytes")
  
  @NotNull
  public Integer getSize() {  
    return size;
  }



  public void setSize(Integer size) { 

    this.size = size;
  }

  public VpsBackupRow date(Integer date) { 

    this.date = date;
    return this;
  }

  /**
   * The creation date of the backup in a unix timestamp.
   * @return date
   **/
  
  @Schema(example = "1693996140", required = true, description = "The creation date of the backup in a unix timestamp.")
  
  @NotNull
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
    VpsBackupRow vpsBackupRow = (VpsBackupRow) o;
    return Objects.equals(this.type, vpsBackupRow.type) &&
        Objects.equals(this.service, vpsBackupRow.service) &&
        Objects.equals(this.name, vpsBackupRow.name) &&
        Objects.equals(this.size, vpsBackupRow.size) &&
        Objects.equals(this.date, vpsBackupRow.date);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, service, name, size, date);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class VpsBackupRow {\n");
    
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    service: ").append(toIndentedString(service)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    size: ").append(toIndentedString(size)).append("\n");
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
