package io.swagger.model;

import java.util.Objects;
import java.util.ArrayList;
import java.util.HashMap;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import io.swagger.v3.oas.annotations.media.Schema;
import java.util.HashMap;
import java.util.Map;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;

@Schema(description="Request body for the domain order flow: putDomains (returns required fields), patchDomains (validates fields), addDomain (places the order). The TLD is resolved from hostname. Per-TLD registrant/contact fields returned by putDomains may be supplied as additional properties on patchDomains/addDomain.")

public class DomainOrderRequest extends HashMap<String, Object>  {
  private String hostname = null;  /**
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
  }
  private TypeEnum type = TypeEnum.REGISTER;  private String coupon = "";  /**
   * Set to \&quot;enable\&quot; to add Whois privacy (addDomain only).
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
  }
  private WhoisPrivacyEnum whoisPrivacy = null;

  /**
   * Fully-qualified domain to register or transfer (e.g. example.com).
   **/
  
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
