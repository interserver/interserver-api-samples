package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.DnsRecordType;
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
 * Request data for a new DNS record.
 */
@Schema(description = "Request data for a new DNS record.")
@Validated
@NotUndefined



public class DnsNewRecord   {
  @JsonProperty("name")

  private String name = null;

  @JsonProperty("type")

  private DnsRecordType type = null;

  @JsonProperty("content")

  private String content = null;

  @JsonProperty("ttl")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer ttl = 86400;

  @JsonProperty("prio")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer prio = 0;


  public DnsNewRecord name(String name) { 

    this.name = name;
    return this;
  }

  /**
   * Name part of record
   * @return name
   **/
  
  @Schema(example = "myfamily.com", required = true, description = "Name part of record")
  
  @NotNull
  public String getName() {  
    return name;
  }



  public void setName(String name) { 

    this.name = name;
  }

  public DnsNewRecord type(DnsRecordType type) { 

    this.type = type;
    return this;
  }

  /**
   * Get type
   * @return type
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public DnsRecordType getType() {  
    return type;
  }



  public void setType(DnsRecordType type) { 

    this.type = type;
  }

  public DnsNewRecord content(String content) { 

    this.content = content;
    return this;
  }

  /**
   * Content of record
   * @return content
   **/
  
  @Schema(example = "127.0.0.1", required = true, description = "Content of record")
  
  @NotNull
  public String getContent() {  
    return content;
  }



  public void setContent(String content) { 

    this.content = content;
  }

  public DnsNewRecord ttl(Integer ttl) { 

    this.ttl = ttl;
    return this;
  }

  /**
   * Time-to-live
   * @return ttl
   **/
  
  @Schema(example = "86400", description = "Time-to-live")
  
  public Integer getTtl() {  
    return ttl;
  }



  public void setTtl(Integer ttl) { 
    this.ttl = ttl;
  }

  public DnsNewRecord prio(Integer prio) { 

    this.prio = prio;
    return this;
  }

  /**
   * Priority
   * @return prio
   **/
  
  @Schema(example = "0", description = "Priority")
  
  public Integer getPrio() {  
    return prio;
  }



  public void setPrio(Integer prio) { 
    this.prio = prio;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    DnsNewRecord dnsNewRecord = (DnsNewRecord) o;
    return Objects.equals(this.name, dnsNewRecord.name) &&
        Objects.equals(this.type, dnsNewRecord.type) &&
        Objects.equals(this.content, dnsNewRecord.content) &&
        Objects.equals(this.ttl, dnsNewRecord.ttl) &&
        Objects.equals(this.prio, dnsNewRecord.prio);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, type, content, ttl, prio);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DnsNewRecord {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    content: ").append(toIndentedString(content)).append("\n");
    sb.append("    ttl: ").append(toIndentedString(ttl)).append("\n");
    sb.append("    prio: ").append(toIndentedString(prio)).append("\n");
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
