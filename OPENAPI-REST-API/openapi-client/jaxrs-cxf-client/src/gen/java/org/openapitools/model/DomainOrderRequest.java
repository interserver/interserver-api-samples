package org.openapitools.model;

import java.util.HashMap;
import java.util.Map;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Request body for the domain order flow: putDomains (returns required fields), patchDomains (validates fields), addDomain (places the order). The TLD is resolved from hostname. Per-TLD registrant/contact fields returned by putDomains may be supplied as additional properties on patchDomains/addDomain.
 */
@ApiModel(description="Request body for the domain order flow: putDomains (returns required fields), patchDomains (validates fields), addDomain (places the order). The TLD is resolved from hostname. Per-TLD registrant/contact fields returned by putDomains may be supplied as additional properties on patchDomains/addDomain.")

public class DomainOrderRequest extends HashMap<String, Object> {
  
 /**
  * Fully-qualified domain to register or transfer (e.g. example.com).
  */
  @ApiModelProperty(required = true, value = "Fully-qualified domain to register or transfer (e.g. example.com).")

  private String hostname;

public enum TypeEnum {

REGISTER(String.valueOf("register")), TRANSFER(String.valueOf("transfer")), UNKNOWN_DEFAULT_OPEN_API(String.valueOf("unknown_default_open_api"));


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

    public static TypeEnum fromValue(String value) {
        for (TypeEnum b : TypeEnum.values()) {
            if (b.value.equals(value)) {
                return b;
            }
        }
        throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }
}

 /**
  * Order type.
  */
  @ApiModelProperty(value = "Order type.")

  private TypeEnum type = TypeEnum.REGISTER;

 /**
  * Coupon code (addDomain only).
  */
  @ApiModelProperty(value = "Coupon code (addDomain only).")

  private String coupon = "";

public enum WhoisPrivacyEnum {

ENABLE(String.valueOf("enable")), DISABLE(String.valueOf("disable")), UNKNOWN_DEFAULT_OPEN_API(String.valueOf("unknown_default_open_api"));


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

    public static WhoisPrivacyEnum fromValue(String value) {
        for (WhoisPrivacyEnum b : WhoisPrivacyEnum.values()) {
            if (b.value.equals(value)) {
                return b;
            }
        }
        throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }
}

 /**
  * Set to \"enable\" to add Whois privacy (addDomain only).
  */
  @ApiModelProperty(value = "Set to \"enable\" to add Whois privacy (addDomain only).")

  private WhoisPrivacyEnum whoisPrivacy;
 /**
   * Fully-qualified domain to register or transfer (e.g. example.com).
   * @return hostname
  **/
  @JsonProperty("hostname")
  public String getHostname() {
    return hostname;
  }

  public void setHostname(String hostname) {
    this.hostname = hostname;
  }

  public DomainOrderRequest hostname(String hostname) {
    this.hostname = hostname;
    return this;
  }

 /**
   * Order type.
   * @return type
  **/
  @JsonProperty("type")
  public String getType() {
    if (type == null) {
      return null;
    }
    return type.value();
  }

  public void setType(TypeEnum type) {
    this.type = type;
  }

  public DomainOrderRequest type(TypeEnum type) {
    this.type = type;
    return this;
  }

 /**
   * Coupon code (addDomain only).
   * @return coupon
  **/
  @JsonProperty("coupon")
  public String getCoupon() {
    return coupon;
  }

  public void setCoupon(String coupon) {
    this.coupon = coupon;
  }

  public DomainOrderRequest coupon(String coupon) {
    this.coupon = coupon;
    return this;
  }

 /**
   * Set to \&quot;enable\&quot; to add Whois privacy (addDomain only).
   * @return whoisPrivacy
  **/
  @JsonProperty("whois_privacy")
  public String getWhoisPrivacy() {
    if (whoisPrivacy == null) {
      return null;
    }
    return whoisPrivacy.value();
  }

  public void setWhoisPrivacy(WhoisPrivacyEnum whoisPrivacy) {
    this.whoisPrivacy = whoisPrivacy;
  }

  public DomainOrderRequest whoisPrivacy(WhoisPrivacyEnum whoisPrivacy) {
    this.whoisPrivacy = whoisPrivacy;
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
    DomainOrderRequest domainOrderRequest = (DomainOrderRequest) o;
    return Objects.equals(this.hostname, domainOrderRequest.hostname) &&
        Objects.equals(this.type, domainOrderRequest.type) &&
        Objects.equals(this.coupon, domainOrderRequest.coupon) &&
        Objects.equals(this.whoisPrivacy, domainOrderRequest.whoisPrivacy) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(hostname, type, coupon, whoisPrivacy, super.hashCode());
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
  private static String toIndentedString(Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}

