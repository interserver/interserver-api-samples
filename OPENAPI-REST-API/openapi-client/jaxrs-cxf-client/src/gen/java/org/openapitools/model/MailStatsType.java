package org.openapitools.model;

import org.openapitools.model.MailStatsTypeVolume;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Statistics about the mail usage including volume by IP, To address, and From address; as well as total sent / delivered counts and cost.
 */
@ApiModel(description="Statistics about the mail usage including volume by IP, To address, and From address; as well as total sent / delivered counts and cost.")

public class MailStatsType  {
  
public enum TimeEnum {

ALL(String.valueOf("all")), BILLING(String.valueOf("billing")), MONTH(String.valueOf("month")), _7D(String.valueOf("7d")), _24H(String.valueOf("24h")), TODAY(String.valueOf("today")), _1H(String.valueOf("1h")), UNKNOWN_DEFAULT_OPEN_API(String.valueOf("unknown_default_open_api"));


    private String value;

    TimeEnum (String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    @Override
    public String toString() {
        return String.valueOf(value);
    }

    public static TimeEnum fromValue(String value) {
        for (TimeEnum b : TimeEnum.values()) {
            if (b.value.equals(value)) {
                return b;
            }
        }
        throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }
}

  @ApiModelProperty(value = "")

  private TimeEnum time = TimeEnum._1H;

  @ApiModelProperty(value = "")

  private Integer usage;

  @ApiModelProperty(value = "")

  private String currency;

  @ApiModelProperty(value = "")

  private String currencySymbol;

  @ApiModelProperty(value = "")

  private Double cost;

  @ApiModelProperty(value = "")

  private Integer received;

  @ApiModelProperty(value = "")

  private Integer sent;

  @ApiModelProperty(value = "")

  private MailStatsTypeVolume volume;
 /**
   * Get time
   * @return time
  **/
  @JsonProperty("time")
  public String getTime() {
    if (time == null) {
      return null;
    }
    return time.value();
  }

  public void setTime(TimeEnum time) {
    this.time = time;
  }

  public MailStatsType time(TimeEnum time) {
    this.time = time;
    return this;
  }

 /**
   * Get usage
   * @return usage
  **/
  @JsonProperty("usage")
  public Integer getUsage() {
    return usage;
  }

  public void setUsage(Integer usage) {
    this.usage = usage;
  }

  public MailStatsType usage(Integer usage) {
    this.usage = usage;
    return this;
  }

 /**
   * Get currency
   * @return currency
  **/
  @JsonProperty("currency")
  public String getCurrency() {
    return currency;
  }

  public void setCurrency(String currency) {
    this.currency = currency;
  }

  public MailStatsType currency(String currency) {
    this.currency = currency;
    return this;
  }

 /**
   * Get currencySymbol
   * @return currencySymbol
  **/
  @JsonProperty("currencySymbol")
  public String getCurrencySymbol() {
    return currencySymbol;
  }

  public void setCurrencySymbol(String currencySymbol) {
    this.currencySymbol = currencySymbol;
  }

  public MailStatsType currencySymbol(String currencySymbol) {
    this.currencySymbol = currencySymbol;
    return this;
  }

 /**
   * Get cost
   * @return cost
  **/
  @JsonProperty("cost")
  public Double getCost() {
    return cost;
  }

  public void setCost(Double cost) {
    this.cost = cost;
  }

  public MailStatsType cost(Double cost) {
    this.cost = cost;
    return this;
  }

 /**
   * Get received
   * @return received
  **/
  @JsonProperty("received")
  public Integer getReceived() {
    return received;
  }

  public void setReceived(Integer received) {
    this.received = received;
  }

  public MailStatsType received(Integer received) {
    this.received = received;
    return this;
  }

 /**
   * Get sent
   * @return sent
  **/
  @JsonProperty("sent")
  public Integer getSent() {
    return sent;
  }

  public void setSent(Integer sent) {
    this.sent = sent;
  }

  public MailStatsType sent(Integer sent) {
    this.sent = sent;
    return this;
  }

 /**
   * Get volume
   * @return volume
  **/
  @JsonProperty("volume")
  public MailStatsTypeVolume getVolume() {
    return volume;
  }

  public void setVolume(MailStatsTypeVolume volume) {
    this.volume = volume;
  }

  public MailStatsType volume(MailStatsTypeVolume volume) {
    this.volume = volume;
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
    MailStatsType mailStatsType = (MailStatsType) o;
    return Objects.equals(this.time, mailStatsType.time) &&
        Objects.equals(this.usage, mailStatsType.usage) &&
        Objects.equals(this.currency, mailStatsType.currency) &&
        Objects.equals(this.currencySymbol, mailStatsType.currencySymbol) &&
        Objects.equals(this.cost, mailStatsType.cost) &&
        Objects.equals(this.received, mailStatsType.received) &&
        Objects.equals(this.sent, mailStatsType.sent) &&
        Objects.equals(this.volume, mailStatsType.volume);
  }

  @Override
  public int hashCode() {
    return Objects.hash(time, usage, currency, currencySymbol, cost, received, sent, volume);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class MailStatsType {\n");
    
    sb.append("    time: ").append(toIndentedString(time)).append("\n");
    sb.append("    usage: ").append(toIndentedString(usage)).append("\n");
    sb.append("    currency: ").append(toIndentedString(currency)).append("\n");
    sb.append("    currencySymbol: ").append(toIndentedString(currencySymbol)).append("\n");
    sb.append("    cost: ").append(toIndentedString(cost)).append("\n");
    sb.append("    received: ").append(toIndentedString(received)).append("\n");
    sb.append("    sent: ").append(toIndentedString(sent)).append("\n");
    sb.append("    volume: ").append(toIndentedString(volume)).append("\n");
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

