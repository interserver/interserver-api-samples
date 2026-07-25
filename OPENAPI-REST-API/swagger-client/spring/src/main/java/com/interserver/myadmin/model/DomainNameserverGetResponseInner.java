package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
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
 * DomainNameserverGetResponseInner
 */
@Validated
@NotUndefined



public class DomainNameserverGetResponseInner   {
  @JsonProperty("name")

  private String name = null;

  @JsonProperty("ipaddress")

  private String ipaddress = null;

  /**
   * Whether the registrar allows deletion of this nameserver entry.
   */
  public enum CanDeleteEnum {
    _0("0"),
    
    _1("1");

    private String value;

    CanDeleteEnum(String value) {
      this.value = value;
    }

    @Override
    @JsonValue
    public String toString() {
      return String.valueOf(value);
    }

    @JsonCreator
    public static CanDeleteEnum fromValue(String text) {
      for (CanDeleteEnum b : CanDeleteEnum.values()) {
        if (String.valueOf(b.value).equals(text)) {
          return b;
        }
      }
      return null;
    }
  }
  @JsonProperty("can_delete")

  private CanDeleteEnum canDelete = null;


  public DomainNameserverGetResponseInner name(String name) { 

    this.name = name;
    return this;
  }

  /**
   * Get name
   * @return name
   **/
  
  @Schema(example = "ns1.domain.com", required = true, description = "")
  
  @NotNull
  public String getName() {  
    return name;
  }



  public void setName(String name) { 

    this.name = name;
  }

  public DomainNameserverGetResponseInner ipaddress(String ipaddress) { 

    this.ipaddress = ipaddress;
    return this;
  }

  /**
   * Get ipaddress
   * @return ipaddress
   **/
  
  @Schema(example = "1.2.3.4", required = true, description = "")
  
  @NotNull
  public String getIpaddress() {  
    return ipaddress;
  }



  public void setIpaddress(String ipaddress) { 

    this.ipaddress = ipaddress;
  }

  public DomainNameserverGetResponseInner canDelete(CanDeleteEnum canDelete) { 

    this.canDelete = canDelete;
    return this;
  }

  /**
   * Whether the registrar allows deletion of this nameserver entry.
   * @return canDelete
   **/
  
  @Schema(example = "1", required = true, description = "Whether the registrar allows deletion of this nameserver entry.")
  
  @NotNull
  public CanDeleteEnum getCanDelete() {  
    return canDelete;
  }



  public void setCanDelete(CanDeleteEnum canDelete) { 

    this.canDelete = canDelete;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    DomainNameserverGetResponseInner domainNameserverGetResponseInner = (DomainNameserverGetResponseInner) o;
    return Objects.equals(this.name, domainNameserverGetResponseInner.name) &&
        Objects.equals(this.ipaddress, domainNameserverGetResponseInner.ipaddress) &&
        Objects.equals(this.canDelete, domainNameserverGetResponseInner.canDelete);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, ipaddress, canDelete);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DomainNameserverGetResponseInner {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    ipaddress: ").append(toIndentedString(ipaddress)).append("\n");
    sb.append("    canDelete: ").append(toIndentedString(canDelete)).append("\n");
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
