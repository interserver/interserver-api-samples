package io.swagger.model;

import io.swagger.v3.oas.annotations.media.Schema;

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
  * request to validate a webhosting order
 **/
@Schema(description="request to validate a webhosting order")
public class WebsiteOrderPutRequest   {
  
  @Schema(required = true, description = "Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist.")
 /**
   * Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist.  
  **/
  private String hostname = null;
  
  @Schema(required = true, description = "Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable).")
 /**
   * Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable).  
  **/
  private Integer packageId = null;
  
  @Schema(description = "Control-panel admin password. If blank, a random password is generated server-side.")
 /**
   * Control-panel admin password. If blank, a random password is generated server-side.  
  **/
  private String rootpass = "";
  
  @Schema(description = "Billing cycle in months (1 / 6 / 12 / 24 / 36).")
 /**
   * Billing cycle in months (1 / 6 / 12 / 24 / 36).  
  **/
  private Integer period = 1;
  
  @Schema(description = "Coupon code.")
 /**
   * Coupon code.  
  **/
  private String coupon = "";
  
  @Schema(description = "Promo bundle id from getNewWebsite.serviceOffers.")
 /**
   * Promo bundle id from getNewWebsite.serviceOffers.  
  **/
  private Integer serviceOfferId = 0;
  
  @Schema(description = "Auto-installer id (0 = none).")
 /**
   * Auto-installer id (0 = none).  
  **/
  private Integer script = 0;
  
  @Schema(description = "Free-form note saved on the service row.")
 /**
   * Free-form note saved on the service row.  
  **/
  private String comment = "";
  
  @Schema(description = "When true and enableDomainRegistering=true from the catalog, also registers/transfers the domain through the order.")
 /**
   * When true and enableDomainRegistering=true from the catalog, also registers/transfers the domain through the order.  
  **/
  private Boolean registerDomain = false;
 /**
   * Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist.
   * @return hostname
  **/
  @JsonProperty("hostname")
  public String getHostname() {
    return hostname;
  }

  public void setHostname(String hostname) {
    this.hostname = hostname;
  }

  public WebsiteOrderPutRequest hostname(String hostname) {
    this.hostname = hostname;
    return this;
  }

 /**
   * Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable).
   * @return packageId
  **/
  @JsonProperty("packageId")
  public Integer getPackageId() {
    return packageId;
  }

  public void setPackageId(Integer packageId) {
    this.packageId = packageId;
  }

  public WebsiteOrderPutRequest packageId(Integer packageId) {
    this.packageId = packageId;
    return this;
  }

 /**
   * Control-panel admin password. If blank, a random password is generated server-side.
   * @return rootpass
  **/
  @JsonProperty("rootpass")
  public String getRootpass() {
    return rootpass;
  }

  public void setRootpass(String rootpass) {
    this.rootpass = rootpass;
  }

  public WebsiteOrderPutRequest rootpass(String rootpass) {
    this.rootpass = rootpass;
    return this;
  }

 /**
   * Billing cycle in months (1 / 6 / 12 / 24 / 36).
   * @return period
  **/
  @JsonProperty("period")
  public Integer getPeriod() {
    return period;
  }

  public void setPeriod(Integer period) {
    this.period = period;
  }

  public WebsiteOrderPutRequest period(Integer period) {
    this.period = period;
    return this;
  }

 /**
   * Coupon code.
   * @return coupon
  **/
  @JsonProperty("coupon")
  public String getCoupon() {
    return coupon;
  }

  public void setCoupon(String coupon) {
    this.coupon = coupon;
  }

  public WebsiteOrderPutRequest coupon(String coupon) {
    this.coupon = coupon;
    return this;
  }

 /**
   * Promo bundle id from getNewWebsite.serviceOffers.
   * @return serviceOfferId
  **/
  @JsonProperty("serviceOfferId")
  public Integer getServiceOfferId() {
    return serviceOfferId;
  }

  public void setServiceOfferId(Integer serviceOfferId) {
    this.serviceOfferId = serviceOfferId;
  }

  public WebsiteOrderPutRequest serviceOfferId(Integer serviceOfferId) {
    this.serviceOfferId = serviceOfferId;
    return this;
  }

 /**
   * Auto-installer id (0 &#x3D; none).
   * @return script
  **/
  @JsonProperty("script")
  public Integer getScript() {
    return script;
  }

  public void setScript(Integer script) {
    this.script = script;
  }

  public WebsiteOrderPutRequest script(Integer script) {
    this.script = script;
    return this;
  }

 /**
   * Free-form note saved on the service row.
   * @return comment
  **/
  @JsonProperty("comment")
  public String getComment() {
    return comment;
  }

  public void setComment(String comment) {
    this.comment = comment;
  }

  public WebsiteOrderPutRequest comment(String comment) {
    this.comment = comment;
    return this;
  }

 /**
   * When true and enableDomainRegistering&#x3D;true from the catalog, also registers/transfers the domain through the order.
   * @return registerDomain
  **/
  @JsonProperty("registerDomain")
  public Boolean isRegisterDomain() {
    return registerDomain;
  }

  public void setRegisterDomain(Boolean registerDomain) {
    this.registerDomain = registerDomain;
  }

  public WebsiteOrderPutRequest registerDomain(Boolean registerDomain) {
    this.registerDomain = registerDomain;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class WebsiteOrderPutRequest {\n");
    
    sb.append("    hostname: ").append(toIndentedString(hostname)).append("\n");
    sb.append("    packageId: ").append(toIndentedString(packageId)).append("\n");
    sb.append("    rootpass: ").append(toIndentedString(rootpass)).append("\n");
    sb.append("    period: ").append(toIndentedString(period)).append("\n");
    sb.append("    coupon: ").append(toIndentedString(coupon)).append("\n");
    sb.append("    serviceOfferId: ").append(toIndentedString(serviceOfferId)).append("\n");
    sb.append("    script: ").append(toIndentedString(script)).append("\n");
    sb.append("    comment: ").append(toIndentedString(comment)).append("\n");
    sb.append("    registerDomain: ").append(toIndentedString(registerDomain)).append("\n");
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
