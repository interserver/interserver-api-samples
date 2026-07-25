package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.WebsitesOrderJsonServiceOffersItem;
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
 * Schema for the jsonServiceOffers field in WebsitesOrder
 */
@Schema(description = "Schema for the jsonServiceOffers field in WebsitesOrder")
@Validated
@NotUndefined



public class WebsitesOrderJsonServiceOffers   {
  @JsonProperty("1026")
  @Valid
  private List<WebsitesOrderJsonServiceOffersItem> _1026 = new ArrayList<>();

  public WebsitesOrderJsonServiceOffers _1026(List<WebsitesOrderJsonServiceOffersItem> _1026) { 

    this._1026 = _1026;
    return this;
  }

  public WebsitesOrderJsonServiceOffers add1026Item(WebsitesOrderJsonServiceOffersItem _1026Item) {
    this._1026.add(_1026Item);
    return this;
  }

  /**
   * Array of service offers
   * @return _1026
   **/
  
  @Schema(required = true, description = "Array of service offers")
  
@Valid
  @NotNull
  public List<WebsitesOrderJsonServiceOffersItem> get1026() {  
    return _1026;
  }



  public void set1026(List<WebsitesOrderJsonServiceOffersItem> _1026) { 

    this._1026 = _1026;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    WebsitesOrderJsonServiceOffers websitesOrderJsonServiceOffers = (WebsitesOrderJsonServiceOffers) o;
    return Objects.equals(this._1026, websitesOrderJsonServiceOffers._1026);
  }

  @Override
  public int hashCode() {
    return Objects.hash(_1026);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class WebsitesOrderJsonServiceOffers {\n");
    
    sb.append("    _1026: ").append(toIndentedString(_1026)).append("\n");
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
