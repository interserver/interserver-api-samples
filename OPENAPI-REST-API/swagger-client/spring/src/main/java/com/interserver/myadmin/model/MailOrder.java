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
 * A mail order record
 */
@Schema(description = "A mail order record")
@Validated
@NotUndefined



public class MailOrder   {
  @JsonProperty("id")

  private Integer id = null;

  @JsonProperty("status")

  private String status = null;

  @JsonProperty("username")

  private String username = null;

  @JsonProperty("comment")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String comment = null;


  public MailOrder id(Integer id) { 

    this.id = id;
    return this;
  }

  /**
   * The ID of the order.
   * @return id
   **/
  
  @Schema(example = "21472", required = true, description = "The ID of the order.")
  
  @NotNull
  public Integer getId() {  
    return id;
  }



  public void setId(Integer id) { 

    this.id = id;
  }

  public MailOrder status(String status) { 

    this.status = status;
    return this;
  }

  /**
   * The order status.
   * @return status
   **/
  
  @Schema(example = "active", required = true, description = "The order status.")
  
  @NotNull
  public String getStatus() {  
    return status;
  }



  public void setStatus(String status) { 

    this.status = status;
  }

  public MailOrder username(String username) { 

    this.username = username;
    return this;
  }

  /**
   * The username to use for this order.
   * @return username
   **/
  
  @Schema(example = "mb21472", required = true, description = "The username to use for this order.")
  
  @NotNull
  public String getUsername() {  
    return username;
  }



  public void setUsername(String username) { 

    this.username = username;
  }

  public MailOrder comment(String comment) { 

    this.comment = comment;
    return this;
  }

  /**
   * Optional order comment.
   * @return comment
   **/
  
  @Schema(description = "Optional order comment.")
  
  public String getComment() {  
    return comment;
  }



  public void setComment(String comment) { 
    this.comment = comment;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    MailOrder mailOrder = (MailOrder) o;
    return Objects.equals(this.id, mailOrder.id) &&
        Objects.equals(this.status, mailOrder.status) &&
        Objects.equals(this.username, mailOrder.username) &&
        Objects.equals(this.comment, mailOrder.comment);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, status, username, comment);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class MailOrder {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    status: ").append(toIndentedString(status)).append("\n");
    sb.append("    username: ").append(toIndentedString(username)).append("\n");
    sb.append("    comment: ").append(toIndentedString(comment)).append("\n");
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
