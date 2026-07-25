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
 * A general grouping of services within a category.
 */
@Schema(description = "A general grouping of services within a category.")
@Validated
@NotUndefined



public class ServiceType   {
  @JsonProperty("st_id")

  private Integer stId = null;

  @JsonProperty("st_name")

  private String stName = null;

  @JsonProperty("st_category")

  private Integer stCategory = null;

  @JsonProperty("st_module")

  private String stModule = null;


  public ServiceType stId(Integer stId) { 

    this.stId = stId;
    return this;
  }

  /**
   * Get stId
   * @return stId
   **/
  
  @Schema(example = "600", required = true, description = "")
  
  @NotNull
  public Integer getStId() {  
    return stId;
  }



  public void setStId(Integer stId) { 

    this.stId = stId;
  }

  public ServiceType stName(String stName) { 

    this.stName = stName;
    return this;
  }

  /**
   * Get stName
   * @return stName
   **/
  
  @Schema(example = "Dedicated Server", required = true, description = "")
  
  @NotNull
  public String getStName() {  
    return stName;
  }



  public void setStName(String stName) { 

    this.stName = stName;
  }

  public ServiceType stCategory(Integer stCategory) { 

    this.stCategory = stCategory;
    return this;
  }

  /**
   * Get stCategory
   * @return stCategory
   **/
  
  @Schema(example = "600", required = true, description = "")
  
  @NotNull
  public Integer getStCategory() {  
    return stCategory;
  }



  public void setStCategory(Integer stCategory) { 

    this.stCategory = stCategory;
  }

  public ServiceType stModule(String stModule) { 

    this.stModule = stModule;
    return this;
  }

  /**
   * Get stModule
   * @return stModule
   **/
  
  @Schema(example = "servers", required = true, description = "")
  
  @NotNull
  public String getStModule() {  
    return stModule;
  }



  public void setStModule(String stModule) { 

    this.stModule = stModule;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ServiceType serviceType = (ServiceType) o;
    return Objects.equals(this.stId, serviceType.stId) &&
        Objects.equals(this.stName, serviceType.stName) &&
        Objects.equals(this.stCategory, serviceType.stCategory) &&
        Objects.equals(this.stModule, serviceType.stModule);
  }

  @Override
  public int hashCode() {
    return Objects.hash(stId, stName, stCategory, stModule);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ServiceType {\n");
    
    sb.append("    stId: ").append(toIndentedString(stId)).append("\n");
    sb.append("    stName: ").append(toIndentedString(stName)).append("\n");
    sb.append("    stCategory: ").append(toIndentedString(stCategory)).append("\n");
    sb.append("    stModule: ").append(toIndentedString(stModule)).append("\n");
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
