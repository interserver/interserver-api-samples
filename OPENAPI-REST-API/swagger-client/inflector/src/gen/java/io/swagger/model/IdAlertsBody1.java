package io.swagger.model;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;





public class IdAlertsBody1   {
  @JsonProperty("alert_id")
  private Integer alertId = null;
  /**
   * The ID of the alert to delete.
   **/
  public IdAlertsBody1 alertId(Integer alertId) {
    this.alertId = alertId;
    return this;
  }

  
  @Schema(required = true, description = "The ID of the alert to delete.")
  @JsonProperty("alert_id")
  public Integer getAlertId() {
    return alertId;
  }
  public void setAlertId(Integer alertId) {
    this.alertId = alertId;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    IdAlertsBody1 idAlertsBody1 = (IdAlertsBody1) o;
    return Objects.equals(alertId, idAlertsBody1.alertId);
  }

  @Override
  public int hashCode() {
    return Objects.hash(alertId);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class IdAlertsBody1 {\n");
    sb.append("    alertId: ").append(toIndentedString(alertId)).append("\n");
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
