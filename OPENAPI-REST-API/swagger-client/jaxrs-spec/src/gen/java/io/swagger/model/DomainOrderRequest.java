package io.swagger.model;

import io.swagger.v3.oas.annotations.media.Schema;
import java.util.HashMap;
import java.util.Map;
import javax.validation.constraints.*;
import javax.validation.Valid;

/**
 * Request body for the domain order flow: putDomains (returns required fields), patchDomains (validates fields), addDomain (places the order). The TLD is resolved from hostname. Per-TLD registrant/contact fields returned by putDomains may be supplied as additional properties on patchDomains/addDomain.
 **/
import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
@Schema(description = "Request body for the domain order flow: putDomains (returns required fields), patchDomains (validates fields), addDomain (places the order). The TLD is resolved from hostname. Per-TLD registrant/contact fields returned by putDomains may be supplied as additional properties on patchDomains/addDomain.")

public class DomainOrderRequest extends HashMap<String, Object>  {

  private @Valid String hostname = null;

public enum TypeEnum {

    REGISTER(String.valueOf("register")), TRANSFER(String.valueOf("transfer"));


    private String value;

    TypeEnum (String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    @Override
    @JsonValue
    public String toString() {
        return String.valueOf(value);
    }

    @JsonCreator
    public static TypeEnum fromValue(String v) {
        for (TypeEnum b : TypeEnum.values()) {
            if (String.valueOf(b.value).equals(v)) {
                return b;
            }
        }
        return null;
    }
}
  private @Valid TypeEnum type = TypeEnum.REGISTER;

  private @Valid String coupon = "";

public enum WhoisPrivacyEnum {

    ENABLE(String.valueOf("enable")), DISABLE(String.valueOf("disable"));


    private String value;

    WhoisPrivacyEnum (String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    @Override
    @JsonValue
    public String toString() {
        return String.valueOf(value);
    }

    @JsonCreator
    public static WhoisPrivacyEnum fromValue(String v) {
        for (WhoisPrivacyEnum b : WhoisPrivacyEnum.values()) {
            if (String.valueOf(b.value).equals(v)) {
                return b;
            }
        }
        return null;
    }
}
  private @Valid WhoisPrivacyEnum whoisPrivacy = null;

  /**
   * Fully-qualified domain to register or transfer (e.g. example.com).
   **/
  public DomainOrderRequest hostname(String hostname) {
    this.hostname = hostname;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "Fully-qualified domain to register or transfer (e.g. example.com).")
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

  
  @ApiModelProperty(value = "Order type.")
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

  
  @ApiModelProperty(value = "Coupon code (addDomain only).")
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

  
  @ApiModelProperty(value = "Set to \"enable\" to add Whois privacy (addDomain only).")
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
