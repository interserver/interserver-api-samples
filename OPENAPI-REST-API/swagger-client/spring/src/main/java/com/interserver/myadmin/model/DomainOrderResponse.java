package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.DomainOrderResponseAttributes;
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
 * Registrar response metadata returned after a domain order.
 */
@Schema(description = "Registrar response metadata returned after a domain order.")
@Validated
@NotUndefined



public class DomainOrderResponse   {
  @JsonProperty("_OPS_version")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String _oPSVersion = null;

  @JsonProperty("protocol")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String protocol = null;

  @JsonProperty("is_success")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String isSuccess = null;

  @JsonProperty("action")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String action = null;

  @JsonProperty("attributes")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private DomainOrderResponseAttributes attributes = null;

  @JsonProperty("response_text")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String responseText = null;

  @JsonProperty("object")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String object = null;

  @JsonProperty("response_code")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String responseCode = null;


  public DomainOrderResponse _oPSVersion(String _oPSVersion) { 

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

  public DomainOrderResponse protocol(String protocol) { 

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

  public DomainOrderResponse isSuccess(String isSuccess) { 

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

  public DomainOrderResponse action(String action) { 

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

  public DomainOrderResponse attributes(DomainOrderResponseAttributes attributes) { 

    this.attributes = attributes;
    return this;
  }

  /**
   * Get attributes
   * @return attributes
   **/
  
  @Schema(description = "")
  
@Valid
  public DomainOrderResponseAttributes getAttributes() {  
    return attributes;
  }



  public void setAttributes(DomainOrderResponseAttributes attributes) { 
    this.attributes = attributes;
  }

  public DomainOrderResponse responseText(String responseText) { 

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

  public DomainOrderResponse object(String object) { 

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

  public DomainOrderResponse responseCode(String responseCode) { 

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

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    DomainOrderResponse domainOrderResponse = (DomainOrderResponse) o;
    return Objects.equals(this._oPSVersion, domainOrderResponse._oPSVersion) &&
        Objects.equals(this.protocol, domainOrderResponse.protocol) &&
        Objects.equals(this.isSuccess, domainOrderResponse.isSuccess) &&
        Objects.equals(this.action, domainOrderResponse.action) &&
        Objects.equals(this.attributes, domainOrderResponse.attributes) &&
        Objects.equals(this.responseText, domainOrderResponse.responseText) &&
        Objects.equals(this.object, domainOrderResponse.object) &&
        Objects.equals(this.responseCode, domainOrderResponse.responseCode);
  }

  @Override
  public int hashCode() {
    return Objects.hash(_oPSVersion, protocol, isSuccess, action, attributes, responseText, object, responseCode);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DomainOrderResponse {\n");
    
    sb.append("    _oPSVersion: ").append(toIndentedString(_oPSVersion)).append("\n");
    sb.append("    protocol: ").append(toIndentedString(protocol)).append("\n");
    sb.append("    isSuccess: ").append(toIndentedString(isSuccess)).append("\n");
    sb.append("    action: ").append(toIndentedString(action)).append("\n");
    sb.append("    attributes: ").append(toIndentedString(attributes)).append("\n");
    sb.append("    responseText: ").append(toIndentedString(responseText)).append("\n");
    sb.append("    object: ").append(toIndentedString(object)).append("\n");
    sb.append("    responseCode: ").append(toIndentedString(responseCode)).append("\n");
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
