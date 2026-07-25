package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import io.swagger.v3.oas.annotations.media.Schema;
import java.util.HashMap;
import java.util.Map;
import io.micronaut.core.annotation.Introspected;
import io.micronaut.validation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * Request body for the domain order flow: putDomains (returns required fields), patchDomains (validates fields), addDomain (places the order). The TLD is resolved from hostname. Per-TLD registrant/contact fields returned by putDomains may be supplied as additional properties on patchDomains/addDomain.
 */
@Schema(description = "Request body for the domain order flow: putDomains (returns required fields), patchDomains (validates fields), addDomain (places the order). The TLD is resolved from hostname. Per-TLD registrant/contact fields returned by putDomains may be supplied as additional properties on patchDomains/addDomain.")
@Validated
@Introspected

public class DomainOrderRequest extends HashMap<String, Object>  {
  @JsonProperty("hostname")
  private String hostname = null;

  /**
   * Order type.
   */
  public enum TypeEnum {
    REGISTER("register"),
    TRANSFER("transfer");

    private String value;

    TypeEnum(String value) {
      this.value = value;
    }

    @Override
    @JsonValue
    public String toString() {
      return String.valueOf(value);
    }

    @JsonCreator
    public static TypeEnum fromValue(String text) {
      for (TypeEnum b : TypeEnum.values()) {
        if (String.valueOf(b.value).equals(text)) {
          return b;
        }
      }
      return null;
    }
  }
  @JsonProperty("type")
  private TypeEnum type = TypeEnum.REGISTER;

  @JsonProperty("coupon")
  private String coupon = "";

  /**
   * Set to \"enable\" to add Whois privacy (addDomain only).
   */
  public enum WhoisPrivacyEnum {
    ENABLE("enable"),
    DISABLE("disable");

    private String value;

    WhoisPrivacyEnum(String value) {
      this.value = value;
    }

    @Override
    @JsonValue
    public String toString() {
      return String.valueOf(value);
    }

    @JsonCreator
    public static WhoisPrivacyEnum fromValue(String text) {
      for (WhoisPrivacyEnum b : WhoisPrivacyEnum.values()) {
        if (String.valueOf(b.value).equals(text)) {
          return b;
        }
      }
      return null;
    }
  }
  @JsonProperty("whois_privacy")
  private WhoisPrivacyEnum whoisPrivacy = null;

  public DomainOrderRequest hostname(String hostname) {
    this.hostname = hostname;
    return this;
  }

  /**
   * Fully-qualified domain to register or transfer (e.g. example.com).
   * @return hostname
  **/
  @Schema(required = true, description = "Fully-qualified domain to register or transfer (e.g. example.com).")
  @NotNull

  public String getHostname() {
    return hostname;
  }

  public void setHostname(String hostname) {
    this.hostname = hostname;
  }

  public DomainOrderRequest type(TypeEnum type) {
    this.type = type;
    return this;
  }

  /**
   * Order type.
   * @return type
  **/
  @Schema(description = "Order type.")
  @NotNull

  public TypeEnum getType() {
    return type;
  }

  public void setType(TypeEnum type) {
    this.type = type;
  }

  public DomainOrderRequest coupon(String coupon) {
    this.coupon = coupon;
    return this;
  }

  /**
   * Coupon code (addDomain only).
   * @return coupon
  **/
  @Schema(description = "Coupon code (addDomain only).")
  @NotNull

  public String getCoupon() {
    return coupon;
  }

  public void setCoupon(String coupon) {
    this.coupon = coupon;
  }

  public DomainOrderRequest whoisPrivacy(WhoisPrivacyEnum whoisPrivacy) {
    this.whoisPrivacy = whoisPrivacy;
    return this;
  }

  /**
   * Set to \"enable\" to add Whois privacy (addDomain only).
   * @return whoisPrivacy
  **/
  @Schema(description = "Set to \"enable\" to add Whois privacy (addDomain only).")
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
