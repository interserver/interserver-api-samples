package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.HomeDetails;
import com.interserver.myadmin.model.HomeServices;
import com.interserver.myadmin.model.HomeTicketStatus;
import com.interserver.myadmin.model.HomeTicketStatusView;
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
 * Home
 */
@Validated
@NotUndefined



public class Home   {
  @JsonProperty("last_login_ip")

  private String lastLoginIp = null;

  @JsonProperty("last_login")

  private String lastLogin = null;

  @JsonProperty("currency")

  private String currency = null;

  @JsonProperty("amount")

  private String amount = null;

  @JsonProperty("invoice_list")

  private Integer invoiceList = null;

  @JsonProperty("balance")

  private String balance = null;

  @JsonProperty("full_name")

  private String fullName = null;

  @JsonProperty("email")

  private String email = null;

  @JsonProperty("tickets")
  @Valid
  private List<String> tickets = new ArrayList<>();
  @JsonProperty("ticketStatus")

  private HomeTicketStatus ticketStatus = null;

  @JsonProperty("ticketStatusView")

  private HomeTicketStatusView ticketStatusView = null;

  @JsonProperty("details")

  private HomeDetails details = null;

  @JsonProperty("services")

  private HomeServices services = null;

  @JsonProperty("AFFILIATE_AMOUNT")

  private String AFFILIATE_AMOUNT = null;


  public Home lastLoginIp(String lastLoginIp) { 

    this.lastLoginIp = lastLoginIp;
    return this;
  }

  /**
   * Last login IP.
   * @return lastLoginIp
   **/
  
  @Schema(example = "99.88.77.66", required = true, description = "Last login IP.")
  
  @NotNull
  public String getLastLoginIp() {  
    return lastLoginIp;
  }



  public void setLastLoginIp(String lastLoginIp) { 

    this.lastLoginIp = lastLoginIp;
  }

  public Home lastLogin(String lastLogin) { 

    this.lastLogin = lastLogin;
    return this;
  }

  /**
   * Last login time.
   * @return lastLogin
   **/
  
  @Schema(example = "14:58:pm - 17 Aug, 2023", required = true, description = "Last login time.")
  
  @NotNull
  public String getLastLogin() {  
    return lastLogin;
  }



  public void setLastLogin(String lastLogin) { 

    this.lastLogin = lastLogin;
  }

  public Home currency(String currency) { 

    this.currency = currency;
    return this;
  }

  /**
   * Currency symbol.
   * @return currency
   **/
  
  @Schema(example = "$", required = true, description = "Currency symbol.")
  
  @NotNull
  public String getCurrency() {  
    return currency;
  }



  public void setCurrency(String currency) { 

    this.currency = currency;
  }

  public Home amount(String amount) { 

    this.amount = amount;
    return this;
  }

  /**
   * Amount with currency.
   * @return amount
   **/
  
  @Schema(example = "$23.50", required = true, description = "Amount with currency.")
  
  @NotNull
  public String getAmount() {  
    return amount;
  }



  public void setAmount(String amount) { 

    this.amount = amount;
  }

  public Home invoiceList(Integer invoiceList) { 

    this.invoiceList = invoiceList;
    return this;
  }

  /**
   * Number of invoices.
   * @return invoiceList
   **/
  
  @Schema(example = "5", required = true, description = "Number of invoices.")
  
  @NotNull
  public Integer getInvoiceList() {  
    return invoiceList;
  }



  public void setInvoiceList(Integer invoiceList) { 

    this.invoiceList = invoiceList;
  }

  public Home balance(String balance) { 

    this.balance = balance;
    return this;
  }

  /**
   * Balance with currency.
   * @return balance
   **/
  
  @Schema(example = "$0.60", required = true, description = "Balance with currency.")
  
  @NotNull
  public String getBalance() {  
    return balance;
  }



  public void setBalance(String balance) { 

    this.balance = balance;
  }

  public Home fullName(String fullName) { 

    this.fullName = fullName;
    return this;
  }

  /**
   * Users full name.
   * @return fullName
   **/
  
  @Schema(example = "John", required = true, description = "Users full name.")
  
  @NotNull
  public String getFullName() {  
    return fullName;
  }



  public void setFullName(String fullName) { 

    this.fullName = fullName;
  }

  public Home email(String email) { 

    this.email = email;
    return this;
  }

  /**
   * User email address.
   * @return email
   **/
  
  @Schema(example = "user@domain.com", required = true, description = "User email address.")
  
  @NotNull
  public String getEmail() {  
    return email;
  }



  public void setEmail(String email) { 

    this.email = email;
  }

  public Home tickets(List<String> tickets) { 

    this.tickets = tickets;
    return this;
  }

  public Home addTicketsItem(String ticketsItem) {
    this.tickets.add(ticketsItem);
    return this;
  }

  /**
   * List of tickets.
   * @return tickets
   **/
  
  @Schema(required = true, description = "List of tickets.")
  
  @NotNull
  public List<String> getTickets() {  
    return tickets;
  }



  public void setTickets(List<String> tickets) { 

    this.tickets = tickets;
  }

  public Home ticketStatus(HomeTicketStatus ticketStatus) { 

    this.ticketStatus = ticketStatus;
    return this;
  }

  /**
   * Get ticketStatus
   * @return ticketStatus
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public HomeTicketStatus getTicketStatus() {  
    return ticketStatus;
  }



  public void setTicketStatus(HomeTicketStatus ticketStatus) { 

    this.ticketStatus = ticketStatus;
  }

  public Home ticketStatusView(HomeTicketStatusView ticketStatusView) { 

    this.ticketStatusView = ticketStatusView;
    return this;
  }

  /**
   * Get ticketStatusView
   * @return ticketStatusView
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public HomeTicketStatusView getTicketStatusView() {  
    return ticketStatusView;
  }



  public void setTicketStatusView(HomeTicketStatusView ticketStatusView) { 

    this.ticketStatusView = ticketStatusView;
  }

  public Home details(HomeDetails details) { 

    this.details = details;
    return this;
  }

  /**
   * Get details
   * @return details
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public HomeDetails getDetails() {  
    return details;
  }



  public void setDetails(HomeDetails details) { 

    this.details = details;
  }

  public Home services(HomeServices services) { 

    this.services = services;
    return this;
  }

  /**
   * Get services
   * @return services
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public HomeServices getServices() {  
    return services;
  }



  public void setServices(HomeServices services) { 

    this.services = services;
  }

  public Home AFFILIATE_AMOUNT(String AFFILIATE_AMOUNT) { 

    this.AFFILIATE_AMOUNT = AFFILIATE_AMOUNT;
    return this;
  }

  /**
   * Affiliate amount with currency.
   * @return AFFILIATE_AMOUNT
   **/
  
  @Schema(example = "100", required = true, description = "Affiliate amount with currency.")
  
  @NotNull
  public String getAFFILIATEAMOUNT() {  
    return AFFILIATE_AMOUNT;
  }



  public void setAFFILIATEAMOUNT(String AFFILIATE_AMOUNT) { 

    this.AFFILIATE_AMOUNT = AFFILIATE_AMOUNT;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Home home = (Home) o;
    return Objects.equals(this.lastLoginIp, home.lastLoginIp) &&
        Objects.equals(this.lastLogin, home.lastLogin) &&
        Objects.equals(this.currency, home.currency) &&
        Objects.equals(this.amount, home.amount) &&
        Objects.equals(this.invoiceList, home.invoiceList) &&
        Objects.equals(this.balance, home.balance) &&
        Objects.equals(this.fullName, home.fullName) &&
        Objects.equals(this.email, home.email) &&
        Objects.equals(this.tickets, home.tickets) &&
        Objects.equals(this.ticketStatus, home.ticketStatus) &&
        Objects.equals(this.ticketStatusView, home.ticketStatusView) &&
        Objects.equals(this.details, home.details) &&
        Objects.equals(this.services, home.services) &&
        Objects.equals(this.AFFILIATE_AMOUNT, home.AFFILIATE_AMOUNT);
  }

  @Override
  public int hashCode() {
    return Objects.hash(lastLoginIp, lastLogin, currency, amount, invoiceList, balance, fullName, email, tickets, ticketStatus, ticketStatusView, details, services, AFFILIATE_AMOUNT);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Home {\n");
    
    sb.append("    lastLoginIp: ").append(toIndentedString(lastLoginIp)).append("\n");
    sb.append("    lastLogin: ").append(toIndentedString(lastLogin)).append("\n");
    sb.append("    currency: ").append(toIndentedString(currency)).append("\n");
    sb.append("    amount: ").append(toIndentedString(amount)).append("\n");
    sb.append("    invoiceList: ").append(toIndentedString(invoiceList)).append("\n");
    sb.append("    balance: ").append(toIndentedString(balance)).append("\n");
    sb.append("    fullName: ").append(toIndentedString(fullName)).append("\n");
    sb.append("    email: ").append(toIndentedString(email)).append("\n");
    sb.append("    tickets: ").append(toIndentedString(tickets)).append("\n");
    sb.append("    ticketStatus: ").append(toIndentedString(ticketStatus)).append("\n");
    sb.append("    ticketStatusView: ").append(toIndentedString(ticketStatusView)).append("\n");
    sb.append("    details: ").append(toIndentedString(details)).append("\n");
    sb.append("    services: ").append(toIndentedString(services)).append("\n");
    sb.append("    AFFILIATE_AMOUNT: ").append(toIndentedString(AFFILIATE_AMOUNT)).append("\n");
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
