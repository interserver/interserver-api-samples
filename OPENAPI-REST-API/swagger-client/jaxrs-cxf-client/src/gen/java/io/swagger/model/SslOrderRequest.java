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
  * Request body to validate (putSsl) or place (addSsl) an SSL certificate order. Contact fields default from the account if omitted. Package ids come from getNewSsl.serviceTypes.
 **/
@Schema(description="Request body to validate (putSsl) or place (addSsl) an SSL certificate order. Contact fields default from the account if omitted. Package ids come from getNewSsl.serviceTypes.")
public class SslOrderRequest   {
  
  @Schema(required = true, description = "SSL package service type id from getNewSsl.serviceTypes.")
 /**
   * SSL package service type id from getNewSsl.serviceTypes.  
  **/
  private Integer ssl = null;
  
  @Schema(required = true, description = "Domain the certificate is issued for. Wildcard certs require *.domain.com format.")
 /**
   * Domain the certificate is issued for. Wildcard certs require *.domain.com format.  
  **/
  private String hostname = null;
  
  @Schema(required = true, description = "Domain-control approver email (required for all SSL orders).")
 /**
   * Domain-control approver email (required for all SSL orders).  
  **/
  private String approverEmail = null;
  
  @Schema(description = "Billing frequency in months (12, 24, or 36).")
 /**
   * Billing frequency in months (12, 24, or 36).  
  **/
  private Integer frequency = 12;
  
  @Schema(description = "Coupon code.")
 /**
   * Coupon code.  
  **/
  private String coupon = "";
  public enum CsrTypeEnum {
    GENERATED("generated"),
    PROVIDED("provided");

    private String value;

    CsrTypeEnum(String value) {
      this.value = value;
    }
    @JsonValue
    public String getValue() {
      return value;
    }

    @Override
    public String toString() {
      return String.valueOf(value);
    }
    @JsonCreator
    public static CsrTypeEnum fromValue(String text) {
      for (CsrTypeEnum b : CsrTypeEnum.values()) {
        if (String.valueOf(b.value).equals(text)) {
          return b;
        }
      }
      return null;
    }
  }  
  @Schema(description = "Whether the CSR is server-generated or customer-provided.")
 /**
   * Whether the CSR is server-generated or customer-provided.  
  **/
  private CsrTypeEnum csrType = CsrTypeEnum.GENERATED;
  
  @Schema(description = "PEM-encoded CSR (>= 2048-bit) when csr_type=provided.")
 /**
   * PEM-encoded CSR (>= 2048-bit) when csr_type=provided.  
  **/
  private String csr = "";
  
  @Schema(description = "Contact first name (defaults from account).")
 /**
   * Contact first name (defaults from account).  
  **/
  private String firstname = null;
  
  @Schema(description = "Contact last name (defaults from account).")
 /**
   * Contact last name (defaults from account).  
  **/
  private String lastname = null;
  
  @Schema(description = "Contact email (defaults from account).")
 /**
   * Contact email (defaults from account).  
  **/
  private String email = null;
  
  @Schema(description = "Contact address (defaults from account).")
 /**
   * Contact address (defaults from account).  
  **/
  private String address = null;
  
  @Schema(description = "Contact city (defaults from account).")
 /**
   * Contact city (defaults from account).  
  **/
  private String city = null;
  
  @Schema(description = "Contact state/region (defaults from account).")
 /**
   * Contact state/region (defaults from account).  
  **/
  private String state = null;
  
  @Schema(description = "Contact postal code (defaults from account).")
 /**
   * Contact postal code (defaults from account).  
  **/
  private String zip = null;
  
  @Schema(description = "Contact country (defaults from account).")
 /**
   * Contact country (defaults from account).  
  **/
  private String country = null;
  
  @Schema(description = "Contact phone (defaults from account).")
 /**
   * Contact phone (defaults from account).  
  **/
  private String phone = null;
  
  @Schema(description = "Contact company/organization (defaults from account).")
 /**
   * Contact company/organization (defaults from account).  
  **/
  private String company = null;
  
  @Schema(description = "Contact department (defaults to Administration).")
 /**
   * Contact department (defaults to Administration).  
  **/
  private String department = "Administration";
  
  @Schema(description = "EV certificate incorporating agency (only for EV packages).")
 /**
   * EV certificate incorporating agency (only for EV packages).  
  **/
  private String agency = null;
  
  @Schema(description = "EV certificate business category (only for EV packages).")
 /**
   * EV certificate business category (only for EV packages).  
  **/
  private String businessCategory = null;
 /**
   * SSL package service type id from getNewSsl.serviceTypes.
   * @return ssl
  **/
  @JsonProperty("ssl")
  public Integer getSsl() {
    return ssl;
  }

  public void setSsl(Integer ssl) {
    this.ssl = ssl;
  }

  public SslOrderRequest ssl(Integer ssl) {
    this.ssl = ssl;
    return this;
  }

 /**
   * Domain the certificate is issued for. Wildcard certs require *.domain.com format.
   * @return hostname
  **/
  @JsonProperty("hostname")
  public String getHostname() {
    return hostname;
  }

  public void setHostname(String hostname) {
    this.hostname = hostname;
  }

  public SslOrderRequest hostname(String hostname) {
    this.hostname = hostname;
    return this;
  }

 /**
   * Domain-control approver email (required for all SSL orders).
   * @return approverEmail
  **/
  @JsonProperty("approver_email")
  public String getApproverEmail() {
    return approverEmail;
  }

  public void setApproverEmail(String approverEmail) {
    this.approverEmail = approverEmail;
  }

  public SslOrderRequest approverEmail(String approverEmail) {
    this.approverEmail = approverEmail;
    return this;
  }

 /**
   * Billing frequency in months (12, 24, or 36).
   * @return frequency
  **/
  @JsonProperty("frequency")
  public Integer getFrequency() {
    return frequency;
  }

  public void setFrequency(Integer frequency) {
    this.frequency = frequency;
  }

  public SslOrderRequest frequency(Integer frequency) {
    this.frequency = frequency;
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

  public SslOrderRequest coupon(String coupon) {
    this.coupon = coupon;
    return this;
  }

 /**
   * Whether the CSR is server-generated or customer-provided.
   * @return csrType
  **/
  @JsonProperty("csr_type")
  public String getCsrType() {
    if (csrType == null) {
      return null;
    }
    return csrType.getValue();
  }

  public void setCsrType(CsrTypeEnum csrType) {
    this.csrType = csrType;
  }

  public SslOrderRequest csrType(CsrTypeEnum csrType) {
    this.csrType = csrType;
    return this;
  }

 /**
   * PEM-encoded CSR (&gt;&#x3D; 2048-bit) when csr_type&#x3D;provided.
   * @return csr
  **/
  @JsonProperty("csr")
  public String getCsr() {
    return csr;
  }

  public void setCsr(String csr) {
    this.csr = csr;
  }

  public SslOrderRequest csr(String csr) {
    this.csr = csr;
    return this;
  }

 /**
   * Contact first name (defaults from account).
   * @return firstname
  **/
  @JsonProperty("firstname")
  public String getFirstname() {
    return firstname;
  }

  public void setFirstname(String firstname) {
    this.firstname = firstname;
  }

  public SslOrderRequest firstname(String firstname) {
    this.firstname = firstname;
    return this;
  }

 /**
   * Contact last name (defaults from account).
   * @return lastname
  **/
  @JsonProperty("lastname")
  public String getLastname() {
    return lastname;
  }

  public void setLastname(String lastname) {
    this.lastname = lastname;
  }

  public SslOrderRequest lastname(String lastname) {
    this.lastname = lastname;
    return this;
  }

 /**
   * Contact email (defaults from account).
   * @return email
  **/
  @JsonProperty("email")
  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public SslOrderRequest email(String email) {
    this.email = email;
    return this;
  }

 /**
   * Contact address (defaults from account).
   * @return address
  **/
  @JsonProperty("address")
  public String getAddress() {
    return address;
  }

  public void setAddress(String address) {
    this.address = address;
  }

  public SslOrderRequest address(String address) {
    this.address = address;
    return this;
  }

 /**
   * Contact city (defaults from account).
   * @return city
  **/
  @JsonProperty("city")
  public String getCity() {
    return city;
  }

  public void setCity(String city) {
    this.city = city;
  }

  public SslOrderRequest city(String city) {
    this.city = city;
    return this;
  }

 /**
   * Contact state/region (defaults from account).
   * @return state
  **/
  @JsonProperty("state")
  public String getState() {
    return state;
  }

  public void setState(String state) {
    this.state = state;
  }

  public SslOrderRequest state(String state) {
    this.state = state;
    return this;
  }

 /**
   * Contact postal code (defaults from account).
   * @return zip
  **/
  @JsonProperty("zip")
  public String getZip() {
    return zip;
  }

  public void setZip(String zip) {
    this.zip = zip;
  }

  public SslOrderRequest zip(String zip) {
    this.zip = zip;
    return this;
  }

 /**
   * Contact country (defaults from account).
   * @return country
  **/
  @JsonProperty("country")
  public String getCountry() {
    return country;
  }

  public void setCountry(String country) {
    this.country = country;
  }

  public SslOrderRequest country(String country) {
    this.country = country;
    return this;
  }

 /**
   * Contact phone (defaults from account).
   * @return phone
  **/
  @JsonProperty("phone")
  public String getPhone() {
    return phone;
  }

  public void setPhone(String phone) {
    this.phone = phone;
  }

  public SslOrderRequest phone(String phone) {
    this.phone = phone;
    return this;
  }

 /**
   * Contact company/organization (defaults from account).
   * @return company
  **/
  @JsonProperty("company")
  public String getCompany() {
    return company;
  }

  public void setCompany(String company) {
    this.company = company;
  }

  public SslOrderRequest company(String company) {
    this.company = company;
    return this;
  }

 /**
   * Contact department (defaults to Administration).
   * @return department
  **/
  @JsonProperty("department")
  public String getDepartment() {
    return department;
  }

  public void setDepartment(String department) {
    this.department = department;
  }

  public SslOrderRequest department(String department) {
    this.department = department;
    return this;
  }

 /**
   * EV certificate incorporating agency (only for EV packages).
   * @return agency
  **/
  @JsonProperty("agency")
  public String getAgency() {
    return agency;
  }

  public void setAgency(String agency) {
    this.agency = agency;
  }

  public SslOrderRequest agency(String agency) {
    this.agency = agency;
    return this;
  }

 /**
   * EV certificate business category (only for EV packages).
   * @return businessCategory
  **/
  @JsonProperty("business_category")
  public String getBusinessCategory() {
    return businessCategory;
  }

  public void setBusinessCategory(String businessCategory) {
    this.businessCategory = businessCategory;
  }

  public SslOrderRequest businessCategory(String businessCategory) {
    this.businessCategory = businessCategory;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SslOrderRequest {\n");
    
    sb.append("    ssl: ").append(toIndentedString(ssl)).append("\n");
    sb.append("    hostname: ").append(toIndentedString(hostname)).append("\n");
    sb.append("    approverEmail: ").append(toIndentedString(approverEmail)).append("\n");
    sb.append("    frequency: ").append(toIndentedString(frequency)).append("\n");
    sb.append("    coupon: ").append(toIndentedString(coupon)).append("\n");
    sb.append("    csrType: ").append(toIndentedString(csrType)).append("\n");
    sb.append("    csr: ").append(toIndentedString(csr)).append("\n");
    sb.append("    firstname: ").append(toIndentedString(firstname)).append("\n");
    sb.append("    lastname: ").append(toIndentedString(lastname)).append("\n");
    sb.append("    email: ").append(toIndentedString(email)).append("\n");
    sb.append("    address: ").append(toIndentedString(address)).append("\n");
    sb.append("    city: ").append(toIndentedString(city)).append("\n");
    sb.append("    state: ").append(toIndentedString(state)).append("\n");
    sb.append("    zip: ").append(toIndentedString(zip)).append("\n");
    sb.append("    country: ").append(toIndentedString(country)).append("\n");
    sb.append("    phone: ").append(toIndentedString(phone)).append("\n");
    sb.append("    company: ").append(toIndentedString(company)).append("\n");
    sb.append("    department: ").append(toIndentedString(department)).append("\n");
    sb.append("    agency: ").append(toIndentedString(agency)).append("\n");
    sb.append("    businessCategory: ").append(toIndentedString(businessCategory)).append("\n");
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
