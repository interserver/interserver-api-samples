package org.openapitools.model;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Login session response for backup storage.
 */
@ApiModel(description="Login session response for backup storage.")

public class BackupLoginResponse  {
  
 /**
  * Indicates whether a login session was created.
  */
  @ApiModelProperty(value = "Indicates whether a login session was created.")

  private Boolean success;

 /**
  * Login URL or error text returned by the storage provider.
  */
  @ApiModelProperty(value = "Login URL or error text returned by the storage provider.")

  private String text;
 /**
   * Indicates whether a login session was created.
   * @return success
  **/
  @JsonProperty("success")
  public Boolean isSuccess() {
    return success;
  }

  public void setSuccess(Boolean success) {
    this.success = success;
  }

  public BackupLoginResponse success(Boolean success) {
    this.success = success;
    return this;
  }

 /**
   * Login URL or error text returned by the storage provider.
   * @return text
  **/
  @JsonProperty("text")
  public String getText() {
    return text;
  }

  public void setText(String text) {
    this.text = text;
  }

  public BackupLoginResponse text(String text) {
    this.text = text;
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
  private static String toIndentedString(Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}

