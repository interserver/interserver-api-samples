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
 * IdVerifyBody
 */
@Validated
@NotUndefined



public class IdVerifyBody   {
  @JsonProperty("cc_ccv2")

  private String ccCcv2 = null;


  public IdVerifyBody ccCcv2(String ccCcv2) { 

    this.ccCcv2 = ccCcv2;
    return this;
  }

  /**
   * The CVV/CVC code on the back of the credit card.
   * @return ccCcv2
   **/
  
  @Schema(required = true, description = "The CVV/CVC code on the back of the credit card.")
  
  @NotNull
  public String getCcCcv2() {  
    return ccCcv2;
  }



  public void setCcCcv2(String ccCcv2) { 

    this.ccCcv2 = ccCcv2;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    IdVerifyBody idVerifyBody = (IdVerifyBody) o;
    return Objects.equals(this.ccCcv2, idVerifyBody.ccCcv2);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ccCcv2);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class IdVerifyBody {\n");
    
    sb.append("    ccCcv2: ").append(toIndentedString(ccCcv2)).append("\n");
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
