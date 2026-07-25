package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class DomainNameserverGetResponseInner  {
  
  @ApiModelProperty(example = "ns1.domain.com", required = true, value = "")

  private String name;

  @ApiModelProperty(example = "1.2.3.4", required = true, value = "")

  private String ipaddress;

public enum CanDeleteEnum {

_0(String.valueOf("0")), _1(String.valueOf("1")), UNKNOWN_DEFAULT_OPEN_API(String.valueOf("unknown_default_open_api"));


    private String value;

    CanDeleteEnum (String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    @Override
    public String toString() {
        return String.valueOf(value);
    }

    public static CanDeleteEnum fromValue(String value) {
        for (CanDeleteEnum b : CanDeleteEnum.values()) {
            if (b.value.equals(value)) {
                return b;
            }
        }
        throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }
}

 /**
  * Whether the registrar allows deletion of this nameserver entry.
  */
  @ApiModelProperty(example = "1", required = true, value = "Whether the registrar allows deletion of this nameserver entry.")

  private CanDeleteEnum canDelete;
 /**
   * Get name
   * @return name
  **/
  @JsonProperty("name")
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public DomainNameserverGetResponseInner name(String name) {
    this.name = name;
    return this;
  }

 /**
   * Get ipaddress
   * @return ipaddress
  **/
  @JsonProperty("ipaddress")
  public String getIpaddress() {
    return ipaddress;
  }

  public void setIpaddress(String ipaddress) {
    this.ipaddress = ipaddress;
  }

  public DomainNameserverGetResponseInner ipaddress(String ipaddress) {
    this.ipaddress = ipaddress;
    return this;
  }

 /**
   * Whether the registrar allows deletion of this nameserver entry.
   * @return canDelete
  **/
  @JsonProperty("can_delete")
  public String getCanDelete() {
    if (canDelete == null) {
      return null;
    }
    return canDelete.value();
  }

  public void setCanDelete(CanDeleteEnum canDelete) {
    this.canDelete = canDelete;
  }

  public DomainNameserverGetResponseInner canDelete(CanDeleteEnum canDelete) {
    this.canDelete = canDelete;
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
  private static String toIndentedString(Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}

