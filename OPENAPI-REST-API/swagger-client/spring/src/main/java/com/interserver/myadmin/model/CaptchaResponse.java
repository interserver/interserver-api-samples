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
 * A base-64 encoded captcha image.
 */
@Schema(description = "A base-64 encoded captcha image.")
@Validated
@NotUndefined



public class CaptchaResponse   {
  @JsonProperty("captcha")

  private String captcha = null;


  public CaptchaResponse captcha(String captcha) { 

    this.captcha = captcha;
    return this;
  }

  /**
   * The base64 encoded captcha image.
   * @return captcha
   **/
  
  @Schema(example = "data:image/jpeg;base64,/9j/4AAQ", required = true, description = "The base64 encoded captcha image.")
  
  @NotNull
  public String getCaptcha() {  
    return captcha;
  }



  public void setCaptcha(String captcha) { 

    this.captcha = captcha;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    CaptchaResponse captchaResponse = (CaptchaResponse) o;
    return Objects.equals(this.captcha, captchaResponse.captcha);
  }

  @Override
  public int hashCode() {
    return Objects.hash(captcha);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CaptchaResponse {\n");
    
    sb.append("    captcha: ").append(toIndentedString(captcha)).append("\n");
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
