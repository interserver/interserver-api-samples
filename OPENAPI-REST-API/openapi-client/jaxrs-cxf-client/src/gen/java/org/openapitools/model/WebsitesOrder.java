package org.openapitools.model;

import org.openapitools.model.WebsitesOrderJsonServiceOffers;
import org.openapitools.model.WebsitesOrderJsonServices;
import org.openapitools.model.WebsitesOrderPackages;
import org.openapitools.model.WebsitesOrderPackges;
import org.openapitools.model.WebsitesOrderServiceOffers;
import org.openapitools.model.WebsitesOrderServiceTypes;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Schema for the WebsitesOrder object
 */
@ApiModel(description="Schema for the WebsitesOrder object")

public class WebsitesOrder  {
  
 /**
  * Step description
  */
  @ApiModelProperty(example = "order_form", required = true, value = "Step description")

  private String step;

 /**
  * Website description
  */
  @ApiModelProperty(example = "", required = true, value = "Website description")

  private String website;

 /**
  * Period description
  */
  @ApiModelProperty(example = "1", required = true, value = "Period description")

  private Integer period;

 /**
  * Service offer ID description
  */
  @ApiModelProperty(example = "0", required = true, value = "Service offer ID description")

  private Integer serviceOfferId;

  @ApiModelProperty(required = true, value = "")

  private WebsitesOrderPackages packages;

 /**
  * Enable domain registering description
  */
  @ApiModelProperty(example = "false", required = true, value = "Enable domain registering description")

  private Boolean enableDomainRegistering;

  @ApiModelProperty(required = true, value = "")

  private WebsitesOrderJsonServices jsonServices;

  @ApiModelProperty(required = true, value = "")

  private WebsitesOrderJsonServiceOffers jsonServiceOffers;

  @ApiModelProperty(required = true, value = "")

  private WebsitesOrderServiceTypes serviceTypes;

  @ApiModelProperty(required = true, value = "")

  private WebsitesOrderServiceOffers serviceOffers;

  @ApiModelProperty(value = "")

  private WebsitesOrderPackges packges;
 /**
   * Step description
   * @return step
  **/
  @JsonProperty("step")
  public String getStep() {
    return step;
  }

  public void setStep(String step) {
    this.step = step;
  }

  public WebsitesOrder step(String step) {
    this.step = step;
    return this;
  }

 /**
   * Website description
   * @return website
  **/
  @JsonProperty("website")
  public String getWebsite() {
    return website;
  }

  public void setWebsite(String website) {
    this.website = website;
  }

  public WebsitesOrder website(String website) {
    this.website = website;
    return this;
  }

 /**
   * Period description
   * @return period
  **/
  @JsonProperty("period")
  public Integer getPeriod() {
    return period;
  }

  public void setPeriod(Integer period) {
    this.period = period;
  }

  public WebsitesOrder period(Integer period) {
    this.period = period;
    return this;
  }

 /**
   * Service offer ID description
   * @return serviceOfferId
  **/
  @JsonProperty("serviceOfferId")
  public Integer getServiceOfferId() {
    return serviceOfferId;
  }

  public void setServiceOfferId(Integer serviceOfferId) {
    this.serviceOfferId = serviceOfferId;
  }

  public WebsitesOrder serviceOfferId(Integer serviceOfferId) {
    this.serviceOfferId = serviceOfferId;
    return this;
  }

 /**
   * Get packages
   * @return packages
  **/
  @JsonProperty("packages")
  public WebsitesOrderPackages getPackages() {
    return packages;
  }

  public void setPackages(WebsitesOrderPackages packages) {
    this.packages = packages;
  }

  public WebsitesOrder packages(WebsitesOrderPackages packages) {
    this.packages = packages;
    return this;
  }

 /**
   * Enable domain registering description
   * @return enableDomainRegistering
  **/
  @JsonProperty("enableDomainRegistering")
  public Boolean isEnableDomainRegistering() {
    return enableDomainRegistering;
  }

  public void setEnableDomainRegistering(Boolean enableDomainRegistering) {
    this.enableDomainRegistering = enableDomainRegistering;
  }

  public WebsitesOrder enableDomainRegistering(Boolean enableDomainRegistering) {
    this.enableDomainRegistering = enableDomainRegistering;
    return this;
  }

 /**
   * Get jsonServices
   * @return jsonServices
  **/
  @JsonProperty("jsonServices")
  public WebsitesOrderJsonServices getJsonServices() {
    return jsonServices;
  }

  public void setJsonServices(WebsitesOrderJsonServices jsonServices) {
    this.jsonServices = jsonServices;
  }

  public WebsitesOrder jsonServices(WebsitesOrderJsonServices jsonServices) {
    this.jsonServices = jsonServices;
    return this;
  }

 /**
   * Get jsonServiceOffers
   * @return jsonServiceOffers
  **/
  @JsonProperty("jsonServiceOffers")
  public WebsitesOrderJsonServiceOffers getJsonServiceOffers() {
    return jsonServiceOffers;
  }

  public void setJsonServiceOffers(WebsitesOrderJsonServiceOffers jsonServiceOffers) {
    this.jsonServiceOffers = jsonServiceOffers;
  }

  public WebsitesOrder jsonServiceOffers(WebsitesOrderJsonServiceOffers jsonServiceOffers) {
    this.jsonServiceOffers = jsonServiceOffers;
    return this;
  }

 /**
   * Get serviceTypes
   * @return serviceTypes
  **/
  @JsonProperty("serviceTypes")
  public WebsitesOrderServiceTypes getServiceTypes() {
    return serviceTypes;
  }

  public void setServiceTypes(WebsitesOrderServiceTypes serviceTypes) {
    this.serviceTypes = serviceTypes;
  }

  public WebsitesOrder serviceTypes(WebsitesOrderServiceTypes serviceTypes) {
    this.serviceTypes = serviceTypes;
    return this;
  }

 /**
   * Get serviceOffers
   * @return serviceOffers
  **/
  @JsonProperty("serviceOffers")
  public WebsitesOrderServiceOffers getServiceOffers() {
    return serviceOffers;
  }

  public void setServiceOffers(WebsitesOrderServiceOffers serviceOffers) {
    this.serviceOffers = serviceOffers;
  }

  public WebsitesOrder serviceOffers(WebsitesOrderServiceOffers serviceOffers) {
    this.serviceOffers = serviceOffers;
    return this;
  }

 /**
   * Get packges
   * @return packges
  **/
  @JsonProperty("packges")
  public WebsitesOrderPackges getPackges() {
    return packges;
  }

  public void setPackges(WebsitesOrderPackges packges) {
    this.packges = packges;
  }

  public WebsitesOrder packges(WebsitesOrderPackges packges) {
    this.packges = packges;
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
    WebsitesOrder websitesOrder = (WebsitesOrder) o;
    return Objects.equals(this.step, websitesOrder.step) &&
        Objects.equals(this.website, websitesOrder.website) &&
        Objects.equals(this.period, websitesOrder.period) &&
        Objects.equals(this.serviceOfferId, websitesOrder.serviceOfferId) &&
        Objects.equals(this.packages, websitesOrder.packages) &&
        Objects.equals(this.enableDomainRegistering, websitesOrder.enableDomainRegistering) &&
        Objects.equals(this.jsonServices, websitesOrder.jsonServices) &&
        Objects.equals(this.jsonServiceOffers, websitesOrder.jsonServiceOffers) &&
        Objects.equals(this.serviceTypes, websitesOrder.serviceTypes) &&
        Objects.equals(this.serviceOffers, websitesOrder.serviceOffers) &&
        Objects.equals(this.packges, websitesOrder.packges);
  }

  @Override
  public int hashCode() {
    return Objects.hash(step, website, period, serviceOfferId, packages, enableDomainRegistering, jsonServices, jsonServiceOffers, serviceTypes, serviceOffers, packges);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class WebsitesOrder {\n");
    
    sb.append("    step: ").append(toIndentedString(step)).append("\n");
    sb.append("    website: ").append(toIndentedString(website)).append("\n");
    sb.append("    period: ").append(toIndentedString(period)).append("\n");
    sb.append("    serviceOfferId: ").append(toIndentedString(serviceOfferId)).append("\n");
    sb.append("    packages: ").append(toIndentedString(packages)).append("\n");
    sb.append("    enableDomainRegistering: ").append(toIndentedString(enableDomainRegistering)).append("\n");
    sb.append("    jsonServices: ").append(toIndentedString(jsonServices)).append("\n");
    sb.append("    jsonServiceOffers: ").append(toIndentedString(jsonServiceOffers)).append("\n");
    sb.append("    serviceTypes: ").append(toIndentedString(serviceTypes)).append("\n");
    sb.append("    serviceOffers: ").append(toIndentedString(serviceOffers)).append("\n");
    sb.append("    packges: ").append(toIndentedString(packges)).append("\n");
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

