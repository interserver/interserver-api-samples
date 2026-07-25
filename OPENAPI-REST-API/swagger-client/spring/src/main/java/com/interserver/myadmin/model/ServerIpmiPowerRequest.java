package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
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
 * IPMI Power command for servers
 */
@Schema(description = "IPMI Power command for servers")
@Validated
@NotUndefined



public class ServerIpmiPowerRequest   {
  @JsonProperty("asset")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer asset = null;

  /**
   * The power action to send to the ipmi controller.
   */
  public enum ActionEnum {
    CYCLE("cycle"),
    
    RESET("reset"),
    
    ON("on"),
    
    OFF("off"),
    
    SOFT("soft");

    private String value;

    ActionEnum(String value) {
      this.value = value;
    }

    @Override
    @JsonValue
    public String toString() {
      return String.valueOf(value);
    }

    @JsonCreator
    public static ActionEnum fromValue(String text) {
      for (ActionEnum b : ActionEnum.values()) {
        if (String.valueOf(b.value).equals(text)) {
          return b;
        }
      }
      return null;
    }
  }
  @JsonProperty("action")

  private ActionEnum action = null;


  public ServerIpmiPowerRequest asset(Integer asset) { 

    this.asset = asset;
    return this;
  }

  /**
   * The Asset ID
   * @return asset
   **/
  
  @Schema(example = "5432", description = "The Asset ID")
  
  public Integer getAsset() {  
    return asset;
  }



  public void setAsset(Integer asset) { 
    this.asset = asset;
  }

  public ServerIpmiPowerRequest action(ActionEnum action) { 

    this.action = action;
    return this;
  }

  /**
   * The power action to send to the ipmi controller.
   * @return action
   **/
  
  @Schema(example = "on", required = true, description = "The power action to send to the ipmi controller.")
  
  @NotNull
  public ActionEnum getAction() {  
    return action;
  }



  public void setAction(ActionEnum action) { 

    this.action = action;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ServerIpmiPowerRequest serverIpmiPowerRequest = (ServerIpmiPowerRequest) o;
    return Objects.equals(this.asset, serverIpmiPowerRequest.asset) &&
        Objects.equals(this.action, serverIpmiPowerRequest.action);
  }

  @Override
  public int hashCode() {
    return Objects.hash(asset, action);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ServerIpmiPowerRequest {\n");
    
    sb.append("    asset: ").append(toIndentedString(asset)).append("\n");
    sb.append("    action: ").append(toIndentedString(action)).append("\n");
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
