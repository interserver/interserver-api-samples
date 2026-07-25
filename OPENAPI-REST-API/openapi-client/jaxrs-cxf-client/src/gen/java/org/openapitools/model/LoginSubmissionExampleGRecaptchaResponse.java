package org.openapitools.model;

import org.openapitools.model.LoginSubmissionExampleGRecaptchaResponseDep;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class LoginSubmissionExampleGRecaptchaResponse  {
  
  @ApiModelProperty(value = "")

  private Boolean vIsShallow;

  @ApiModelProperty(value = "")

  private LoginSubmissionExampleGRecaptchaResponseDep dep;

  @ApiModelProperty(value = "")

  private Boolean vIsRef;

  @ApiModelProperty(value = "")

  private String rawValue;

  @ApiModelProperty(value = "")

  private String value;
 /**
   * Get vIsShallow
   * @return vIsShallow
  **/
  @JsonProperty("__v_isShallow")
  public Boolean isvIsShallow() {
    return vIsShallow;
  }

  public void setvIsShallow(Boolean vIsShallow) {
    this.vIsShallow = vIsShallow;
  }

  public LoginSubmissionExampleGRecaptchaResponse vIsShallow(Boolean vIsShallow) {
    this.vIsShallow = vIsShallow;
    return this;
  }

 /**
   * Get dep
   * @return dep
  **/
  @JsonProperty("dep")
  public LoginSubmissionExampleGRecaptchaResponseDep getDep() {
    return dep;
  }

  public void setDep(LoginSubmissionExampleGRecaptchaResponseDep dep) {
    this.dep = dep;
  }

  public LoginSubmissionExampleGRecaptchaResponse dep(LoginSubmissionExampleGRecaptchaResponseDep dep) {
    this.dep = dep;
    return this;
  }

 /**
   * Get vIsRef
   * @return vIsRef
  **/
  @JsonProperty("__v_isRef")
  public Boolean isvIsRef() {
    return vIsRef;
  }

  public void setvIsRef(Boolean vIsRef) {
    this.vIsRef = vIsRef;
  }

  public LoginSubmissionExampleGRecaptchaResponse vIsRef(Boolean vIsRef) {
    this.vIsRef = vIsRef;
    return this;
  }

 /**
   * Get rawValue
   * @return rawValue
  **/
  @JsonProperty("_rawValue")
  public String getRawValue() {
    return rawValue;
  }

  public void setRawValue(String rawValue) {
    this.rawValue = rawValue;
  }

  public LoginSubmissionExampleGRecaptchaResponse rawValue(String rawValue) {
    this.rawValue = rawValue;
    return this;
  }

 /**
   * Get value
   * @return value
  **/
  @JsonProperty("_value")
  public String getValue() {
    return value;
  }

  public void setValue(String value) {
    this.value = value;
  }

  public LoginSubmissionExampleGRecaptchaResponse value(String value) {
    this.value = value;
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
    LoginSubmissionExampleGRecaptchaResponse loginSubmissionExampleGRecaptchaResponse = (LoginSubmissionExampleGRecaptchaResponse) o;
    return Objects.equals(this.vIsShallow, loginSubmissionExampleGRecaptchaResponse.vIsShallow) &&
        Objects.equals(this.dep, loginSubmissionExampleGRecaptchaResponse.dep) &&
        Objects.equals(this.vIsRef, loginSubmissionExampleGRecaptchaResponse.vIsRef) &&
        Objects.equals(this.rawValue, loginSubmissionExampleGRecaptchaResponse.rawValue) &&
        Objects.equals(this.value, loginSubmissionExampleGRecaptchaResponse.value);
  }

  @Override
  public int hashCode() {
    return Objects.hash(vIsShallow, dep, vIsRef, rawValue, value);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class LoginSubmissionExampleGRecaptchaResponse {\n");
    
    sb.append("    vIsShallow: ").append(toIndentedString(vIsShallow)).append("\n");
    sb.append("    dep: ").append(toIndentedString(dep)).append("\n");
    sb.append("    vIsRef: ").append(toIndentedString(vIsRef)).append("\n");
    sb.append("    rawValue: ").append(toIndentedString(rawValue)).append("\n");
    sb.append("    value: ").append(toIndentedString(value)).append("\n");
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

