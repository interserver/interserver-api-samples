package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.MonthlyCounts;
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
 * Monthly mail delivery status breakdown, showing counts per status category.
 */
@Schema(description = "Monthly mail delivery status breakdown, showing counts per status category.")
@Validated
@NotUndefined



public class StatusMonthlyBreakdown   {
  @JsonProperty("default")

  private MonthlyCounts _default = null;

  @JsonProperty("failed")

  private MonthlyCounts failed = null;

  @JsonProperty("rejected")

  private MonthlyCounts rejected = null;

  @JsonProperty("pending")

  private MonthlyCounts pending = null;

  @JsonProperty("locked")

  private MonthlyCounts locked = null;

  @JsonProperty("paid")

  private MonthlyCounts paid = null;


  public StatusMonthlyBreakdown _default(MonthlyCounts _default) { 

    this._default = _default;
    return this;
  }

  /**
   * Get _default
   * @return _default
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public MonthlyCounts getDefault() {  
    return _default;
  }



  public void setDefault(MonthlyCounts _default) { 

    this._default = _default;
  }

  public StatusMonthlyBreakdown failed(MonthlyCounts failed) { 

    this.failed = failed;
    return this;
  }

  /**
   * Get failed
   * @return failed
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public MonthlyCounts getFailed() {  
    return failed;
  }



  public void setFailed(MonthlyCounts failed) { 

    this.failed = failed;
  }

  public StatusMonthlyBreakdown rejected(MonthlyCounts rejected) { 

    this.rejected = rejected;
    return this;
  }

  /**
   * Get rejected
   * @return rejected
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public MonthlyCounts getRejected() {  
    return rejected;
  }



  public void setRejected(MonthlyCounts rejected) { 

    this.rejected = rejected;
  }

  public StatusMonthlyBreakdown pending(MonthlyCounts pending) { 

    this.pending = pending;
    return this;
  }

  /**
   * Get pending
   * @return pending
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public MonthlyCounts getPending() {  
    return pending;
  }



  public void setPending(MonthlyCounts pending) { 

    this.pending = pending;
  }

  public StatusMonthlyBreakdown locked(MonthlyCounts locked) { 

    this.locked = locked;
    return this;
  }

  /**
   * Get locked
   * @return locked
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public MonthlyCounts getLocked() {  
    return locked;
  }



  public void setLocked(MonthlyCounts locked) { 

    this.locked = locked;
  }

  public StatusMonthlyBreakdown paid(MonthlyCounts paid) { 

    this.paid = paid;
    return this;
  }

  /**
   * Get paid
   * @return paid
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public MonthlyCounts getPaid() {  
    return paid;
  }



  public void setPaid(MonthlyCounts paid) { 

    this.paid = paid;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    StatusMonthlyBreakdown statusMonthlyBreakdown = (StatusMonthlyBreakdown) o;
    return Objects.equals(this._default, statusMonthlyBreakdown._default) &&
        Objects.equals(this.failed, statusMonthlyBreakdown.failed) &&
        Objects.equals(this.rejected, statusMonthlyBreakdown.rejected) &&
        Objects.equals(this.pending, statusMonthlyBreakdown.pending) &&
        Objects.equals(this.locked, statusMonthlyBreakdown.locked) &&
        Objects.equals(this.paid, statusMonthlyBreakdown.paid);
  }

  @Override
  public int hashCode() {
    return Objects.hash(_default, failed, rejected, pending, locked, paid);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class StatusMonthlyBreakdown {\n");
    
    sb.append("    _default: ").append(toIndentedString(_default)).append("\n");
    sb.append("    failed: ").append(toIndentedString(failed)).append("\n");
    sb.append("    rejected: ").append(toIndentedString(rejected)).append("\n");
    sb.append("    pending: ").append(toIndentedString(pending)).append("\n");
    sb.append("    locked: ").append(toIndentedString(locked)).append("\n");
    sb.append("    paid: ").append(toIndentedString(paid)).append("\n");
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
