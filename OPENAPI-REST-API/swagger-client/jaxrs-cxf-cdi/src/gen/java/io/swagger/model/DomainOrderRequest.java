package io.swagger.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;
import java.util.HashMap;
import java.util.Map;
import javax.validation.constraints.*;
/**
 * Request body for the domain order flow: putDomains (returns required fields), patchDomains (validates fields), addDomain (places the order). The TLD is resolved from hostname. Per-TLD registrant/contact fields returned by putDomains may be supplied as additional properties on patchDomains/addDomain.
 **/
import io.swagger.v3.oas.annotations.media.Schema;
import java.util.Objects;

import javax.xml.bind.annotation.*;

@Schema(description = "Request body for the domain order flow: putDomains (returns required fields), patchDomains (validates fields), addDomain (places the order). The TLD is resolved from hostname. Per-TLD registrant/contact fields returned by putDomains may be supplied as additional properties on patchDomains/addDomain.")

public class DomainOrderRequest extends HashMap<String, Object>  {
  private String hostname = null;
@XmlType(name="TypeEnum")
@XmlEnum(String.class)
public enum TypeEnum {

    @XmlEnumValue("register") REGISTER(String.valueOf("register")), @XmlEnumValue("transfer") TRANSFER(String.valueOf("transfer"));


    private String value;

    TypeEnum (String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    @Override
    public String toString() {
        return String.valueOf(value);
    }

    public static TypeEnum fromValue(String v) {
        for (TypeEnum b : TypeEnum.values()) {
            if (String.valueOf(b.value).equals(v)) {
                return b;
            }
        }
        return null;
    }
}
  private TypeEnum type = TypeEnum.REGISTER;
  private String coupon = "";
@XmlType(name="WhoisPrivacyEnum")
@XmlEnum(String.class)
public enum WhoisPrivacyEnum {

    @XmlEnumValue("enable") ENABLE(String.valueOf("enable")), @XmlEnumValue("disable") DISABLE(String.valueOf("disable"));


    private String value;

    WhoisPrivacyEnum (String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    @Override
    public String toString() {
        return String.valueOf(value);
    }

    public static WhoisPrivacyEnum fromValue(String v) {
        for (WhoisPrivacyEnum b : WhoisPrivacyEnum.values()) {
            if (String.valueOf(b.value).equals(v)) {
                return b;
            }
        }
        return null;
    }
}
  private WhoisPrivacyEnum whoisPrivacy = null;

  /**
   * Fully-qualified domain to register or transfer (e.g. example.com).
   **/
  public DomainOrderRequest hostname(String hostname) {
    this.hostname = hostname;
    return this;
  }

  
  
  @Schema(required = true, description = "Fully-qualified domain to register or transfer (e.g. example.com).")
  @JsonProperty("hostname")
  @NotNull
  public String getHostname() {
    return hostname;
  }
  public void setHostname(String hostname) {
    this.hostname = hostname;
  }

  /**
   * Order type.
   **/
  public DomainOrderRequest type(TypeEnum type) {
    this.type = type;
    return this;
  }

  
  
  @Schema(description = "Order type.")
  @JsonProperty("type")
  @NotNull
  public TypeEnum getType() {
    return type;
  }
  public void setType(TypeEnum type) {
    this.type = type;
  }

  /**
   * Coupon code (addDomain only).
   **/
  public DomainOrderRequest coupon(String coupon) {
    this.coupon = coupon;
    return this;
  }

  
  
  @Schema(description = "Coupon code (addDomain only).")
  @JsonProperty("coupon")
  @NotNull
  public String getCoupon() {
    return coupon;
  }
  public void setCoupon(String coupon) {
    this.coupon = coupon;
  }

  /**
   * Set to \&quot;enable\&quot; to add Whois privacy (addDomain only).
   **/
  public DomainOrderRequest whoisPrivacy(WhoisPrivacyEnum whoisPrivacy) {
    this.whoisPrivacy = whoisPrivacy;
    return this;
  }

  
  
  @Schema(description = "Set to \"enable\" to add Whois privacy (addDomain only).")
  @JsonProperty("whois_privacy")
  @NotNull
  public WhoisPrivacyEnum getWhoisPrivacy() {
    return whoisPrivacy;
  }
  public void setWhoisPrivacy(WhoisPrivacyEnum whoisPrivacy) {
    this.whoisPrivacy = whoisPrivacy;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    DomainOrderRequest domainOrderRequest = (DomainOrderRequest) o;
    return Objects.equals(hostname, domainOrderRequest.hostname) &&
        Objects.equals(type, domainOrderRequest.type) &&
        Objects.equals(coupon, domainOrderRequest.coupon) &&
        Objects.equals(whoisPrivacy, domainOrderRequest.whoisPrivacy);
  }

  @Override
  public int hashCode() {
    return Objects.hash(hostname, type, coupon, whoisPrivacy);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DomainOrderRequest {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    hostname: ").append(toIndentedString(hostname)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    coupon: ").append(toIndentedString(coupon)).append("\n");
    sb.append("    whoisPrivacy: ").append(toIndentedString(whoisPrivacy)).append("\n");
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
