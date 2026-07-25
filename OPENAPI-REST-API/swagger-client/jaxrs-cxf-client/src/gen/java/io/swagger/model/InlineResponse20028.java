package io.swagger.model;


import io.swagger.v3.oas.annotations.media.Schema;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonCreator;

public class InlineResponse20028   {
  
  @Schema(description = "Confirmation message.")
 /**
   * Confirmation message.  
  **/
  private String text = null;
  
  @Schema(description = "The support ticket ID created for tracking the migration. Use this with `/tickets/{id}` to check migration progress.")
 /**
   * The support ticket ID created for tracking the migration. Use this with `/tickets/{id}` to check migration progress.  
  **/
  private Integer ticket = null;
 /**
   * Confirmation message.
   * @return text
  **/
  @JsonProperty("text")
  public String getText() {
    return text;
  }

  public void setText(String text) {
    this.text = text;
  }

  public InlineResponse20028 text(String text) {
    this.text = text;
    return this;
  }

 /**
   * The support ticket ID created for tracking the migration. Use this with &#x60;/tickets/{id}&#x60; to check migration progress.
   * @return ticket
  **/
  @JsonProperty("ticket")
  public Integer getTicket() {
    return ticket;
  }

  public void setTicket(Integer ticket) {
    this.ticket = ticket;
  }

  public InlineResponse20028 ticket(Integer ticket) {
    this.ticket = ticket;
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
