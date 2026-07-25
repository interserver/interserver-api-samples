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
 * QuickserverOrderServerDetails381
 */
@Validated
@NotUndefined



public class QuickserverOrderServerDetails381   {
  @JsonProperty("cpu")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String cpu = null;

  @JsonProperty("ram")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ram = null;

  @JsonProperty("hd")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String hd = null;

  @JsonProperty("cores")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer cores = null;

  @JsonProperty("cost")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String cost = null;


  public QuickserverOrderServerDetails381 cpu(String cpu) { 

    this.cpu = cpu;
    return this;
  }

  /**
   * CPU details of the server.
   * @return cpu
   **/
  
  @Schema(example = "AMD Ryzen 9 5900X 12-Core Processor", description = "CPU details of the server.")
  
  public String getCpu() {  
    return cpu;
  }



  public void setCpu(String cpu) { 
    this.cpu = cpu;
  }

  public QuickserverOrderServerDetails381 ram(String ram) { 

    this.ram = ram;
    return this;
  }

  /**
   * RAM capacity of the server.
   * @return ram
   **/
  
  @Schema(example = "119GB", description = "RAM capacity of the server.")
  
  public String getRam() {  
    return ram;
  }



  public void setRam(String ram) { 
    this.ram = ram;
  }

  public QuickserverOrderServerDetails381 hd(String hd) { 

    this.hd = hd;
    return this;
  }

  /**
   * Hard disk capacity of the server.
   * @return hd
   **/
  
  @Schema(example = "1760GB", description = "Hard disk capacity of the server.")
  
  public String getHd() {  
    return hd;
  }



  public void setHd(String hd) { 
    this.hd = hd;
  }

  public QuickserverOrderServerDetails381 cores(Integer cores) { 

    this.cores = cores;
    return this;
  }

  /**
   * Number of CPU cores.
   * @return cores
   **/
  
  @Schema(example = "24", description = "Number of CPU cores.")
  
  public Integer getCores() {  
    return cores;
  }



  public void setCores(Integer cores) { 
    this.cores = cores;
  }

  public QuickserverOrderServerDetails381 cost(String cost) { 

    this.cost = cost;
    return this;
  }

  /**
   * Cost of the server.
   * @return cost
   **/
  
  @Schema(example = "$140.00", description = "Cost of the server.")
  
  public String getCost() {  
    return cost;
  }



  public void setCost(String cost) { 
    this.cost = cost;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    QuickserverOrderServerDetails381 quickserverOrderServerDetails381 = (QuickserverOrderServerDetails381) o;
    return Objects.equals(this.cpu, quickserverOrderServerDetails381.cpu) &&
        Objects.equals(this.ram, quickserverOrderServerDetails381.ram) &&
        Objects.equals(this.hd, quickserverOrderServerDetails381.hd) &&
        Objects.equals(this.cores, quickserverOrderServerDetails381.cores) &&
        Objects.equals(this.cost, quickserverOrderServerDetails381.cost);
  }

  @Override
  public int hashCode() {
    return Objects.hash(cpu, ram, hd, cores, cost);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class QuickserverOrderServerDetails381 {\n");
    
    sb.append("    cpu: ").append(toIndentedString(cpu)).append("\n");
    sb.append("    ram: ").append(toIndentedString(ram)).append("\n");
    sb.append("    hd: ").append(toIndentedString(hd)).append("\n");
    sb.append("    cores: ").append(toIndentedString(cores)).append("\n");
    sb.append("    cost: ").append(toIndentedString(cost)).append("\n");
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
