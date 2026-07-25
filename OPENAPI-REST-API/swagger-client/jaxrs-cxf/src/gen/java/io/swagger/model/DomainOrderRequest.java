package io.swagger.model;

import io.swagger.v3.oas.annotations.media.Schema;
import java.util.HashMap;
import java.util.Map;
import javax.validation.constraints.*;

import io.swagger.v3.oas.annotations.media.Schema;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonCreator;

/**
  * Request body for the domain order flow: putDomains (returns required fields), patchDomains (validates fields), addDomain (places the order). The TLD is resolved from hostname. Per-TLD registrant/contact fields returned by putDomains may be supplied as additional properties on patchDomains/addDomain.
 **/
@Schema(description="Request body for the domain order flow: putDomains (returns required fields), patchDomains (validates fields), addDomain (places the order). The TLD is resolved from hostname. Per-TLD registrant/contact fields returned by putDomains may be supplied as additional properties on patchDomains/addDomain.")
public class DomainOrderRequest extends HashMap<String, Object>  {
  
  @Schema(required = true, description = "Fully-qualified domain to register or transfer (e.g. example.com).")
 /**
   * Fully-qualified domain to register or transfer (e.g. example.com).  
  **/
  private String hostname = null;
  public enum TypeEnum {
    REGISTER("register"),
    TRANSFER("transfer");

    private String value;

    TypeEnum(String value) {
      this.value = value;
    }
    @JsonValue
    public String getValue() {
      return value;
    }

    @Override
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
  @Schema(description = "Order type.")
 /**
   * Order type.  
  **/
  private TypeEnum type = TypeEnum.REGISTER;
  
  @Schema(description = "Coupon code (addDomain only).")
 /**
   * Coupon code (addDomain only).  
  **/
  private String coupon = "";
  public enum WhoisPrivacyEnum {
    ENABLE("enable"),
    DISABLE("disable");

    private String value;

    WhoisPrivacyEnum(String value) {
      this.value = value;
    }
    @JsonValue
    public String getValue() {
      return value;
    }

    @Override
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
  @Schema(description = "Set to \"enable\" to add Whois privacy (addDomain only).")
 /**
   * Set to \"enable\" to add Whois privacy (addDomain only).  
  **/
  private WhoisPrivacyEnum whoisPrivacy = null;
 /**
   * Fully-qualified domain to register or transfer (e.g. example.com).
   * @return hostname
  **/
  @JsonProperty("hostname")
  @NotNull
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
  @NotNull
  public String getType() {
    if (type == null) {
      return null;
    }
    return type.getValue();
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
  @NotNull
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
  @NotNull
  public String getWhoisPrivacy() {
    if (whoisPrivacy == null) {
      return null;
    }
    return whoisPrivacy.getValue();
  }

  public void setWhoisPrivacy(WhoisPrivacyEnum whoisPrivacy) {
    this.whoisPrivacy = whoisPrivacy;
  }

  public DomainOrderRequest whoisPrivacy(WhoisPrivacyEnum whoisPrivacy) {
    this.whoisPrivacy = whoisPrivacy;
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
