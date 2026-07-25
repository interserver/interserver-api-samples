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
 * ServerLocation1
 */
@Validated
@NotUndefined



public class ServerLocation1   {
  @JsonProperty("location_id")

  private Integer locationId = null;

  @JsonProperty("location_name")

  private String locationName = null;

  @JsonProperty("location_description")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String locationDescription = null;

  @JsonProperty("location_lat")

  private String locationLat = null;

  @JsonProperty("location_long")

  private String locationLong = null;

  @JsonProperty("location_ipmi_group")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer locationIpmiGroup = null;


  public ServerLocation1 locationId(Integer locationId) { 

    this.locationId = locationId;
    return this;
  }

  /**
   * Get locationId
   * @return locationId
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public Integer getLocationId() {  
    return locationId;
  }



  public void setLocationId(Integer locationId) { 

    this.locationId = locationId;
  }

  public ServerLocation1 locationName(String locationName) { 

    this.locationName = locationName;
    return this;
  }

  /**
   * Get locationName
   * @return locationName
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public String getLocationName() {  
    return locationName;
  }



  public void setLocationName(String locationName) { 

    this.locationName = locationName;
  }

  public ServerLocation1 locationDescription(String locationDescription) { 

    this.locationDescription = locationDescription;
    return this;
  }

  /**
   * Get locationDescription
   * @return locationDescription
   **/
  
  @Schema(description = "")
  
  public String getLocationDescription() {  
    return locationDescription;
  }



  public void setLocationDescription(String locationDescription) { 
    this.locationDescription = locationDescription;
  }

  public ServerLocation1 locationLat(String locationLat) { 

    this.locationLat = locationLat;
    return this;
  }

  /**
   * Get locationLat
   * @return locationLat
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public String getLocationLat() {  
    return locationLat;
  }



  public void setLocationLat(String locationLat) { 

    this.locationLat = locationLat;
  }

  public ServerLocation1 locationLong(String locationLong) { 

    this.locationLong = locationLong;
    return this;
  }

  /**
   * Get locationLong
   * @return locationLong
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public String getLocationLong() {  
    return locationLong;
  }



  public void setLocationLong(String locationLong) { 

    this.locationLong = locationLong;
  }

  public ServerLocation1 locationIpmiGroup(Integer locationIpmiGroup) { 

    this.locationIpmiGroup = locationIpmiGroup;
    return this;
  }

  /**
   * Get locationIpmiGroup
   * @return locationIpmiGroup
   **/
  
  @Schema(description = "")
  
  public Integer getLocationIpmiGroup() {  
    return locationIpmiGroup;
  }



  public void setLocationIpmiGroup(Integer locationIpmiGroup) { 
    this.locationIpmiGroup = locationIpmiGroup;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ServerLocation1 serverLocation1 = (ServerLocation1) o;
    return Objects.equals(this.locationId, serverLocation1.locationId) &&
        Objects.equals(this.locationName, serverLocation1.locationName) &&
        Objects.equals(this.locationDescription, serverLocation1.locationDescription) &&
        Objects.equals(this.locationLat, serverLocation1.locationLat) &&
        Objects.equals(this.locationLong, serverLocation1.locationLong) &&
        Objects.equals(this.locationIpmiGroup, serverLocation1.locationIpmiGroup);
  }

  @Override
  public int hashCode() {
    return Objects.hash(locationId, locationName, locationDescription, locationLat, locationLong, locationIpmiGroup);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ServerLocation1 {\n");
    
    sb.append("    locationId: ").append(toIndentedString(locationId)).append("\n");
    sb.append("    locationName: ").append(toIndentedString(locationName)).append("\n");
    sb.append("    locationDescription: ").append(toIndentedString(locationDescription)).append("\n");
    sb.append("    locationLat: ").append(toIndentedString(locationLat)).append("\n");
    sb.append("    locationLong: ").append(toIndentedString(locationLong)).append("\n");
    sb.append("    locationIpmiGroup: ").append(toIndentedString(locationIpmiGroup)).append("\n");
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
