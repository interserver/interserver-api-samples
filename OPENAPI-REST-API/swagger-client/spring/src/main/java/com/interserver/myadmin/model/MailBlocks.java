package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.MailBlockClickHouse;
import com.interserver.myadmin.model.MailBlockRspamd;
import io.swagger.v3.oas.annotations.media.Schema;
import java.util.ArrayList;
import java.util.List;
import org.springframework.validation.annotation.Validated;
import org.openapitools.jackson.nullable.JsonNullable;
import io.swagger.configuration.NotUndefined;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.Nulls;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * The listing of blocked emails.
 */
@Schema(description = "The listing of blocked emails.")
@Validated
@NotUndefined



public class MailBlocks   {
  @JsonProperty("local")
  @Valid
  private List<MailBlockClickHouse> local = new ArrayList<>();
  @JsonProperty("mbtrap")
  @Valid
  private List<MailBlockClickHouse> mbtrap = new ArrayList<>();
  @JsonProperty("subject")
  @Valid
  private List<MailBlockRspamd> subject = new ArrayList<>();

  public MailBlocks local(List<MailBlockClickHouse> local) { 

    this.local = local;
    return this;
  }

  public MailBlocks addLocalItem(MailBlockClickHouse localItem) {
    this.local.add(localItem);
    return this;
  }

  /**
   * Get local
   * @return local
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public List<MailBlockClickHouse> getLocal() {  
    return local;
  }



  public void setLocal(List<MailBlockClickHouse> local) { 

    this.local = local;
  }

  public MailBlocks mbtrap(List<MailBlockClickHouse> mbtrap) { 

    this.mbtrap = mbtrap;
    return this;
  }

  public MailBlocks addMbtrapItem(MailBlockClickHouse mbtrapItem) {
    this.mbtrap.add(mbtrapItem);
    return this;
  }

  /**
   * Get mbtrap
   * @return mbtrap
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public List<MailBlockClickHouse> getMbtrap() {  
    return mbtrap;
  }



  public void setMbtrap(List<MailBlockClickHouse> mbtrap) { 

    this.mbtrap = mbtrap;
  }

  public MailBlocks subject(List<MailBlockRspamd> subject) { 

    this.subject = subject;
    return this;
  }

  public MailBlocks addSubjectItem(MailBlockRspamd subjectItem) {
    this.subject.add(subjectItem);
    return this;
  }

  /**
   * Get subject
   * @return subject
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public List<MailBlockRspamd> getSubject() {  
    return subject;
  }



  public void setSubject(List<MailBlockRspamd> subject) { 

    this.subject = subject;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    MailBlocks mailBlocks = (MailBlocks) o;
    return Objects.equals(this.local, mailBlocks.local) &&
        Objects.equals(this.mbtrap, mailBlocks.mbtrap) &&
        Objects.equals(this.subject, mailBlocks.subject);
  }

  @Override
  public int hashCode() {
    return Objects.hash(local, mbtrap, subject);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class MailBlocks {\n");
    
    sb.append("    local: ").append(toIndentedString(local)).append("\n");
    sb.append("    mbtrap: ").append(toIndentedString(mbtrap)).append("\n");
    sb.append("    subject: ").append(toIndentedString(subject)).append("\n");
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
