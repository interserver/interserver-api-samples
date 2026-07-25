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
 * Response returned after creating a new support ticket.
 */
@Schema(description = "Response returned after creating a new support ticket.")
@Validated
@NotUndefined



public class TicketNewResponse   {
  @JsonProperty("ticket_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer ticketId = null;

  @JsonProperty("text")

  private String text = null;

  @JsonProperty("success")

  private Boolean success = null;


  public TicketNewResponse ticketId(Integer ticketId) { 

    this.ticketId = ticketId;
    return this;
  }

  /**
   * Get ticketId
   * @return ticketId
   **/
  
  @Schema(description = "")
  
  public Integer getTicketId() {  
    return ticketId;
  }



  public void setTicketId(Integer ticketId) { 
    this.ticketId = ticketId;
  }

  public TicketNewResponse text(String text) { 

    this.text = text;
    return this;
  }

  /**
   * Get text
   * @return text
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public String getText() {  
    return text;
  }



  public void setText(String text) { 

    this.text = text;
  }

  public TicketNewResponse success(Boolean success) { 

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

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    TicketNewResponse ticketNewResponse = (TicketNewResponse) o;
    return Objects.equals(this.ticketId, ticketNewResponse.ticketId) &&
        Objects.equals(this.text, ticketNewResponse.text) &&
        Objects.equals(this.success, ticketNewResponse.success);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ticketId, text, success);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class TicketNewResponse {\n");
    
    sb.append("    ticketId: ").append(toIndentedString(ticketId)).append("\n");
    sb.append("    text: ").append(toIndentedString(text)).append("\n");
    sb.append("    success: ").append(toIndentedString(success)).append("\n");
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
