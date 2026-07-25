package io.swagger.model;

import java.util.Objects;
import java.util.ArrayList;
import java.util.HashMap;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;

@Schema(description="request to place a webhosting order")

public class WebsiteOrderPostRequest   {
  private String hostname = null;  private Integer packageId = null;  private String rootpass = "";  private Integer period = 1;  private String coupon = "";  private Integer serviceOfferId = 0;  private Integer script = 0;  private String comment = "";  private Boolean registerDomain = false;

  /**
   * Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist.
   **/
  
  @Schema(required = true, description = "Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist.")
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
  
  @Schema(required = true, description = "Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable).")
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
  
  @Schema(description = "Control-panel admin password. If blank, a random password is generated server-side.")
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
  
  @Schema(description = "Billing cycle in months (1 / 6 / 12 / 24 / 36).")
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
  
  @Schema(description = "Coupon code.")
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
  
  @Schema(description = "Promo bundle id from getNewWebsite.serviceOffers.")
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
  
  @Schema(description = "Auto-installer id (0 = none).")
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
  
  @Schema(description = "Free-form note saved on the service row.")
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
  
  @Schema(description = "When true and enableDomainRegistering=true from the catalog, also registers/transfers the domain through the order.")
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
