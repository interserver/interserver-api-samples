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
 * (optional) File attachments to include in the email.  The file contents must be base64
 */
@Schema(description = "(optional) File attachments to include in the email.  The file contents must be base64")
@Validated
@NotUndefined



public class MailAttachment   {
  @JsonProperty("filename")

  private String filename = null;

  @JsonProperty("data")

  private String data = null;


  public MailAttachment filename(String filename) { 

    this.filename = filename;
    return this;
  }

  /**
   * The filename of the attached file.
   * @return filename
   **/
  
  @Schema(example = "message.txt", required = true, description = "The filename of the attached file.")
  
  @NotNull
  public String getFilename() {  
    return filename;
  }



  public void setFilename(String filename) { 

    this.filename = filename;
  }

  public MailAttachment data(String data) { 

    this.data = data;
    return this;
  }

  /**
   * The file contents base64 encoded
   * @return data
   **/
  
  @Schema(example = "aGVsbG8gdGhlcmUK", required = true, description = "The file contents base64 encoded")
  
  @NotNull
  public String getData() {  
    return data;
  }



  public void setData(String data) { 

    this.data = data;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    MailAttachment mailAttachment = (MailAttachment) o;
    return Objects.equals(this.filename, mailAttachment.filename) &&
        Objects.equals(this.data, mailAttachment.data);
  }

  @Override
  public int hashCode() {
    return Objects.hash(filename, data);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class MailAttachment {\n");
    
    sb.append("    filename: ").append(toIndentedString(filename)).append("\n");
    sb.append("    data: ").append(toIndentedString(data)).append("\n");
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
