package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Lookup and suggestion results returned for a domain search.
 */
@ApiModel(description="Lookup and suggestion results returned for a domain search.")

public class DomainSearchResponse  {
  
 /**
  * Indicates whether the registrar search succeeded.
  */
  @ApiModelProperty(value = "Indicates whether the registrar search succeeded.")

  private Boolean success;

 /**
  * Human-readable status text from the registrar.
  */
  @ApiModelProperty(value = "Human-readable status text from the registrar.")

  private String responseText;

 /**
  * Response time as reported by the registrar.
  */
  @ApiModelProperty(value = "Response time as reported by the registrar.")

  private String responseTime;

 /**
  * Availability lookup results for queried domains.
  */
  @ApiModelProperty(value = "Availability lookup results for queried domains.")

  private List<Object> lookup = new ArrayList<>();

 /**
  * Suggested alternative domains and availability data.
  */
  @ApiModelProperty(value = "Suggested alternative domains and availability data.")

  private List<Object> suggest = new ArrayList<>();

 /**
  * TLDs evaluated during the search.
  */
  @ApiModelProperty(value = "TLDs evaluated during the search.")

  private List<String> tlds = new ArrayList<>();
 /**
   * Indicates whether the registrar search succeeded.
   * @return success
  **/
  @JsonProperty("success")
  public Boolean isSuccess() {
    return success;
  }

  public void setSuccess(Boolean success) {
    this.success = success;
  }

  public DomainSearchResponse success(Boolean success) {
    this.success = success;
    return this;
  }

 /**
   * Human-readable status text from the registrar.
   * @return responseText
  **/
  @JsonProperty("response_text")
  public String getResponseText() {
    return responseText;
  }

  public void setResponseText(String responseText) {
    this.responseText = responseText;
  }

  public DomainSearchResponse responseText(String responseText) {
    this.responseText = responseText;
    return this;
  }

 /**
   * Response time as reported by the registrar.
   * @return responseTime
  **/
  @JsonProperty("response_time")
  public String getResponseTime() {
    return responseTime;
  }

  public void setResponseTime(String responseTime) {
    this.responseTime = responseTime;
  }

  public DomainSearchResponse responseTime(String responseTime) {
    this.responseTime = responseTime;
    return this;
  }

 /**
   * Availability lookup results for queried domains.
   * @return lookup
  **/
  @JsonProperty("lookup")
  public List<Object> getLookup() {
    return lookup;
  }

  public void setLookup(List<Object> lookup) {
    this.lookup = lookup;
  }

  public DomainSearchResponse lookup(List<Object> lookup) {
    this.lookup = lookup;
    return this;
  }

  public DomainSearchResponse addLookupItem(Object lookupItem) {
    this.lookup.add(lookupItem);
    return this;
  }

 /**
   * Suggested alternative domains and availability data.
   * @return suggest
  **/
  @JsonProperty("suggest")
  public List<Object> getSuggest() {
    return suggest;
  }

  public void setSuggest(List<Object> suggest) {
    this.suggest = suggest;
  }

  public DomainSearchResponse suggest(List<Object> suggest) {
    this.suggest = suggest;
    return this;
  }

  public DomainSearchResponse addSuggestItem(Object suggestItem) {
    this.suggest.add(suggestItem);
    return this;
  }

 /**
   * TLDs evaluated during the search.
   * @return tlds
  **/
  @JsonProperty("tlds")
  public List<String> getTlds() {
    return tlds;
  }

  public void setTlds(List<String> tlds) {
    this.tlds = tlds;
  }

  public DomainSearchResponse tlds(List<String> tlds) {
    this.tlds = tlds;
    return this;
  }

  public DomainSearchResponse addTldsItem(String tldsItem) {
    this.tlds.add(tldsItem);
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
    DomainSearchResponse domainSearchResponse = (DomainSearchResponse) o;
    return Objects.equals(this.success, domainSearchResponse.success) &&
        Objects.equals(this.responseText, domainSearchResponse.responseText) &&
        Objects.equals(this.responseTime, domainSearchResponse.responseTime) &&
        Objects.equals(this.lookup, domainSearchResponse.lookup) &&
        Objects.equals(this.suggest, domainSearchResponse.suggest) &&
        Objects.equals(this.tlds, domainSearchResponse.tlds);
  }

  @Override
  public int hashCode() {
    return Objects.hash(success, responseText, responseTime, lookup, suggest, tlds);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DomainSearchResponse {\n");
    
    sb.append("    success: ").append(toIndentedString(success)).append("\n");
    sb.append("    responseText: ").append(toIndentedString(responseText)).append("\n");
    sb.append("    responseTime: ").append(toIndentedString(responseTime)).append("\n");
    sb.append("    lookup: ").append(toIndentedString(lookup)).append("\n");
    sb.append("    suggest: ").append(toIndentedString(suggest)).append("\n");
    sb.append("    tlds: ").append(toIndentedString(tlds)).append("\n");
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

