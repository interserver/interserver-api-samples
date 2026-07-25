package org.openapitools.model;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * IPMI Power command for servers
 */
@ApiModel(description="IPMI Power command for servers")

public class ServerIpmiPowerRequest  {
  
public enum ActionEnum {

CYCLE(String.valueOf("cycle")), RESET(String.valueOf("reset")), ON(String.valueOf("on")), OFF(String.valueOf("off")), SOFT(String.valueOf("soft")), UNKNOWN_DEFAULT_OPEN_API(String.valueOf("unknown_default_open_api"));


    private String value;

    ActionEnum (String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    @Override
    public String toString() {
        return String.valueOf(value);
    }

    public static ActionEnum fromValue(String value) {
        for (ActionEnum b : ActionEnum.values()) {
            if (b.value.equals(value)) {
                return b;
            }
        }
        throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }
}

 /**
  * The power action to send to the ipmi controller.
  */
  @ApiModelProperty(example = "on", required = true, value = "The power action to send to the ipmi controller.")

  private ActionEnum action;

 /**
  * The Asset ID
  */
  @ApiModelProperty(example = "5432", value = "The Asset ID")

  private Integer asset;
 /**
   * The power action to send to the ipmi controller.
   * @return action
  **/
  @JsonProperty("action")
  public String getAction() {
    if (action == null) {
      return null;
    }
    return action.value();
  }

  public void setAction(ActionEnum action) {
    this.action = action;
  }

  public ServerIpmiPowerRequest action(ActionEnum action) {
    this.action = action;
    return this;
  }

 /**
   * The Asset ID
   * @return asset
  **/
  @JsonProperty("asset")
  public Integer getAsset() {
    return asset;
  }

  public void setAsset(Integer asset) {
    this.asset = asset;
  }

  public ServerIpmiPowerRequest asset(Integer asset) {
    this.asset = asset;
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
    ServerIpmiPowerRequest serverIpmiPowerRequest = (ServerIpmiPowerRequest) o;
    return Objects.equals(this.action, serverIpmiPowerRequest.action) &&
        Objects.equals(this.asset, serverIpmiPowerRequest.asset);
  }

  @Override
  public int hashCode() {
    return Objects.hash(action, asset);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ServerIpmiPowerRequest {\n");
    
    sb.append("    action: ").append(toIndentedString(action)).append("\n");
    sb.append("    asset: ").append(toIndentedString(asset)).append("\n");
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

