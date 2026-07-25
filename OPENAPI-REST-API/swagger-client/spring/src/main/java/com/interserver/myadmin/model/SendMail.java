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
 * Details for an Email
 */
@Schema(description = "Details for an Email")
@Validated
@NotUndefined



public class SendMail   {
  @JsonProperty("to")

  private String to = null;

  @JsonProperty("from")

  private String from = null;

  @JsonProperty("subject")

  private String subject = null;

  @JsonProperty("body")

  private String body = null;


  public SendMail to(String to) { 

    this.to = to;
    return this;
  }

  /**
   * The Contact whom is the primary recipient of this email.
   * @return to
   **/
  
  @Schema(example = "johndoe@company.com", required = true, description = "The Contact whom is the primary recipient of this email.")
  
  @NotNull
  public String getTo() {  
    return to;
  }



  public void setTo(String to) { 

    this.to = to;
  }

  public SendMail from(String from) { 

    this.from = from;
    return this;
  }

  /**
   * The contact whom is the this email is from.
   * @return from
   **/
  
  @Schema(example = "janedoe@company.com", required = true, description = "The contact whom is the this email is from.")
  
  @NotNull
  public String getFrom() {  
    return from;
  }



  public void setFrom(String from) { 

    this.from = from;
  }

  public SendMail subject(String subject) { 

    this.subject = subject;
    return this;
  }

  /**
   * The subject or title of the email
   * @return subject
   **/
  
  @Schema(example = "Attention Client", required = true, description = "The subject or title of the email")
  
  @NotNull
  public String getSubject() {  
    return subject;
  }



  public void setSubject(String subject) { 

    this.subject = subject;
  }

  public SendMail body(String body) { 

    this.body = body;
    return this;
  }

  /**
   * The main email contents.
   * @return body
   **/
  
  @Schema(example = "This is an email to inform you that something noteworthy happened.", required = true, description = "The main email contents.")
  
  @NotNull
  public String getBody() {  
    return body;
  }



  public void setBody(String body) { 

    this.body = body;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SendMail sendMail = (SendMail) o;
    return Objects.equals(this.to, sendMail.to) &&
        Objects.equals(this.from, sendMail.from) &&
        Objects.equals(this.subject, sendMail.subject) &&
        Objects.equals(this.body, sendMail.body);
  }

  @Override
  public int hashCode() {
    return Objects.hash(to, from, subject, body);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SendMail {\n");
    
    sb.append("    to: ").append(toIndentedString(to)).append("\n");
    sb.append("    from: ").append(toIndentedString(from)).append("\n");
    sb.append("    subject: ").append(toIndentedString(subject)).append("\n");
    sb.append("    body: ").append(toIndentedString(body)).append("\n");
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
