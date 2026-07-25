package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Backup Order validation response
 */
@ApiModel(description="Backup Order validation response")

public class BackupOrderPutResponse  {
  
  @ApiModelProperty(value = "")

  private Boolean _continue;

  @ApiModelProperty(value = "")

  private List<String> errors = new ArrayList<>();

  @ApiModelProperty(value = "")

  private Integer serviceType;

  @ApiModelProperty(value = "")

  private String serviceCost;

  @ApiModelProperty(value = "")

  private String originalCost;

  @ApiModelProperty(value = "")

  private String repeatServiceCost;

  @ApiModelProperty(value = "")

  private String hostname;

  @ApiModelProperty(value = "")

  private String password;

  @ApiModelProperty(value = "")

  private String coupon;

  @ApiModelProperty(value = "")

  private Integer couponCode;
 /**
   * Get _continue
   * @return _continue
  **/
  @JsonProperty("continue")
  public Boolean isContinue() {
    return _continue;
  }

  public void setContinue(Boolean _continue) {
    this._continue = _continue;
  }

  public BackupOrderPutResponse _continue(Boolean _continue) {
    this._continue = _continue;
    return this;
  }

 /**
   * Get errors
   * @return errors
  **/
  @JsonProperty("errors")
  public List<String> getErrors() {
    return errors;
  }

  public void setErrors(List<String> errors) {
    this.errors = errors;
  }

  public BackupOrderPutResponse errors(List<String> errors) {
    this.errors = errors;
    return this;
  }

  public BackupOrderPutResponse addErrorsItem(String errorsItem) {
    this.errors.add(errorsItem);
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

  public BackupOrderPutResponse serviceType(Integer serviceType) {
    this.serviceType = serviceType;
    return this;
  }

 /**
   * Get serviceCost
   * @return serviceCost
  **/
  @JsonProperty("serviceCost")
  public String getServiceCost() {
    return serviceCost;
  }

  public void setServiceCost(String serviceCost) {
    this.serviceCost = serviceCost;
  }

  public BackupOrderPutResponse serviceCost(String serviceCost) {
    this.serviceCost = serviceCost;
    return this;
  }

 /**
   * Get originalCost
   * @return originalCost
  **/
  @JsonProperty("originalCost")
  public String getOriginalCost() {
    return originalCost;
  }

  public void setOriginalCost(String originalCost) {
    this.originalCost = originalCost;
  }

  public BackupOrderPutResponse originalCost(String originalCost) {
    this.originalCost = originalCost;
    return this;
  }

 /**
   * Get repeatServiceCost
   * @return repeatServiceCost
  **/
  @JsonProperty("repeatServiceCost")
  public String getRepeatServiceCost() {
    return repeatServiceCost;
  }

  public void setRepeatServiceCost(String repeatServiceCost) {
    this.repeatServiceCost = repeatServiceCost;
  }

  public BackupOrderPutResponse repeatServiceCost(String repeatServiceCost) {
    this.repeatServiceCost = repeatServiceCost;
    return this;
  }

 /**
   * Get hostname
   * @return hostname
  **/
  @JsonProperty("hostname")
  public String getHostname() {
    return hostname;
  }

  public void setHostname(String hostname) {
    this.hostname = hostname;
  }

  public BackupOrderPutResponse hostname(String hostname) {
    this.hostname = hostname;
    return this;
  }

 /**
   * Get password
   * @return password
  **/
  @JsonProperty("password")
  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public BackupOrderPutResponse password(String password) {
    this.password = password;
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

  public BackupOrderPutResponse coupon(String coupon) {
    this.coupon = coupon;
    return this;
  }

 /**
   * Get couponCode
   * @return couponCode
  **/
  @JsonProperty("couponCode")
  public Integer getCouponCode() {
    return couponCode;
  }

  public void setCouponCode(Integer couponCode) {
    this.couponCode = couponCode;
  }

  public BackupOrderPutResponse couponCode(Integer couponCode) {
    this.couponCode = couponCode;
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
    BackupOrderPutResponse backupOrderPutResponse = (BackupOrderPutResponse) o;
    return Objects.equals(this._continue, backupOrderPutResponse._continue) &&
        Objects.equals(this.errors, backupOrderPutResponse.errors) &&
        Objects.equals(this.serviceType, backupOrderPutResponse.serviceType) &&
        Objects.equals(this.serviceCost, backupOrderPutResponse.serviceCost) &&
        Objects.equals(this.originalCost, backupOrderPutResponse.originalCost) &&
        Objects.equals(this.repeatServiceCost, backupOrderPutResponse.repeatServiceCost) &&
        Objects.equals(this.hostname, backupOrderPutResponse.hostname) &&
        Objects.equals(this.password, backupOrderPutResponse.password) &&
        Objects.equals(this.coupon, backupOrderPutResponse.coupon) &&
        Objects.equals(this.couponCode, backupOrderPutResponse.couponCode);
  }

  @Override
  public int hashCode() {
    return Objects.hash(_continue, errors, serviceType, serviceCost, originalCost, repeatServiceCost, hostname, password, coupon, couponCode);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class BackupOrderPutResponse {\n");
    
    sb.append("    _continue: ").append(toIndentedString(_continue)).append("\n");
    sb.append("    errors: ").append(toIndentedString(errors)).append("\n");
    sb.append("    serviceType: ").append(toIndentedString(serviceType)).append("\n");
    sb.append("    serviceCost: ").append(toIndentedString(serviceCost)).append("\n");
    sb.append("    originalCost: ").append(toIndentedString(originalCost)).append("\n");
    sb.append("    repeatServiceCost: ").append(toIndentedString(repeatServiceCost)).append("\n");
    sb.append("    hostname: ").append(toIndentedString(hostname)).append("\n");
    sb.append("    password: ").append(toIndentedString(password)).append("\n");
    sb.append("    coupon: ").append(toIndentedString(coupon)).append("\n");
    sb.append("    couponCode: ").append(toIndentedString(couponCode)).append("\n");
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

