package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.DomainAllInfoAttributesContactSet;
import com.interserver.myadmin.model.DomainNameServer;
import io.swagger.v3.oas.annotations.media.Schema;
import java.util.ArrayList;
import java.util.List;
import org.springframework.validation.annotation.Validated;
import org.openapitools.jackson.nullable.JsonNullable;
import io.swagger.configuration.NotUndefined;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.Nulls;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * DomainAllInfoAttributes
 */
@Validated
@NotUndefined



public class DomainAllInfoAttributes   {
  @JsonProperty("contact_set")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private DomainAllInfoAttributesContactSet contactSet = null;

  @JsonProperty("registry_createdate")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String registryCreatedate = null;

  @JsonProperty("registry_expiredate")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String registryExpiredate = null;

  @JsonProperty("tld_data")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String tldData = null;

  @JsonProperty("let_expire")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String letExpire = null;

  @JsonProperty("auto_renew")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String autoRenew = null;

  @JsonProperty("sponsoring_rsp")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String sponsoringRsp = null;

  @JsonProperty("gdpr_consent_status")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String gdprConsentStatus = null;

  @JsonProperty("nameserver_list")
  @Valid
  private List<DomainNameServer> nameserverList = null;
  @JsonProperty("registry_updatedate")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String registryUpdatedate = null;

  @JsonProperty("affiliate_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String affiliateId = null;

  @JsonProperty("expiredate")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String expiredate = null;


  public DomainAllInfoAttributes contactSet(DomainAllInfoAttributesContactSet contactSet) { 

    this.contactSet = contactSet;
    return this;
  }

  /**
   * Get contactSet
   * @return contactSet
   **/
  
  @Schema(description = "")
  
@Valid
  public DomainAllInfoAttributesContactSet getContactSet() {  
    return contactSet;
  }



  public void setContactSet(DomainAllInfoAttributesContactSet contactSet) { 
    this.contactSet = contactSet;
  }

  public DomainAllInfoAttributes registryCreatedate(String registryCreatedate) { 

    this.registryCreatedate = registryCreatedate;
    return this;
  }

  /**
   * Get registryCreatedate
   * @return registryCreatedate
   **/
  
  @Schema(description = "")
  
  public String getRegistryCreatedate() {  
    return registryCreatedate;
  }



  public void setRegistryCreatedate(String registryCreatedate) { 
    this.registryCreatedate = registryCreatedate;
  }

  public DomainAllInfoAttributes registryExpiredate(String registryExpiredate) { 

    this.registryExpiredate = registryExpiredate;
    return this;
  }

  /**
   * Get registryExpiredate
   * @return registryExpiredate
   **/
  
  @Schema(description = "")
  
  public String getRegistryExpiredate() {  
    return registryExpiredate;
  }



  public void setRegistryExpiredate(String registryExpiredate) { 
    this.registryExpiredate = registryExpiredate;
  }

  public DomainAllInfoAttributes tldData(String tldData) { 

    this.tldData = tldData;
    return this;
  }

  /**
   * Get tldData
   * @return tldData
   **/
  
  @Schema(description = "")
  
  public String getTldData() {  
    return tldData;
  }



  public void setTldData(String tldData) { 
    this.tldData = tldData;
  }

  public DomainAllInfoAttributes letExpire(String letExpire) { 

    this.letExpire = letExpire;
    return this;
  }

  /**
   * Get letExpire
   * @return letExpire
   **/
  
  @Schema(description = "")
  
  public String getLetExpire() {  
    return letExpire;
  }



  public void setLetExpire(String letExpire) { 
    this.letExpire = letExpire;
  }

  public DomainAllInfoAttributes autoRenew(String autoRenew) { 

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

  public DomainAllInfoAttributes sponsoringRsp(String sponsoringRsp) { 

    this.sponsoringRsp = sponsoringRsp;
    return this;
  }

  /**
   * Get sponsoringRsp
   * @return sponsoringRsp
   **/
  
  @Schema(description = "")
  
  public String getSponsoringRsp() {  
    return sponsoringRsp;
  }



  public void setSponsoringRsp(String sponsoringRsp) { 
    this.sponsoringRsp = sponsoringRsp;
  }

  public DomainAllInfoAttributes gdprConsentStatus(String gdprConsentStatus) { 

    this.gdprConsentStatus = gdprConsentStatus;
    return this;
  }

  /**
   * Get gdprConsentStatus
   * @return gdprConsentStatus
   **/
  
  @Schema(description = "")
  
  public String getGdprConsentStatus() {  
    return gdprConsentStatus;
  }



  public void setGdprConsentStatus(String gdprConsentStatus) { 
    this.gdprConsentStatus = gdprConsentStatus;
  }

  public DomainAllInfoAttributes nameserverList(List<DomainNameServer> nameserverList) { 

    this.nameserverList = nameserverList;
    return this;
  }

  public DomainAllInfoAttributes addNameserverListItem(DomainNameServer nameserverListItem) {
    if (this.nameserverList == null) {
      this.nameserverList = new ArrayList<>();
    }
    this.nameserverList.add(nameserverListItem);
    return this;
  }

  /**
   * Get nameserverList
   * @return nameserverList
   **/
  
  @Schema(description = "")
  @Valid
  public List<DomainNameServer> getNameserverList() {  
    return nameserverList;
  }



  public void setNameserverList(List<DomainNameServer> nameserverList) { 
    this.nameserverList = nameserverList;
  }

  public DomainAllInfoAttributes registryUpdatedate(String registryUpdatedate) { 

    this.registryUpdatedate = registryUpdatedate;
    return this;
  }

  /**
   * Get registryUpdatedate
   * @return registryUpdatedate
   **/
  
  @Schema(description = "")
  
  public String getRegistryUpdatedate() {  
    return registryUpdatedate;
  }



  public void setRegistryUpdatedate(String registryUpdatedate) { 
    this.registryUpdatedate = registryUpdatedate;
  }

  public DomainAllInfoAttributes affiliateId(String affiliateId) { 

    this.affiliateId = affiliateId;
    return this;
  }

  /**
   * Get affiliateId
   * @return affiliateId
   **/
  
  @Schema(description = "")
  
  public String getAffiliateId() {  
    return affiliateId;
  }



  public void setAffiliateId(String affiliateId) { 
    this.affiliateId = affiliateId;
  }

  public DomainAllInfoAttributes expiredate(String expiredate) { 

    this.expiredate = expiredate;
    return this;
  }

  /**
   * Get expiredate
   * @return expiredate
   **/
  
  @Schema(description = "")
  
  public String getExpiredate() {  
    return expiredate;
  }



  public void setExpiredate(String expiredate) { 
    this.expiredate = expiredate;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    DomainAllInfoAttributes domainAllInfoAttributes = (DomainAllInfoAttributes) o;
    return Objects.equals(this.contactSet, domainAllInfoAttributes.contactSet) &&
        Objects.equals(this.registryCreatedate, domainAllInfoAttributes.registryCreatedate) &&
        Objects.equals(this.registryExpiredate, domainAllInfoAttributes.registryExpiredate) &&
        Objects.equals(this.tldData, domainAllInfoAttributes.tldData) &&
        Objects.equals(this.letExpire, domainAllInfoAttributes.letExpire) &&
        Objects.equals(this.autoRenew, domainAllInfoAttributes.autoRenew) &&
        Objects.equals(this.sponsoringRsp, domainAllInfoAttributes.sponsoringRsp) &&
        Objects.equals(this.gdprConsentStatus, domainAllInfoAttributes.gdprConsentStatus) &&
        Objects.equals(this.nameserverList, domainAllInfoAttributes.nameserverList) &&
        Objects.equals(this.registryUpdatedate, domainAllInfoAttributes.registryUpdatedate) &&
        Objects.equals(this.affiliateId, domainAllInfoAttributes.affiliateId) &&
        Objects.equals(this.expiredate, domainAllInfoAttributes.expiredate);
  }

  @Override
  public int hashCode() {
    return Objects.hash(contactSet, registryCreatedate, registryExpiredate, tldData, letExpire, autoRenew, sponsoringRsp, gdprConsentStatus, nameserverList, registryUpdatedate, affiliateId, expiredate);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DomainAllInfoAttributes {\n");
    
    sb.append("    contactSet: ").append(toIndentedString(contactSet)).append("\n");
    sb.append("    registryCreatedate: ").append(toIndentedString(registryCreatedate)).append("\n");
    sb.append("    registryExpiredate: ").append(toIndentedString(registryExpiredate)).append("\n");
    sb.append("    tldData: ").append(toIndentedString(tldData)).append("\n");
    sb.append("    letExpire: ").append(toIndentedString(letExpire)).append("\n");
    sb.append("    autoRenew: ").append(toIndentedString(autoRenew)).append("\n");
    sb.append("    sponsoringRsp: ").append(toIndentedString(sponsoringRsp)).append("\n");
    sb.append("    gdprConsentStatus: ").append(toIndentedString(gdprConsentStatus)).append("\n");
    sb.append("    nameserverList: ").append(toIndentedString(nameserverList)).append("\n");
    sb.append("    registryUpdatedate: ").append(toIndentedString(registryUpdatedate)).append("\n");
    sb.append("    affiliateId: ").append(toIndentedString(affiliateId)).append("\n");
    sb.append("    expiredate: ").append(toIndentedString(expiredate)).append("\n");
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
