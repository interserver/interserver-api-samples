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
 * New helpdesk ticket request.  
 */
@Schema(description = "New helpdesk ticket request.  ")
@Validated
@NotUndefined



public class TicketNew   {
  @JsonProperty("subject")

  private String subject = null;

  @JsonProperty("body")

  private String body = null;

  @JsonProperty("service_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer serviceId = null;

  @JsonProperty("service_module")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serviceModule = null;


  public TicketNew subject(String subject) { 

    this.subject = subject;
    return this;
  }

  /**
   * Get subject
   * @return subject
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public String getSubject() {  
    return subject;
  }



  public void setSubject(String subject) { 

    this.subject = subject;
  }

  public TicketNew body(String body) { 

    this.body = body;
    return this;
  }

  /**
   * Get body
   * @return body
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public String getBody() {  
    return body;
  }



  public void setBody(String body) { 

    this.body = body;
  }

  public TicketNew serviceId(Integer serviceId) { 

    this.serviceId = serviceId;
    return this;
  }

  /**
   * Get serviceId
   * @return serviceId
   **/
  
  @Schema(description = "")
  
  public Integer getServiceId() {  
    return serviceId;
  }



  public void setServiceId(Integer serviceId) { 
    this.serviceId = serviceId;
  }

  public TicketNew serviceModule(String serviceModule) { 

    this.serviceModule = serviceModule;
    return this;
  }

  /**
   * Get serviceModule
   * @return serviceModule
   **/
  
  @Schema(description = "")
  
  public String getServiceModule() {  
    return serviceModule;
  }



  public void setServiceModule(String serviceModule) { 
    this.serviceModule = serviceModule;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    TicketNew ticketNew = (TicketNew) o;
    return Objects.equals(this.subject, ticketNew.subject) &&
        Objects.equals(this.body, ticketNew.body) &&
        Objects.equals(this.serviceId, ticketNew.serviceId) &&
        Objects.equals(this.serviceModule, ticketNew.serviceModule);
  }

  @Override
  public int hashCode() {
    return Objects.hash(subject, body, serviceId, serviceModule);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class TicketNew {\n");
    
    sb.append("    subject: ").append(toIndentedString(subject)).append("\n");
    sb.append("    body: ").append(toIndentedString(body)).append("\n");
    sb.append("    serviceId: ").append(toIndentedString(serviceId)).append("\n");
    sb.append("    serviceModule: ").append(toIndentedString(serviceModule)).append("\n");
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
