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
 * AccountInfoLimitsInner
 */
@Validated
@NotUndefined



public class AccountInfoLimitsInner   {
  @JsonProperty("start")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String start = null;

  @JsonProperty("end")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String end = null;


  public AccountInfoLimitsInner start(String start) { 

    this.start = start;
    return this;
  }

  /**
   * Get start
   * @return start
   **/
  
  @Schema(description = "")
  
  public String getStart() {  
    return start;
  }



  public void setStart(String start) { 
    this.start = start;
  }

  public AccountInfoLimitsInner end(String end) { 

    this.end = end;
    return this;
  }

  /**
   * Get end
   * @return end
   **/
  
  @Schema(description = "")
  
  public String getEnd() {  
    return end;
  }



  public void setEnd(String end) { 
    this.end = end;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    AccountInfoLimitsInner accountInfoLimitsInner = (AccountInfoLimitsInner) o;
    return Objects.equals(this.start, accountInfoLimitsInner.start) &&
        Objects.equals(this.end, accountInfoLimitsInner.end);
  }

  @Override
  public int hashCode() {
    return Objects.hash(start, end);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AccountInfoLimitsInner {\n");
    
    sb.append("    start: ").append(toIndentedString(start)).append("\n");
    sb.append("    end: ").append(toIndentedString(end)).append("\n");
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
