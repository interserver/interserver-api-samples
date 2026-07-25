package org.openapitools.model;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * request to validate a webhosting order
 */
@ApiModel(description="request to validate a webhosting order")

public class WebsiteOrderPutRequest  {
  
 /**
  * Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist.
  */
  @ApiModelProperty(required = true, value = "Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist.")

  private String hostname;

 /**
  * Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable).
  */
  @ApiModelProperty(required = true, value = "Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable).")

  private Integer packageId;

 /**
  * Control-panel admin password. If blank, a random password is generated server-side.
  */
  @ApiModelProperty(value = "Control-panel admin password. If blank, a random password is generated server-side.")

  private String rootpass = "";

 /**
  * Billing cycle in months (1 / 6 / 12 / 24 / 36).
  */
  @ApiModelProperty(value = "Billing cycle in months (1 / 6 / 12 / 24 / 36).")

  private Integer period = 1;

 /**
  * Coupon code.
  */
  @ApiModelProperty(value = "Coupon code.")

  private String coupon = "";

 /**
  * Promo bundle id from getNewWebsite.serviceOffers.
  */
  @ApiModelProperty(value = "Promo bundle id from getNewWebsite.serviceOffers.")

  private Integer serviceOfferId = 0;

 /**
  * Auto-installer id (0 = none).
  */
  @ApiModelProperty(value = "Auto-installer id (0 = none).")

  private Integer script = 0;

 /**
  * Free-form note saved on the service row.
  */
  @ApiModelProperty(value = "Free-form note saved on the service row.")

  private String comment = "";

 /**
  * When true and enableDomainRegistering=true from the catalog, also registers/transfers the domain through the order.
  */
  @ApiModelProperty(value = "When true and enableDomainRegistering=true from the catalog, also registers/transfers the domain through the order.")

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
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    WebsiteOrderPutRequest websiteOrderPutRequest = (WebsiteOrderPutRequest) o;
    return Objects.equals(this.hostname, websiteOrderPutRequest.hostname) &&
        Objects.equals(this.packageId, websiteOrderPutRequest.packageId) &&
        Objects.equals(this.rootpass, websiteOrderPutRequest.rootpass) &&
        Objects.equals(this.period, websiteOrderPutRequest.period) &&
        Objects.equals(this.coupon, websiteOrderPutRequest.coupon) &&
        Objects.equals(this.serviceOfferId, websiteOrderPutRequest.serviceOfferId) &&
        Objects.equals(this.script, websiteOrderPutRequest.script) &&
        Objects.equals(this.comment, websiteOrderPutRequest.comment) &&
        Objects.equals(this.registerDomain, websiteOrderPutRequest.registerDomain);
  }

  @Override
  public int hashCode() {
    return Objects.hash(hostname, packageId, rootpass, period, coupon, serviceOfferId, script, comment, registerDomain);
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
  private static String toIndentedString(Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}

