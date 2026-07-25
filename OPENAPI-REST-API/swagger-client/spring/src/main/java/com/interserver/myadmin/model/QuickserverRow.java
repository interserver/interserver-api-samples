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
 * A result row from the &#x60;Quickservers&#x60; &#x60;GET&#x60; request.
 */
@Schema(description = "A result row from the `Quickservers` `GET` request.")
@Validated
@NotUndefined



public class QuickserverRow   {
  @JsonProperty("qs_id")

  private String qsId = null;

  @JsonProperty("qs_name")

  private String qsName = null;

  @JsonProperty("cost")

  private String cost = null;

  @JsonProperty("qs_hostname")

  private String qsHostname = null;

  @JsonProperty("qs_status")

  private String qsStatus = null;

  @JsonProperty("qs_comment")

  private String qsComment = null;


  public QuickserverRow qsId(String qsId) { 

    this.qsId = qsId;
    return this;
  }

  /**
   * The id of the qs.
   * @return qsId
   **/
  
  @Schema(example = "19504", required = true, description = "The id of the qs.")
  
  @NotNull
  public String getQsId() {  
    return qsId;
  }



  public void setQsId(String qsId) { 

    this.qsId = qsId;
  }

  public QuickserverRow qsName(String qsName) { 

    this.qsName = qsName;
    return this;
  }

  /**
   * The name of the qs.
   * @return qsName
   **/
  
  @Schema(example = "Quickserver199", required = true, description = "The name of the qs.")
  
  @NotNull
  public String getQsName() {  
    return qsName;
  }



  public void setQsName(String qsName) { 

    this.qsName = qsName;
  }

  public QuickserverRow cost(String cost) { 

    this.cost = cost;
    return this;
  }

  /**
   * The cost of the qs.
   * @return cost
   **/
  
  @Schema(example = "65.00", required = true, description = "The cost of the qs.")
  
  @NotNull
  public String getCost() {  
    return cost;
  }



  public void setCost(String cost) { 

    this.cost = cost;
  }

  public QuickserverRow qsHostname(String qsHostname) { 

    this.qsHostname = qsHostname;
    return this;
  }

  /**
   * The hostname of the qs.
   * @return qsHostname
   **/
  
  @Schema(example = "qs19504", required = true, description = "The hostname of the qs.")
  
  @NotNull
  public String getQsHostname() {  
    return qsHostname;
  }



  public void setQsHostname(String qsHostname) { 

    this.qsHostname = qsHostname;
  }

  public QuickserverRow qsStatus(String qsStatus) { 

    this.qsStatus = qsStatus;
    return this;
  }

  /**
   * The status of the qs.
   * @return qsStatus
   **/
  
  @Schema(example = "canceled", required = true, description = "The status of the qs.")
  
  @NotNull
  public String getQsStatus() {  
    return qsStatus;
  }



  public void setQsStatus(String qsStatus) { 

    this.qsStatus = qsStatus;
  }

  public QuickserverRow qsComment(String qsComment) { 

    this.qsComment = qsComment;
    return this;
  }

  /**
   * The comment of the qs.
   * @return qsComment
   **/
  
  @Schema(required = true, description = "The comment of the qs.")
  
  @NotNull
  public String getQsComment() {  
    return qsComment;
  }



  public void setQsComment(String qsComment) { 

    this.qsComment = qsComment;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    QuickserverRow quickserverRow = (QuickserverRow) o;
    return Objects.equals(this.qsId, quickserverRow.qsId) &&
        Objects.equals(this.qsName, quickserverRow.qsName) &&
        Objects.equals(this.cost, quickserverRow.cost) &&
        Objects.equals(this.qsHostname, quickserverRow.qsHostname) &&
        Objects.equals(this.qsStatus, quickserverRow.qsStatus) &&
        Objects.equals(this.qsComment, quickserverRow.qsComment);
  }

  @Override
  public int hashCode() {
    return Objects.hash(qsId, qsName, cost, qsHostname, qsStatus, qsComment);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class QuickserverRow {\n");
    
    sb.append("    qsId: ").append(toIndentedString(qsId)).append("\n");
    sb.append("    qsName: ").append(toIndentedString(qsName)).append("\n");
    sb.append("    cost: ").append(toIndentedString(cost)).append("\n");
    sb.append("    qsHostname: ").append(toIndentedString(qsHostname)).append("\n");
    sb.append("    qsStatus: ").append(toIndentedString(qsStatus)).append("\n");
    sb.append("    qsComment: ").append(toIndentedString(qsComment)).append("\n");
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
