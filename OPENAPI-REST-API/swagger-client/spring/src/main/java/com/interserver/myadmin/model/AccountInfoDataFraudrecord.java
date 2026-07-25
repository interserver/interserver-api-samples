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
 * AccountInfoDataFraudrecord
 */
@Validated
@NotUndefined



public class AccountInfoDataFraudrecord   {
  @JsonProperty("score")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String score = null;

  @JsonProperty("count")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String count = null;

  @JsonProperty("reliability")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String reliability = null;

  @JsonProperty("code")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String code = null;


  public AccountInfoDataFraudrecord score(String score) { 

    this.score = score;
    return this;
  }

  /**
   * Get score
   * @return score
   **/
  
  @Schema(description = "")
  
  public String getScore() {  
    return score;
  }



  public void setScore(String score) { 
    this.score = score;
  }

  public AccountInfoDataFraudrecord count(String count) { 

    this.count = count;
    return this;
  }

  /**
   * Get count
   * @return count
   **/
  
  @Schema(description = "")
  
  public String getCount() {  
    return count;
  }



  public void setCount(String count) { 
    this.count = count;
  }

  public AccountInfoDataFraudrecord reliability(String reliability) { 

    this.reliability = reliability;
    return this;
  }

  /**
   * Get reliability
   * @return reliability
   **/
  
  @Schema(description = "")
  
  public String getReliability() {  
    return reliability;
  }



  public void setReliability(String reliability) { 
    this.reliability = reliability;
  }

  public AccountInfoDataFraudrecord code(String code) { 

    this.code = code;
    return this;
  }

  /**
   * Get code
   * @return code
   **/
  
  @Schema(description = "")
  
  public String getCode() {  
    return code;
  }



  public void setCode(String code) { 
    this.code = code;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    AccountInfoDataFraudrecord accountInfoDataFraudrecord = (AccountInfoDataFraudrecord) o;
    return Objects.equals(this.score, accountInfoDataFraudrecord.score) &&
        Objects.equals(this.count, accountInfoDataFraudrecord.count) &&
        Objects.equals(this.reliability, accountInfoDataFraudrecord.reliability) &&
        Objects.equals(this.code, accountInfoDataFraudrecord.code);
  }

  @Override
  public int hashCode() {
    return Objects.hash(score, count, reliability, code);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AccountInfoDataFraudrecord {\n");
    
    sb.append("    score: ").append(toIndentedString(score)).append("\n");
    sb.append("    count: ").append(toIndentedString(count)).append("\n");
    sb.append("    reliability: ").append(toIndentedString(reliability)).append("\n");
    sb.append("    code: ").append(toIndentedString(code)).append("\n");
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
