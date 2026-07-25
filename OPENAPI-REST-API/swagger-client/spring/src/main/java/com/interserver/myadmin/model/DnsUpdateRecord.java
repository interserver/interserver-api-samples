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
 * The request data to update a dns record.
 */
@Schema(description = "The request data to update a dns record.")
@Validated
@NotUndefined



public class DnsUpdateRecord   {
  @JsonProperty("name")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String name = null;

  @JsonProperty("type")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private DnsRecordType type = null;

  @JsonProperty("content")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String content = null;

  @JsonProperty("ttl")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ttl = null;

  @JsonProperty("prio")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String prio = null;

  @JsonProperty("disabled")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String disabled = null;

  @JsonProperty("ordername")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ordername = null;

  @JsonProperty("auth")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String auth = null;


  public DnsUpdateRecord name(String name) { 

    this.name = name;
    return this;
  }

  /**
   * Get name
   * @return name
   **/
  
  @Schema(description = "")
  
  public String getName() {  
    return name;
  }



  public void setName(String name) { 
    this.name = name;
  }

  public DnsUpdateRecord type(DnsRecordType type) { 

    this.type = type;
    return this;
  }

  /**
   * Get type
   * @return type
   **/
  
  @Schema(description = "")
  
@Valid
  public DnsRecordType getType() {  
    return type;
  }



  public void setType(DnsRecordType type) { 
    this.type = type;
  }

  public DnsUpdateRecord content(String content) { 

    this.content = content;
    return this;
  }

  /**
   * Get content
   * @return content
   **/
  
  @Schema(description = "")
  
  public String getContent() {  
    return content;
  }



  public void setContent(String content) { 
    this.content = content;
  }

  public DnsUpdateRecord ttl(String ttl) { 

    this.ttl = ttl;
    return this;
  }

  /**
   * Get ttl
   * @return ttl
   **/
  
  @Schema(description = "")
  
  public String getTtl() {  
    return ttl;
  }



  public void setTtl(String ttl) { 
    this.ttl = ttl;
  }

  public DnsUpdateRecord prio(String prio) { 

    this.prio = prio;
    return this;
  }

  /**
   * Get prio
   * @return prio
   **/
  
  @Schema(description = "")
  
  public String getPrio() {  
    return prio;
  }



  public void setPrio(String prio) { 
    this.prio = prio;
  }

  public DnsUpdateRecord disabled(String disabled) { 

    this.disabled = disabled;
    return this;
  }

  /**
   * Get disabled
   * @return disabled
   **/
  
  @Schema(description = "")
  
  public String getDisabled() {  
    return disabled;
  }



  public void setDisabled(String disabled) { 
    this.disabled = disabled;
  }

  public DnsUpdateRecord ordername(String ordername) { 

    this.ordername = ordername;
    return this;
  }

  /**
   * Get ordername
   * @return ordername
   **/
  
  @Schema(description = "")
  
  public String getOrdername() {  
    return ordername;
  }



  public void setOrdername(String ordername) { 
    this.ordername = ordername;
  }

  public DnsUpdateRecord auth(String auth) { 

    this.auth = auth;
    return this;
  }

  /**
   * Get auth
   * @return auth
   **/
  
  @Schema(description = "")
  
  public String getAuth() {  
    return auth;
  }



  public void setAuth(String auth) { 
    this.auth = auth;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    DnsUpdateRecord dnsUpdateRecord = (DnsUpdateRecord) o;
    return Objects.equals(this.name, dnsUpdateRecord.name) &&
        Objects.equals(this.type, dnsUpdateRecord.type) &&
        Objects.equals(this.content, dnsUpdateRecord.content) &&
        Objects.equals(this.ttl, dnsUpdateRecord.ttl) &&
        Objects.equals(this.prio, dnsUpdateRecord.prio) &&
        Objects.equals(this.disabled, dnsUpdateRecord.disabled) &&
        Objects.equals(this.ordername, dnsUpdateRecord.ordername) &&
        Objects.equals(this.auth, dnsUpdateRecord.auth);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, type, content, ttl, prio, disabled, ordername, auth);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DnsUpdateRecord {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    content: ").append(toIndentedString(content)).append("\n");
    sb.append("    ttl: ").append(toIndentedString(ttl)).append("\n");
    sb.append("    prio: ").append(toIndentedString(prio)).append("\n");
    sb.append("    disabled: ").append(toIndentedString(disabled)).append("\n");
    sb.append("    ordername: ").append(toIndentedString(ordername)).append("\n");
    sb.append("    auth: ").append(toIndentedString(auth)).append("\n");
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
