package org.openapitools.model;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Parameters to submit to validate your backup order
 */
@ApiModel(description="Parameters to submit to validate your backup order")

public class BackupOrderPutRequest  {
  
  @ApiModelProperty(value = "")

  private Boolean validateOnly;

  @ApiModelProperty(value = "")

  private Integer serviceType;

  @ApiModelProperty(value = "")

  private String coupon;
 /**
   * Get validateOnly
   * @return validateOnly
  **/
  @JsonProperty("validateOnly")
  public Boolean isValidateOnly() {
    return validateOnly;
  }

  public void setValidateOnly(Boolean validateOnly) {
    this.validateOnly = validateOnly;
  }

  public BackupOrderPutRequest validateOnly(Boolean validateOnly) {
    this.validateOnly = validateOnly;
    return this;
  }

 /**
   * Get serviceType
   * @return serviceType
  **/
  @JsonProperty("serviceType")
  public Integer getServiceType() {
    return serviceType;
  }

  public void setServiceType(Integer serviceType) {
    this.serviceType = serviceType;
  }

  public BackupOrderPutRequest serviceType(Integer serviceType) {
    this.serviceType = serviceType;
    return this;
  }

 /**
   * Get coupon
   * @return coupon
  **/
  @JsonProperty("coupon")
  public String getCoupon() {
    return coupon;
  }

  public void setCoupon(String coupon) {
    this.coupon = coupon;
  }

  public BackupOrderPutRequest coupon(String coupon) {
    this.coupon = coupon;
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
    BackupOrderPutRequest backupOrderPutRequest = (BackupOrderPutRequest) o;
    return Objects.equals(this.validateOnly, backupOrderPutRequest.validateOnly) &&
        Objects.equals(this.serviceType, backupOrderPutRequest.serviceType) &&
        Objects.equals(this.coupon, backupOrderPutRequest.coupon);
  }

  @Override
  public int hashCode() {
    return Objects.hash(validateOnly, serviceType, coupon);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class BackupOrderPutRequest {\n");
    
    sb.append("    validateOnly: ").append(toIndentedString(validateOnly)).append("\n");
    sb.append("    serviceType: ").append(toIndentedString(serviceType)).append("\n");
    sb.append("    coupon: ").append(toIndentedString(coupon)).append("\n");
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

