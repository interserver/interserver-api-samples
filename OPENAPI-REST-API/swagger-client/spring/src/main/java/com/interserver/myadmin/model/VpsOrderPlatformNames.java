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
 * Platform Names
 */
@Schema(description = "Platform Names")
@Validated
@NotUndefined



public class VpsOrderPlatformNames   {
  @JsonProperty("kvm")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String kvm = null;

  @JsonProperty("kvmstorage")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String kvmstorage = null;

  @JsonProperty("hyperv")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String hyperv = null;


  public VpsOrderPlatformNames kvm(String kvm) { 

    this.kvm = kvm;
    return this;
  }

  /**
   * Get kvm
   * @return kvm
   **/
  
  @Schema(example = "KVM", description = "")
  
  public String getKvm() {  
    return kvm;
  }



  public void setKvm(String kvm) { 
    this.kvm = kvm;
  }

  public VpsOrderPlatformNames kvmstorage(String kvmstorage) { 

    this.kvmstorage = kvmstorage;
    return this;
  }

  /**
   * Get kvmstorage
   * @return kvmstorage
   **/
  
  @Schema(example = "KVM Storage", description = "")
  
  public String getKvmstorage() {  
    return kvmstorage;
  }



  public void setKvmstorage(String kvmstorage) { 
    this.kvmstorage = kvmstorage;
  }

  public VpsOrderPlatformNames hyperv(String hyperv) { 

    this.hyperv = hyperv;
    return this;
  }

  /**
   * Get hyperv
   * @return hyperv
   **/
  
  @Schema(example = "HyperV", description = "")
  
  public String getHyperv() {  
    return hyperv;
  }



  public void setHyperv(String hyperv) { 
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
    VpsOrderPlatformNames vpsOrderPlatformNames = (VpsOrderPlatformNames) o;
    return Objects.equals(this.kvm, vpsOrderPlatformNames.kvm) &&
        Objects.equals(this.kvmstorage, vpsOrderPlatformNames.kvmstorage) &&
        Objects.equals(this.hyperv, vpsOrderPlatformNames.hyperv);
  }

  @Override
  public int hashCode() {
    return Objects.hash(kvm, kvmstorage, hyperv);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class VpsOrderPlatformNames {\n");
    
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
