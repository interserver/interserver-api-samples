package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;
import io.micronaut.core.annotation.Introspected;
import io.micronaut.validation.Validated;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * Request body to validate (putQs) or place (addQs) a QuickServer order. Server and OS template come from getNewQs.
 */
@Schema(description = "Request body to validate (putQs) or place (addQs) a QuickServer order. Server and OS template come from getNewQs.")
@Validated
@Introspected

public class QsOrderRequest   {
  @JsonProperty("server")
  private Integer server = null;

  @JsonProperty("password")
  private String password = null;

  @JsonProperty("os")
  private String os = "";

  @JsonProperty("tos")
  private Boolean tos = null;

  @JsonProperty("comment")
  private String comment = "";

  public QsOrderRequest server(Integer server) {
    this.server = server;
    return this;
  }

  /**
   * QuickServer plan/server id from getNewQs.
   * @return server
  **/
  @Schema(required = true, description = "QuickServer plan/server id from getNewQs.")
  @NotNull

  public Integer getServer() {
    return server;
  }

  public void setServer(Integer server) {
    this.server = server;
  }

  public QsOrderRequest password(String password) {
    this.password = password;
    return this;
  }

  /**
   * Root password for the QuickServer.
   * @return password
  **/
  @Schema(required = true, description = "Root password for the QuickServer.")
  @NotNull

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public QsOrderRequest os(String os) {
    this.os = os;
    return this;
  }

  /**
   * OS template file name from getNewQs (falls back to a default if unrecognized).
   * @return os
  **/
  @Schema(description = "OS template file name from getNewQs (falls back to a default if unrecognized).")
  @NotNull

  public String getOs() {
    return os;
  }

  public void setOs(String os) {
    this.os = os;
  }

  public QsOrderRequest tos(Boolean tos) {
    this.tos = tos;
    return this;
  }

  /**
   * Terms-of-service acceptance. Must be true to place the order.
   * @return tos
  **/
  @Schema(required = true, description = "Terms-of-service acceptance. Must be true to place the order.")
  @NotNull

  public Boolean isTos() {
    return tos;
  }

  public void setTos(Boolean tos) {
    this.tos = tos;
  }

  public QsOrderRequest comment(String comment) {
    this.comment = comment;
    return this;
  }

  /**
   * Free-form note saved on the service row.
   * @return comment
  **/
  @Schema(description = "Free-form note saved on the service row.")
  @NotNull

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
    QsOrderRequest qsOrderRequest = (QsOrderRequest) o;
    return Objects.equals(this.server, qsOrderRequest.server) &&
        Objects.equals(this.password, qsOrderRequest.password) &&
        Objects.equals(this.os, qsOrderRequest.os) &&
        Objects.equals(this.tos, qsOrderRequest.tos) &&
        Objects.equals(this.comment, qsOrderRequest.comment);
  }

  @Override
  public int hashCode() {
    return Objects.hash(server, password, os, tos, comment);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class QsOrderRequest {\n");
    
    sb.append("    server: ").append(toIndentedString(server)).append("\n");
    sb.append("    password: ").append(toIndentedString(password)).append("\n");
    sb.append("    os: ").append(toIndentedString(os)).append("\n");
    sb.append("    tos: ").append(toIndentedString(tos)).append("\n");
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
