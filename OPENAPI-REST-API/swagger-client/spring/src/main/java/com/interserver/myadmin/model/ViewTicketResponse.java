package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.TicketCustomFieldDetails;
import com.interserver.myadmin.model.TicketDetails;
import com.interserver.myadmin.model.TicketPostDetails;
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
 * Ticket details
 */
@Schema(description = "Ticket details")
@Validated
@NotUndefined



public class ViewTicketResponse   {
  @JsonProperty("success")

  private Boolean success = null;

  @JsonProperty("ticket")

  private TicketDetails ticket = null;

  @JsonProperty("ticket_custom_fields")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private TicketCustomFieldDetails ticketCustomFields = null;

  @JsonProperty("ticket_posts")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private TicketPostDetails ticketPosts = null;


  public ViewTicketResponse success(Boolean success) { 

    this.success = success;
    return this;
  }

  /**
   * Get success
   * @return success
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public Boolean isSuccess() {  
    return success;
  }



  public void setSuccess(Boolean success) { 

    this.success = success;
  }

  public ViewTicketResponse ticket(TicketDetails ticket) { 

    this.ticket = ticket;
    return this;
  }

  /**
   * Get ticket
   * @return ticket
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public TicketDetails getTicket() {  
    return ticket;
  }



  public void setTicket(TicketDetails ticket) { 

    this.ticket = ticket;
  }

  public ViewTicketResponse ticketCustomFields(TicketCustomFieldDetails ticketCustomFields) { 

    this.ticketCustomFields = ticketCustomFields;
    return this;
  }

  /**
   * Get ticketCustomFields
   * @return ticketCustomFields
   **/
  
  @Schema(description = "")
  
@Valid
  public TicketCustomFieldDetails getTicketCustomFields() {  
    return ticketCustomFields;
  }



  public void setTicketCustomFields(TicketCustomFieldDetails ticketCustomFields) { 
    this.ticketCustomFields = ticketCustomFields;
  }

  public ViewTicketResponse ticketPosts(TicketPostDetails ticketPosts) { 

    this.ticketPosts = ticketPosts;
    return this;
  }

  /**
   * Get ticketPosts
   * @return ticketPosts
   **/
  
  @Schema(description = "")
  
@Valid
  public TicketPostDetails getTicketPosts() {  
    return ticketPosts;
  }



  public void setTicketPosts(TicketPostDetails ticketPosts) { 
    this.ticketPosts = ticketPosts;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ViewTicketResponse viewTicketResponse = (ViewTicketResponse) o;
    return Objects.equals(this.success, viewTicketResponse.success) &&
        Objects.equals(this.ticket, viewTicketResponse.ticket) &&
        Objects.equals(this.ticketCustomFields, viewTicketResponse.ticketCustomFields) &&
        Objects.equals(this.ticketPosts, viewTicketResponse.ticketPosts);
  }

  @Override
  public int hashCode() {
    return Objects.hash(success, ticket, ticketCustomFields, ticketPosts);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ViewTicketResponse {\n");
    
    sb.append("    success: ").append(toIndentedString(success)).append("\n");
    sb.append("    ticket: ").append(toIndentedString(ticket)).append("\n");
    sb.append("    ticketCustomFields: ").append(toIndentedString(ticketCustomFields)).append("\n");
    sb.append("    ticketPosts: ").append(toIndentedString(ticketPosts)).append("\n");
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
