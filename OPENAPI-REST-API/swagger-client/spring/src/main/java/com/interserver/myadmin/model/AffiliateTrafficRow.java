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
 * Affiliate Web Traffic Entry
 */
@Schema(description = "Affiliate Web Traffic Entry")
@Validated
@NotUndefined



public class AffiliateTrafficRow   {
  @JsonProperty("traffic_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String trafficId = null;

  @JsonProperty("traffic_ip")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String trafficIp = null;

  @JsonProperty("traffic_url")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String trafficUrl = null;

  @JsonProperty("traffic_affiliate")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String trafficAffiliate = null;

  @JsonProperty("traffic_referrer")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String trafficReferrer = null;

  @JsonProperty("traffic_timestamp")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String trafficTimestamp = null;


  public AffiliateTrafficRow trafficId(String trafficId) { 

    this.trafficId = trafficId;
    return this;
  }

  /**
   * Get trafficId
   * @return trafficId
   **/
  
  @Schema(description = "")
  
  public String getTrafficId() {  
    return trafficId;
  }



  public void setTrafficId(String trafficId) { 
    this.trafficId = trafficId;
  }

  public AffiliateTrafficRow trafficIp(String trafficIp) { 

    this.trafficIp = trafficIp;
    return this;
  }

  /**
   * Get trafficIp
   * @return trafficIp
   **/
  
  @Schema(description = "")
  
  public String getTrafficIp() {  
    return trafficIp;
  }



  public void setTrafficIp(String trafficIp) { 
    this.trafficIp = trafficIp;
  }

  public AffiliateTrafficRow trafficUrl(String trafficUrl) { 

    this.trafficUrl = trafficUrl;
    return this;
  }

  /**
   * Get trafficUrl
   * @return trafficUrl
   **/
  
  @Schema(description = "")
  
  public String getTrafficUrl() {  
    return trafficUrl;
  }



  public void setTrafficUrl(String trafficUrl) { 
    this.trafficUrl = trafficUrl;
  }

  public AffiliateTrafficRow trafficAffiliate(String trafficAffiliate) { 

    this.trafficAffiliate = trafficAffiliate;
    return this;
  }

  /**
   * Get trafficAffiliate
   * @return trafficAffiliate
   **/
  
  @Schema(description = "")
  
  public String getTrafficAffiliate() {  
    return trafficAffiliate;
  }



  public void setTrafficAffiliate(String trafficAffiliate) { 
    this.trafficAffiliate = trafficAffiliate;
  }

  public AffiliateTrafficRow trafficReferrer(String trafficReferrer) { 

    this.trafficReferrer = trafficReferrer;
    return this;
  }

  /**
   * Get trafficReferrer
   * @return trafficReferrer
   **/
  
  @Schema(description = "")
  
  public String getTrafficReferrer() {  
    return trafficReferrer;
  }



  public void setTrafficReferrer(String trafficReferrer) { 
    this.trafficReferrer = trafficReferrer;
  }

  public AffiliateTrafficRow trafficTimestamp(String trafficTimestamp) { 

    this.trafficTimestamp = trafficTimestamp;
    return this;
  }

  /**
   * Get trafficTimestamp
   * @return trafficTimestamp
   **/
  
  @Schema(description = "")
  
  public String getTrafficTimestamp() {  
    return trafficTimestamp;
  }



  public void setTrafficTimestamp(String trafficTimestamp) { 
    this.trafficTimestamp = trafficTimestamp;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    AffiliateTrafficRow affiliateTrafficRow = (AffiliateTrafficRow) o;
    return Objects.equals(this.trafficId, affiliateTrafficRow.trafficId) &&
        Objects.equals(this.trafficIp, affiliateTrafficRow.trafficIp) &&
        Objects.equals(this.trafficUrl, affiliateTrafficRow.trafficUrl) &&
        Objects.equals(this.trafficAffiliate, affiliateTrafficRow.trafficAffiliate) &&
        Objects.equals(this.trafficReferrer, affiliateTrafficRow.trafficReferrer) &&
        Objects.equals(this.trafficTimestamp, affiliateTrafficRow.trafficTimestamp);
  }

  @Override
  public int hashCode() {
    return Objects.hash(trafficId, trafficIp, trafficUrl, trafficAffiliate, trafficReferrer, trafficTimestamp);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AffiliateTrafficRow {\n");
    
    sb.append("    trafficId: ").append(toIndentedString(trafficId)).append("\n");
    sb.append("    trafficIp: ").append(toIndentedString(trafficIp)).append("\n");
    sb.append("    trafficUrl: ").append(toIndentedString(trafficUrl)).append("\n");
    sb.append("    trafficAffiliate: ").append(toIndentedString(trafficAffiliate)).append("\n");
    sb.append("    trafficReferrer: ").append(toIndentedString(trafficReferrer)).append("\n");
    sb.append("    trafficTimestamp: ").append(toIndentedString(trafficTimestamp)).append("\n");
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
