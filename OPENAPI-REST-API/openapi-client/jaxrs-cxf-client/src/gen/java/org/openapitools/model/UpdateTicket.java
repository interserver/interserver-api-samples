package org.openapitools.model;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Update custom fields of the ticket
 */
@ApiModel(description="Update custom fields of the ticket")

public class UpdateTicket  {
  
  @ApiModelProperty(value = "")

  private String ip;

  @ApiModelProperty(value = "")

  private String ipAddress;

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

  private String rootPassword;

  @ApiModelProperty(value = "")

  private String sudoUsername;

  @ApiModelProperty(value = "")

  private String sudoPassword;

  @ApiModelProperty(value = "")

  private Integer port;
 /**
   * Get ip
   * @return ip
  **/
  @JsonProperty("ip")
  public String getIp() {
    return ip;
  }

  public void setIp(String ip) {
    this.ip = ip;
  }

  public UpdateTicket ip(String ip) {
    this.ip = ip;
    return this;
  }

 /**
   * Get ipAddress
   * @return ipAddress
  **/
  @JsonProperty("ip_address")
  public String getIpAddress() {
    return ipAddress;
  }

  public void setIpAddress(String ipAddress) {
    this.ipAddress = ipAddress;
  }

  public UpdateTicket ipAddress(String ipAddress) {
    this.ipAddress = ipAddress;
    return this;
  }

 /**
   * Get customerServerAccess
   * @return customerServerAccess
  **/
  @JsonProperty("customer_server_access")
  public String getCustomerServerAccess() {
    if (customerServerAccess == null) {
      return null;
    }
    return customerServerAccess.value();
  }

  public void setCustomerServerAccess(CustomerServerAccessEnum customerServerAccess) {
    this.customerServerAccess = customerServerAccess;
  }

  public UpdateTicket customerServerAccess(CustomerServerAccessEnum customerServerAccess) {
    this.customerServerAccess = customerServerAccess;
    return this;
  }

 /**
   * Get rootPassword
   * @return rootPassword
  **/
  @JsonProperty("root_password")
  public String getRootPassword() {
    return rootPassword;
  }

  public void setRootPassword(String rootPassword) {
    this.rootPassword = rootPassword;
  }

  public UpdateTicket rootPassword(String rootPassword) {
    this.rootPassword = rootPassword;
    return this;
  }

 /**
   * Get sudoUsername
   * @return sudoUsername
  **/
  @JsonProperty("sudo_username")
  public String getSudoUsername() {
    return sudoUsername;
  }

  public void setSudoUsername(String sudoUsername) {
    this.sudoUsername = sudoUsername;
  }

  public UpdateTicket sudoUsername(String sudoUsername) {
    this.sudoUsername = sudoUsername;
    return this;
  }

 /**
   * Get sudoPassword
   * @return sudoPassword
  **/
  @JsonProperty("sudo_password")
  public String getSudoPassword() {
    return sudoPassword;
  }

  public void setSudoPassword(String sudoPassword) {
    this.sudoPassword = sudoPassword;
  }

  public UpdateTicket sudoPassword(String sudoPassword) {
    this.sudoPassword = sudoPassword;
    return this;
  }

 /**
   * Get port
   * @return port
  **/
  @JsonProperty("port")
  public Integer getPort() {
    return port;
  }

  public void setPort(Integer port) {
    this.port = port;
  }

  public UpdateTicket port(Integer port) {
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
    UpdateTicket updateTicket = (UpdateTicket) o;
    return Objects.equals(this.ip, updateTicket.ip) &&
        Objects.equals(this.ipAddress, updateTicket.ipAddress) &&
        Objects.equals(this.customerServerAccess, updateTicket.customerServerAccess) &&
        Objects.equals(this.rootPassword, updateTicket.rootPassword) &&
        Objects.equals(this.sudoUsername, updateTicket.sudoUsername) &&
        Objects.equals(this.sudoPassword, updateTicket.sudoPassword) &&
        Objects.equals(this.port, updateTicket.port);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ip, ipAddress, customerServerAccess, rootPassword, sudoUsername, sudoPassword, port);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class UpdateTicket {\n");
    
    sb.append("    ip: ").append(toIndentedString(ip)).append("\n");
    sb.append("    ipAddress: ").append(toIndentedString(ipAddress)).append("\n");
    sb.append("    customerServerAccess: ").append(toIndentedString(customerServerAccess)).append("\n");
    sb.append("    rootPassword: ").append(toIndentedString(rootPassword)).append("\n");
    sb.append("    sudoUsername: ").append(toIndentedString(sudoUsername)).append("\n");
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

