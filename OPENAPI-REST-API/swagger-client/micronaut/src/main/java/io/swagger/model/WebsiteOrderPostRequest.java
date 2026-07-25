package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;
import io.micronaut.core.annotation.Introspected;
import io.micronaut.validation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * request to place a webhosting order
 */
@Schema(description = "request to place a webhosting order")
@Validated
@Introspected

public class WebsiteOrderPostRequest   {
  @JsonProperty("hostname")
  private String hostname = null;

  @JsonProperty("packageId")
  private Integer packageId = null;

  @JsonProperty("rootpass")
  private String rootpass = "";

  @JsonProperty("period")
  private Integer period = 1;

  @JsonProperty("coupon")
  private String coupon = "";

  @JsonProperty("serviceOfferId")
  private Integer serviceOfferId = 0;

  @JsonProperty("script")
  private Integer script = 0;

  @JsonProperty("comment")
  private String comment = "";

  @JsonProperty("registerDomain")
  private Boolean registerDomain = false;

  public WebsiteOrderPostRequest hostname(String hostname) {
    this.hostname = hostname;
    return this;
  }

  /**
   * Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist.
   * @return hostname
  **/
  @Schema(required = true, description = "Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist.")
  @NotNull

  public String getHostname() {
    return hostname;
  }

  public void setHostname(String hostname) {
    this.hostname = hostname;
  }

  public WebsiteOrderPostRequest packageId(Integer packageId) {
    this.packageId = packageId;
    return this;
  }

  /**
   * Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable).
   * @return packageId
  **/
  @Schema(required = true, description = "Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable).")
  @NotNull

  public Integer getPackageId() {
    return packageId;
  }

  public void setPackageId(Integer packageId) {
    this.packageId = packageId;
  }

  public WebsiteOrderPostRequest rootpass(String rootpass) {
    this.rootpass = rootpass;
    return this;
  }

  /**
   * Control-panel admin password. If blank, a random password is generated server-side.
   * @return rootpass
  **/
  @Schema(description = "Control-panel admin password. If blank, a random password is generated server-side.")
  @NotNull

  public String getRootpass() {
    return rootpass;
  }

  public void setRootpass(String rootpass) {
    this.rootpass = rootpass;
  }

  public WebsiteOrderPostRequest period(Integer period) {
    this.period = period;
    return this;
  }

  /**
   * Billing cycle in months (1 / 6 / 12 / 24 / 36).
   * @return period
  **/
  @Schema(description = "Billing cycle in months (1 / 6 / 12 / 24 / 36).")
  @NotNull

  public Integer getPeriod() {
    return period;
  }

  public void setPeriod(Integer period) {
    this.period = period;
  }

  public WebsiteOrderPostRequest coupon(String coupon) {
    this.coupon = coupon;
    return this;
  }

  /**
   * Coupon code.
   * @return coupon
  **/
  @Schema(description = "Coupon code.")
  @NotNull

  public String getCoupon() {
    return coupon;
  }

  public void setCoupon(String coupon) {
    this.coupon = coupon;
  }

  public WebsiteOrderPostRequest serviceOfferId(Integer serviceOfferId) {
    this.serviceOfferId = serviceOfferId;
    return this;
  }

  /**
   * Promo bundle id from getNewWebsite.serviceOffers.
   * @return serviceOfferId
  **/
  @Schema(description = "Promo bundle id from getNewWebsite.serviceOffers.")
  @NotNull

  public Integer getServiceOfferId() {
    return serviceOfferId;
  }

  public void setServiceOfferId(Integer serviceOfferId) {
    this.serviceOfferId = serviceOfferId;
  }

  public WebsiteOrderPostRequest script(Integer script) {
    this.script = script;
    return this;
  }

  /**
   * Auto-installer id (0 = none).
   * @return script
  **/
  @Schema(description = "Auto-installer id (0 = none).")
  @NotNull

  public Integer getScript() {
    return script;
  }

  public void setScript(Integer script) {
    this.script = script;
  }

  public WebsiteOrderPostRequest comment(String comment) {
    this.comment = comment;
    return this;
  }

  /**
   * Free-form note saved on the service row.
   * @return comment
  **/
  @Schema(description = "Free-form note saved on the service row.")
  @NotNull

  public String getComment() {
    return comment;
  }

  public void setComment(String comment) {
    this.comment = comment;
  }

  public WebsiteOrderPostRequest registerDomain(Boolean registerDomain) {
    this.registerDomain = registerDomain;
    return this;
  }

  /**
   * When true and enableDomainRegistering=true from the catalog, also registers/transfers the domain through the order.
   * @return registerDomain
  **/
  @Schema(description = "When true and enableDomainRegistering=true from the catalog, also registers/transfers the domain through the order.")
  @NotNull

  public Boolean isRegisterDomain() {
    return registerDomain;
  }

  public void setRegisterDomain(Boolean registerDomain) {
    this.registerDomain = registerDomain;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    WebsiteOrderPostRequest websiteOrderPostRequest = (WebsiteOrderPostRequest) o;
    return Objects.equals(this.hostname, websiteOrderPostRequest.hostname) &&
        Objects.equals(this.packageId, websiteOrderPostRequest.packageId) &&
        Objects.equals(this.rootpass, websiteOrderPostRequest.rootpass) &&
        Objects.equals(this.period, websiteOrderPostRequest.period) &&
        Objects.equals(this.coupon, websiteOrderPostRequest.coupon) &&
        Objects.equals(this.serviceOfferId, websiteOrderPostRequest.serviceOfferId) &&
        Objects.equals(this.script, websiteOrderPostRequest.script) &&
        Objects.equals(this.comment, websiteOrderPostRequest.comment) &&
        Objects.equals(this.registerDomain, websiteOrderPostRequest.registerDomain);
  }

  @Override
  public int hashCode() {
    return Objects.hash(hostname, packageId, rootpass, period, coupon, serviceOfferId, script, comment, registerDomain);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class WebsiteOrderPostRequest {\n");
    
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
