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
 * Detailed ticket information
 */
@Schema(description = "Detailed ticket information")
@Validated
@NotUndefined



public class TicketDetails   {
  @JsonProperty("ticketid")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer ticketid = null;

  @JsonProperty("ticketmaskid")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ticketmaskid = null;

  @JsonProperty("department")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String department = null;

  @JsonProperty("status")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String status = null;

  @JsonProperty("priority")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String priority = null;

  @JsonProperty("subject")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String subject = null;

  @JsonProperty("created_on")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String createdOn = null;

  @JsonProperty("updated_on")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String updatedOn = null;


  public TicketDetails ticketid(Integer ticketid) { 

    this.ticketid = ticketid;
    return this;
  }

  /**
   * Get ticketid
   * @return ticketid
   **/
  
  @Schema(description = "")
  
  public Integer getTicketid() {  
    return ticketid;
  }



  public void setTicketid(Integer ticketid) { 
    this.ticketid = ticketid;
  }

  public TicketDetails ticketmaskid(String ticketmaskid) { 

    this.ticketmaskid = ticketmaskid;
    return this;
  }

  /**
   * Get ticketmaskid
   * @return ticketmaskid
   **/
  
  @Schema(description = "")
  
  public String getTicketmaskid() {  
    return ticketmaskid;
  }



  public void setTicketmaskid(String ticketmaskid) { 
    this.ticketmaskid = ticketmaskid;
  }

  public TicketDetails department(String department) { 

    this.department = department;
    return this;
  }

  /**
   * Get department
   * @return department
   **/
  
  @Schema(description = "")
  
  public String getDepartment() {  
    return department;
  }



  public void setDepartment(String department) { 
    this.department = department;
  }

  public TicketDetails status(String status) { 

    this.status = status;
    return this;
  }

  /**
   * Get status
   * @return status
   **/
  
  @Schema(description = "")
  
  public String getStatus() {  
    return status;
  }



  public void setStatus(String status) { 
    this.status = status;
  }

  public TicketDetails priority(String priority) { 

    this.priority = priority;
    return this;
  }

  /**
   * Get priority
   * @return priority
   **/
  
  @Schema(description = "")
  
  public String getPriority() {  
    return priority;
  }



  public void setPriority(String priority) { 
    this.priority = priority;
  }

  public TicketDetails subject(String subject) { 

    this.subject = subject;
    return this;
  }

  /**
   * Get subject
   * @return subject
   **/
  
  @Schema(description = "")
  
  public String getSubject() {  
    return subject;
  }



  public void setSubject(String subject) { 
    this.subject = subject;
  }

  public TicketDetails createdOn(String createdOn) { 

    this.createdOn = createdOn;
    return this;
  }

  /**
   * Get createdOn
   * @return createdOn
   **/
  
  @Schema(description = "")
  
  public String getCreatedOn() {  
    return createdOn;
  }



  public void setCreatedOn(String createdOn) { 
    this.createdOn = createdOn;
  }

  public TicketDetails updatedOn(String updatedOn) { 

    this.updatedOn = updatedOn;
    return this;
  }

  /**
   * Get updatedOn
   * @return updatedOn
   **/
  
  @Schema(description = "")
  
  public String getUpdatedOn() {  
    return updatedOn;
  }



  public void setUpdatedOn(String updatedOn) { 
    this.updatedOn = updatedOn;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    TicketDetails ticketDetails = (TicketDetails) o;
    return Objects.equals(this.ticketid, ticketDetails.ticketid) &&
        Objects.equals(this.ticketmaskid, ticketDetails.ticketmaskid) &&
        Objects.equals(this.department, ticketDetails.department) &&
        Objects.equals(this.status, ticketDetails.status) &&
        Objects.equals(this.priority, ticketDetails.priority) &&
        Objects.equals(this.subject, ticketDetails.subject) &&
        Objects.equals(this.createdOn, ticketDetails.createdOn) &&
        Objects.equals(this.updatedOn, ticketDetails.updatedOn);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ticketid, ticketmaskid, department, status, priority, subject, createdOn, updatedOn);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class TicketDetails {\n");
    
    sb.append("    ticketid: ").append(toIndentedString(ticketid)).append("\n");
    sb.append("    ticketmaskid: ").append(toIndentedString(ticketmaskid)).append("\n");
    sb.append("    department: ").append(toIndentedString(department)).append("\n");
    sb.append("    status: ").append(toIndentedString(status)).append("\n");
    sb.append("    priority: ").append(toIndentedString(priority)).append("\n");
    sb.append("    subject: ").append(toIndentedString(subject)).append("\n");
    sb.append("    createdOn: ").append(toIndentedString(createdOn)).append("\n");
    sb.append("    updatedOn: ").append(toIndentedString(updatedOn)).append("\n");
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
