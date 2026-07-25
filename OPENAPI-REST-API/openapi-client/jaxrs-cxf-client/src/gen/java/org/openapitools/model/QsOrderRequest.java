package org.openapitools.model;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Request body to validate (putQs) or place (addQs) a QuickServer order. Server and OS template come from getNewQs.
 */
@ApiModel(description="Request body to validate (putQs) or place (addQs) a QuickServer order. Server and OS template come from getNewQs.")

public class QsOrderRequest  {
  
 /**
  * QuickServer plan/server id from getNewQs.
  */
  @ApiModelProperty(required = true, value = "QuickServer plan/server id from getNewQs.")

  private Integer server;

 /**
  * Root password for the QuickServer.
  */
  @ApiModelProperty(required = true, value = "Root password for the QuickServer.")

  private String password;

 /**
  * Terms-of-service acceptance. Must be true to place the order.
  */
  @ApiModelProperty(required = true, value = "Terms-of-service acceptance. Must be true to place the order.")

  private Boolean tos;

 /**
  * OS template file name from getNewQs (falls back to a default if unrecognized).
  */
  @ApiModelProperty(value = "OS template file name from getNewQs (falls back to a default if unrecognized).")

  private String os = "";

 /**
  * Free-form note saved on the service row.
  */
  @ApiModelProperty(value = "Free-form note saved on the service row.")

  private String comment = "";
 /**
   * QuickServer plan/server id from getNewQs.
   * @return server
  **/
  @JsonProperty("server")
  public Integer getServer() {
    return server;
  }

  public void setServer(Integer server) {
    this.server = server;
  }

  public QsOrderRequest server(Integer server) {
    this.server = server;
    return this;
  }

 /**
   * Root password for the QuickServer.
   * @return password
  **/
  @JsonProperty("password")
  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public QsOrderRequest password(String password) {
    this.password = password;
    return this;
  }

 /**
   * Terms-of-service acceptance. Must be true to place the order.
   * @return tos
  **/
  @JsonProperty("tos")
  public Boolean isTos() {
    return tos;
  }

  public void setTos(Boolean tos) {
    this.tos = tos;
  }

  public QsOrderRequest tos(Boolean tos) {
    this.tos = tos;
    return this;
  }

 /**
   * OS template file name from getNewQs (falls back to a default if unrecognized).
   * @return os
  **/
  @JsonProperty("os")
  public String getOs() {
    return os;
  }

  public void setOs(String os) {
    this.os = os;
  }

  public QsOrderRequest os(String os) {
    this.os = os;
    return this;
  }

 /**
   * Free-form note saved on the service row.
   * @return comment
  **/
  @JsonProperty("comment")
  public String getComment() {
    return comment;
  }

  public void setComment(String comment) {
    this.comment = comment;
  }

  public QsOrderRequest comment(String comment) {
    this.comment = comment;
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
    QsOrderRequest qsOrderRequest = (QsOrderRequest) o;
    return Objects.equals(this.server, qsOrderRequest.server) &&
        Objects.equals(this.password, qsOrderRequest.password) &&
        Objects.equals(this.tos, qsOrderRequest.tos) &&
        Objects.equals(this.os, qsOrderRequest.os) &&
        Objects.equals(this.comment, qsOrderRequest.comment);
  }

  @Override
  public int hashCode() {
    return Objects.hash(server, password, tos, os, comment);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class QsOrderRequest {\n");
    
    sb.append("    server: ").append(toIndentedString(server)).append("\n");
    sb.append("    password: ").append(toIndentedString(password)).append("\n");
    sb.append("    tos: ").append(toIndentedString(tos)).append("\n");
    sb.append("    os: ").append(toIndentedString(os)).append("\n");
    sb.append("    comment: ").append(toIndentedString(comment)).append("\n");
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

