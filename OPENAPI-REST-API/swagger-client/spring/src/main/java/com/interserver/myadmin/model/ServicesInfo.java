package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.Modules;
import com.interserver.myadmin.model.ServiceCategories;
import com.interserver.myadmin.model.ServiceTypes;
import com.interserver.myadmin.model.Services;
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
 * Contains the complete catalog of available modules, services, service types, and service categories.
 */
@Schema(description = "Contains the complete catalog of available modules, services, service types, and service categories.")
@Validated
@NotUndefined



public class ServicesInfo   {
  @JsonProperty("modules")

  private Modules modules = null;

  @JsonProperty("services")

  private Services services = null;

  @JsonProperty("serviceTypes")

  private ServiceTypes serviceTypes = null;

  @JsonProperty("serviceCategories")

  private ServiceCategories serviceCategories = null;


  public ServicesInfo modules(Modules modules) { 

    this.modules = modules;
    return this;
  }

  /**
   * Get modules
   * @return modules
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public Modules getModules() {  
    return modules;
  }



  public void setModules(Modules modules) { 

    this.modules = modules;
  }

  public ServicesInfo services(Services services) { 

    this.services = services;
    return this;
  }

  /**
   * Get services
   * @return services
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public Services getServices() {  
    return services;
  }



  public void setServices(Services services) { 

    this.services = services;
  }

  public ServicesInfo serviceTypes(ServiceTypes serviceTypes) { 

    this.serviceTypes = serviceTypes;
    return this;
  }

  /**
   * Get serviceTypes
   * @return serviceTypes
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public ServiceTypes getServiceTypes() {  
    return serviceTypes;
  }



  public void setServiceTypes(ServiceTypes serviceTypes) { 

    this.serviceTypes = serviceTypes;
  }

  public ServicesInfo serviceCategories(ServiceCategories serviceCategories) { 

    this.serviceCategories = serviceCategories;
    return this;
  }

  /**
   * Get serviceCategories
   * @return serviceCategories
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public ServiceCategories getServiceCategories() {  
    return serviceCategories;
  }



  public void setServiceCategories(ServiceCategories serviceCategories) { 

    this.serviceCategories = serviceCategories;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ServicesInfo servicesInfo = (ServicesInfo) o;
    return Objects.equals(this.modules, servicesInfo.modules) &&
        Objects.equals(this.services, servicesInfo.services) &&
        Objects.equals(this.serviceTypes, servicesInfo.serviceTypes) &&
        Objects.equals(this.serviceCategories, servicesInfo.serviceCategories);
  }

  @Override
  public int hashCode() {
    return Objects.hash(modules, services, serviceTypes, serviceCategories);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ServicesInfo {\n");
    
    sb.append("    modules: ").append(toIndentedString(modules)).append("\n");
    sb.append("    services: ").append(toIndentedString(services)).append("\n");
    sb.append("    serviceTypes: ").append(toIndentedString(serviceTypes)).append("\n");
    sb.append("    serviceCategories: ").append(toIndentedString(serviceCategories)).append("\n");
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
