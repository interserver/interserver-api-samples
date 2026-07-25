package io.swagger.model;

import io.swagger.v3.oas.annotations.media.Schema;
import javax.validation.constraints.*;
import javax.validation.Valid;

/**
 * request to place a webhosting order
 **/
import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
@Schema(description = "request to place a webhosting order")

public class WebsiteOrderPostRequest   {

  private @Valid String hostname = null;

  private @Valid Integer packageId = null;

  private @Valid String rootpass = "";

  private @Valid Integer period = 1;

  private @Valid String coupon = "";

  private @Valid Integer serviceOfferId = 0;

  private @Valid Integer script = 0;

  private @Valid String comment = "";

  private @Valid Boolean registerDomain = false;

  /**
   * Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist.
   **/
  public WebsiteOrderPostRequest hostname(String hostname) {
    this.hostname = hostname;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist.")
  @JsonProperty("hostname")
  @NotNull

  public String getHostname() {
    return hostname;
  }
  public void setHostname(String hostname) {
    this.hostname = hostname;
  }

  /**
   * Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable).
   **/
  public WebsiteOrderPostRequest packageId(Integer packageId) {
    this.packageId = packageId;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable).")
  @JsonProperty("packageId")
  @NotNull

  public Integer getPackageId() {
    return packageId;
  }
  public void setPackageId(Integer packageId) {
    this.packageId = packageId;
  }

  /**
   * Control-panel admin password. If blank, a random password is generated server-side.
   **/
  public WebsiteOrderPostRequest rootpass(String rootpass) {
    this.rootpass = rootpass;
    return this;
  }

  
  @ApiModelProperty(value = "Control-panel admin password. If blank, a random password is generated server-side.")
  @JsonProperty("rootpass")
  @NotNull

  public String getRootpass() {
    return rootpass;
  }
  public void setRootpass(String rootpass) {
    this.rootpass = rootpass;
  }

  /**
   * Billing cycle in months (1 / 6 / 12 / 24 / 36).
   **/
  public WebsiteOrderPostRequest period(Integer period) {
    this.period = period;
    return this;
  }

  
  @ApiModelProperty(value = "Billing cycle in months (1 / 6 / 12 / 24 / 36).")
  @JsonProperty("period")
  @NotNull

  public Integer getPeriod() {
    return period;
  }
  public void setPeriod(Integer period) {
    this.period = period;
  }

  /**
   * Coupon code.
   **/
  public WebsiteOrderPostRequest coupon(String coupon) {
    this.coupon = coupon;
    return this;
  }

  
  @ApiModelProperty(value = "Coupon code.")
  @JsonProperty("coupon")
  @NotNull

  public String getCoupon() {
    return coupon;
  }
  public void setCoupon(String coupon) {
    this.coupon = coupon;
  }

  /**
   * Promo bundle id from getNewWebsite.serviceOffers.
   **/
  public WebsiteOrderPostRequest serviceOfferId(Integer serviceOfferId) {
    this.serviceOfferId = serviceOfferId;
    return this;
  }

  
  @ApiModelProperty(value = "Promo bundle id from getNewWebsite.serviceOffers.")
  @JsonProperty("serviceOfferId")
  @NotNull

  public Integer getServiceOfferId() {
    return serviceOfferId;
  }
  public void setServiceOfferId(Integer serviceOfferId) {
    this.serviceOfferId = serviceOfferId;
  }

  /**
   * Auto-installer id (0 &#x3D; none).
   **/
  public WebsiteOrderPostRequest script(Integer script) {
    this.script = script;
    return this;
  }

  
  @ApiModelProperty(value = "Auto-installer id (0 = none).")
  @JsonProperty("script")
  @NotNull

  public Integer getScript() {
    return script;
  }
  public void setScript(Integer script) {
    this.script = script;
  }

  /**
   * Free-form note saved on the service row.
   **/
  public WebsiteOrderPostRequest comment(String comment) {
    this.comment = comment;
    return this;
  }

  
  @ApiModelProperty(value = "Free-form note saved on the service row.")
  @JsonProperty("comment")
  @NotNull

  public String getComment() {
    return comment;
  }
  public void setComment(String comment) {
    this.comment = comment;
  }

  /**
   * When true and enableDomainRegistering&#x3D;true from the catalog, also registers/transfers the domain through the order.
   **/
  public WebsiteOrderPostRequest registerDomain(Boolean registerDomain) {
    this.registerDomain = registerDomain;
    return this;
  }

  
  @ApiModelProperty(value = "When true and enableDomainRegistering=true from the catalog, also registers/transfers the domain through the order.")
  @JsonProperty("registerDomain")
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
    return Objects.equals(hostname, websiteOrderPostRequest.hostname) &&
        Objects.equals(packageId, websiteOrderPostRequest.packageId) &&
        Objects.equals(rootpass, websiteOrderPostRequest.rootpass) &&
        Objects.equals(period, websiteOrderPostRequest.period) &&
        Objects.equals(coupon, websiteOrderPostRequest.coupon) &&
        Objects.equals(serviceOfferId, websiteOrderPostRequest.serviceOfferId) &&
        Objects.equals(script, websiteOrderPostRequest.script) &&
        Objects.equals(comment, websiteOrderPostRequest.comment) &&
        Objects.equals(registerDomain, websiteOrderPostRequest.registerDomain);
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
