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
 * LoginSubmissionExampleGrecaptcharesponseDep
 */
@Validated
@NotUndefined



public class LoginSubmissionExampleGrecaptcharesponseDep   {
  @JsonProperty("w")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer w = null;

  @JsonProperty("n")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer n = null;


  public LoginSubmissionExampleGrecaptcharesponseDep w(Integer w) { 

    this.w = w;
    return this;
  }

  /**
   * Get w
   * @return w
   **/
  
  @Schema(description = "")
  
  public Integer getW() {  
    return w;
  }



  public void setW(Integer w) { 
    this.w = w;
  }

  public LoginSubmissionExampleGrecaptcharesponseDep n(Integer n) { 

    this.n = n;
    return this;
  }

  /**
   * Get n
   * @return n
   **/
  
  @Schema(description = "")
  
  public Integer getN() {  
    return n;
  }



  public void setN(Integer n) { 
    this.n = n;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    LoginSubmissionExampleGrecaptcharesponseDep loginSubmissionExampleGrecaptcharesponseDep = (LoginSubmissionExampleGrecaptcharesponseDep) o;
    return Objects.equals(this.w, loginSubmissionExampleGrecaptcharesponseDep.w) &&
        Objects.equals(this.n, loginSubmissionExampleGrecaptcharesponseDep.n);
  }

  @Override
  public int hashCode() {
    return Objects.hash(w, n);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class LoginSubmissionExampleGrecaptcharesponseDep {\n");
    
    sb.append("    w: ").append(toIndentedString(w)).append("\n");
    sb.append("    n: ").append(toIndentedString(n)).append("\n");
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
