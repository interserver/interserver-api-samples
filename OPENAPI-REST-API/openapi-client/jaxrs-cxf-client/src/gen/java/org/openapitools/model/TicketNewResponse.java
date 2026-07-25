package org.openapitools.model;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Response returned after creating a new support ticket.
 */
@ApiModel(description="Response returned after creating a new support ticket.")

public class TicketNewResponse  {
  
  @ApiModelProperty(required = true, value = "")

  private String text;

  @ApiModelProperty(required = true, value = "")

  private Boolean success;

  @ApiModelProperty(value = "")

  private Integer ticketId;
 /**
   * Get text
   * @return text
  **/
  @JsonProperty("text")
  public String getText() {
    return text;
  }

  public void setText(String text) {
    this.text = text;
  }

  public TicketNewResponse text(String text) {
    this.text = text;
    return this;
  }

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

  public TicketNewResponse success(Boolean success) {
    this.success = success;
    return this;
  }

 /**
   * Get ticketId
   * @return ticketId
  **/
  @JsonProperty("ticket_id")
  public Integer getTicketId() {
    return ticketId;
  }

  public void setTicketId(Integer ticketId) {
    this.ticketId = ticketId;
  }

  public TicketNewResponse ticketId(Integer ticketId) {
    this.ticketId = ticketId;
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
    TicketNewResponse ticketNewResponse = (TicketNewResponse) o;
    return Objects.equals(this.text, ticketNewResponse.text) &&
        Objects.equals(this.success, ticketNewResponse.success) &&
        Objects.equals(this.ticketId, ticketNewResponse.ticketId);
  }

  @Override
  public int hashCode() {
    return Objects.hash(text, success, ticketId);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class TicketNewResponse {\n");
    
    sb.append("    text: ").append(toIndentedString(text)).append("\n");
    sb.append("    success: ").append(toIndentedString(success)).append("\n");
    sb.append("    ticketId: ").append(toIndentedString(ticketId)).append("\n");
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

