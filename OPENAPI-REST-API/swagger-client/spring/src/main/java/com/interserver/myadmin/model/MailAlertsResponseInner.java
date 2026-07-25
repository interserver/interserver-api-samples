package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
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
 * MailAlertsResponseInner
 */
@Validated
@NotUndefined



public class MailAlertsResponseInner   {
  @JsonProperty("alert_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer alertId = null;

  @JsonProperty("alert_type")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String alertType = null;

  @JsonProperty("alert_value")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String alertValue = null;

  @JsonProperty("alert_to")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String alertTo = null;

  @JsonProperty("alert_enabled")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String alertEnabled = null;


  public MailAlertsResponseInner alertId(Integer alertId) { 

    this.alertId = alertId;
    return this;
  }

  /**
   * Get alertId
   * @return alertId
   **/
  
  @Schema(description = "")
  
  public Integer getAlertId() {  
    return alertId;
  }



  public void setAlertId(Integer alertId) { 
    this.alertId = alertId;
  }

  public MailAlertsResponseInner alertType(String alertType) { 

    this.alertType = alertType;
    return this;
  }

  /**
   * Get alertType
   * @return alertType
   **/
  
  @Schema(description = "")
  
  public String getAlertType() {  
    return alertType;
  }



  public void setAlertType(String alertType) { 
    this.alertType = alertType;
  }

  public MailAlertsResponseInner alertValue(String alertValue) { 

    this.alertValue = alertValue;
    return this;
  }

  /**
   * Get alertValue
   * @return alertValue
   **/
  
  @Schema(description = "")
  
  public String getAlertValue() {  
    return alertValue;
  }



  public void setAlertValue(String alertValue) { 
    this.alertValue = alertValue;
  }

  public MailAlertsResponseInner alertTo(String alertTo) { 

    this.alertTo = alertTo;
    return this;
  }

  /**
   * Get alertTo
   * @return alertTo
   **/
  
  @Schema(description = "")
  
  public String getAlertTo() {  
    return alertTo;
  }



  public void setAlertTo(String alertTo) { 
    this.alertTo = alertTo;
  }

  public MailAlertsResponseInner alertEnabled(String alertEnabled) { 

    this.alertEnabled = alertEnabled;
    return this;
  }

  /**
   * Get alertEnabled
   * @return alertEnabled
   **/
  
  @Schema(description = "")
  
  public String getAlertEnabled() {  
    return alertEnabled;
  }



  public void setAlertEnabled(String alertEnabled) { 
    this.alertEnabled = alertEnabled;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    MailAlertsResponseInner mailAlertsResponseInner = (MailAlertsResponseInner) o;
    return Objects.equals(this.alertId, mailAlertsResponseInner.alertId) &&
        Objects.equals(this.alertType, mailAlertsResponseInner.alertType) &&
        Objects.equals(this.alertValue, mailAlertsResponseInner.alertValue) &&
        Objects.equals(this.alertTo, mailAlertsResponseInner.alertTo) &&
        Objects.equals(this.alertEnabled, mailAlertsResponseInner.alertEnabled);
  }

  @Override
  public int hashCode() {
    return Objects.hash(alertId, alertType, alertValue, alertTo, alertEnabled);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class MailAlertsResponseInner {\n");
    
    sb.append("    alertId: ").append(toIndentedString(alertId)).append("\n");
    sb.append("    alertType: ").append(toIndentedString(alertType)).append("\n");
    sb.append("    alertValue: ").append(toIndentedString(alertValue)).append("\n");
    sb.append("    alertTo: ").append(toIndentedString(alertTo)).append("\n");
    sb.append("    alertEnabled: ").append(toIndentedString(alertEnabled)).append("\n");
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
