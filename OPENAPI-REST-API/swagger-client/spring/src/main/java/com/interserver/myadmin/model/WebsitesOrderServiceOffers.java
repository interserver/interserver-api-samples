package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.WebsitesOrderServiceOffer;
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
 * The service offers data.
 */
@Schema(description = "The service offers data.")
@Validated
@NotUndefined



public class WebsitesOrderServiceOffers   {
  @JsonProperty("1026")
  @Valid
  private List<WebsitesOrderServiceOffer> _1026 = new ArrayList<>();

  public WebsitesOrderServiceOffers _1026(List<WebsitesOrderServiceOffer> _1026) { 

    this._1026 = _1026;
    return this;
  }

  public WebsitesOrderServiceOffers add1026Item(WebsitesOrderServiceOffer _1026Item) {
    this._1026.add(_1026Item);
    return this;
  }

  /**
   * Get _1026
   * @return _1026
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public List<WebsitesOrderServiceOffer> get1026() {  
    return _1026;
  }



  public void set1026(List<WebsitesOrderServiceOffer> _1026) { 

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
    WebsitesOrderServiceOffers websitesOrderServiceOffers = (WebsitesOrderServiceOffers) o;
    return Objects.equals(this._1026, websitesOrderServiceOffers._1026);
  }

  @Override
  public int hashCode() {
    return Objects.hash(_1026);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class WebsitesOrderServiceOffers {\n");
    
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
