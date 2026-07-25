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
 * Ticket statuses with view numbers.
 */
@Schema(description = "Ticket statuses with view numbers.")
@Validated
@NotUndefined



public class HomeTicketStatusView   {
  @JsonProperty("4")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String _4 = null;

  @JsonProperty("5")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String _5 = null;

  @JsonProperty("6")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String _6 = null;


  public HomeTicketStatusView _4(String _4) { 

    this._4 = _4;
    return this;
  }

  /**
   * Status corresponding to view number 4.
   * @return _4
   **/
  
  @Schema(example = "Open", description = "Status corresponding to view number 4.")
  
  public String get4() {  
    return _4;
  }



  public void set4(String _4) { 
    this._4 = _4;
  }

  public HomeTicketStatusView _5(String _5) { 

    this._5 = _5;
    return this;
  }

  /**
   * Status corresponding to view number 5.
   * @return _5
   **/
  
  @Schema(example = "On Hold", description = "Status corresponding to view number 5.")
  
  public String get5() {  
    return _5;
  }



  public void set5(String _5) { 
    this._5 = _5;
  }

  public HomeTicketStatusView _6(String _6) { 

    this._6 = _6;
    return this;
  }

  /**
   * Status corresponding to view number 6.
   * @return _6
   **/
  
  @Schema(example = "Closed", description = "Status corresponding to view number 6.")
  
  public String get6() {  
    return _6;
  }



  public void set6(String _6) { 
    this._6 = _6;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    HomeTicketStatusView homeTicketStatusView = (HomeTicketStatusView) o;
    return Objects.equals(this._4, homeTicketStatusView._4) &&
        Objects.equals(this._5, homeTicketStatusView._5) &&
        Objects.equals(this._6, homeTicketStatusView._6);
  }

  @Override
  public int hashCode() {
    return Objects.hash(_4, _5, _6);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class HomeTicketStatusView {\n");
    
    sb.append("    _4: ").append(toIndentedString(_4)).append("\n");
    sb.append("    _5: ").append(toIndentedString(_5)).append("\n");
    sb.append("    _6: ").append(toIndentedString(_6)).append("\n");
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
