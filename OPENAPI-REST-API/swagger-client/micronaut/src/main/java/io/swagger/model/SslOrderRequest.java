package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import io.swagger.v3.oas.annotations.media.Schema;
import io.micronaut.core.annotation.Introspected;
import io.micronaut.validation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * Request body to validate (putSsl) or place (addSsl) an SSL certificate order. Contact fields default from the account if omitted. Package ids come from getNewSsl.serviceTypes.
 */
@Schema(description = "Request body to validate (putSsl) or place (addSsl) an SSL certificate order. Contact fields default from the account if omitted. Package ids come from getNewSsl.serviceTypes.")
@Validated
@Introspected

public class SslOrderRequest   {
  @JsonProperty("ssl")
  private Integer ssl = null;

  @JsonProperty("hostname")
  private String hostname = null;

  @JsonProperty("approver_email")
  private String approverEmail = null;

  @JsonProperty("frequency")
  private Integer frequency = 12;

  @JsonProperty("coupon")
  private String coupon = "";

  /**
   * Whether the CSR is server-generated or customer-provided.
   */
  public enum CsrTypeEnum {
    GENERATED("generated"),
    PROVIDED("provided");

    private String value;

    CsrTypeEnum(String value) {
      this.value = value;
    }

    @Override
    @JsonValue
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
  @JsonProperty("csr_type")
  private CsrTypeEnum csrType = CsrTypeEnum.GENERATED;

  @JsonProperty("csr")
  private String csr = "";

  @JsonProperty("firstname")
  private String firstname = null;

  @JsonProperty("lastname")
  private String lastname = null;

  @JsonProperty("email")
  private String email = null;

  @JsonProperty("address")
  private String address = null;

  @JsonProperty("city")
  private String city = null;

  @JsonProperty("state")
  private String state = null;

  @JsonProperty("zip")
  private String zip = null;

  @JsonProperty("country")
  private String country = null;

  @JsonProperty("phone")
  private String phone = null;

  @JsonProperty("company")
  private String company = null;

  @JsonProperty("department")
  private String department = "Administration";

  @JsonProperty("agency")
  private String agency = null;

  @JsonProperty("business_category")
  private String businessCategory = null;

  public SslOrderRequest ssl(Integer ssl) {
    this.ssl = ssl;
    return this;
  }

  /**
   * SSL package service type id from getNewSsl.serviceTypes.
   * @return ssl
  **/
  @Schema(required = true, description = "SSL package service type id from getNewSsl.serviceTypes.")
  @NotNull

  public Integer getSsl() {
    return ssl;
  }

  public void setSsl(Integer ssl) {
    this.ssl = ssl;
  }

  public SslOrderRequest hostname(String hostname) {
    this.hostname = hostname;
    return this;
  }

  /**
   * Domain the certificate is issued for. Wildcard certs require *.domain.com format.
   * @return hostname
  **/
  @Schema(required = true, description = "Domain the certificate is issued for. Wildcard certs require *.domain.com format.")
  @NotNull

  public String getHostname() {
    return hostname;
  }

  public void setHostname(String hostname) {
    this.hostname = hostname;
  }

  public SslOrderRequest approverEmail(String approverEmail) {
    this.approverEmail = approverEmail;
    return this;
  }

  /**
   * Domain-control approver email (required for all SSL orders).
   * @return approverEmail
  **/
  @Schema(required = true, description = "Domain-control approver email (required for all SSL orders).")
  @NotNull

  public String getApproverEmail() {
    return approverEmail;
  }

  public void setApproverEmail(String approverEmail) {
    this.approverEmail = approverEmail;
  }

  public SslOrderRequest frequency(Integer frequency) {
    this.frequency = frequency;
    return this;
  }

  /**
   * Billing frequency in months (12, 24, or 36).
   * @return frequency
  **/
  @Schema(description = "Billing frequency in months (12, 24, or 36).")
  @NotNull

  public Integer getFrequency() {
    return frequency;
  }

  public void setFrequency(Integer frequency) {
    this.frequency = frequency;
  }

  public SslOrderRequest coupon(String coupon) {
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

  public SslOrderRequest csrType(CsrTypeEnum csrType) {
    this.csrType = csrType;
    return this;
  }

  /**
   * Whether the CSR is server-generated or customer-provided.
   * @return csrType
  **/
  @Schema(description = "Whether the CSR is server-generated or customer-provided.")
  @NotNull

  public CsrTypeEnum getCsrType() {
    return csrType;
  }

  public void setCsrType(CsrTypeEnum csrType) {
    this.csrType = csrType;
  }

  public SslOrderRequest csr(String csr) {
    this.csr = csr;
    return this;
  }

  /**
   * PEM-encoded CSR (>= 2048-bit) when csr_type=provided.
   * @return csr
  **/
  @Schema(description = "PEM-encoded CSR (>= 2048-bit) when csr_type=provided.")
  @NotNull

  public String getCsr() {
    return csr;
  }

  public void setCsr(String csr) {
    this.csr = csr;
  }

  public SslOrderRequest firstname(String firstname) {
    this.firstname = firstname;
    return this;
  }

  /**
   * Contact first name (defaults from account).
   * @return firstname
  **/
  @Schema(description = "Contact first name (defaults from account).")
  @NotNull

  public String getFirstname() {
    return firstname;
  }

  public void setFirstname(String firstname) {
    this.firstname = firstname;
  }

  public SslOrderRequest lastname(String lastname) {
    this.lastname = lastname;
    return this;
  }

  /**
   * Contact last name (defaults from account).
   * @return lastname
  **/
  @Schema(description = "Contact last name (defaults from account).")
  @NotNull

  public String getLastname() {
    return lastname;
  }

  public void setLastname(String lastname) {
    this.lastname = lastname;
  }

  public SslOrderRequest email(String email) {
    this.email = email;
    return this;
  }

  /**
   * Contact email (defaults from account).
   * @return email
  **/
  @Schema(description = "Contact email (defaults from account).")
  @NotNull

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public SslOrderRequest address(String address) {
    this.address = address;
    return this;
  }

  /**
   * Contact address (defaults from account).
   * @return address
  **/
  @Schema(description = "Contact address (defaults from account).")
  @NotNull

  public String getAddress() {
    return address;
  }

  public void setAddress(String address) {
    this.address = address;
  }

  public SslOrderRequest city(String city) {
    this.city = city;
    return this;
  }

  /**
   * Contact city (defaults from account).
   * @return city
  **/
  @Schema(description = "Contact city (defaults from account).")
  @NotNull

  public String getCity() {
    return city;
  }

  public void setCity(String city) {
    this.city = city;
  }

  public SslOrderRequest state(String state) {
    this.state = state;
    return this;
  }

  /**
   * Contact state/region (defaults from account).
   * @return state
  **/
  @Schema(description = "Contact state/region (defaults from account).")
  @NotNull

  public String getState() {
    return state;
  }

  public void setState(String state) {
    this.state = state;
  }

  public SslOrderRequest zip(String zip) {
    this.zip = zip;
    return this;
  }

  /**
   * Contact postal code (defaults from account).
   * @return zip
  **/
  @Schema(description = "Contact postal code (defaults from account).")
  @NotNull

  public String getZip() {
    return zip;
  }

  public void setZip(String zip) {
    this.zip = zip;
  }

  public SslOrderRequest country(String country) {
    this.country = country;
    return this;
  }

  /**
   * Contact country (defaults from account).
   * @return country
  **/
  @Schema(description = "Contact country (defaults from account).")
  @NotNull

  public String getCountry() {
    return country;
  }

  public void setCountry(String country) {
    this.country = country;
  }

  public SslOrderRequest phone(String phone) {
    this.phone = phone;
    return this;
  }

  /**
   * Contact phone (defaults from account).
   * @return phone
  **/
  @Schema(description = "Contact phone (defaults from account).")
  @NotNull

  public String getPhone() {
    return phone;
  }

  public void setPhone(String phone) {
    this.phone = phone;
  }

  public SslOrderRequest company(String company) {
    this.company = company;
    return this;
  }

  /**
   * Contact company/organization (defaults from account).
   * @return company
  **/
  @Schema(description = "Contact company/organization (defaults from account).")
  @NotNull

  public String getCompany() {
    return company;
  }

  public void setCompany(String company) {
    this.company = company;
  }

  public SslOrderRequest department(String department) {
    this.department = department;
    return this;
  }

  /**
   * Contact department (defaults to Administration).
   * @return department
  **/
  @Schema(description = "Contact department (defaults to Administration).")
  @NotNull

  public String getDepartment() {
    return department;
  }

  public void setDepartment(String department) {
    this.department = department;
  }

  public SslOrderRequest agency(String agency) {
    this.agency = agency;
    return this;
  }

  /**
   * EV certificate incorporating agency (only for EV packages).
   * @return agency
  **/
  @Schema(description = "EV certificate incorporating agency (only for EV packages).")
  @NotNull

  public String getAgency() {
    return agency;
  }

  public void setAgency(String agency) {
    this.agency = agency;
  }

  public SslOrderRequest businessCategory(String businessCategory) {
    this.businessCategory = businessCategory;
    return this;
  }

  /**
   * EV certificate business category (only for EV packages).
   * @return businessCategory
  **/
  @Schema(description = "EV certificate business category (only for EV packages).")
  @NotNull

  public String getBusinessCategory() {
    return businessCategory;
  }

  public void setBusinessCategory(String businessCategory) {
    this.businessCategory = businessCategory;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SslOrderRequest sslOrderRequest = (SslOrderRequest) o;
    return Objects.equals(this.ssl, sslOrderRequest.ssl) &&
        Objects.equals(this.hostname, sslOrderRequest.hostname) &&
        Objects.equals(this.approverEmail, sslOrderRequest.approverEmail) &&
        Objects.equals(this.frequency, sslOrderRequest.frequency) &&
        Objects.equals(this.coupon, sslOrderRequest.coupon) &&
        Objects.equals(this.csrType, sslOrderRequest.csrType) &&
        Objects.equals(this.csr, sslOrderRequest.csr) &&
        Objects.equals(this.firstname, sslOrderRequest.firstname) &&
        Objects.equals(this.lastname, sslOrderRequest.lastname) &&
        Objects.equals(this.email, sslOrderRequest.email) &&
        Objects.equals(this.address, sslOrderRequest.address) &&
        Objects.equals(this.city, sslOrderRequest.city) &&
        Objects.equals(this.state, sslOrderRequest.state) &&
        Objects.equals(this.zip, sslOrderRequest.zip) &&
        Objects.equals(this.country, sslOrderRequest.country) &&
        Objects.equals(this.phone, sslOrderRequest.phone) &&
        Objects.equals(this.company, sslOrderRequest.company) &&
        Objects.equals(this.department, sslOrderRequest.department) &&
        Objects.equals(this.agency, sslOrderRequest.agency) &&
        Objects.equals(this.businessCategory, sslOrderRequest.businessCategory);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ssl, hostname, approverEmail, frequency, coupon, csrType, csr, firstname, lastname, email, address, city, state, zip, country, phone, company, department, agency, businessCategory);
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
