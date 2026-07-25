package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.VpsTrafficDataSectionResponse;
import com.interserver.myadmin.model.VpsTrafficHistoryResponse;
import com.interserver.myadmin.model.VpsTrafficTotalsResposne;
import com.interserver.myadmin.model.VpsTrafficUsageResponse;
import io.swagger.v3.oas.annotations.media.Schema;
import java.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.List;
import org.springframework.validation.annotation.Validated;
import org.openapitools.jackson.nullable.JsonNullable;
import io.swagger.configuration.NotUndefined;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.Nulls;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * VPS Traffic Information
 */
@Schema(description = "VPS Traffic Information")
@Validated
@NotUndefined



public class VpsTrafficResponse   {
  @JsonProperty("name")

  private String name = null;

  @JsonProperty("target")

  private String target = null;

  @JsonProperty("interval")

  private Integer interval = null;

  @JsonProperty("history")

  private VpsTrafficHistoryResponse history = null;

  @JsonProperty("last")

  private OffsetDateTime last = null;

  @JsonProperty("times")
  @Valid
  private List<OffsetDateTime> times = new ArrayList<>();
  @JsonProperty("totals")

  private VpsTrafficTotalsResposne totals = null;

  @JsonProperty("usage")

  private VpsTrafficUsageResponse usage = null;

  @JsonProperty("data")
  @Valid
  private List<VpsTrafficDataSectionResponse> data = new ArrayList<>();

  public VpsTrafficResponse name(String name) { 

    this.name = name;
    return this;
  }

  /**
   * Get name
   * @return name
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public String getName() {  
    return name;
  }



  public void setName(String name) { 

    this.name = name;
  }

  public VpsTrafficResponse target(String target) { 

    this.target = target;
    return this;
  }

  /**
   * Get target
   * @return target
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public String getTarget() {  
    return target;
  }



  public void setTarget(String target) { 

    this.target = target;
  }

  public VpsTrafficResponse interval(Integer interval) { 

    this.interval = interval;
    return this;
  }

  /**
   * Get interval
   * @return interval
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public Integer getInterval() {  
    return interval;
  }



  public void setInterval(Integer interval) { 

    this.interval = interval;
  }

  public VpsTrafficResponse history(VpsTrafficHistoryResponse history) { 

    this.history = history;
    return this;
  }

  /**
   * Get history
   * @return history
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public VpsTrafficHistoryResponse getHistory() {  
    return history;
  }



  public void setHistory(VpsTrafficHistoryResponse history) { 

    this.history = history;
  }

  public VpsTrafficResponse last(OffsetDateTime last) { 

    this.last = last;
    return this;
  }

  /**
   * Get last
   * @return last
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public OffsetDateTime getLast() {  
    return last;
  }



  public void setLast(OffsetDateTime last) { 

    this.last = last;
  }

  public VpsTrafficResponse times(List<OffsetDateTime> times) { 

    this.times = times;
    return this;
  }

  public VpsTrafficResponse addTimesItem(OffsetDateTime timesItem) {
    this.times.add(timesItem);
    return this;
  }

  /**
   * Get times
   * @return times
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public List<OffsetDateTime> getTimes() {  
    return times;
  }



  public void setTimes(List<OffsetDateTime> times) { 

    this.times = times;
  }

  public VpsTrafficResponse totals(VpsTrafficTotalsResposne totals) { 

    this.totals = totals;
    return this;
  }

  /**
   * Get totals
   * @return totals
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public VpsTrafficTotalsResposne getTotals() {  
    return totals;
  }



  public void setTotals(VpsTrafficTotalsResposne totals) { 

    this.totals = totals;
  }

  public VpsTrafficResponse usage(VpsTrafficUsageResponse usage) { 

    this.usage = usage;
    return this;
  }

  /**
   * Get usage
   * @return usage
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public VpsTrafficUsageResponse getUsage() {  
    return usage;
  }



  public void setUsage(VpsTrafficUsageResponse usage) { 

    this.usage = usage;
  }

  public VpsTrafficResponse data(List<VpsTrafficDataSectionResponse> data) { 

    this.data = data;
    return this;
  }

  public VpsTrafficResponse addDataItem(VpsTrafficDataSectionResponse dataItem) {
    this.data.add(dataItem);
    return this;
  }

  /**
   * Get data
   * @return data
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public List<VpsTrafficDataSectionResponse> getData() {  
    return data;
  }



  public void setData(List<VpsTrafficDataSectionResponse> data) { 

    this.data = data;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    VpsTrafficResponse vpsTrafficResponse = (VpsTrafficResponse) o;
    return Objects.equals(this.name, vpsTrafficResponse.name) &&
        Objects.equals(this.target, vpsTrafficResponse.target) &&
        Objects.equals(this.interval, vpsTrafficResponse.interval) &&
        Objects.equals(this.history, vpsTrafficResponse.history) &&
        Objects.equals(this.last, vpsTrafficResponse.last) &&
        Objects.equals(this.times, vpsTrafficResponse.times) &&
        Objects.equals(this.totals, vpsTrafficResponse.totals) &&
        Objects.equals(this.usage, vpsTrafficResponse.usage) &&
        Objects.equals(this.data, vpsTrafficResponse.data);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, target, interval, history, last, times, totals, usage, data);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class VpsTrafficResponse {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    target: ").append(toIndentedString(target)).append("\n");
    sb.append("    interval: ").append(toIndentedString(interval)).append("\n");
    sb.append("    history: ").append(toIndentedString(history)).append("\n");
    sb.append("    last: ").append(toIndentedString(last)).append("\n");
    sb.append("    times: ").append(toIndentedString(times)).append("\n");
    sb.append("    totals: ").append(toIndentedString(totals)).append("\n");
    sb.append("    usage: ").append(toIndentedString(usage)).append("\n");
    sb.append("    data: ").append(toIndentedString(data)).append("\n");
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
