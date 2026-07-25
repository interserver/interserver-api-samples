package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.VpsPleskLicense;
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
 * VpsPlesk12Data
 */
@Validated
@NotUndefined



public class VpsPlesk12Data   {
  @JsonProperty("admin")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private VpsPleskLicense admin = null;

  @JsonProperty("pro")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private VpsPleskLicense pro = null;

  @JsonProperty("host")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private VpsPleskLicense host = null;


  public VpsPlesk12Data admin(VpsPleskLicense admin) { 

    this.admin = admin;
    return this;
  }

  /**
   * Get admin
   * @return admin
   **/
  
  @Schema(description = "")
  
@Valid
  public VpsPleskLicense getAdmin() {  
    return admin;
  }



  public void setAdmin(VpsPleskLicense admin) { 
    this.admin = admin;
  }

  public VpsPlesk12Data pro(VpsPleskLicense pro) { 

    this.pro = pro;
    return this;
  }

  /**
   * Get pro
   * @return pro
   **/
  
  @Schema(description = "")
  
@Valid
  public VpsPleskLicense getPro() {  
    return pro;
  }



  public void setPro(VpsPleskLicense pro) { 
    this.pro = pro;
  }

  public VpsPlesk12Data host(VpsPleskLicense host) { 

    this.host = host;
    return this;
  }

  /**
   * Get host
   * @return host
   **/
  
  @Schema(description = "")
  
@Valid
  public VpsPleskLicense getHost() {  
    return host;
  }



  public void setHost(VpsPleskLicense host) { 
    this.host = host;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    VpsPlesk12Data vpsPlesk12Data = (VpsPlesk12Data) o;
    return Objects.equals(this.admin, vpsPlesk12Data.admin) &&
        Objects.equals(this.pro, vpsPlesk12Data.pro) &&
        Objects.equals(this.host, vpsPlesk12Data.host);
  }

  @Override
  public int hashCode() {
    return Objects.hash(admin, pro, host);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class VpsPlesk12Data {\n");
    
    sb.append("    admin: ").append(toIndentedString(admin)).append("\n");
    sb.append("    pro: ").append(toIndentedString(pro)).append("\n");
    sb.append("    host: ").append(toIndentedString(host)).append("\n");
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
