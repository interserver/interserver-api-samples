package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class DeleteMailAlertRequest  {
  
 /**
  * The ID of the alert to delete.
  */
  @ApiModelProperty(required = true, value = "The ID of the alert to delete.")

  private Integer alertId;
 /**
   * The ID of the alert to delete.
   * @return alertId
  **/
  @JsonProperty("alert_id")
  public Integer getAlertId() {
    return alertId;
  }

  public void setAlertId(Integer alertId) {
    this.alertId = alertId;
  }

  public DeleteMailAlertRequest alertId(Integer alertId) {
    this.alertId = alertId;
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
    DeleteMailAlertRequest deleteMailAlertRequest = (DeleteMailAlertRequest) o;
    return Objects.equals(this.alertId, deleteMailAlertRequest.alertId);
  }

  @Override
  public int hashCode() {
    return Objects.hash(alertId);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DeleteMailAlertRequest {\n");
    
    sb.append("    alertId: ").append(toIndentedString(alertId)).append("\n");
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

