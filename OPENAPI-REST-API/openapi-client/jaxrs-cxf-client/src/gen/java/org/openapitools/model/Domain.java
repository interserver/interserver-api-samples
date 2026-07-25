package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.openapitools.model.BackupExtraInfoTables;
import org.openapitools.model.DomainAllInfo;
import org.openapitools.model.DomainBillingDetails;
import org.openapitools.model.DomainBillingExtra;
import org.openapitools.model.DomainClientLink;
import org.openapitools.model.DomainContactDetails;
import org.openapitools.model.DomainServiceInfo;
import org.openapitools.model.DomainServiceType;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Full detail view of a domain service including billing, contacts, DNS, and configuration.
 */
@ApiModel(description="Full detail view of a domain service including billing, contacts, DNS, and configuration.")

public class Domain  {
  
  @ApiModelProperty(value = "")

  private DomainServiceInfo serviceInfo;

  @ApiModelProperty(value = "")

  private Map<String, DomainServiceType> serviceTypes = new HashMap<>();

  @ApiModelProperty(value = "")

  private List<DomainClientLink> clientLinks = new ArrayList<>();

  @ApiModelProperty(value = "")

  private DomainBillingDetails billingDetails;

  @ApiModelProperty(value = "")

  private String custCurrency;

  @ApiModelProperty(value = "")

  private String custCurrencySymbol;

  @ApiModelProperty(value = "")

  private DomainBillingExtra serviceExtra;

  @ApiModelProperty(value = "")

  private BackupExtraInfoTables extraInfoTables;

  @ApiModelProperty(value = "")

  private DomainServiceType serviceType;

  @ApiModelProperty(value = "")

  private DomainContactDetails contactDetails;

  @ApiModelProperty(value = "")

  private String pwarning;

  @ApiModelProperty(value = "")

  private String transferInfo;

  @ApiModelProperty(value = "")

  private Boolean errors;

  @ApiModelProperty(value = "")

  private List<String> domainLogs = new ArrayList<>();

  @ApiModelProperty(value = "")

  private DomainAllInfo allInfo;

  @ApiModelProperty(value = "")

  private String registrarStatus;

  @ApiModelProperty(value = "")

  private String locked;

  @ApiModelProperty(value = "")

  private String whoisPrivacy;

  @ApiModelProperty(value = "")

  private String autoRenew;
 /**
   * Get serviceInfo
   * @return serviceInfo
  **/
  @JsonProperty("serviceInfo")
  public DomainServiceInfo getServiceInfo() {
    return serviceInfo;
  }

  public void setServiceInfo(DomainServiceInfo serviceInfo) {
    this.serviceInfo = serviceInfo;
  }

  public Domain serviceInfo(DomainServiceInfo serviceInfo) {
    this.serviceInfo = serviceInfo;
    return this;
  }

 /**
   * Get serviceTypes
   * @return serviceTypes
  **/
  @JsonProperty("serviceTypes")
  public Map<String, DomainServiceType> getServiceTypes() {
    return serviceTypes;
  }

  public void setServiceTypes(Map<String, DomainServiceType> serviceTypes) {
    this.serviceTypes = serviceTypes;
  }

  public Domain serviceTypes(Map<String, DomainServiceType> serviceTypes) {
    this.serviceTypes = serviceTypes;
    return this;
  }

  public Domain putServiceTypesItem(String key, DomainServiceType serviceTypesItem) {
    this.serviceTypes.put(key, serviceTypesItem);
    return this;
  }

 /**
   * Get clientLinks
   * @return clientLinks
  **/
  @JsonProperty("client_links")
  public List<DomainClientLink> getClientLinks() {
    return clientLinks;
  }

  public void setClientLinks(List<DomainClientLink> clientLinks) {
    this.clientLinks = clientLinks;
  }

  public Domain clientLinks(List<DomainClientLink> clientLinks) {
    this.clientLinks = clientLinks;
    return this;
  }

  public Domain addClientLinksItem(DomainClientLink clientLinksItem) {
    this.clientLinks.add(clientLinksItem);
    return this;
  }

 /**
   * Get billingDetails
   * @return billingDetails
  **/
  @JsonProperty("billingDetails")
  public DomainBillingDetails getBillingDetails() {
    return billingDetails;
  }

  public void setBillingDetails(DomainBillingDetails billingDetails) {
    this.billingDetails = billingDetails;
  }

  public Domain billingDetails(DomainBillingDetails billingDetails) {
    this.billingDetails = billingDetails;
    return this;
  }

 /**
   * Get custCurrency
   * @return custCurrency
  **/
  @JsonProperty("custCurrency")
  public String getCustCurrency() {
    return custCurrency;
  }

  public void setCustCurrency(String custCurrency) {
    this.custCurrency = custCurrency;
  }

  public Domain custCurrency(String custCurrency) {
    this.custCurrency = custCurrency;
    return this;
  }

 /**
   * Get custCurrencySymbol
   * @return custCurrencySymbol
  **/
  @JsonProperty("custCurrencySymbol")
  public String getCustCurrencySymbol() {
    return custCurrencySymbol;
  }

  public void setCustCurrencySymbol(String custCurrencySymbol) {
    this.custCurrencySymbol = custCurrencySymbol;
  }

  public Domain custCurrencySymbol(String custCurrencySymbol) {
    this.custCurrencySymbol = custCurrencySymbol;
    return this;
  }

 /**
   * Get serviceExtra
   * @return serviceExtra
  **/
  @JsonProperty("serviceExtra")
  public DomainBillingExtra getServiceExtra() {
    return serviceExtra;
  }

  public void setServiceExtra(DomainBillingExtra serviceExtra) {
    this.serviceExtra = serviceExtra;
  }

  public Domain serviceExtra(DomainBillingExtra serviceExtra) {
    this.serviceExtra = serviceExtra;
    return this;
  }

 /**
   * Get extraInfoTables
   * @return extraInfoTables
  **/
  @JsonProperty("extraInfoTables")
  public BackupExtraInfoTables getExtraInfoTables() {
    return extraInfoTables;
  }

  public void setExtraInfoTables(BackupExtraInfoTables extraInfoTables) {
    this.extraInfoTables = extraInfoTables;
  }

  public Domain extraInfoTables(BackupExtraInfoTables extraInfoTables) {
    this.extraInfoTables = extraInfoTables;
    return this;
  }

 /**
   * Get serviceType
   * @return serviceType
  **/
  @JsonProperty("serviceType")
  public DomainServiceType getServiceType() {
    return serviceType;
  }

  public void setServiceType(DomainServiceType serviceType) {
    this.serviceType = serviceType;
  }

  public Domain serviceType(DomainServiceType serviceType) {
    this.serviceType = serviceType;
    return this;
  }

 /**
   * Get contactDetails
   * @return contactDetails
  **/
  @JsonProperty("contact_details")
  public DomainContactDetails getContactDetails() {
    return contactDetails;
  }

  public void setContactDetails(DomainContactDetails contactDetails) {
    this.contactDetails = contactDetails;
  }

  public Domain contactDetails(DomainContactDetails contactDetails) {
    this.contactDetails = contactDetails;
    return this;
  }

 /**
   * Get pwarning
   * @return pwarning
  **/
  @JsonProperty("pwarning")
  public String getPwarning() {
    return pwarning;
  }

  public void setPwarning(String pwarning) {
    this.pwarning = pwarning;
  }

  public Domain pwarning(String pwarning) {
    this.pwarning = pwarning;
    return this;
  }

 /**
   * Get transferInfo
   * @return transferInfo
  **/
  @JsonProperty("transfer_info")
  public String getTransferInfo() {
    return transferInfo;
  }

  public void setTransferInfo(String transferInfo) {
    this.transferInfo = transferInfo;
  }

  public Domain transferInfo(String transferInfo) {
    this.transferInfo = transferInfo;
    return this;
  }

 /**
   * Get errors
   * @return errors
  **/
  @JsonProperty("errors")
  public Boolean isErrors() {
    return errors;
  }

  public void setErrors(Boolean errors) {
    this.errors = errors;
  }

  public Domain errors(Boolean errors) {
    this.errors = errors;
    return this;
  }

 /**
   * Get domainLogs
   * @return domainLogs
  **/
  @JsonProperty("domain_logs")
  public List<String> getDomainLogs() {
    return domainLogs;
  }

  public void setDomainLogs(List<String> domainLogs) {
    this.domainLogs = domainLogs;
  }

  public Domain domainLogs(List<String> domainLogs) {
    this.domainLogs = domainLogs;
    return this;
  }

  public Domain addDomainLogsItem(String domainLogsItem) {
    this.domainLogs.add(domainLogsItem);
    return this;
  }

 /**
   * Get allInfo
   * @return allInfo
  **/
  @JsonProperty("allInfo")
  public DomainAllInfo getAllInfo() {
    return allInfo;
  }

  public void setAllInfo(DomainAllInfo allInfo) {
    this.allInfo = allInfo;
  }

  public Domain allInfo(DomainAllInfo allInfo) {
    this.allInfo = allInfo;
    return this;
  }

 /**
   * Get registrarStatus
   * @return registrarStatus
  **/
  @JsonProperty("registrarStatus")
  public String getRegistrarStatus() {
    return registrarStatus;
  }

  public void setRegistrarStatus(String registrarStatus) {
    this.registrarStatus = registrarStatus;
  }

  public Domain registrarStatus(String registrarStatus) {
    this.registrarStatus = registrarStatus;
    return this;
  }

 /**
   * Get locked
   * @return locked
  **/
  @JsonProperty("locked")
  public String getLocked() {
    return locked;
  }

  public void setLocked(String locked) {
    this.locked = locked;
  }

  public Domain locked(String locked) {
    this.locked = locked;
    return this;
  }

 /**
   * Get whoisPrivacy
   * @return whoisPrivacy
  **/
  @JsonProperty("whoisPrivacy")
  public String getWhoisPrivacy() {
    return whoisPrivacy;
  }

  public void setWhoisPrivacy(String whoisPrivacy) {
    this.whoisPrivacy = whoisPrivacy;
  }

  public Domain whoisPrivacy(String whoisPrivacy) {
    this.whoisPrivacy = whoisPrivacy;
    return this;
  }

 /**
   * Get autoRenew
   * @return autoRenew
  **/
  @JsonProperty("autoRenew")
  public String getAutoRenew() {
    return autoRenew;
  }

  public void setAutoRenew(String autoRenew) {
    this.autoRenew = autoRenew;
  }

  public Domain autoRenew(String autoRenew) {
    this.autoRenew = autoRenew;
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
    Domain domain = (Domain) o;
    return Objects.equals(this.serviceInfo, domain.serviceInfo) &&
        Objects.equals(this.serviceTypes, domain.serviceTypes) &&
        Objects.equals(this.clientLinks, domain.clientLinks) &&
        Objects.equals(this.billingDetails, domain.billingDetails) &&
        Objects.equals(this.custCurrency, domain.custCurrency) &&
        Objects.equals(this.custCurrencySymbol, domain.custCurrencySymbol) &&
        Objects.equals(this.serviceExtra, domain.serviceExtra) &&
        Objects.equals(this.extraInfoTables, domain.extraInfoTables) &&
        Objects.equals(this.serviceType, domain.serviceType) &&
        Objects.equals(this.contactDetails, domain.contactDetails) &&
        Objects.equals(this.pwarning, domain.pwarning) &&
        Objects.equals(this.transferInfo, domain.transferInfo) &&
        Objects.equals(this.errors, domain.errors) &&
        Objects.equals(this.domainLogs, domain.domainLogs) &&
        Objects.equals(this.allInfo, domain.allInfo) &&
        Objects.equals(this.registrarStatus, domain.registrarStatus) &&
        Objects.equals(this.locked, domain.locked) &&
        Objects.equals(this.whoisPrivacy, domain.whoisPrivacy) &&
        Objects.equals(this.autoRenew, domain.autoRenew);
  }

  @Override
  public int hashCode() {
    return Objects.hash(serviceInfo, serviceTypes, clientLinks, billingDetails, custCurrency, custCurrencySymbol, serviceExtra, extraInfoTables, serviceType, contactDetails, pwarning, transferInfo, errors, domainLogs, allInfo, registrarStatus, locked, whoisPrivacy, autoRenew);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Domain {\n");
    
    sb.append("    serviceInfo: ").append(toIndentedString(serviceInfo)).append("\n");
    sb.append("    serviceTypes: ").append(toIndentedString(serviceTypes)).append("\n");
    sb.append("    clientLinks: ").append(toIndentedString(clientLinks)).append("\n");
    sb.append("    billingDetails: ").append(toIndentedString(billingDetails)).append("\n");
    sb.append("    custCurrency: ").append(toIndentedString(custCurrency)).append("\n");
    sb.append("    custCurrencySymbol: ").append(toIndentedString(custCurrencySymbol)).append("\n");
    sb.append("    serviceExtra: ").append(toIndentedString(serviceExtra)).append("\n");
    sb.append("    extraInfoTables: ").append(toIndentedString(extraInfoTables)).append("\n");
    sb.append("    serviceType: ").append(toIndentedString(serviceType)).append("\n");
    sb.append("    contactDetails: ").append(toIndentedString(contactDetails)).append("\n");
    sb.append("    pwarning: ").append(toIndentedString(pwarning)).append("\n");
    sb.append("    transferInfo: ").append(toIndentedString(transferInfo)).append("\n");
    sb.append("    errors: ").append(toIndentedString(errors)).append("\n");
    sb.append("    domainLogs: ").append(toIndentedString(domainLogs)).append("\n");
    sb.append("    allInfo: ").append(toIndentedString(allInfo)).append("\n");
    sb.append("    registrarStatus: ").append(toIndentedString(registrarStatus)).append("\n");
    sb.append("    locked: ").append(toIndentedString(locked)).append("\n");
    sb.append("    whoisPrivacy: ").append(toIndentedString(whoisPrivacy)).append("\n");
    sb.append("    autoRenew: ").append(toIndentedString(autoRenew)).append("\n");
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

