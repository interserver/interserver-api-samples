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
 * TicketsCountArray
 */
@Validated
@NotUndefined



public class TicketsCountArray   {
  @JsonProperty("Open")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer open = null;

  @JsonProperty("On Hold")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer onHold = null;

  @JsonProperty("Closed")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer closed = null;


  public TicketsCountArray open(Integer open) { 

    this.open = open;
    return this;
  }

  /**
   * Get open
   * @return open
   **/
  
  @Schema(description = "")
  
  public Integer getOpen() {  
    return open;
  }



  public void setOpen(Integer open) { 
    this.open = open;
  }

  public TicketsCountArray onHold(Integer onHold) { 

    this.onHold = onHold;
    return this;
  }

  /**
   * Get onHold
   * @return onHold
   **/
  
  @Schema(description = "")
  
  public Integer getOnHold() {  
    return onHold;
  }



  public void setOnHold(Integer onHold) { 
    this.onHold = onHold;
  }

  public TicketsCountArray closed(Integer closed) { 

    this.closed = closed;
    return this;
  }

  /**
   * Get closed
   * @return closed
   **/
  
  @Schema(description = "")
  
  public Integer getClosed() {  
    return closed;
  }



  public void setClosed(Integer closed) { 
    this.closed = closed;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    TicketsCountArray ticketsCountArray = (TicketsCountArray) o;
    return Objects.equals(this.open, ticketsCountArray.open) &&
        Objects.equals(this.onHold, ticketsCountArray.onHold) &&
        Objects.equals(this.closed, ticketsCountArray.closed);
  }

  @Override
  public int hashCode() {
    return Objects.hash(open, onHold, closed);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class TicketsCountArray {\n");
    
    sb.append("    open: ").append(toIndentedString(open)).append("\n");
    sb.append("    onHold: ").append(toIndentedString(onHold)).append("\n");
    sb.append("    closed: ").append(toIndentedString(closed)).append("\n");
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
