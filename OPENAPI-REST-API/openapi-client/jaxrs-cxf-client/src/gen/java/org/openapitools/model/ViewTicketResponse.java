package org.openapitools.model;

import org.openapitools.model.TicketCustomFieldDetails;
import org.openapitools.model.TicketDetails;
import org.openapitools.model.TicketPostDetails;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Ticket details
 */
@ApiModel(description="Ticket details")

public class ViewTicketResponse  {
  
  @ApiModelProperty(required = true, value = "")

  private Boolean success;

  @ApiModelProperty(required = true, value = "")

  private TicketDetails ticket;

  @ApiModelProperty(value = "")

  private TicketCustomFieldDetails ticketCustomFields;

  @ApiModelProperty(value = "")

  private TicketPostDetails ticketPosts = new ArrayList<>();
 /**
   * Get success
   * @return success
  **/
  @JsonProperty("success")
  public Boolean isSuccess() {
    return success;
  }

  public void setSuccess(Boolean success) {
    this.success = success;
  }

  public ViewTicketResponse success(Boolean success) {
    this.success = success;
    return this;
  }

 /**
   * Get ticket
   * @return ticket
  **/
  @JsonProperty("ticket")
  public TicketDetails getTicket() {
    return ticket;
  }

  public void setTicket(TicketDetails ticket) {
    this.ticket = ticket;
  }

  public ViewTicketResponse ticket(TicketDetails ticket) {
    this.ticket = ticket;
    return this;
  }

 /**
   * Get ticketCustomFields
   * @return ticketCustomFields
  **/
  @JsonProperty("ticket_custom_fields")
  public TicketCustomFieldDetails getTicketCustomFields() {
    return ticketCustomFields;
  }

  public void setTicketCustomFields(TicketCustomFieldDetails ticketCustomFields) {
    this.ticketCustomFields = ticketCustomFields;
  }

  public ViewTicketResponse ticketCustomFields(TicketCustomFieldDetails ticketCustomFields) {
    this.ticketCustomFields = ticketCustomFields;
    return this;
  }

 /**
   * Get ticketPosts
   * @return ticketPosts
  **/
  @JsonProperty("ticket_posts")
  public TicketPostDetails getTicketPosts() {
    return ticketPosts;
  }

  public void setTicketPosts(TicketPostDetails ticketPosts) {
    this.ticketPosts = ticketPosts;
  }

  public ViewTicketResponse ticketPosts(TicketPostDetails ticketPosts) {
    this.ticketPosts = ticketPosts;
    return this;
  }

  @Override
  public boolean equals(Object o) {
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
  private static String toIndentedString(Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}

