package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.BackupExtraInfoTables;
import com.interserver.myadmin.model.DomainAllInfo;
import com.interserver.myadmin.model.DomainBillingDetails;
import com.interserver.myadmin.model.DomainBillingExtra;
import com.interserver.myadmin.model.DomainClientLink;
import com.interserver.myadmin.model.DomainContactDetails;
import com.interserver.myadmin.model.DomainServiceInfo;
import com.interserver.myadmin.model.DomainServiceType;
import io.swagger.v3.oas.annotations.media.Schema;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.validation.annotation.Validated;
import org.openapitools.jackson.nullable.JsonNullable;
import io.swagger.configuration.NotUndefined;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.Nulls;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * Full detail view of a domain service including billing, contacts, DNS, and configuration.
 */
@Schema(description = "Full detail view of a domain service including billing, contacts, DNS, and configuration.")
@Validated
@NotUndefined



public class Domain   {
  @JsonProperty("serviceInfo")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private DomainServiceInfo serviceInfo = null;

  @JsonProperty("serviceTypes")
  @Valid
  private Map<String, DomainServiceType> serviceTypes = null;
  @JsonProperty("client_links")
  @Valid
  private List<DomainClientLink> clientLinks = null;
  @JsonProperty("billingDetails")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private DomainBillingDetails billingDetails = null;

  @JsonProperty("custCurrency")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String custCurrency = null;

  @JsonProperty("custCurrencySymbol")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String custCurrencySymbol = null;

  @JsonProperty("serviceExtra")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private DomainBillingExtra serviceExtra = null;

  @JsonProperty("extraInfoTables")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private BackupExtraInfoTables extraInfoTables = null;

  @JsonProperty("serviceType")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private DomainServiceType serviceType = null;

  @JsonProperty("contact_details")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private DomainContactDetails contactDetails = null;

  @JsonProperty("pwarning")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String pwarning = null;

  @JsonProperty("transfer_info")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String transferInfo = null;

  @JsonProperty("errors")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Boolean errors = null;

  @JsonProperty("domain_logs")
  @Valid
  private List<String> domainLogs = null;
  @JsonProperty("allInfo")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private DomainAllInfo allInfo = null;

  @JsonProperty("registrarStatus")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String registrarStatus = null;

  @JsonProperty("locked")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String locked = null;

  @JsonProperty("whoisPrivacy")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String whoisPrivacy = null;

  @JsonProperty("autoRenew")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String autoRenew = null;


  public Domain serviceInfo(DomainServiceInfo serviceInfo) { 

    this.serviceInfo = serviceInfo;
    return this;
  }

  /**
   * Get serviceInfo
   * @return serviceInfo
   **/
  
  @Schema(description = "")
  
@Valid
  public DomainServiceInfo getServiceInfo() {  
    return serviceInfo;
  }



  public void setServiceInfo(DomainServiceInfo serviceInfo) { 
    this.serviceInfo = serviceInfo;
  }

  public Domain serviceTypes(Map<String, DomainServiceType> serviceTypes) { 

    this.serviceTypes = serviceTypes;
    return this;
  }

  public Domain putServiceTypesItem(String key, DomainServiceType serviceTypesItem) {
    if (this.serviceTypes == null) {
      this.serviceTypes = new HashMap<>();
    }
    this.serviceTypes.put(key, serviceTypesItem);
    return this;
  }

  /**
   * Get serviceTypes
   * @return serviceTypes
   **/
  
  @Schema(description = "")
  @Valid
  public Map<String, DomainServiceType> getServiceTypes() {  
    return serviceTypes;
  }



  public void setServiceTypes(Map<String, DomainServiceType> serviceTypes) { 
    this.serviceTypes = serviceTypes;
  }

  public Domain clientLinks(List<DomainClientLink> clientLinks) { 

    this.clientLinks = clientLinks;
    return this;
  }

  public Domain addClientLinksItem(DomainClientLink clientLinksItem) {
    if (this.clientLinks == null) {
      this.clientLinks = new ArrayList<>();
    }
    this.clientLinks.add(clientLinksItem);
    return this;
  }

  /**
   * Get clientLinks
   * @return clientLinks
   **/
  
  @Schema(description = "")
  @Valid
  public List<DomainClientLink> getClientLinks() {  
    return clientLinks;
  }



  public void setClientLinks(List<DomainClientLink> clientLinks) { 
    this.clientLinks = clientLinks;
  }

  public Domain billingDetails(DomainBillingDetails billingDetails) { 

    this.billingDetails = billingDetails;
    return this;
  }

  /**
   * Get billingDetails
   * @return billingDetails
   **/
  
  @Schema(description = "")
  
@Valid
  public DomainBillingDetails getBillingDetails() {  
    return billingDetails;
  }



  public void setBillingDetails(DomainBillingDetails billingDetails) { 
    this.billingDetails = billingDetails;
  }

  public Domain custCurrency(String custCurrency) { 

    this.custCurrency = custCurrency;
    return this;
  }

  /**
   * Get custCurrency
   * @return custCurrency
   **/
  
  @Schema(description = "")
  
  public String getCustCurrency() {  
    return custCurrency;
  }



  public void setCustCurrency(String custCurrency) { 
    this.custCurrency = custCurrency;
  }

  public Domain custCurrencySymbol(String custCurrencySymbol) { 

    this.custCurrencySymbol = custCurrencySymbol;
    return this;
  }

  /**
   * Get custCurrencySymbol
   * @return custCurrencySymbol
   **/
  
  @Schema(description = "")
  
  public String getCustCurrencySymbol() {  
    return custCurrencySymbol;
  }



  public void setCustCurrencySymbol(String custCurrencySymbol) { 
    this.custCurrencySymbol = custCurrencySymbol;
  }

  public Domain serviceExtra(DomainBillingExtra serviceExtra) { 

    this.serviceExtra = serviceExtra;
    return this;
  }

  /**
   * Get serviceExtra
   * @return serviceExtra
   **/
  
  @Schema(description = "")
  
@Valid
  public DomainBillingExtra getServiceExtra() {  
    return serviceExtra;
  }



  public void setServiceExtra(DomainBillingExtra serviceExtra) { 
    this.serviceExtra = serviceExtra;
  }

  public Domain extraInfoTables(BackupExtraInfoTables extraInfoTables) { 

    this.extraInfoTables = extraInfoTables;
    return this;
  }

  /**
   * Get extraInfoTables
   * @return extraInfoTables
   **/
  
  @Schema(description = "")
  
@Valid
  public BackupExtraInfoTables getExtraInfoTables() {  
    return extraInfoTables;
  }



  public void setExtraInfoTables(BackupExtraInfoTables extraInfoTables) { 
    this.extraInfoTables = extraInfoTables;
  }

  public Domain serviceType(DomainServiceType serviceType) { 

    this.serviceType = serviceType;
    return this;
  }

  /**
   * Get serviceType
   * @return serviceType
   **/
  
  @Schema(description = "")
  
@Valid
  public DomainServiceType getServiceType() {  
    return serviceType;
  }



  public void setServiceType(DomainServiceType serviceType) { 
    this.serviceType = serviceType;
  }

  public Domain contactDetails(DomainContactDetails contactDetails) { 

    this.contactDetails = contactDetails;
    return this;
  }

  /**
   * Get contactDetails
   * @return contactDetails
   **/
  
  @Schema(description = "")
  
@Valid
  public DomainContactDetails getContactDetails() {  
    return contactDetails;
  }



  public void setContactDetails(DomainContactDetails contactDetails) { 
    this.contactDetails = contactDetails;
  }

  public Domain pwarning(String pwarning) { 

    this.pwarning = pwarning;
    return this;
  }

  /**
   * Get pwarning
   * @return pwarning
   **/
  
  @Schema(description = "")
  
  public String getPwarning() {  
    return pwarning;
  }



  public void setPwarning(String pwarning) { 
    this.pwarning = pwarning;
  }

  public Domain transferInfo(String transferInfo) { 

    this.transferInfo = transferInfo;
    return this;
  }

  /**
   * Get transferInfo
   * @return transferInfo
   **/
  
  @Schema(description = "")
  
  public String getTransferInfo() {  
    return transferInfo;
  }



  public void setTransferInfo(String transferInfo) { 
    this.transferInfo = transferInfo;
  }

  public Domain errors(Boolean errors) { 

    this.errors = errors;
    return this;
  }

  /**
   * Get errors
   * @return errors
   **/
  
  @Schema(description = "")
  
  public Boolean isErrors() {  
    return errors;
  }



  public void setErrors(Boolean errors) { 
    this.errors = errors;
  }

  public Domain domainLogs(List<String> domainLogs) { 

    this.domainLogs = domainLogs;
    return this;
  }

  public Domain addDomainLogsItem(String domainLogsItem) {
    if (this.domainLogs == null) {
      this.domainLogs = new ArrayList<>();
    }
    this.domainLogs.add(domainLogsItem);
    return this;
  }

  /**
   * Get domainLogs
   * @return domainLogs
   **/
  
  @Schema(description = "")
  
  public List<String> getDomainLogs() {  
    return domainLogs;
  }



  public void setDomainLogs(List<String> domainLogs) { 
    this.domainLogs = domainLogs;
  }

  public Domain allInfo(DomainAllInfo allInfo) { 

    this.allInfo = allInfo;
    return this;
  }

  /**
   * Get allInfo
   * @return allInfo
   **/
  
  @Schema(description = "")
  
@Valid
  public DomainAllInfo getAllInfo() {  
    return allInfo;
  }



  public void setAllInfo(DomainAllInfo allInfo) { 
    this.allInfo = allInfo;
  }

  public Domain registrarStatus(String registrarStatus) { 

    this.registrarStatus = registrarStatus;
    return this;
  }

  /**
   * Get registrarStatus
   * @return registrarStatus
   **/
  
  @Schema(description = "")
  
  public String getRegistrarStatus() {  
    return registrarStatus;
  }



  public void setRegistrarStatus(String registrarStatus) { 
    this.registrarStatus = registrarStatus;
  }

  public Domain locked(String locked) { 

    this.locked = locked;
    return this;
  }

  /**
   * Get locked
   * @return locked
   **/
  
  @Schema(description = "")
  
  public String getLocked() {  
    return locked;
  }



  public void setLocked(String locked) { 
    this.locked = locked;
  }

  public Domain whoisPrivacy(String whoisPrivacy) { 

    this.whoisPrivacy = whoisPrivacy;
    return this;
  }

  /**
   * Get whoisPrivacy
   * @return whoisPrivacy
   **/
  
  @Schema(description = "")
  
  public String getWhoisPrivacy() {  
    return whoisPrivacy;
  }



  public void setWhoisPrivacy(String whoisPrivacy) { 
    this.whoisPrivacy = whoisPrivacy;
  }

  public Domain autoRenew(String autoRenew) { 

    this.autoRenew = autoRenew;
    return this;
  }

  /**
   * Get autoRenew
   * @return autoRenew
   **/
  
  @Schema(description = "")
  
  public String getAutoRenew() {  
    return autoRenew;
  }



  public void setAutoRenew(String autoRenew) { 
    this.autoRenew = autoRenew;
  }

  @Override
  public boolean equals(java.lang.Object o) {
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
