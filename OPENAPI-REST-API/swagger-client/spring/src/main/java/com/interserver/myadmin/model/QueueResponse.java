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
 * Response after sending an action queue to a service.
 */
@Schema(description = "Response after sending an action queue to a service.")
@Validated
@NotUndefined



public class QueueResponse   {
  @JsonProperty("text")

  private String text = null;

  @JsonProperty("queueId")

  private Integer queueId = null;


  public QueueResponse text(String text) { 

    this.text = text;
    return this;
  }

  /**
   * Response text
   * @return text
   **/
  
  @Schema(example = "Action has been sent to the server. Please allow up to 2 minutes for action to be completed.", required = true, description = "Response text")
  
  @NotNull
  public String getText() {  
    return text;
  }



  public void setText(String text) { 

    this.text = text;
  }

  public QueueResponse queueId(Integer queueId) { 

    this.queueId = queueId;
    return this;
  }

  /**
   * The Queue ID attached to the action.
   * @return queueId
   **/
  
  @Schema(example = "14670065", required = true, description = "The Queue ID attached to the action.")
  
  @NotNull
  public Integer getQueueId() {  
    return queueId;
  }



  public void setQueueId(Integer queueId) { 

    this.queueId = queueId;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    QueueResponse queueResponse = (QueueResponse) o;
    return Objects.equals(this.text, queueResponse.text) &&
        Objects.equals(this.queueId, queueResponse.queueId);
  }

  @Override
  public int hashCode() {
    return Objects.hash(text, queueId);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class QueueResponse {\n");
    
    sb.append("    text: ").append(toIndentedString(text)).append("\n");
    sb.append("    queueId: ").append(toIndentedString(queueId)).append("\n");
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
