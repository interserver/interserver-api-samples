package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.DomainAllInfoAttributes;
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
 * Complete domain registration information returned from the registrar, including contacts, nameservers, and expiry dates.
 */
@Schema(description = "Complete domain registration information returned from the registrar, including contacts, nameservers, and expiry dates.")
@Validated
@NotUndefined



public class DomainAllInfo   {
  @JsonProperty("_OPS_version")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String _oPSVersion = null;

  @JsonProperty("attributes")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private DomainAllInfoAttributes attributes = null;

  @JsonProperty("object")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String object = null;

  @JsonProperty("protocol")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String protocol = null;

  @JsonProperty("response_text")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String responseText = null;

  @JsonProperty("response_code")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String responseCode = null;

  @JsonProperty("action")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String action = null;

  @JsonProperty("is_success")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String isSuccess = null;


  public DomainAllInfo _oPSVersion(String _oPSVersion) { 

    this._oPSVersion = _oPSVersion;
    return this;
  }

  /**
   * Get _oPSVersion
   * @return _oPSVersion
   **/
  
  @Schema(description = "")
  
  public String getOPSVersion() {  
    return _oPSVersion;
  }



  public void setOPSVersion(String _oPSVersion) { 
    this._oPSVersion = _oPSVersion;
  }

  public DomainAllInfo attributes(DomainAllInfoAttributes attributes) { 

    this.attributes = attributes;
    return this;
  }

  /**
   * Get attributes
   * @return attributes
   **/
  
  @Schema(description = "")
  
@Valid
  public DomainAllInfoAttributes getAttributes() {  
    return attributes;
  }



  public void setAttributes(DomainAllInfoAttributes attributes) { 
    this.attributes = attributes;
  }

  public DomainAllInfo object(String object) { 

    this.object = object;
    return this;
  }

  /**
   * Get object
   * @return object
   **/
  
  @Schema(description = "")
  
  public String getObject() {  
    return object;
  }



  public void setObject(String object) { 
    this.object = object;
  }

  public DomainAllInfo protocol(String protocol) { 

    this.protocol = protocol;
    return this;
  }

  /**
   * Get protocol
   * @return protocol
   **/
  
  @Schema(description = "")
  
  public String getProtocol() {  
    return protocol;
  }



  public void setProtocol(String protocol) { 
    this.protocol = protocol;
  }

  public DomainAllInfo responseText(String responseText) { 

    this.responseText = responseText;
    return this;
  }

  /**
   * Get responseText
   * @return responseText
   **/
  
  @Schema(description = "")
  
  public String getResponseText() {  
    return responseText;
  }



  public void setResponseText(String responseText) { 
    this.responseText = responseText;
  }

  public DomainAllInfo responseCode(String responseCode) { 

    this.responseCode = responseCode;
    return this;
  }

  /**
   * Get responseCode
   * @return responseCode
   **/
  
  @Schema(description = "")
  
  public String getResponseCode() {  
    return responseCode;
  }



  public void setResponseCode(String responseCode) { 
    this.responseCode = responseCode;
  }

  public DomainAllInfo action(String action) { 

    this.action = action;
    return this;
  }

  /**
   * Get action
   * @return action
   **/
  
  @Schema(description = "")
  
  public String getAction() {  
    return action;
  }



  public void setAction(String action) { 
    this.action = action;
  }

  public DomainAllInfo isSuccess(String isSuccess) { 

    this.isSuccess = isSuccess;
    return this;
  }

  /**
   * Get isSuccess
   * @return isSuccess
   **/
  
  @Schema(description = "")
  
  public String getIsSuccess() {  
    return isSuccess;
  }



  public void setIsSuccess(String isSuccess) { 
    this.isSuccess = isSuccess;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    DomainAllInfo domainAllInfo = (DomainAllInfo) o;
    return Objects.equals(this._oPSVersion, domainAllInfo._oPSVersion) &&
        Objects.equals(this.attributes, domainAllInfo.attributes) &&
        Objects.equals(this.object, domainAllInfo.object) &&
        Objects.equals(this.protocol, domainAllInfo.protocol) &&
        Objects.equals(this.responseText, domainAllInfo.responseText) &&
        Objects.equals(this.responseCode, domainAllInfo.responseCode) &&
        Objects.equals(this.action, domainAllInfo.action) &&
        Objects.equals(this.isSuccess, domainAllInfo.isSuccess);
  }

  @Override
  public int hashCode() {
    return Objects.hash(_oPSVersion, attributes, object, protocol, responseText, responseCode, action, isSuccess);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DomainAllInfo {\n");
    
    sb.append("    _oPSVersion: ").append(toIndentedString(_oPSVersion)).append("\n");
    sb.append("    attributes: ").append(toIndentedString(attributes)).append("\n");
    sb.append("    object: ").append(toIndentedString(object)).append("\n");
    sb.append("    protocol: ").append(toIndentedString(protocol)).append("\n");
    sb.append("    responseText: ").append(toIndentedString(responseText)).append("\n");
    sb.append("    responseCode: ").append(toIndentedString(responseCode)).append("\n");
    sb.append("    action: ").append(toIndentedString(action)).append("\n");
    sb.append("    isSuccess: ").append(toIndentedString(isSuccess)).append("\n");
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
