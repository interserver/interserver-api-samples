package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.v3.oas.annotations.media.Schema;
import java.util.ArrayList;
import java.util.List;
import org.springframework.validation.annotation.Validated;
import org.openapitools.jackson.nullable.JsonNullable;
import io.swagger.configuration.NotUndefined;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.Nulls;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * Lookup and suggestion results returned for a domain search.
 */
@Schema(description = "Lookup and suggestion results returned for a domain search.")
@Validated
@NotUndefined



public class DomainSearchResponse   {
  @JsonProperty("success")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Boolean success = null;

  @JsonProperty("response_text")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String responseText = null;

  @JsonProperty("response_time")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String responseTime = null;

  @JsonProperty("lookup")
  @Valid
  private List<Object> lookup = null;
  @JsonProperty("suggest")
  @Valid
  private List<Object> suggest = null;
  @JsonProperty("tlds")
  @Valid
  private List<String> tlds = null;

  public DomainSearchResponse success(Boolean success) { 

    this.success = success;
    return this;
  }

  /**
   * Indicates whether the registrar search succeeded.
   * @return success
   **/
  
  @Schema(description = "Indicates whether the registrar search succeeded.")
  
  public Boolean isSuccess() {  
    return success;
  }



  public void setSuccess(Boolean success) { 
    this.success = success;
  }

  public DomainSearchResponse responseText(String responseText) { 

    this.responseText = responseText;
    return this;
  }

  /**
   * Human-readable status text from the registrar.
   * @return responseText
   **/
  
  @Schema(description = "Human-readable status text from the registrar.")
  
  public String getResponseText() {  
    return responseText;
  }



  public void setResponseText(String responseText) { 
    this.responseText = responseText;
  }

  public DomainSearchResponse responseTime(String responseTime) { 

    this.responseTime = responseTime;
    return this;
  }

  /**
   * Response time as reported by the registrar.
   * @return responseTime
   **/
  
  @Schema(description = "Response time as reported by the registrar.")
  
  public String getResponseTime() {  
    return responseTime;
  }



  public void setResponseTime(String responseTime) { 
    this.responseTime = responseTime;
  }

  public DomainSearchResponse lookup(List<Object> lookup) { 

    this.lookup = lookup;
    return this;
  }

  public DomainSearchResponse addLookupItem(Object lookupItem) {
    if (this.lookup == null) {
      this.lookup = new ArrayList<>();
    }
    this.lookup.add(lookupItem);
    return this;
  }

  /**
   * Availability lookup results for queried domains.
   * @return lookup
   **/
  
  @Schema(description = "Availability lookup results for queried domains.")
  
  public List<Object> getLookup() {  
    return lookup;
  }



  public void setLookup(List<Object> lookup) { 
    this.lookup = lookup;
  }

  public DomainSearchResponse suggest(List<Object> suggest) { 

    this.suggest = suggest;
    return this;
  }

  public DomainSearchResponse addSuggestItem(Object suggestItem) {
    if (this.suggest == null) {
      this.suggest = new ArrayList<>();
    }
    this.suggest.add(suggestItem);
    return this;
  }

  /**
   * Suggested alternative domains and availability data.
   * @return suggest
   **/
  
  @Schema(description = "Suggested alternative domains and availability data.")
  
  public List<Object> getSuggest() {  
    return suggest;
  }



  public void setSuggest(List<Object> suggest) { 
    this.suggest = suggest;
  }

  public DomainSearchResponse tlds(List<String> tlds) { 

    this.tlds = tlds;
    return this;
  }

  public DomainSearchResponse addTldsItem(String tldsItem) {
    if (this.tlds == null) {
      this.tlds = new ArrayList<>();
    }
    this.tlds.add(tldsItem);
    return this;
  }

  /**
   * TLDs evaluated during the search.
   * @return tlds
   **/
  
  @Schema(description = "TLDs evaluated during the search.")
  
  public List<String> getTlds() {  
    return tlds;
  }



  public void setTlds(List<String> tlds) { 
    this.tlds = tlds;
  }

  @Override
  public boolean equals(java.lang.Object o) {
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
