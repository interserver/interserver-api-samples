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
 * InlineResponse200
 */
@Validated
@NotUndefined



public class InlineResponse200   {
  @JsonProperty("2fa_google_key")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String _2faGoogleKey = null;

  @JsonProperty("2fa_google_split")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String _2faGoogleSplit = null;


  public InlineResponse200 _2faGoogleKey(String _2faGoogleKey) { 

    this._2faGoogleKey = _2faGoogleKey;
    return this;
  }

  /**
   * Base64-encoded secret key for TOTP setup.
   * @return _2faGoogleKey
   **/
  
  @Schema(description = "Base64-encoded secret key for TOTP setup.")
  
  public String get2faGoogleKey() {  
    return _2faGoogleKey;
  }



  public void set2faGoogleKey(String _2faGoogleKey) { 
    this._2faGoogleKey = _2faGoogleKey;
  }

  public InlineResponse200 _2faGoogleSplit(String _2faGoogleSplit) { 

    this._2faGoogleSplit = _2faGoogleSplit;
    return this;
  }

  /**
   * Human-readable formatted key (chunks of 4 characters).
   * @return _2faGoogleSplit
   **/
  
  @Schema(description = "Human-readable formatted key (chunks of 4 characters).")
  
  public String get2faGoogleSplit() {  
    return _2faGoogleSplit;
  }



  public void set2faGoogleSplit(String _2faGoogleSplit) { 
    this._2faGoogleSplit = _2faGoogleSplit;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse200 inlineResponse200 = (InlineResponse200) o;
    return Objects.equals(this._2faGoogleKey, inlineResponse200._2faGoogleKey) &&
        Objects.equals(this._2faGoogleSplit, inlineResponse200._2faGoogleSplit);
  }

  @Override
  public int hashCode() {
    return Objects.hash(_2faGoogleKey, _2faGoogleSplit);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse200 {\n");
    
    sb.append("    _2faGoogleKey: ").append(toIndentedString(_2faGoogleKey)).append("\n");
    sb.append("    _2faGoogleSplit: ").append(toIndentedString(_2faGoogleSplit)).append("\n");
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
