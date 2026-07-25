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
 * A single DNS Record row for a Domain
 */
@Schema(description = "A single DNS Record row for a Domain")
@Validated
@NotUndefined



public class DnsRecord   {
  @JsonProperty("id")

  private String id = null;

  @JsonProperty("domain_id")

  private String domainId = null;

  @JsonProperty("name")

  private String name = null;

  @JsonProperty("type")

  private DnsRecordType type = null;

  @JsonProperty("content")

  private String content = null;

  @JsonProperty("ttl")

  private String ttl = null;

  @JsonProperty("prio")

  private String prio = null;

  @JsonProperty("disabled")

  private String disabled = null;

  @JsonProperty("ordername")

  private String ordername = null;

  @JsonProperty("auth")

  private String auth = null;


  public DnsRecord id(String id) { 

    this.id = id;
    return this;
  }

  /**
   * The ID of the DNS Record.
   * @return id
   **/
  
  @Schema(example = "472", required = true, description = "The ID of the DNS Record.")
  
  @NotNull
  public String getId() {  
    return id;
  }



  public void setId(String id) { 

    this.id = id;
  }

  public DnsRecord domainId(String domainId) { 

    this.domainId = domainId;
    return this;
  }

  /**
   * The ID of the Domain this is a record of.
   * @return domainId
   **/
  
  @Schema(example = "68", required = true, description = "The ID of the Domain this is a record of.")
  
  @NotNull
  public String getDomainId() {  
    return domainId;
  }



  public void setDomainId(String domainId) { 

    this.domainId = domainId;
  }

  public DnsRecord name(String name) { 

    this.name = name;
    return this;
  }

  /**
   * Get name
   * @return name
   **/
  
  @Schema(example = "hussfamily.com", required = true, description = "")
  
  @NotNull
  public String getName() {  
    return name;
  }



  public void setName(String name) { 

    this.name = name;
  }

  public DnsRecord type(DnsRecordType type) { 

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

  public DnsRecord content(String content) { 

    this.content = content;
    return this;
  }

  /**
   * The content of the record, such as the IP address or hsotname.
   * @return content
   **/
  
  @Schema(example = "cdns1.interserver.net", required = true, description = "The content of the record, such as the IP address or hsotname.")
  
  @NotNull
  public String getContent() {  
    return content;
  }



  public void setContent(String content) { 

    this.content = content;
  }

  public DnsRecord ttl(String ttl) { 

    this.ttl = ttl;
    return this;
  }

  /**
   * Time To Live (seconds)
   * @return ttl
   **/
  
  @Schema(example = "86400", required = true, description = "Time To Live (seconds)")
  
  @NotNull
  public String getTtl() {  
    return ttl;
  }



  public void setTtl(String ttl) { 

    this.ttl = ttl;
  }

  public DnsRecord prio(String prio) { 

    this.prio = prio;
    return this;
  }

  /**
   * Priority
   * @return prio
   **/
  
  @Schema(example = "0", required = true, description = "Priority")
  
  @NotNull
  public String getPrio() {  
    return prio;
  }



  public void setPrio(String prio) { 

    this.prio = prio;
  }

  public DnsRecord disabled(String disabled) { 

    this.disabled = disabled;
    return this;
  }

  /**
   * Get disabled
   * @return disabled
   **/
  
  @Schema(example = "0", required = true, description = "")
  
  @NotNull
  public String getDisabled() {  
    return disabled;
  }



  public void setDisabled(String disabled) { 

    this.disabled = disabled;
  }

  public DnsRecord ordername(String ordername) { 

    this.ordername = ordername;
    return this;
  }

  /**
   * Alternate name to use for sorting
   * @return ordername
   **/
  
  @Schema(required = true, description = "Alternate name to use for sorting")
  
  @NotNull
  public String getOrdername() {  
    return ordername;
  }



  public void setOrdername(String ordername) { 

    this.ordername = ordername;
  }

  public DnsRecord auth(String auth) { 

    this.auth = auth;
    return this;
  }

  /**
   * Get auth
   * @return auth
   **/
  
  @Schema(example = "1", required = true, description = "")
  
  @NotNull
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
    DnsRecord dnsRecord = (DnsRecord) o;
    return Objects.equals(this.id, dnsRecord.id) &&
        Objects.equals(this.domainId, dnsRecord.domainId) &&
        Objects.equals(this.name, dnsRecord.name) &&
        Objects.equals(this.type, dnsRecord.type) &&
        Objects.equals(this.content, dnsRecord.content) &&
        Objects.equals(this.ttl, dnsRecord.ttl) &&
        Objects.equals(this.prio, dnsRecord.prio) &&
        Objects.equals(this.disabled, dnsRecord.disabled) &&
        Objects.equals(this.ordername, dnsRecord.ordername) &&
        Objects.equals(this.auth, dnsRecord.auth);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, domainId, name, type, content, ttl, prio, disabled, ordername, auth);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DnsRecord {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    domainId: ").append(toIndentedString(domainId)).append("\n");
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
