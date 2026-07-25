package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.LoginServiceCounts;
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
 * Basic information useful for rendering a login page.
 */
@Schema(description = "Basic information useful for rendering a login page.")
@Validated
@NotUndefined



public class LoginInfo   {
  @JsonProperty("logo")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String logo = null;

  @JsonProperty("captcha")

  private String captcha = null;

  @JsonProperty("language")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String language = null;

  @JsonProperty("counts")

  private LoginServiceCounts counts = null;


  public LoginInfo logo(String logo) { 

    this.logo = logo;
    return this;
  }

  /**
   * A logo image url.
   * @return logo
   **/
  
  @Schema(example = "//my.interserver.net/images/logos/mystaging.png", description = "A logo image url.")
  
  public String getLogo() {  
    return logo;
  }



  public void setLogo(String logo) { 
    this.logo = logo;
  }

  public LoginInfo captcha(String captcha) { 

    this.captcha = captcha;
    return this;
  }

  /**
   * A base64 encoded image to use for rendering the alternateive captcha.
   * @return captcha
   **/
  
  @Schema(example = "data:image/jpeg;base64,/9j/", required = true, description = "A base64 encoded image to use for rendering the alternateive captcha.")
  
  @NotNull
  public String getCaptcha() {  
    return captcha;
  }



  public void setCaptcha(String captcha) { 

    this.captcha = captcha;
  }

  public LoginInfo language(String language) { 

    this.language = language;
    return this;
  }

  /**
   * The desired langauge to render the site with.
   * @return language
   **/
  
  @Schema(example = "en-US", description = "The desired langauge to render the site with.")
  
  public String getLanguage() {  
    return language;
  }



  public void setLanguage(String language) { 
    this.language = language;
  }

  public LoginInfo counts(LoginServiceCounts counts) { 

    this.counts = counts;
    return this;
  }

  /**
   * Get counts
   * @return counts
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public LoginServiceCounts getCounts() {  
    return counts;
  }



  public void setCounts(LoginServiceCounts counts) { 

    this.counts = counts;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    LoginInfo loginInfo = (LoginInfo) o;
    return Objects.equals(this.logo, loginInfo.logo) &&
        Objects.equals(this.captcha, loginInfo.captcha) &&
        Objects.equals(this.language, loginInfo.language) &&
        Objects.equals(this.counts, loginInfo.counts);
  }

  @Override
  public int hashCode() {
    return Objects.hash(logo, captcha, language, counts);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class LoginInfo {\n");
    
    sb.append("    logo: ").append(toIndentedString(logo)).append("\n");
    sb.append("    captcha: ").append(toIndentedString(captcha)).append("\n");
    sb.append("    language: ").append(toIndentedString(language)).append("\n");
    sb.append("    counts: ").append(toIndentedString(counts)).append("\n");
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
