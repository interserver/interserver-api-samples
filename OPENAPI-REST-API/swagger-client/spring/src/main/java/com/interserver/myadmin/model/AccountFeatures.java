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
 * Account Features data.
 */
@Schema(description = "Account Features data.")
@Validated
@NotUndefined



public class AccountFeatures   {
  @JsonProperty("disable_reset")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer disableReset = null;

  @JsonProperty("disable_reinstall")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer disableReinstall = null;


  public AccountFeatures disableReset(Integer disableReset) { 

    this.disableReset = disableReset;
    return this;
  }

  /**
   * Get disableReset
   * @return disableReset
   **/
  
  @Schema(description = "")
  
  public Integer getDisableReset() {  
    return disableReset;
  }



  public void setDisableReset(Integer disableReset) { 
    this.disableReset = disableReset;
  }

  public AccountFeatures disableReinstall(Integer disableReinstall) { 

    this.disableReinstall = disableReinstall;
    return this;
  }

  /**
   * Get disableReinstall
   * @return disableReinstall
   **/
  
  @Schema(description = "")
  
  public Integer getDisableReinstall() {  
    return disableReinstall;
  }



  public void setDisableReinstall(Integer disableReinstall) { 
    this.disableReinstall = disableReinstall;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    AccountFeatures accountFeatures = (AccountFeatures) o;
    return Objects.equals(this.disableReset, accountFeatures.disableReset) &&
        Objects.equals(this.disableReinstall, accountFeatures.disableReinstall);
  }

  @Override
  public int hashCode() {
    return Objects.hash(disableReset, disableReinstall);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AccountFeatures {\n");
    
    sb.append("    disableReset: ").append(toIndentedString(disableReset)).append("\n");
    sb.append("    disableReinstall: ").append(toIndentedString(disableReinstall)).append("\n");
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
