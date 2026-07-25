package io.swagger.model;

import java.util.Objects;
import java.util.ArrayList;
import java.util.HashMap;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;

@Schema(description="Request body to validate (putQs) or place (addQs) a QuickServer order. Server and OS template come from getNewQs.")

public class QsOrderRequest   {
  private Integer server = null;
  private String password = null;
  private String os = "";
  private Boolean tos = null;
  private String comment = "";

  /**
   * QuickServer plan/server id from getNewQs.
   **/
  
  @Schema(required = true, description = "QuickServer plan/server id from getNewQs.")
  @JsonProperty("server")
  @NotNull
  public Integer getServer() {
    return server;
  }
  public void setServer(Integer server) {
    this.server = server;
  }

  /**
   * Root password for the QuickServer.
   **/
  
  @Schema(required = true, description = "Root password for the QuickServer.")
  @JsonProperty("password")
  @NotNull
  public String getPassword() {
    return password;
  }
  public void setPassword(String password) {
    this.password = password;
  }

  /**
   * OS template file name from getNewQs (falls back to a default if unrecognized).
   **/
  
  @Schema(description = "OS template file name from getNewQs (falls back to a default if unrecognized).")
  @JsonProperty("os")
  @NotNull
  public String getOs() {
    return os;
  }
  public void setOs(String os) {
    this.os = os;
  }

  /**
   * Terms-of-service acceptance. Must be true to place the order.
   **/
  
  @Schema(required = true, description = "Terms-of-service acceptance. Must be true to place the order.")
  @JsonProperty("tos")
  @NotNull
  public Boolean isTos() {
    return tos;
  }
  public void setTos(Boolean tos) {
    this.tos = tos;
  }

  /**
   * Free-form note saved on the service row.
   **/
  
  @Schema(description = "Free-form note saved on the service row.")
  @JsonProperty("comment")
  @NotNull
  public String getComment() {
    return comment;
  }
  public void setComment(String comment) {
    this.comment = comment;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    QsOrderRequest qsOrderRequest = (QsOrderRequest) o;
    return Objects.equals(server, qsOrderRequest.server) &&
        Objects.equals(password, qsOrderRequest.password) &&
        Objects.equals(os, qsOrderRequest.os) &&
        Objects.equals(tos, qsOrderRequest.tos) &&
        Objects.equals(comment, qsOrderRequest.comment);
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
