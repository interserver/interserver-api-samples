package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class GetAffiliateSignups200Response  {
  
 /**
  * Affiliate signup statistics and client-side data.
  */
  @ApiModelProperty(value = "Affiliate signup statistics and client-side data.")

  private Object data;
 /**
   * Affiliate signup statistics and client-side data.
   * @return data
  **/
  @JsonProperty("data")
  public Object getData() {
    return data;
  }

  public void setData(Object data) {
    this.data = data;
  }

  public GetAffiliateSignups200Response data(Object data) {
    this.data = data;
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
    GetAffiliateSignups200Response getAffiliateSignups200Response = (GetAffiliateSignups200Response) o;
    return Objects.equals(this.data, getAffiliateSignups200Response.data);
  }

  @Override
  public int hashCode() {
    return Objects.hash(data);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GetAffiliateSignups200Response {\n");
    
    sb.append("    data: ").append(toIndentedString(data)).append("\n");
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

