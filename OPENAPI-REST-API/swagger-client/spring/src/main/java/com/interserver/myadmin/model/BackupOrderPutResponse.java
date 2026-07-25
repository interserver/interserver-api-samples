package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
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
 * Backup Order validation response
 */
@Schema(description = "Backup Order validation response")
@Validated
@NotUndefined



public class BackupOrderPutResponse   {
  @JsonProperty("continue")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Boolean _continue = null;

  @JsonProperty("errors")
  @Valid
  private List<String> errors = null;
  @JsonProperty("serviceType")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer serviceType = null;

  @JsonProperty("serviceCost")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String serviceCost = null;

  @JsonProperty("originalCost")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String originalCost = null;

  @JsonProperty("repeatServiceCost")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String repeatServiceCost = null;

  @JsonProperty("hostname")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String hostname = null;

  @JsonProperty("password")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String password = null;

  @JsonProperty("coupon")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String coupon = null;

  @JsonProperty("couponCode")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer couponCode = null;


  public BackupOrderPutResponse _continue(Boolean _continue) { 

    this._continue = _continue;
    return this;
  }

  /**
   * Get _continue
   * @return _continue
   **/
  
  @Schema(description = "")
  
  public Boolean isContinue() {  
    return _continue;
  }



  public void setContinue(Boolean _continue) { 
    this._continue = _continue;
  }

  public BackupOrderPutResponse errors(List<String> errors) { 

    this.errors = errors;
    return this;
  }

  public BackupOrderPutResponse addErrorsItem(String errorsItem) {
    if (this.errors == null) {
      this.errors = new ArrayList<>();
    }
    this.errors.add(errorsItem);
    return this;
  }

  /**
   * Get errors
   * @return errors
   **/
  
  @Schema(description = "")
  
  public List<String> getErrors() {  
    return errors;
  }



  public void setErrors(List<String> errors) { 
    this.errors = errors;
  }

  public BackupOrderPutResponse serviceType(Integer serviceType) { 

    this.serviceType = serviceType;
    return this;
  }

  /**
   * Get serviceType
   * @return serviceType
   **/
  
  @Schema(description = "")
  
  public Integer getServiceType() {  
    return serviceType;
  }



  public void setServiceType(Integer serviceType) { 
    this.serviceType = serviceType;
  }

  public BackupOrderPutResponse serviceCost(String serviceCost) { 

    this.serviceCost = serviceCost;
    return this;
  }

  /**
   * Get serviceCost
   * @return serviceCost
   **/
  
  @Schema(description = "")
  
  public String getServiceCost() {  
    return serviceCost;
  }



  public void setServiceCost(String serviceCost) { 
    this.serviceCost = serviceCost;
  }

  public BackupOrderPutResponse originalCost(String originalCost) { 

    this.originalCost = originalCost;
    return this;
  }

  /**
   * Get originalCost
   * @return originalCost
   **/
  
  @Schema(description = "")
  
  public String getOriginalCost() {  
    return originalCost;
  }



  public void setOriginalCost(String originalCost) { 
    this.originalCost = originalCost;
  }

  public BackupOrderPutResponse repeatServiceCost(String repeatServiceCost) { 

    this.repeatServiceCost = repeatServiceCost;
    return this;
  }

  /**
   * Get repeatServiceCost
   * @return repeatServiceCost
   **/
  
  @Schema(description = "")
  
  public String getRepeatServiceCost() {  
    return repeatServiceCost;
  }



  public void setRepeatServiceCost(String repeatServiceCost) { 
    this.repeatServiceCost = repeatServiceCost;
  }

  public BackupOrderPutResponse hostname(String hostname) { 

    this.hostname = hostname;
    return this;
  }

  /**
   * Get hostname
   * @return hostname
   **/
  
  @Schema(description = "")
  
  public String getHostname() {  
    return hostname;
  }



  public void setHostname(String hostname) { 
    this.hostname = hostname;
  }

  public BackupOrderPutResponse password(String password) { 

    this.password = password;
    return this;
  }

  /**
   * Get password
   * @return password
   **/
  
  @Schema(description = "")
  
  public String getPassword() {  
    return password;
  }



  public void setPassword(String password) { 
    this.password = password;
  }

  public BackupOrderPutResponse coupon(String coupon) { 

    this.coupon = coupon;
    return this;
  }

  /**
   * Get coupon
   * @return coupon
   **/
  
  @Schema(description = "")
  
  public String getCoupon() {  
    return coupon;
  }



  public void setCoupon(String coupon) { 
    this.coupon = coupon;
  }

  public BackupOrderPutResponse couponCode(Integer couponCode) { 

    this.couponCode = couponCode;
    return this;
  }

  /**
   * Get couponCode
   * @return couponCode
   **/
  
  @Schema(description = "")
  
  public Integer getCouponCode() {  
    return couponCode;
  }



  public void setCouponCode(Integer couponCode) { 
    this.couponCode = couponCode;
  }

  @Override
  public boolean equals(java.lang.Object o) {
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
