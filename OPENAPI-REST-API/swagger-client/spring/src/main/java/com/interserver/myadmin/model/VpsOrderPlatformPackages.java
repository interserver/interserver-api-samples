package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;
import java.math.BigDecimal;
import org.springframework.validation.annotation.Validated;
import org.openapitools.jackson.nullable.JsonNullable;
import io.swagger.configuration.NotUndefined;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.Nulls;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * Platform Packages
 */
@Schema(description = "Platform Packages")
@Validated
@NotUndefined



public class VpsOrderPlatformPackages   {
  @JsonProperty("kvm")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private BigDecimal kvm = null;

  @JsonProperty("kvmstorage")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private BigDecimal kvmstorage = null;

  @JsonProperty("hyperv")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private BigDecimal hyperv = null;


  public VpsOrderPlatformPackages kvm(BigDecimal kvm) { 

    this.kvm = kvm;
    return this;
  }

  /**
   * Get kvm
   * @return kvm
   **/
  
  @Schema(example = "32", description = "")
  
@Valid
  public BigDecimal getKvm() {  
    return kvm;
  }



  public void setKvm(BigDecimal kvm) { 
    this.kvm = kvm;
  }

  public VpsOrderPlatformPackages kvmstorage(BigDecimal kvmstorage) { 

    this.kvmstorage = kvmstorage;
    return this;
  }

  /**
   * Get kvmstorage
   * @return kvmstorage
   **/
  
  @Schema(example = "57", description = "")
  
@Valid
  public BigDecimal getKvmstorage() {  
    return kvmstorage;
  }



  public void setKvmstorage(BigDecimal kvmstorage) { 
    this.kvmstorage = kvmstorage;
  }

  public VpsOrderPlatformPackages hyperv(BigDecimal hyperv) { 

    this.hyperv = hyperv;
    return this;
  }

  /**
   * Get hyperv
   * @return hyperv
   **/
  
  @Schema(example = "54", description = "")
  
@Valid
  public BigDecimal getHyperv() {  
    return hyperv;
  }



  public void setHyperv(BigDecimal hyperv) { 
    this.hyperv = hyperv;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    VpsOrderPlatformPackages vpsOrderPlatformPackages = (VpsOrderPlatformPackages) o;
    return Objects.equals(this.kvm, vpsOrderPlatformPackages.kvm) &&
        Objects.equals(this.kvmstorage, vpsOrderPlatformPackages.kvmstorage) &&
        Objects.equals(this.hyperv, vpsOrderPlatformPackages.hyperv);
  }

  @Override
  public int hashCode() {
    return Objects.hash(kvm, kvmstorage, hyperv);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class VpsOrderPlatformPackages {\n");
    
    sb.append("    kvm: ").append(toIndentedString(kvm)).append("\n");
    sb.append("    kvmstorage: ").append(toIndentedString(kvmstorage)).append("\n");
    sb.append("    hyperv: ").append(toIndentedString(hyperv)).append("\n");
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
