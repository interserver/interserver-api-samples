package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class VpsOrderLocationStock1  {
  
  @ApiModelProperty(example = "true", value = "")

  private Boolean kvm;

  @ApiModelProperty(example = "true", value = "")

  private Boolean kvmstorage;

  @ApiModelProperty(example = "true", value = "")

  private Boolean hyperv;
 /**
   * Get kvm
   * @return kvm
  **/
  @JsonProperty("kvm")
  public Boolean isKvm() {
    return kvm;
  }

  public void setKvm(Boolean kvm) {
    this.kvm = kvm;
  }

  public VpsOrderLocationStock1 kvm(Boolean kvm) {
    this.kvm = kvm;
    return this;
  }

 /**
   * Get kvmstorage
   * @return kvmstorage
  **/
  @JsonProperty("kvmstorage")
  public Boolean isKvmstorage() {
    return kvmstorage;
  }

  public void setKvmstorage(Boolean kvmstorage) {
    this.kvmstorage = kvmstorage;
  }

  public VpsOrderLocationStock1 kvmstorage(Boolean kvmstorage) {
    this.kvmstorage = kvmstorage;
    return this;
  }

 /**
   * Get hyperv
   * @return hyperv
  **/
  @JsonProperty("hyperv")
  public Boolean isHyperv() {
    return hyperv;
  }

  public void setHyperv(Boolean hyperv) {
    this.hyperv = hyperv;
  }

  public VpsOrderLocationStock1 hyperv(Boolean hyperv) {
    this.hyperv = hyperv;
    return this;
  }

  @Override
  public boolean equals(Object o) {
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
  private static String toIndentedString(Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}

