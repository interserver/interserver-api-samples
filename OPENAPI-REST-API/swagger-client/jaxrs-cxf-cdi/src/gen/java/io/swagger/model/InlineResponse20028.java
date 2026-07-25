package io.swagger.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import javax.validation.constraints.*;

import io.swagger.v3.oas.annotations.media.Schema;
import java.util.Objects;

import javax.xml.bind.annotation.*;



public class InlineResponse20028   {
  private String text = null;
  private Integer ticket = null;

  /**
   * Confirmation message.
   **/
  public InlineResponse20028 text(String text) {
    this.text = text;
    return this;
  }

  
  
  @Schema(description = "Confirmation message.")
  @JsonProperty("text")
  @NotNull
  public String getText() {
    return text;
  }
  public void setText(String text) {
    this.text = text;
  }

  /**
   * The support ticket ID created for tracking the migration. Use this with &#x60;/tickets/{id}&#x60; to check migration progress.
   **/
  public InlineResponse20028 ticket(Integer ticket) {
    this.ticket = ticket;
    return this;
  }

  
  
  @Schema(description = "The support ticket ID created for tracking the migration. Use this with `/tickets/{id}` to check migration progress.")
  @JsonProperty("ticket")
  @NotNull
  public Integer getTicket() {
    return ticket;
  }
  public void setTicket(Integer ticket) {
    this.ticket = ticket;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20028 inlineResponse20028 = (InlineResponse20028) o;
    return Objects.equals(text, inlineResponse20028.text) &&
        Objects.equals(ticket, inlineResponse20028.ticket);
  }

  @Override
  public int hashCode() {
    return Objects.hash(text, ticket);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20028 {\n");
    
    sb.append("    text: ").append(toIndentedString(text)).append("\n");
    sb.append("    ticket: ").append(toIndentedString(ticket)).append("\n");
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
