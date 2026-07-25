package io.swagger.model;

import io.swagger.v3.oas.annotations.media.Schema;
import javax.validation.constraints.*;

import io.swagger.v3.oas.annotations.media.Schema;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonCreator;

/**
  * Request body to validate (putQs) or place (addQs) a QuickServer order. Server and OS template come from getNewQs.
 **/
@Schema(description="Request body to validate (putQs) or place (addQs) a QuickServer order. Server and OS template come from getNewQs.")
public class QsOrderRequest   {
  
  @Schema(required = true, description = "QuickServer plan/server id from getNewQs.")
 /**
   * QuickServer plan/server id from getNewQs.  
  **/
  private Integer server = null;
  
  @Schema(required = true, description = "Root password for the QuickServer.")
 /**
   * Root password for the QuickServer.  
  **/
  private String password = null;
  
  @Schema(description = "OS template file name from getNewQs (falls back to a default if unrecognized).")
 /**
   * OS template file name from getNewQs (falls back to a default if unrecognized).  
  **/
  private String os = "";
  
  @Schema(required = true, description = "Terms-of-service acceptance. Must be true to place the order.")
 /**
   * Terms-of-service acceptance. Must be true to place the order.  
  **/
  private Boolean tos = null;
  
  @Schema(description = "Free-form note saved on the service row.")
 /**
   * Free-form note saved on the service row.  
  **/
  private String comment = "";
 /**
   * QuickServer plan/server id from getNewQs.
   * @return server
  **/
  @JsonProperty("server")
  @NotNull
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
  @NotNull
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
   * OS template file name from getNewQs (falls back to a default if unrecognized).
   * @return os
  **/
  @JsonProperty("os")
  @NotNull
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
   * Terms-of-service acceptance. Must be true to place the order.
   * @return tos
  **/
  @JsonProperty("tos")
  @NotNull
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
   * Free-form note saved on the service row.
   * @return comment
  **/
  @JsonProperty("comment")
  @NotNull
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
