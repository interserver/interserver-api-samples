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
 * Payload for updating an existing mail alert.
 */
@Schema(description = "Payload for updating an existing mail alert.")
@Validated
@NotUndefined



public class MailAlertUpdateRequest   {
  @JsonProperty("alert_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer alertId = null;

  @JsonProperty("type")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String type = null;

  @JsonProperty("value")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String value = null;

  @JsonProperty("to")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String to = null;

  @JsonProperty("enabled")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String enabled = null;


  public MailAlertUpdateRequest alertId(Integer alertId) { 

    this.alertId = alertId;
    return this;
  }

  /**
   * Alert ID to update.
   * @return alertId
   **/
  
  @Schema(description = "Alert ID to update.")
  
  public Integer getAlertId() {  
    return alertId;
  }



  public void setAlertId(Integer alertId) { 
    this.alertId = alertId;
  }

  public MailAlertUpdateRequest type(String type) { 

    this.type = type;
    return this;
  }

  /**
   * Alert type identifier.
   * @return type
   **/
  
  @Schema(description = "Alert type identifier.")
  
  public String getType() {  
    return type;
  }



  public void setType(String type) { 
    this.type = type;
  }

  public MailAlertUpdateRequest value(String value) { 

    this.value = value;
    return this;
  }

  /**
   * Alert value or threshold.
   * @return value
   **/
  
  @Schema(description = "Alert value or threshold.")
  
  public String getValue() {  
    return value;
  }



  public void setValue(String value) { 
    this.value = value;
  }

  public MailAlertUpdateRequest to(String to) { 

    this.to = to;
    return this;
  }

  /**
   * Email address to notify.
   * @return to
   **/
  
  @Schema(description = "Email address to notify.")
  
  public String getTo() {  
    return to;
  }



  public void setTo(String to) { 
    this.to = to;
  }

  public MailAlertUpdateRequest enabled(String enabled) { 

    this.enabled = enabled;
    return this;
  }

  /**
   * Whether the alert is enabled.
   * @return enabled
   **/
  
  @Schema(description = "Whether the alert is enabled.")
  
  public String getEnabled() {  
    return enabled;
  }



  public void setEnabled(String enabled) { 
    this.enabled = enabled;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    MailAlertUpdateRequest mailAlertUpdateRequest = (MailAlertUpdateRequest) o;
    return Objects.equals(this.alertId, mailAlertUpdateRequest.alertId) &&
        Objects.equals(this.type, mailAlertUpdateRequest.type) &&
        Objects.equals(this.value, mailAlertUpdateRequest.value) &&
        Objects.equals(this.to, mailAlertUpdateRequest.to) &&
        Objects.equals(this.enabled, mailAlertUpdateRequest.enabled);
  }

  @Override
  public int hashCode() {
    return Objects.hash(alertId, type, value, to, enabled);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class MailAlertUpdateRequest {\n");
    
    sb.append("    alertId: ").append(toIndentedString(alertId)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    value: ").append(toIndentedString(value)).append("\n");
    sb.append("    to: ").append(toIndentedString(to)).append("\n");
    sb.append("    enabled: ").append(toIndentedString(enabled)).append("\n");
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
