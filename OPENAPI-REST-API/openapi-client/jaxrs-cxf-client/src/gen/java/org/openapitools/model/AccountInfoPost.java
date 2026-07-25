package org.openapitools.model;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Request to update account information.
 */
@ApiModel(description="Request to update account information.")

public class AccountInfoPost  {
  
 /**
  * Your name.
  */
  @ApiModelProperty(example = "John Doe", required = true, value = "Your name.")

  private String name;

 /**
  * Your address.
  */
  @ApiModelProperty(example = "124 My St", required = true, value = "Your address.")

  private String address;

 /**
  * Your city.
  */
  @ApiModelProperty(example = "My Town", required = true, value = "Your city.")

  private String city;

 /**
  * Your state.
  */
  @ApiModelProperty(example = "PA", required = true, value = "Your state.")

  private String state;

 /**
  * Your ZIP code.
  */
  @ApiModelProperty(example = "17522", required = true, value = "Your ZIP code.")

  private String zip;

 /**
  * Your country.
  */
  @ApiModelProperty(example = "US", required = true, value = "Your country.")

  private String country;

 /**
  * Your phone number.
  */
  @ApiModelProperty(example = "8675309", required = true, value = "Your phone number.")

  private String phone;

 /**
  * Your company name.
  */
  @ApiModelProperty(example = "My Company", value = "Your company name.")

  private String company;

 /**
  * Additional address information.
  */
  @ApiModelProperty(value = "Additional address information.")

  private String address2;

 /**
  * Your preferred locale.
  */
  @ApiModelProperty(value = "Your preferred locale.")

  private String locale;

 /**
  * Your email for invoice notifications.
  */
  @ApiModelProperty(value = "Your email for invoice notifications.")

  private String emailInvoices;

 /**
  * Your email for abuse notifications.
  */
  @ApiModelProperty(value = "Your email for abuse notifications.")

  private String emailAbuse;

 /**
  * Set to `true` to disable account resets, or `false` to enable them.
  */
  @ApiModelProperty(value = "Set to `true` to disable account resets, or `false` to enable them.")

  private Boolean disableReset;

 /**
  * Set to `true` to disable server reinstalls, or `false` to enable them.
  */
  @ApiModelProperty(value = "Set to `true` to disable server reinstalls, or `false` to enable them.")

  private Boolean disableReinstall;

 /**
  * Set to `true` to disable server notifications, or `false` to enable them.
  */
  @ApiModelProperty(value = "Set to `true` to disable server notifications, or `false` to enable them.")

  private Boolean disableServerNotifications;

 /**
  * Set to `true` to disable email notifications, or `false` to enable them.
  */
  @ApiModelProperty(value = "Set to `true` to disable email notifications, or `false` to enable them.")

  private Boolean disableEmailNotifications;

 /**
  * Your GST identification number (if applicable).
  */
  @ApiModelProperty(value = "Your GST identification number (if applicable).")

  private String gstin;
 /**
   * Your name.
   * @return name
  **/
  @JsonProperty("name")
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public AccountInfoPost name(String name) {
    this.name = name;
    return this;
  }

 /**
   * Your address.
   * @return address
  **/
  @JsonProperty("address")
  public String getAddress() {
    return address;
  }

  public void setAddress(String address) {
    this.address = address;
  }

  public AccountInfoPost address(String address) {
    this.address = address;
    return this;
  }

 /**
   * Your city.
   * @return city
  **/
  @JsonProperty("city")
  public String getCity() {
    return city;
  }

  public void setCity(String city) {
    this.city = city;
  }

  public AccountInfoPost city(String city) {
    this.city = city;
    return this;
  }

 /**
   * Your state.
   * @return state
  **/
  @JsonProperty("state")
  public String getState() {
    return state;
  }

  public void setState(String state) {
    this.state = state;
  }

  public AccountInfoPost state(String state) {
    this.state = state;
    return this;
  }

 /**
   * Your ZIP code.
   * @return zip
  **/
  @JsonProperty("zip")
  public String getZip() {
    return zip;
  }

  public void setZip(String zip) {
    this.zip = zip;
  }

  public AccountInfoPost zip(String zip) {
    this.zip = zip;
    return this;
  }

 /**
   * Your country.
   * @return country
  **/
  @JsonProperty("country")
  public String getCountry() {
    return country;
  }

  public void setCountry(String country) {
    this.country = country;
  }

  public AccountInfoPost country(String country) {
    this.country = country;
    return this;
  }

 /**
   * Your phone number.
   * @return phone
  **/
  @JsonProperty("phone")
  public String getPhone() {
    return phone;
  }

  public void setPhone(String phone) {
    this.phone = phone;
  }

  public AccountInfoPost phone(String phone) {
    this.phone = phone;
    return this;
  }

 /**
   * Your company name.
   * @return company
  **/
  @JsonProperty("company")
  public String getCompany() {
    return company;
  }

  public void setCompany(String company) {
    this.company = company;
  }

  public AccountInfoPost company(String company) {
    this.company = company;
    return this;
  }

 /**
   * Additional address information.
   * @return address2
  **/
  @JsonProperty("address2")
  public String getAddress2() {
    return address2;
  }

  public void setAddress2(String address2) {
    this.address2 = address2;
  }

  public AccountInfoPost address2(String address2) {
    this.address2 = address2;
    return this;
  }

 /**
   * Your preferred locale.
   * @return locale
  **/
  @JsonProperty("locale")
  public String getLocale() {
    return locale;
  }

  public void setLocale(String locale) {
    this.locale = locale;
  }

  public AccountInfoPost locale(String locale) {
    this.locale = locale;
    return this;
  }

 /**
   * Your email for invoice notifications.
   * @return emailInvoices
  **/
  @JsonProperty("email_invoices")
  public String getEmailInvoices() {
    return emailInvoices;
  }

  public void setEmailInvoices(String emailInvoices) {
    this.emailInvoices = emailInvoices;
  }

  public AccountInfoPost emailInvoices(String emailInvoices) {
    this.emailInvoices = emailInvoices;
    return this;
  }

 /**
   * Your email for abuse notifications.
   * @return emailAbuse
  **/
  @JsonProperty("email_abuse")
  public String getEmailAbuse() {
    return emailAbuse;
  }

  public void setEmailAbuse(String emailAbuse) {
    this.emailAbuse = emailAbuse;
  }

  public AccountInfoPost emailAbuse(String emailAbuse) {
    this.emailAbuse = emailAbuse;
    return this;
  }

 /**
   * Set to &#x60;true&#x60; to disable account resets, or &#x60;false&#x60; to enable them.
   * @return disableReset
  **/
  @JsonProperty("disable_reset")
  public Boolean isDisableReset() {
    return disableReset;
  }

  public void setDisableReset(Boolean disableReset) {
    this.disableReset = disableReset;
  }

  public AccountInfoPost disableReset(Boolean disableReset) {
    this.disableReset = disableReset;
    return this;
  }

 /**
   * Set to &#x60;true&#x60; to disable server reinstalls, or &#x60;false&#x60; to enable them.
   * @return disableReinstall
  **/
  @JsonProperty("disable_reinstall")
  public Boolean isDisableReinstall() {
    return disableReinstall;
  }

  public void setDisableReinstall(Boolean disableReinstall) {
    this.disableReinstall = disableReinstall;
  }

  public AccountInfoPost disableReinstall(Boolean disableReinstall) {
    this.disableReinstall = disableReinstall;
    return this;
  }

 /**
   * Set to &#x60;true&#x60; to disable server notifications, or &#x60;false&#x60; to enable them.
   * @return disableServerNotifications
  **/
  @JsonProperty("disable_server_notifications")
  public Boolean isDisableServerNotifications() {
    return disableServerNotifications;
  }

  public void setDisableServerNotifications(Boolean disableServerNotifications) {
    this.disableServerNotifications = disableServerNotifications;
  }

  public AccountInfoPost disableServerNotifications(Boolean disableServerNotifications) {
    this.disableServerNotifications = disableServerNotifications;
    return this;
  }

 /**
   * Set to &#x60;true&#x60; to disable email notifications, or &#x60;false&#x60; to enable them.
   * @return disableEmailNotifications
  **/
  @JsonProperty("disable_email_notifications")
  public Boolean isDisableEmailNotifications() {
    return disableEmailNotifications;
  }

  public void setDisableEmailNotifications(Boolean disableEmailNotifications) {
    this.disableEmailNotifications = disableEmailNotifications;
  }

  public AccountInfoPost disableEmailNotifications(Boolean disableEmailNotifications) {
    this.disableEmailNotifications = disableEmailNotifications;
    return this;
  }

 /**
   * Your GST identification number (if applicable).
   * @return gstin
  **/
  @JsonProperty("gstin")
  public String getGstin() {
    return gstin;
  }

  public void setGstin(String gstin) {
    this.gstin = gstin;
  }

  public AccountInfoPost gstin(String gstin) {
    this.gstin = gstin;
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
    AccountInfoPost accountInfoPost = (AccountInfoPost) o;
    return Objects.equals(this.name, accountInfoPost.name) &&
        Objects.equals(this.address, accountInfoPost.address) &&
        Objects.equals(this.city, accountInfoPost.city) &&
        Objects.equals(this.state, accountInfoPost.state) &&
        Objects.equals(this.zip, accountInfoPost.zip) &&
        Objects.equals(this.country, accountInfoPost.country) &&
        Objects.equals(this.phone, accountInfoPost.phone) &&
        Objects.equals(this.company, accountInfoPost.company) &&
        Objects.equals(this.address2, accountInfoPost.address2) &&
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
    return Objects.hash(name, address, city, state, zip, country, phone, company, address2, locale, emailInvoices, emailAbuse, disableReset, disableReinstall, disableServerNotifications, disableEmailNotifications, gstin);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AccountInfoPost {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    address: ").append(toIndentedString(address)).append("\n");
    sb.append("    city: ").append(toIndentedString(city)).append("\n");
    sb.append("    state: ").append(toIndentedString(state)).append("\n");
    sb.append("    zip: ").append(toIndentedString(zip)).append("\n");
    sb.append("    country: ").append(toIndentedString(country)).append("\n");
    sb.append("    phone: ").append(toIndentedString(phone)).append("\n");
    sb.append("    company: ").append(toIndentedString(company)).append("\n");
    sb.append("    address2: ").append(toIndentedString(address2)).append("\n");
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
  private static String toIndentedString(Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}

