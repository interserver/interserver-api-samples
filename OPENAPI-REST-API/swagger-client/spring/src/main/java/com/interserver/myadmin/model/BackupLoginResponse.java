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
 * Login session response for backup storage.
 */
@Schema(description = "Login session response for backup storage.")
@Validated
@NotUndefined



public class BackupLoginResponse   {
  @JsonProperty("success")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Boolean success = null;

  @JsonProperty("text")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String text = null;


  public BackupLoginResponse success(Boolean success) { 

    this.success = success;
    return this;
  }

  /**
   * Indicates whether a login session was created.
   * @return success
   **/
  
  @Schema(description = "Indicates whether a login session was created.")
  
  public Boolean isSuccess() {  
    return success;
  }



  public void setSuccess(Boolean success) { 
    this.success = success;
  }

  public BackupLoginResponse text(String text) { 

    this.text = text;
    return this;
  }

  /**
   * Login URL or error text returned by the storage provider.
   * @return text
   **/
  
  @Schema(description = "Login URL or error text returned by the storage provider.")
  
  public String getText() {  
    return text;
  }



  public void setText(String text) { 
    this.text = text;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    BackupLoginResponse backupLoginResponse = (BackupLoginResponse) o;
    return Objects.equals(this.success, backupLoginResponse.success) &&
        Objects.equals(this.text, backupLoginResponse.text);
  }

  @Override
  public int hashCode() {
    return Objects.hash(success, text);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class BackupLoginResponse {\n");
    
    sb.append("    success: ").append(toIndentedString(success)).append("\n");
    sb.append("    text: ").append(toIndentedString(text)).append("\n");
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
