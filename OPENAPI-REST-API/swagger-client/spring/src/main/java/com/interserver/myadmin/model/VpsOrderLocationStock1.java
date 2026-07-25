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
 * VpsOrderLocationStock1
 */
@Validated
@NotUndefined



public class VpsOrderLocationStock1   {
  @JsonProperty("kvm")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Boolean kvm = null;

  @JsonProperty("kvmstorage")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Boolean kvmstorage = null;

  @JsonProperty("hyperv")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Boolean hyperv = null;


  public VpsOrderLocationStock1 kvm(Boolean kvm) { 

    this.kvm = kvm;
    return this;
  }

  /**
   * Get kvm
   * @return kvm
   **/
  
  @Schema(example = "true", description = "")
  
  public Boolean isKvm() {  
    return kvm;
  }



  public void setKvm(Boolean kvm) { 
    this.kvm = kvm;
  }

  public VpsOrderLocationStock1 kvmstorage(Boolean kvmstorage) { 

    this.kvmstorage = kvmstorage;
    return this;
  }

  /**
   * Get kvmstorage
   * @return kvmstorage
   **/
  
  @Schema(example = "true", description = "")
  
  public Boolean isKvmstorage() {  
    return kvmstorage;
  }



  public void setKvmstorage(Boolean kvmstorage) { 
    this.kvmstorage = kvmstorage;
  }

  public VpsOrderLocationStock1 hyperv(Boolean hyperv) { 

    this.hyperv = hyperv;
    return this;
  }

  /**
   * Get hyperv
   * @return hyperv
   **/
  
  @Schema(example = "true", description = "")
  
  public Boolean isHyperv() {  
    return hyperv;
  }



  public void setHyperv(Boolean hyperv) { 
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
    VpsOrderLocationStock1 vpsOrderLocationStock1 = (VpsOrderLocationStock1) o;
    return Objects.equals(this.kvm, vpsOrderLocationStock1.kvm) &&
        Objects.equals(this.kvmstorage, vpsOrderLocationStock1.kvmstorage) &&
        Objects.equals(this.hyperv, vpsOrderLocationStock1.hyperv);
  }

  @Override
  public int hashCode() {
    return Objects.hash(kvm, kvmstorage, hyperv);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class VpsOrderLocationStock1 {\n");
    
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
