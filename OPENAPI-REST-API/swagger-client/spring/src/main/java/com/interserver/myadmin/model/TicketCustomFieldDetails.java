package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
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
 * Optional fields providing additional info in ticket
 */
@Schema(description = "Optional fields providing additional info in ticket")
@Validated
@NotUndefined



public class TicketCustomFieldDetails   {
  /**
   * Gets or Sets customerServerAccess
   */
  public enum CustomerServerAccessEnum {
    Y("y"),
    
    N("n");

    private String value;

    CustomerServerAccessEnum(String value) {
      this.value = value;
    }

    @Override
    @JsonValue
    public String toString() {
      return String.valueOf(value);
    }

    @JsonCreator
    public static CustomerServerAccessEnum fromValue(String text) {
      for (CustomerServerAccessEnum b : CustomerServerAccessEnum.values()) {
        if (String.valueOf(b.value).equals(text)) {
          return b;
        }
      }
      return null;
    }
  }
  @JsonProperty("Customer Server Access")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private CustomerServerAccessEnum customerServerAccess = null;

  @JsonProperty("Ip Address")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ipAddress = null;

  @JsonProperty("Root Password")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String rootPassword = null;

  @JsonProperty("Sudo User")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String sudoUser = null;

  @JsonProperty("Sudo Password")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer sudoPassword = null;

  @JsonProperty("Port")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer port = null;


  public TicketCustomFieldDetails customerServerAccess(CustomerServerAccessEnum customerServerAccess) { 

    this.customerServerAccess = customerServerAccess;
    return this;
  }

  /**
   * Get customerServerAccess
   * @return customerServerAccess
   **/
  
  @Schema(description = "")
  
  public CustomerServerAccessEnum getCustomerServerAccess() {  
    return customerServerAccess;
  }



  public void setCustomerServerAccess(CustomerServerAccessEnum customerServerAccess) { 
    this.customerServerAccess = customerServerAccess;
  }

  public TicketCustomFieldDetails ipAddress(String ipAddress) { 

    this.ipAddress = ipAddress;
    return this;
  }

  /**
   * Get ipAddress
   * @return ipAddress
   **/
  
  @Schema(description = "")
  
  public String getIpAddress() {  
    return ipAddress;
  }



  public void setIpAddress(String ipAddress) { 
    this.ipAddress = ipAddress;
  }

  public TicketCustomFieldDetails rootPassword(String rootPassword) { 

    this.rootPassword = rootPassword;
    return this;
  }

  /**
   * Get rootPassword
   * @return rootPassword
   **/
  
  @Schema(description = "")
  
  public String getRootPassword() {  
    return rootPassword;
  }



  public void setRootPassword(String rootPassword) { 
    this.rootPassword = rootPassword;
  }

  public TicketCustomFieldDetails sudoUser(String sudoUser) { 

    this.sudoUser = sudoUser;
    return this;
  }

  /**
   * Get sudoUser
   * @return sudoUser
   **/
  
  @Schema(description = "")
  
  public String getSudoUser() {  
    return sudoUser;
  }



  public void setSudoUser(String sudoUser) { 
    this.sudoUser = sudoUser;
  }

  public TicketCustomFieldDetails sudoPassword(Integer sudoPassword) { 

    this.sudoPassword = sudoPassword;
    return this;
  }

  /**
   * Get sudoPassword
   * @return sudoPassword
   **/
  
  @Schema(description = "")
  
  public Integer getSudoPassword() {  
    return sudoPassword;
  }



  public void setSudoPassword(Integer sudoPassword) { 
    this.sudoPassword = sudoPassword;
  }

  public TicketCustomFieldDetails port(Integer port) { 

    this.port = port;
    return this;
  }

  /**
   * Get port
   * @return port
   **/
  
  @Schema(description = "")
  
  public Integer getPort() {  
    return port;
  }



  public void setPort(Integer port) { 
    this.port = port;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    TicketCustomFieldDetails ticketCustomFieldDetails = (TicketCustomFieldDetails) o;
    return Objects.equals(this.customerServerAccess, ticketCustomFieldDetails.customerServerAccess) &&
        Objects.equals(this.ipAddress, ticketCustomFieldDetails.ipAddress) &&
        Objects.equals(this.rootPassword, ticketCustomFieldDetails.rootPassword) &&
        Objects.equals(this.sudoUser, ticketCustomFieldDetails.sudoUser) &&
        Objects.equals(this.sudoPassword, ticketCustomFieldDetails.sudoPassword) &&
        Objects.equals(this.port, ticketCustomFieldDetails.port);
  }

  @Override
  public int hashCode() {
    return Objects.hash(customerServerAccess, ipAddress, rootPassword, sudoUser, sudoPassword, port);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class TicketCustomFieldDetails {\n");
    
    sb.append("    customerServerAccess: ").append(toIndentedString(customerServerAccess)).append("\n");
    sb.append("    ipAddress: ").append(toIndentedString(ipAddress)).append("\n");
    sb.append("    rootPassword: ").append(toIndentedString(rootPassword)).append("\n");
    sb.append("    sudoUser: ").append(toIndentedString(sudoUser)).append("\n");
    sb.append("    sudoPassword: ").append(toIndentedString(sudoPassword)).append("\n");
    sb.append("    port: ").append(toIndentedString(port)).append("\n");
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
