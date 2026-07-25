package org.openapitools.model;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Optional fields providing additional info in ticket
 */
@ApiModel(description="Optional fields providing additional info in ticket")

public class TicketCustomFieldDetails  {
  
public enum CustomerServerAccessEnum {

Y(String.valueOf("y")), N(String.valueOf("n")), UNKNOWN_DEFAULT_OPEN_API(String.valueOf("unknown_default_open_api"));


    private String value;

    CustomerServerAccessEnum (String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    @Override
    public String toString() {
        return String.valueOf(value);
    }

    public static CustomerServerAccessEnum fromValue(String value) {
        for (CustomerServerAccessEnum b : CustomerServerAccessEnum.values()) {
            if (b.value.equals(value)) {
                return b;
            }
        }
        throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }
}

  @ApiModelProperty(value = "")

  private CustomerServerAccessEnum customerServerAccess;

  @ApiModelProperty(value = "")

  private String ipAddress;

  @ApiModelProperty(value = "")

  private String rootPassword;

  @ApiModelProperty(value = "")

  private String sudoUser;

  @ApiModelProperty(value = "")

  private Integer sudoPassword;

  @ApiModelProperty(value = "")

  private Integer port;
 /**
   * Get customerServerAccess
   * @return customerServerAccess
  **/
  @JsonProperty("Customer Server Access")
  public String getCustomerServerAccess() {
    if (customerServerAccess == null) {
      return null;
    }
    return customerServerAccess.value();
  }

  public void setCustomerServerAccess(CustomerServerAccessEnum customerServerAccess) {
    this.customerServerAccess = customerServerAccess;
  }

  public TicketCustomFieldDetails customerServerAccess(CustomerServerAccessEnum customerServerAccess) {
    this.customerServerAccess = customerServerAccess;
    return this;
  }

 /**
   * Get ipAddress
   * @return ipAddress
  **/
  @JsonProperty("Ip Address")
  public String getIpAddress() {
    return ipAddress;
  }

  public void setIpAddress(String ipAddress) {
    this.ipAddress = ipAddress;
  }

  public TicketCustomFieldDetails ipAddress(String ipAddress) {
    this.ipAddress = ipAddress;
    return this;
  }

 /**
   * Get rootPassword
   * @return rootPassword
  **/
  @JsonProperty("Root Password")
  public String getRootPassword() {
    return rootPassword;
  }

  public void setRootPassword(String rootPassword) {
    this.rootPassword = rootPassword;
  }

  public TicketCustomFieldDetails rootPassword(String rootPassword) {
    this.rootPassword = rootPassword;
    return this;
  }

 /**
   * Get sudoUser
   * @return sudoUser
  **/
  @JsonProperty("Sudo User")
  public String getSudoUser() {
    return sudoUser;
  }

  public void setSudoUser(String sudoUser) {
    this.sudoUser = sudoUser;
  }

  public TicketCustomFieldDetails sudoUser(String sudoUser) {
    this.sudoUser = sudoUser;
    return this;
  }

 /**
   * Get sudoPassword
   * @return sudoPassword
  **/
  @JsonProperty("Sudo Password")
  public Integer getSudoPassword() {
    return sudoPassword;
  }

  public void setSudoPassword(Integer sudoPassword) {
    this.sudoPassword = sudoPassword;
  }

  public TicketCustomFieldDetails sudoPassword(Integer sudoPassword) {
    this.sudoPassword = sudoPassword;
    return this;
  }

 /**
   * Get port
   * @return port
  **/
  @JsonProperty("Port")
  public Integer getPort() {
    return port;
  }

  public void setPort(Integer port) {
    this.port = port;
  }

  public TicketCustomFieldDetails port(Integer port) {
    this.port = port;
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
  private static String toIndentedString(Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}

