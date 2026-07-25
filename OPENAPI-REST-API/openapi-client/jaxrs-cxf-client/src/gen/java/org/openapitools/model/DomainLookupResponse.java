package org.openapitools.model;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Availability, pricing, and order-field metadata for a domain lookup.
 */
@ApiModel(description="Availability, pricing, and order-field metadata for a domain lookup.")

public class DomainLookupResponse  {
  
 /**
  * Whether the domain is available to register.
  */
  @ApiModelProperty(value = "Whether the domain is available to register.")

  private Boolean available;

 /**
  * Whether the domain is marked as premium by the registrar.
  */
  @ApiModelProperty(value = "Whether the domain is marked as premium by the registrar.")

  private Boolean premium;

 /**
  * Indicates if the domain is already used by a website service.
  */
  @ApiModelProperty(value = "Indicates if the domain is already used by a website service.")

  private Boolean website;

 /**
  * Indicates if the domain already exists as a domain service on the account.
  */
  @ApiModelProperty(value = "Indicates if the domain already exists as a domain service on the account.")

  private Boolean domainService;

 /**
  * Service catalog details for the domain's TLD.
  */
  @ApiModelProperty(value = "Service catalog details for the domain's TLD.")

  private Object service;

 /**
  * Whether Whois privacy is available for the TLD.
  */
  @ApiModelProperty(value = "Whether Whois privacy is available for the TLD.")

  private Boolean whoisPrivacy;

 /**
  * Calculated registration price, when available.
  */
  @ApiModelProperty(value = "Calculated registration price, when available.")

  private String _new;

 /**
  * Calculated renewal price, when available.
  */
  @ApiModelProperty(value = "Calculated renewal price, when available.")

  private String renewal;

 /**
  * Calculated transfer price, when available.
  */
  @ApiModelProperty(value = "Calculated transfer price, when available.")

  private String transfer;

 /**
  * Registrar field requirements for this domain/TLD.
  */
  @ApiModelProperty(value = "Registrar field requirements for this domain/TLD.")

  private Object fields;

 /**
  * Pricing information normalized to supported currencies.
  */
  @ApiModelProperty(value = "Pricing information normalized to supported currencies.")

  private Object currencies;
 /**
   * Whether the domain is available to register.
   * @return available
  **/
  @JsonProperty("available")
  public Boolean isAvailable() {
    return available;
  }

  public void setAvailable(Boolean available) {
    this.available = available;
  }

  public DomainLookupResponse available(Boolean available) {
    this.available = available;
    return this;
  }

 /**
   * Whether the domain is marked as premium by the registrar.
   * @return premium
  **/
  @JsonProperty("premium")
  public Boolean isPremium() {
    return premium;
  }

  public void setPremium(Boolean premium) {
    this.premium = premium;
  }

  public DomainLookupResponse premium(Boolean premium) {
    this.premium = premium;
    return this;
  }

 /**
   * Indicates if the domain is already used by a website service.
   * @return website
  **/
  @JsonProperty("website")
  public Boolean isWebsite() {
    return website;
  }

  public void setWebsite(Boolean website) {
    this.website = website;
  }

  public DomainLookupResponse website(Boolean website) {
    this.website = website;
    return this;
  }

 /**
   * Indicates if the domain already exists as a domain service on the account.
   * @return domainService
  **/
  @JsonProperty("domain_service")
  public Boolean isDomainService() {
    return domainService;
  }

  public void setDomainService(Boolean domainService) {
    this.domainService = domainService;
  }

  public DomainLookupResponse domainService(Boolean domainService) {
    this.domainService = domainService;
    return this;
  }

 /**
   * Service catalog details for the domain&#39;s TLD.
   * @return service
  **/
  @JsonProperty("service")
  public Object getService() {
    return service;
  }

  public void setService(Object service) {
    this.service = service;
  }

  public DomainLookupResponse service(Object service) {
    this.service = service;
    return this;
  }

 /**
   * Whether Whois privacy is available for the TLD.
   * @return whoisPrivacy
  **/
  @JsonProperty("whois_privacy")
  public Boolean isWhoisPrivacy() {
    return whoisPrivacy;
  }

  public void setWhoisPrivacy(Boolean whoisPrivacy) {
    this.whoisPrivacy = whoisPrivacy;
  }

  public DomainLookupResponse whoisPrivacy(Boolean whoisPrivacy) {
    this.whoisPrivacy = whoisPrivacy;
    return this;
  }

 /**
   * Calculated registration price, when available.
   * @return _new
  **/
  @JsonProperty("new")
  public String getNew() {
    return _new;
  }

  public void setNew(String _new) {
    this._new = _new;
  }

  public DomainLookupResponse _new(String _new) {
    this._new = _new;
    return this;
  }

 /**
   * Calculated renewal price, when available.
   * @return renewal
  **/
  @JsonProperty("renewal")
  public String getRenewal() {
    return renewal;
  }

  public void setRenewal(String renewal) {
    this.renewal = renewal;
  }

  public DomainLookupResponse renewal(String renewal) {
    this.renewal = renewal;
    return this;
  }

 /**
   * Calculated transfer price, when available.
   * @return transfer
  **/
  @JsonProperty("transfer")
  public String getTransfer() {
    return transfer;
  }

  public void setTransfer(String transfer) {
    this.transfer = transfer;
  }

  public DomainLookupResponse transfer(String transfer) {
    this.transfer = transfer;
    return this;
  }

 /**
   * Registrar field requirements for this domain/TLD.
   * @return fields
  **/
  @JsonProperty("fields")
  public Object getFields() {
    return fields;
  }

  public void setFields(Object fields) {
    this.fields = fields;
  }

  public DomainLookupResponse fields(Object fields) {
    this.fields = fields;
    return this;
  }

 /**
   * Pricing information normalized to supported currencies.
   * @return currencies
  **/
  @JsonProperty("currencies")
  public Object getCurrencies() {
    return currencies;
  }

  public void setCurrencies(Object currencies) {
    this.currencies = currencies;
  }

  public DomainLookupResponse currencies(Object currencies) {
    this.currencies = currencies;
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
    DomainLookupResponse domainLookupResponse = (DomainLookupResponse) o;
    return Objects.equals(this.available, domainLookupResponse.available) &&
        Objects.equals(this.premium, domainLookupResponse.premium) &&
        Objects.equals(this.website, domainLookupResponse.website) &&
        Objects.equals(this.domainService, domainLookupResponse.domainService) &&
        Objects.equals(this.service, domainLookupResponse.service) &&
        Objects.equals(this.whoisPrivacy, domainLookupResponse.whoisPrivacy) &&
        Objects.equals(this._new, domainLookupResponse._new) &&
        Objects.equals(this.renewal, domainLookupResponse.renewal) &&
        Objects.equals(this.transfer, domainLookupResponse.transfer) &&
        Objects.equals(this.fields, domainLookupResponse.fields) &&
        Objects.equals(this.currencies, domainLookupResponse.currencies);
  }

  @Override
  public int hashCode() {
    return Objects.hash(available, premium, website, domainService, service, whoisPrivacy, _new, renewal, transfer, fields, currencies);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DomainLookupResponse {\n");
    
    sb.append("    available: ").append(toIndentedString(available)).append("\n");
    sb.append("    premium: ").append(toIndentedString(premium)).append("\n");
    sb.append("    website: ").append(toIndentedString(website)).append("\n");
    sb.append("    domainService: ").append(toIndentedString(domainService)).append("\n");
    sb.append("    service: ").append(toIndentedString(service)).append("\n");
    sb.append("    whoisPrivacy: ").append(toIndentedString(whoisPrivacy)).append("\n");
    sb.append("    _new: ").append(toIndentedString(_new)).append("\n");
    sb.append("    renewal: ").append(toIndentedString(renewal)).append("\n");
    sb.append("    transfer: ").append(toIndentedString(transfer)).append("\n");
    sb.append("    fields: ").append(toIndentedString(fields)).append("\n");
    sb.append("    currencies: ").append(toIndentedString(currencies)).append("\n");
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

