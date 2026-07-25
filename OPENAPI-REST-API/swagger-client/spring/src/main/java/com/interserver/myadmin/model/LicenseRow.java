package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;
import java.time.OffsetDateTime;
import org.springframework.validation.annotation.Validated;
import org.openapitools.jackson.nullable.JsonNullable;
import io.swagger.configuration.NotUndefined;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.Nulls;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * A result row from the &#x60;Licenses&#x60; &#x60;GET&#x60; request.
 */
@Schema(description = "A result row from the `Licenses` `GET` request.")
@Validated
@NotUndefined



public class LicenseRow   {
  @JsonProperty("license_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String licenseId = null;

  @JsonProperty("license_hostname")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String licenseHostname = null;

  @JsonProperty("license_ip")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String licenseIp = null;

  @JsonProperty("services_name")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String servicesName = null;

  @JsonProperty("cost")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String cost = null;

  @JsonProperty("license_status")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String licenseStatus = null;

  @JsonProperty("invoices_paid")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String invoicesPaid = null;

  @JsonProperty("invoices_date")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private OffsetDateTime invoicesDate = null;


  public LicenseRow licenseId(String licenseId) { 

    this.licenseId = licenseId;
    return this;
  }

  /**
   * The id of the license.
   * @return licenseId
   **/
  
  @Schema(example = "386111", description = "The id of the license.")
  
  public String getLicenseId() {  
    return licenseId;
  }



  public void setLicenseId(String licenseId) { 
    this.licenseId = licenseId;
  }

  public LicenseRow licenseHostname(String licenseHostname) { 

    this.licenseHostname = licenseHostname;
    return this;
  }

  /**
   * The hostname of the license.
   * @return licenseHostname
   **/
  
  @Schema(description = "The hostname of the license.")
  
  public String getLicenseHostname() {  
    return licenseHostname;
  }



  public void setLicenseHostname(String licenseHostname) { 
    this.licenseHostname = licenseHostname;
  }

  public LicenseRow licenseIp(String licenseIp) { 

    this.licenseIp = licenseIp;
    return this;
  }

  /**
   * The ip of the license.
   * @return licenseIp
   **/
  
  @Schema(example = "66.45.228.100", description = "The ip of the license.")
  
  public String getLicenseIp() {  
    return licenseIp;
  }



  public void setLicenseIp(String licenseIp) { 
    this.licenseIp = licenseIp;
  }

  public LicenseRow servicesName(String servicesName) { 

    this.servicesName = servicesName;
    return this;
  }

  /**
   * The services name of the license.
   * @return servicesName
   **/
  
  @Schema(example = "Imunify360 up to 30 users", description = "The services name of the license.")
  
  public String getServicesName() {  
    return servicesName;
  }



  public void setServicesName(String servicesName) { 
    this.servicesName = servicesName;
  }

  public LicenseRow cost(String cost) { 

    this.cost = cost;
    return this;
  }

  /**
   * The cost of the license.
   * @return cost
   **/
  
  @Schema(example = "25.00", description = "The cost of the license.")
  
  public String getCost() {  
    return cost;
  }



  public void setCost(String cost) { 
    this.cost = cost;
  }

  public LicenseRow licenseStatus(String licenseStatus) { 

    this.licenseStatus = licenseStatus;
    return this;
  }

  /**
   * The status of the license.
   * @return licenseStatus
   **/
  
  @Schema(example = "canceled", description = "The status of the license.")
  
  public String getLicenseStatus() {  
    return licenseStatus;
  }



  public void setLicenseStatus(String licenseStatus) { 
    this.licenseStatus = licenseStatus;
  }

  public LicenseRow invoicesPaid(String invoicesPaid) { 

    this.invoicesPaid = invoicesPaid;
    return this;
  }

  /**
   * The invoices paid of the license.
   * @return invoicesPaid
   **/
  
  @Schema(example = "1", description = "The invoices paid of the license.")
  
  public String getInvoicesPaid() {  
    return invoicesPaid;
  }



  public void setInvoicesPaid(String invoicesPaid) { 
    this.invoicesPaid = invoicesPaid;
  }

  public LicenseRow invoicesDate(OffsetDateTime invoicesDate) { 

    this.invoicesDate = invoicesDate;
    return this;
  }

  /**
   * The invoices date of the license.
   * @return invoicesDate
   **/
  
  @Schema(example = "2019-08-28T14:27:22Z", description = "The invoices date of the license.")
  
@Valid
  public OffsetDateTime getInvoicesDate() {  
    return invoicesDate;
  }



  public void setInvoicesDate(OffsetDateTime invoicesDate) { 
    this.invoicesDate = invoicesDate;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    LicenseRow licenseRow = (LicenseRow) o;
    return Objects.equals(this.licenseId, licenseRow.licenseId) &&
        Objects.equals(this.licenseHostname, licenseRow.licenseHostname) &&
        Objects.equals(this.licenseIp, licenseRow.licenseIp) &&
        Objects.equals(this.servicesName, licenseRow.servicesName) &&
        Objects.equals(this.cost, licenseRow.cost) &&
        Objects.equals(this.licenseStatus, licenseRow.licenseStatus) &&
        Objects.equals(this.invoicesPaid, licenseRow.invoicesPaid) &&
        Objects.equals(this.invoicesDate, licenseRow.invoicesDate);
  }

  @Override
  public int hashCode() {
    return Objects.hash(licenseId, licenseHostname, licenseIp, servicesName, cost, licenseStatus, invoicesPaid, invoicesDate);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class LicenseRow {\n");
    
    sb.append("    licenseId: ").append(toIndentedString(licenseId)).append("\n");
    sb.append("    licenseHostname: ").append(toIndentedString(licenseHostname)).append("\n");
    sb.append("    licenseIp: ").append(toIndentedString(licenseIp)).append("\n");
    sb.append("    servicesName: ").append(toIndentedString(servicesName)).append("\n");
    sb.append("    cost: ").append(toIndentedString(cost)).append("\n");
    sb.append("    licenseStatus: ").append(toIndentedString(licenseStatus)).append("\n");
    sb.append("    invoicesPaid: ").append(toIndentedString(invoicesPaid)).append("\n");
    sb.append("    invoicesDate: ").append(toIndentedString(invoicesDate)).append("\n");
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
