package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;
import org.springframework.validation.annotation.Validated;
import org.openapitools.jackson.nullable.JsonNullable;
import io.swagger.configuration.NotUndefined;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.Nulls;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * Request to update account information.
 */
@Schema(description = "Request to update account information.")
@Validated
@NotUndefined



public class AccountInfoPost   {
  @JsonProperty("name")

  private String name = null;

  @JsonProperty("company")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String company = null;

  @JsonProperty("address")

  private String address = null;

  @JsonProperty("address2")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String address2 = null;

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

  @JsonProperty("locale")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String locale = null;

  @JsonProperty("email_invoices")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String emailInvoices = null;

  @JsonProperty("email_abuse")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String emailAbuse = null;

  @JsonProperty("disable_reset")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Boolean disableReset = null;

  @JsonProperty("disable_reinstall")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Boolean disableReinstall = null;

  @JsonProperty("disable_server_notifications")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Boolean disableServerNotifications = null;

  @JsonProperty("disable_email_notifications")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Boolean disableEmailNotifications = null;

  @JsonProperty("gstin")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String gstin = null;


  public AccountInfoPost name(String name) { 

    this.name = name;
    return this;
  }

  /**
   * Your name.
   * @return name
   **/
  
  @Schema(example = "John Doe", required = true, description = "Your name.")
  
  @NotNull
  public String getName() {  
    return name;
  }



  public void setName(String name) { 

    this.name = name;
  }

  public AccountInfoPost company(String company) { 

    this.company = company;
    return this;
  }

  /**
   * Your company name.
   * @return company
   **/
  
  @Schema(example = "My Company", description = "Your company name.")
  
  public String getCompany() {  
    return company;
  }



  public void setCompany(String company) { 
    this.company = company;
  }

  public AccountInfoPost address(String address) { 

    this.address = address;
    return this;
  }

  /**
   * Your address.
   * @return address
   **/
  
  @Schema(example = "124 My St", required = true, description = "Your address.")
  
  @NotNull
  public String getAddress() {  
    return address;
  }



  public void setAddress(String address) { 

    this.address = address;
  }

  public AccountInfoPost address2(String address2) { 

    this.address2 = address2;
    return this;
  }

  /**
   * Additional address information.
   * @return address2
   **/
  
  @Schema(description = "Additional address information.")
  
  public String getAddress2() {  
    return address2;
  }



  public void setAddress2(String address2) { 
    this.address2 = address2;
  }

  public AccountInfoPost city(String city) { 

    this.city = city;
    return this;
  }

  /**
   * Your city.
   * @return city
   **/
  
  @Schema(example = "My Town", required = true, description = "Your city.")
  
  @NotNull
  public String getCity() {  
    return city;
  }



  public void setCity(String city) { 

    this.city = city;
  }

  public AccountInfoPost state(String state) { 

    this.state = state;
    return this;
  }

  /**
   * Your state.
   * @return state
   **/
  
  @Schema(example = "PA", required = true, description = "Your state.")
  
  @NotNull
  public String getState() {  
    return state;
  }



  public void setState(String state) { 

    this.state = state;
  }

  public AccountInfoPost zip(String zip) { 

    this.zip = zip;
    return this;
  }

  /**
   * Your ZIP code.
   * @return zip
   **/
  
  @Schema(example = "17522", required = true, description = "Your ZIP code.")
  
  @NotNull
  public String getZip() {  
    return zip;
  }



  public void setZip(String zip) { 

    this.zip = zip;
  }

  public AccountInfoPost country(String country) { 

    this.country = country;
    return this;
  }

  /**
   * Your country.
   * @return country
   **/
  
  @Schema(example = "US", required = true, description = "Your country.")
  
  @NotNull
  public String getCountry() {  
    return country;
  }



  public void setCountry(String country) { 

    this.country = country;
  }

  public AccountInfoPost phone(String phone) { 

    this.phone = phone;
    return this;
  }

  /**
   * Your phone number.
   * @return phone
   **/
  
  @Schema(example = "8675309", required = true, description = "Your phone number.")
  
  @NotNull
  public String getPhone() {  
    return phone;
  }



  public void setPhone(String phone) { 

    this.phone = phone;
  }

  public AccountInfoPost locale(String locale) { 

    this.locale = locale;
    return this;
  }

  /**
   * Your preferred locale.
   * @return locale
   **/
  
  @Schema(description = "Your preferred locale.")
  
  public String getLocale() {  
    return locale;
  }



  public void setLocale(String locale) { 
    this.locale = locale;
  }

  public AccountInfoPost emailInvoices(String emailInvoices) { 

    this.emailInvoices = emailInvoices;
    return this;
  }

  /**
   * Your email for invoice notifications.
   * @return emailInvoices
   **/
  
  @Schema(description = "Your email for invoice notifications.")
  
  public String getEmailInvoices() {  
    return emailInvoices;
  }



  public void setEmailInvoices(String emailInvoices) { 
    this.emailInvoices = emailInvoices;
  }

  public AccountInfoPost emailAbuse(String emailAbuse) { 

    this.emailAbuse = emailAbuse;
    return this;
  }

  /**
   * Your email for abuse notifications.
   * @return emailAbuse
   **/
  
  @Schema(description = "Your email for abuse notifications.")
  
  public String getEmailAbuse() {  
    return emailAbuse;
  }



  public void setEmailAbuse(String emailAbuse) { 
    this.emailAbuse = emailAbuse;
  }

  public AccountInfoPost disableReset(Boolean disableReset) { 

    this.disableReset = disableReset;
    return this;
  }

  /**
   * Set to `true` to disable account resets, or `false` to enable them.
   * @return disableReset
   **/
  
  @Schema(description = "Set to `true` to disable account resets, or `false` to enable them.")
  
  public Boolean isDisableReset() {  
    return disableReset;
  }



  public void setDisableReset(Boolean disableReset) { 
    this.disableReset = disableReset;
  }

  public AccountInfoPost disableReinstall(Boolean disableReinstall) { 

    this.disableReinstall = disableReinstall;
    return this;
  }

  /**
   * Set to `true` to disable server reinstalls, or `false` to enable them.
   * @return disableReinstall
   **/
  
  @Schema(description = "Set to `true` to disable server reinstalls, or `false` to enable them.")
  
  public Boolean isDisableReinstall() {  
    return disableReinstall;
  }



  public void setDisableReinstall(Boolean disableReinstall) { 
    this.disableReinstall = disableReinstall;
  }

  public AccountInfoPost disableServerNotifications(Boolean disableServerNotifications) { 

    this.disableServerNotifications = disableServerNotifications;
    return this;
  }

  /**
   * Set to `true` to disable server notifications, or `false` to enable them.
   * @return disableServerNotifications
   **/
  
  @Schema(description = "Set to `true` to disable server notifications, or `false` to enable them.")
  
  public Boolean isDisableServerNotifications() {  
    return disableServerNotifications;
  }



  public void setDisableServerNotifications(Boolean disableServerNotifications) { 
    this.disableServerNotifications = disableServerNotifications;
  }

  public AccountInfoPost disableEmailNotifications(Boolean disableEmailNotifications) { 

    this.disableEmailNotifications = disableEmailNotifications;
    return this;
  }

  /**
   * Set to `true` to disable email notifications, or `false` to enable them.
   * @return disableEmailNotifications
   **/
  
  @Schema(description = "Set to `true` to disable email notifications, or `false` to enable them.")
  
  public Boolean isDisableEmailNotifications() {  
    return disableEmailNotifications;
  }



  public void setDisableEmailNotifications(Boolean disableEmailNotifications) { 
    this.disableEmailNotifications = disableEmailNotifications;
  }

  public AccountInfoPost gstin(String gstin) { 

    this.gstin = gstin;
    return this;
  }

  /**
   * Your GST identification number (if applicable).
   * @return gstin
   **/
  
  @Schema(description = "Your GST identification number (if applicable).")
  
  public String getGstin() {  
    return gstin;
  }



  public void setGstin(String gstin) { 
    this.gstin = gstin;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    AccountInfoPost accountInfoPost = (AccountInfoPost) o;
    return Objects.equals(this.name, accountInfoPost.name) &&
        Objects.equals(this.company, accountInfoPost.company) &&
        Objects.equals(this.address, accountInfoPost.address) &&
        Objects.equals(this.address2, accountInfoPost.address2) &&
        Objects.equals(this.city, accountInfoPost.city) &&
        Objects.equals(this.state, accountInfoPost.state) &&
        Objects.equals(this.zip, accountInfoPost.zip) &&
        Objects.equals(this.country, accountInfoPost.country) &&
        Objects.equals(this.phone, accountInfoPost.phone) &&
        Objects.equals(this.locale, accountInfoPost.locale) &&
        Objects.equals(this.emailInvoices, accountInfoPost.emailInvoices) &&
        Objects.equals(this.emailAbuse, accountInfoPost.emailAbuse) &&
        Objects.equals(this.disableReset, accountInfoPost.disableReset) &&
        Objects.equals(this.disableReinstall, accountInfoPost.disableReinstall) &&
        Objects.equals(this.disableServerNotifications, accountInfoPost.disableServerNotifications) &&
        Objects.equals(this.disableEmailNotifications, accountInfoPost.disableEmailNotifications) &&
        Objects.equals(this.gstin, accountInfoPost.gstin);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, company, address, address2, city, state, zip, country, phone, locale, emailInvoices, emailAbuse, disableReset, disableReinstall, disableServerNotifications, disableEmailNotifications, gstin);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AccountInfoPost {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    company: ").append(toIndentedString(company)).append("\n");
    sb.append("    address: ").append(toIndentedString(address)).append("\n");
    sb.append("    address2: ").append(toIndentedString(address2)).append("\n");
    sb.append("    city: ").append(toIndentedString(city)).append("\n");
    sb.append("    state: ").append(toIndentedString(state)).append("\n");
    sb.append("    zip: ").append(toIndentedString(zip)).append("\n");
    sb.append("    country: ").append(toIndentedString(country)).append("\n");
    sb.append("    phone: ").append(toIndentedString(phone)).append("\n");
    sb.append("    locale: ").append(toIndentedString(locale)).append("\n");
    sb.append("    emailInvoices: ").append(toIndentedString(emailInvoices)).append("\n");
    sb.append("    emailAbuse: ").append(toIndentedString(emailAbuse)).append("\n");
    sb.append("    disableReset: ").append(toIndentedString(disableReset)).append("\n");
    sb.append("    disableReinstall: ").append(toIndentedString(disableReinstall)).append("\n");
    sb.append("    disableServerNotifications: ").append(toIndentedString(disableServerNotifications)).append("\n");
    sb.append("    disableEmailNotifications: ").append(toIndentedString(disableEmailNotifications)).append("\n");
    sb.append("    gstin: ").append(toIndentedString(gstin)).append("\n");
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
