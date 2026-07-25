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
 * Response from VPS order validation request
 */
@Schema(description = "Response from VPS order validation request")
@Validated
@NotUndefined



public class VpsOrderPutResponse   {
  @JsonProperty("continue")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Boolean _continue = null;

  @JsonProperty("errors")
  @Valid
  private List<Object> errors = null;
  @JsonProperty("coupon_code")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer couponCode = null;

  @JsonProperty("service_cost")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer serviceCost = null;

  @JsonProperty("slice_cost")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer sliceCost = null;

  @JsonProperty("service_type")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer serviceType = null;

  @JsonProperty("repeat_slice_cost")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer repeatSliceCost = null;

  @JsonProperty("original_slice_cost")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer originalSliceCost = null;

  @JsonProperty("original_cost")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer originalCost = null;

  @JsonProperty("repeat_service_cost")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer repeatServiceCost = null;

  @JsonProperty("monthly_service_cost")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer monthlyServiceCost = null;

  @JsonProperty("custid")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String custid = null;

  @JsonProperty("os")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String os = null;

  @JsonProperty("slices")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String slices = null;

  @JsonProperty("platform")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String platform = null;

  @JsonProperty("controlpanel")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String controlpanel = null;

  @JsonProperty("period")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer period = null;

  @JsonProperty("location")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer location = null;

  @JsonProperty("version")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String version = null;

  @JsonProperty("hostname")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String hostname = null;

  @JsonProperty("coupon")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String coupon = null;

  @JsonProperty("rootpass")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String rootpass = null;


  public VpsOrderPutResponse _continue(Boolean _continue) { 

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

  public VpsOrderPutResponse errors(List<Object> errors) { 

    this.errors = errors;
    return this;
  }

  public VpsOrderPutResponse addErrorsItem(Object errorsItem) {
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
  
  public List<Object> getErrors() {  
    return errors;
  }



  public void setErrors(List<Object> errors) { 
    this.errors = errors;
  }

  public VpsOrderPutResponse couponCode(Integer couponCode) { 

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

  public VpsOrderPutResponse serviceCost(Integer serviceCost) { 

    this.serviceCost = serviceCost;
    return this;
  }

  /**
   * Get serviceCost
   * @return serviceCost
   **/
  
  @Schema(description = "")
  
  public Integer getServiceCost() {  
    return serviceCost;
  }



  public void setServiceCost(Integer serviceCost) { 
    this.serviceCost = serviceCost;
  }

  public VpsOrderPutResponse sliceCost(Integer sliceCost) { 

    this.sliceCost = sliceCost;
    return this;
  }

  /**
   * Get sliceCost
   * @return sliceCost
   **/
  
  @Schema(description = "")
  
  public Integer getSliceCost() {  
    return sliceCost;
  }



  public void setSliceCost(Integer sliceCost) { 
    this.sliceCost = sliceCost;
  }

  public VpsOrderPutResponse serviceType(Integer serviceType) { 

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

  public VpsOrderPutResponse repeatSliceCost(Integer repeatSliceCost) { 

    this.repeatSliceCost = repeatSliceCost;
    return this;
  }

  /**
   * Get repeatSliceCost
   * @return repeatSliceCost
   **/
  
  @Schema(description = "")
  
  public Integer getRepeatSliceCost() {  
    return repeatSliceCost;
  }



  public void setRepeatSliceCost(Integer repeatSliceCost) { 
    this.repeatSliceCost = repeatSliceCost;
  }

  public VpsOrderPutResponse originalSliceCost(Integer originalSliceCost) { 

    this.originalSliceCost = originalSliceCost;
    return this;
  }

  /**
   * Get originalSliceCost
   * @return originalSliceCost
   **/
  
  @Schema(description = "")
  
  public Integer getOriginalSliceCost() {  
    return originalSliceCost;
  }



  public void setOriginalSliceCost(Integer originalSliceCost) { 
    this.originalSliceCost = originalSliceCost;
  }

  public VpsOrderPutResponse originalCost(Integer originalCost) { 

    this.originalCost = originalCost;
    return this;
  }

  /**
   * Get originalCost
   * @return originalCost
   **/
  
  @Schema(description = "")
  
  public Integer getOriginalCost() {  
    return originalCost;
  }



  public void setOriginalCost(Integer originalCost) { 
    this.originalCost = originalCost;
  }

  public VpsOrderPutResponse repeatServiceCost(Integer repeatServiceCost) { 

    this.repeatServiceCost = repeatServiceCost;
    return this;
  }

  /**
   * Get repeatServiceCost
   * @return repeatServiceCost
   **/
  
  @Schema(description = "")
  
  public Integer getRepeatServiceCost() {  
    return repeatServiceCost;
  }



  public void setRepeatServiceCost(Integer repeatServiceCost) { 
    this.repeatServiceCost = repeatServiceCost;
  }

  public VpsOrderPutResponse monthlyServiceCost(Integer monthlyServiceCost) { 

    this.monthlyServiceCost = monthlyServiceCost;
    return this;
  }

  /**
   * Get monthlyServiceCost
   * @return monthlyServiceCost
   **/
  
  @Schema(description = "")
  
  public Integer getMonthlyServiceCost() {  
    return monthlyServiceCost;
  }



  public void setMonthlyServiceCost(Integer monthlyServiceCost) { 
    this.monthlyServiceCost = monthlyServiceCost;
  }

  public VpsOrderPutResponse custid(String custid) { 

    this.custid = custid;
    return this;
  }

  /**
   * Get custid
   * @return custid
   **/
  
  @Schema(description = "")
  
  public String getCustid() {  
    return custid;
  }



  public void setCustid(String custid) { 
    this.custid = custid;
  }

  public VpsOrderPutResponse os(String os) { 

    this.os = os;
    return this;
  }

  /**
   * Get os
   * @return os
   **/
  
  @Schema(description = "")
  
  public String getOs() {  
    return os;
  }



  public void setOs(String os) { 
    this.os = os;
  }

  public VpsOrderPutResponse slices(String slices) { 

    this.slices = slices;
    return this;
  }

  /**
   * Get slices
   * @return slices
   **/
  
  @Schema(description = "")
  
  public String getSlices() {  
    return slices;
  }



  public void setSlices(String slices) { 
    this.slices = slices;
  }

  public VpsOrderPutResponse platform(String platform) { 

    this.platform = platform;
    return this;
  }

  /**
   * Get platform
   * @return platform
   **/
  
  @Schema(description = "")
  
  public String getPlatform() {  
    return platform;
  }



  public void setPlatform(String platform) { 
    this.platform = platform;
  }

  public VpsOrderPutResponse controlpanel(String controlpanel) { 

    this.controlpanel = controlpanel;
    return this;
  }

  /**
   * Get controlpanel
   * @return controlpanel
   **/
  
  @Schema(description = "")
  
  public String getControlpanel() {  
    return controlpanel;
  }



  public void setControlpanel(String controlpanel) { 
    this.controlpanel = controlpanel;
  }

  public VpsOrderPutResponse period(Integer period) { 

    this.period = period;
    return this;
  }

  /**
   * Get period
   * @return period
   **/
  
  @Schema(description = "")
  
  public Integer getPeriod() {  
    return period;
  }



  public void setPeriod(Integer period) { 
    this.period = period;
  }

  public VpsOrderPutResponse location(Integer location) { 

    this.location = location;
    return this;
  }

  /**
   * Get location
   * @return location
   **/
  
  @Schema(description = "")
  
  public Integer getLocation() {  
    return location;
  }



  public void setLocation(Integer location) { 
    this.location = location;
  }

  public VpsOrderPutResponse version(String version) { 

    this.version = version;
    return this;
  }

  /**
   * Get version
   * @return version
   **/
  
  @Schema(description = "")
  
  public String getVersion() {  
    return version;
  }



  public void setVersion(String version) { 
    this.version = version;
  }

  public VpsOrderPutResponse hostname(String hostname) { 

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

  public VpsOrderPutResponse coupon(String coupon) { 

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

  public VpsOrderPutResponse rootpass(String rootpass) { 

    this.rootpass = rootpass;
    return this;
  }

  /**
   * Get rootpass
   * @return rootpass
   **/
  
  @Schema(description = "")
  
  public String getRootpass() {  
    return rootpass;
  }



  public void setRootpass(String rootpass) { 
    this.rootpass = rootpass;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    VpsOrderPutResponse vpsOrderPutResponse = (VpsOrderPutResponse) o;
    return Objects.equals(this._continue, vpsOrderPutResponse._continue) &&
        Objects.equals(this.errors, vpsOrderPutResponse.errors) &&
        Objects.equals(this.couponCode, vpsOrderPutResponse.couponCode) &&
        Objects.equals(this.serviceCost, vpsOrderPutResponse.serviceCost) &&
        Objects.equals(this.sliceCost, vpsOrderPutResponse.sliceCost) &&
        Objects.equals(this.serviceType, vpsOrderPutResponse.serviceType) &&
        Objects.equals(this.repeatSliceCost, vpsOrderPutResponse.repeatSliceCost) &&
        Objects.equals(this.originalSliceCost, vpsOrderPutResponse.originalSliceCost) &&
        Objects.equals(this.originalCost, vpsOrderPutResponse.originalCost) &&
        Objects.equals(this.repeatServiceCost, vpsOrderPutResponse.repeatServiceCost) &&
        Objects.equals(this.monthlyServiceCost, vpsOrderPutResponse.monthlyServiceCost) &&
        Objects.equals(this.custid, vpsOrderPutResponse.custid) &&
        Objects.equals(this.os, vpsOrderPutResponse.os) &&
        Objects.equals(this.slices, vpsOrderPutResponse.slices) &&
        Objects.equals(this.platform, vpsOrderPutResponse.platform) &&
        Objects.equals(this.controlpanel, vpsOrderPutResponse.controlpanel) &&
        Objects.equals(this.period, vpsOrderPutResponse.period) &&
        Objects.equals(this.location, vpsOrderPutResponse.location) &&
        Objects.equals(this.version, vpsOrderPutResponse.version) &&
        Objects.equals(this.hostname, vpsOrderPutResponse.hostname) &&
        Objects.equals(this.coupon, vpsOrderPutResponse.coupon) &&
        Objects.equals(this.rootpass, vpsOrderPutResponse.rootpass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(_continue, errors, couponCode, serviceCost, sliceCost, serviceType, repeatSliceCost, originalSliceCost, originalCost, repeatServiceCost, monthlyServiceCost, custid, os, slices, platform, controlpanel, period, location, version, hostname, coupon, rootpass);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class VpsOrderPutResponse {\n");
    
    sb.append("    _continue: ").append(toIndentedString(_continue)).append("\n");
    sb.append("    errors: ").append(toIndentedString(errors)).append("\n");
    sb.append("    couponCode: ").append(toIndentedString(couponCode)).append("\n");
    sb.append("    serviceCost: ").append(toIndentedString(serviceCost)).append("\n");
    sb.append("    sliceCost: ").append(toIndentedString(sliceCost)).append("\n");
    sb.append("    serviceType: ").append(toIndentedString(serviceType)).append("\n");
    sb.append("    repeatSliceCost: ").append(toIndentedString(repeatSliceCost)).append("\n");
    sb.append("    originalSliceCost: ").append(toIndentedString(originalSliceCost)).append("\n");
    sb.append("    originalCost: ").append(toIndentedString(originalCost)).append("\n");
    sb.append("    repeatServiceCost: ").append(toIndentedString(repeatServiceCost)).append("\n");
    sb.append("    monthlyServiceCost: ").append(toIndentedString(monthlyServiceCost)).append("\n");
    sb.append("    custid: ").append(toIndentedString(custid)).append("\n");
    sb.append("    os: ").append(toIndentedString(os)).append("\n");
    sb.append("    slices: ").append(toIndentedString(slices)).append("\n");
    sb.append("    platform: ").append(toIndentedString(platform)).append("\n");
    sb.append("    controlpanel: ").append(toIndentedString(controlpanel)).append("\n");
    sb.append("    period: ").append(toIndentedString(period)).append("\n");
    sb.append("    location: ").append(toIndentedString(location)).append("\n");
    sb.append("    version: ").append(toIndentedString(version)).append("\n");
    sb.append("    hostname: ").append(toIndentedString(hostname)).append("\n");
    sb.append("    coupon: ").append(toIndentedString(coupon)).append("\n");
    sb.append("    rootpass: ").append(toIndentedString(rootpass)).append("\n");
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
