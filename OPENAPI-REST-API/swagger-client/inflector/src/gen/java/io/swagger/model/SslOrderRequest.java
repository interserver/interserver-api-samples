package io.swagger.model;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import io.swagger.v3.oas.annotations.media.Schema;


/**
 * Request body to validate (putSsl) or place (addSsl) an SSL certificate order. Contact fields default from the account if omitted. Package ids come from getNewSsl.serviceTypes.
 **/
@Schema(description = "Request body to validate (putSsl) or place (addSsl) an SSL certificate order. Contact fields default from the account if omitted. Package ids come from getNewSsl.serviceTypes.")


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
  /**
   * SSL package service type id from getNewSsl.serviceTypes.
   **/
  public SslOrderRequest ssl(Integer ssl) {
    this.ssl = ssl;
    return this;
  }

  
  @Schema(required = true, description = "SSL package service type id from getNewSsl.serviceTypes.")
  @JsonProperty("ssl")
  public Integer getSsl() {
    return ssl;
  }
  public void setSsl(Integer ssl) {
    this.ssl = ssl;
  }

  /**
   * Domain the certificate is issued for. Wildcard certs require *.domain.com format.
   **/
  public SslOrderRequest hostname(String hostname) {
    this.hostname = hostname;
    return this;
  }

  
  @Schema(required = true, description = "Domain the certificate is issued for. Wildcard certs require *.domain.com format.")
  @JsonProperty("hostname")
  public String getHostname() {
    return hostname;
  }
  public void setHostname(String hostname) {
    this.hostname = hostname;
  }

  /**
   * Domain-control approver email (required for all SSL orders).
   **/
  public SslOrderRequest approverEmail(String approverEmail) {
    this.approverEmail = approverEmail;
    return this;
  }

  
  @Schema(required = true, description = "Domain-control approver email (required for all SSL orders).")
  @JsonProperty("approver_email")
  public String getApproverEmail() {
    return approverEmail;
  }
  public void setApproverEmail(String approverEmail) {
    this.approverEmail = approverEmail;
  }

  /**
   * Billing frequency in months (12, 24, or 36).
   **/
  public SslOrderRequest frequency(Integer frequency) {
    this.frequency = frequency;
    return this;
  }

  
  @Schema(description = "Billing frequency in months (12, 24, or 36).")
  @JsonProperty("frequency")
  public Integer getFrequency() {
    return frequency;
  }
  public void setFrequency(Integer frequency) {
    this.frequency = frequency;
  }

  /**
   * Coupon code.
   **/
  public SslOrderRequest coupon(String coupon) {
    this.coupon = coupon;
    return this;
  }

  
  @Schema(description = "Coupon code.")
  @JsonProperty("coupon")
  public String getCoupon() {
    return coupon;
  }
  public void setCoupon(String coupon) {
    this.coupon = coupon;
  }

  /**
   * Whether the CSR is server-generated or customer-provided.
   **/
  public SslOrderRequest csrType(CsrTypeEnum csrType) {
    this.csrType = csrType;
    return this;
  }

  
  @Schema(description = "Whether the CSR is server-generated or customer-provided.")
  @JsonProperty("csr_type")
  public CsrTypeEnum getCsrType() {
    return csrType;
  }
  public void setCsrType(CsrTypeEnum csrType) {
    this.csrType = csrType;
  }

  /**
   * PEM-encoded CSR (>= 2048-bit) when csr_type=provided.
   **/
  public SslOrderRequest csr(String csr) {
    this.csr = csr;
    return this;
  }

  
  @Schema(description = "PEM-encoded CSR (>= 2048-bit) when csr_type=provided.")
  @JsonProperty("csr")
  public String getCsr() {
    return csr;
  }
  public void setCsr(String csr) {
    this.csr = csr;
  }

  /**
   * Contact first name (defaults from account).
   **/
  public SslOrderRequest firstname(String firstname) {
    this.firstname = firstname;
    return this;
  }

  
  @Schema(description = "Contact first name (defaults from account).")
  @JsonProperty("firstname")
  public String getFirstname() {
    return firstname;
  }
  public void setFirstname(String firstname) {
    this.firstname = firstname;
  }

  /**
   * Contact last name (defaults from account).
   **/
  public SslOrderRequest lastname(String lastname) {
    this.lastname = lastname;
    return this;
  }

  
  @Schema(description = "Contact last name (defaults from account).")
  @JsonProperty("lastname")
  public String getLastname() {
    return lastname;
  }
  public void setLastname(String lastname) {
    this.lastname = lastname;
  }

  /**
   * Contact email (defaults from account).
   **/
  public SslOrderRequest email(String email) {
    this.email = email;
    return this;
  }

  
  @Schema(description = "Contact email (defaults from account).")
  @JsonProperty("email")
  public String getEmail() {
    return email;
  }
  public void setEmail(String email) {
    this.email = email;
  }

  /**
   * Contact address (defaults from account).
   **/
  public SslOrderRequest address(String address) {
    this.address = address;
    return this;
  }

  
  @Schema(description = "Contact address (defaults from account).")
  @JsonProperty("address")
  public String getAddress() {
    return address;
  }
  public void setAddress(String address) {
    this.address = address;
  }

  /**
   * Contact city (defaults from account).
   **/
  public SslOrderRequest city(String city) {
    this.city = city;
    return this;
  }

  
  @Schema(description = "Contact city (defaults from account).")
  @JsonProperty("city")
  public String getCity() {
    return city;
  }
  public void setCity(String city) {
    this.city = city;
  }

  /**
   * Contact state/region (defaults from account).
   **/
  public SslOrderRequest state(String state) {
    this.state = state;
    return this;
  }

  
  @Schema(description = "Contact state/region (defaults from account).")
  @JsonProperty("state")
  public String getState() {
    return state;
  }
  public void setState(String state) {
    this.state = state;
  }

  /**
   * Contact postal code (defaults from account).
   **/
  public SslOrderRequest zip(String zip) {
    this.zip = zip;
    return this;
  }

  
  @Schema(description = "Contact postal code (defaults from account).")
  @JsonProperty("zip")
  public String getZip() {
    return zip;
  }
  public void setZip(String zip) {
    this.zip = zip;
  }

  /**
   * Contact country (defaults from account).
   **/
  public SslOrderRequest country(String country) {
    this.country = country;
    return this;
  }

  
  @Schema(description = "Contact country (defaults from account).")
  @JsonProperty("country")
  public String getCountry() {
    return country;
  }
  public void setCountry(String country) {
    this.country = country;
  }

  /**
   * Contact phone (defaults from account).
   **/
  public SslOrderRequest phone(String phone) {
    this.phone = phone;
    return this;
  }

  
  @Schema(description = "Contact phone (defaults from account).")
  @JsonProperty("phone")
  public String getPhone() {
    return phone;
  }
  public void setPhone(String phone) {
    this.phone = phone;
  }

  /**
   * Contact company/organization (defaults from account).
   **/
  public SslOrderRequest company(String company) {
    this.company = company;
    return this;
  }

  
  @Schema(description = "Contact company/organization (defaults from account).")
  @JsonProperty("company")
  public String getCompany() {
    return company;
  }
  public void setCompany(String company) {
    this.company = company;
  }

  /**
   * Contact department (defaults to Administration).
   **/
  public SslOrderRequest department(String department) {
    this.department = department;
    return this;
  }

  
  @Schema(description = "Contact department (defaults to Administration).")
  @JsonProperty("department")
  public String getDepartment() {
    return department;
  }
  public void setDepartment(String department) {
    this.department = department;
  }

  /**
   * EV certificate incorporating agency (only for EV packages).
   **/
  public SslOrderRequest agency(String agency) {
    this.agency = agency;
    return this;
  }

  
  @Schema(description = "EV certificate incorporating agency (only for EV packages).")
  @JsonProperty("agency")
  public String getAgency() {
    return agency;
  }
  public void setAgency(String agency) {
    this.agency = agency;
  }

  /**
   * EV certificate business category (only for EV packages).
   **/
  public SslOrderRequest businessCategory(String businessCategory) {
    this.businessCategory = businessCategory;
    return this;
  }

  
  @Schema(description = "EV certificate business category (only for EV packages).")
  @JsonProperty("business_category")
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
    return Objects.equals(ssl, sslOrderRequest.ssl) &&
        Objects.equals(hostname, sslOrderRequest.hostname) &&
        Objects.equals(approverEmail, sslOrderRequest.approverEmail) &&
        Objects.equals(frequency, sslOrderRequest.frequency) &&
        Objects.equals(coupon, sslOrderRequest.coupon) &&
        Objects.equals(csrType, sslOrderRequest.csrType) &&
        Objects.equals(csr, sslOrderRequest.csr) &&
        Objects.equals(firstname, sslOrderRequest.firstname) &&
        Objects.equals(lastname, sslOrderRequest.lastname) &&
        Objects.equals(email, sslOrderRequest.email) &&
        Objects.equals(address, sslOrderRequest.address) &&
        Objects.equals(city, sslOrderRequest.city) &&
        Objects.equals(state, sslOrderRequest.state) &&
        Objects.equals(zip, sslOrderRequest.zip) &&
        Objects.equals(country, sslOrderRequest.country) &&
        Objects.equals(phone, sslOrderRequest.phone) &&
        Objects.equals(company, sslOrderRequest.company) &&
        Objects.equals(department, sslOrderRequest.department) &&
        Objects.equals(agency, sslOrderRequest.agency) &&
        Objects.equals(businessCategory, sslOrderRequest.businessCategory);
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
