package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.MailExtraInfoTable;
import com.interserver.myadmin.model.MailTutorialsTable;
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
 * Additional information tables for the mail service.
 */
@Schema(description = "Additional information tables for the mail service.")
@Validated
@NotUndefined



public class MailSchemaExtraInfoTables   {
  @JsonProperty("mail")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private MailExtraInfoTable mail = null;

  @JsonProperty("tutorials")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private MailTutorialsTable tutorials = null;


  public MailSchemaExtraInfoTables mail(MailExtraInfoTable mail) { 

    this.mail = mail;
    return this;
  }

  /**
   * Get mail
   * @return mail
   **/
  
  @Schema(description = "")
  
@Valid
  public MailExtraInfoTable getMail() {  
    return mail;
  }



  public void setMail(MailExtraInfoTable mail) { 
    this.mail = mail;
  }

  public MailSchemaExtraInfoTables tutorials(MailTutorialsTable tutorials) { 

    this.tutorials = tutorials;
    return this;
  }

  /**
   * Get tutorials
   * @return tutorials
   **/
  
  @Schema(description = "")
  
@Valid
  public MailTutorialsTable getTutorials() {  
    return tutorials;
  }



  public void setTutorials(MailTutorialsTable tutorials) { 
    this.tutorials = tutorials;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    MailSchemaExtraInfoTables mailSchemaExtraInfoTables = (MailSchemaExtraInfoTables) o;
    return Objects.equals(this.mail, mailSchemaExtraInfoTables.mail) &&
        Objects.equals(this.tutorials, mailSchemaExtraInfoTables.tutorials);
  }

  @Override
  public int hashCode() {
    return Objects.hash(mail, tutorials);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class MailSchemaExtraInfoTables {\n");
    
    sb.append("    mail: ").append(toIndentedString(mail)).append("\n");
    sb.append("    tutorials: ").append(toIndentedString(tutorials)).append("\n");
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
