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
 * A result row from the &#x60;Webhosting&#x60; &#x60;GET&#x60; request.
 */
@Schema(description = "A result row from the `Webhosting` `GET` request.")
@Validated
@NotUndefined



public class WebsiteRow   {
  @JsonProperty("website_id")

  private String websiteId = null;

  @JsonProperty("website_hostname")

  private String websiteHostname = null;

  @JsonProperty("repeat_invoices_cost")

  private String repeatInvoicesCost = null;

  @JsonProperty("website_status")

  private String websiteStatus = null;

  @JsonProperty("services_name")

  private String servicesName = null;

  @JsonProperty("website_comment")

  private String websiteComment = null;


  public WebsiteRow websiteId(String websiteId) { 

    this.websiteId = websiteId;
    return this;
  }

  /**
   * The id of the website.
   * @return websiteId
   **/
  
  @Schema(example = "376359", required = true, description = "The id of the website.")
  
  @NotNull
  public String getWebsiteId() {  
    return websiteId;
  }



  public void setWebsiteId(String websiteId) { 

    this.websiteId = websiteId;
  }

  public WebsiteRow websiteHostname(String websiteHostname) { 

    this.websiteHostname = websiteHostname;
    return this;
  }

  /**
   * The hostname of the website.
   * @return websiteHostname
   **/
  
  @Schema(example = "hussfamily.com", required = true, description = "The hostname of the website.")
  
  @NotNull
  public String getWebsiteHostname() {  
    return websiteHostname;
  }



  public void setWebsiteHostname(String websiteHostname) { 

    this.websiteHostname = websiteHostname;
  }

  public WebsiteRow repeatInvoicesCost(String repeatInvoicesCost) { 

    this.repeatInvoicesCost = repeatInvoicesCost;
    return this;
  }

  /**
   * The repeat invoices cost of the website.
   * @return repeatInvoicesCost
   **/
  
  @Schema(example = "5.99", required = true, description = "The repeat invoices cost of the website.")
  
  @NotNull
  public String getRepeatInvoicesCost() {  
    return repeatInvoicesCost;
  }



  public void setRepeatInvoicesCost(String repeatInvoicesCost) { 

    this.repeatInvoicesCost = repeatInvoicesCost;
  }

  public WebsiteRow websiteStatus(String websiteStatus) { 

    this.websiteStatus = websiteStatus;
    return this;
  }

  /**
   * The status of the website.
   * @return websiteStatus
   **/
  
  @Schema(example = "active", required = true, description = "The status of the website.")
  
  @NotNull
  public String getWebsiteStatus() {  
    return websiteStatus;
  }



  public void setWebsiteStatus(String websiteStatus) { 

    this.websiteStatus = websiteStatus;
  }

  public WebsiteRow servicesName(String servicesName) { 

    this.servicesName = servicesName;
    return this;
  }

  /**
   * The services name of the website.
   * @return servicesName
   **/
  
  @Schema(example = "Standard Web Hosting", required = true, description = "The services name of the website.")
  
  @NotNull
  public String getServicesName() {  
    return servicesName;
  }



  public void setServicesName(String servicesName) { 

    this.servicesName = servicesName;
  }

  public WebsiteRow websiteComment(String websiteComment) { 

    this.websiteComment = websiteComment;
    return this;
  }

  /**
   * The comment of the website.
   * @return websiteComment
   **/
  
  @Schema(example = "website for manhattan project.", required = true, description = "The comment of the website.")
  
  @NotNull
  public String getWebsiteComment() {  
    return websiteComment;
  }



  public void setWebsiteComment(String websiteComment) { 

    this.websiteComment = websiteComment;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    WebsiteRow websiteRow = (WebsiteRow) o;
    return Objects.equals(this.websiteId, websiteRow.websiteId) &&
        Objects.equals(this.websiteHostname, websiteRow.websiteHostname) &&
        Objects.equals(this.repeatInvoicesCost, websiteRow.repeatInvoicesCost) &&
        Objects.equals(this.websiteStatus, websiteRow.websiteStatus) &&
        Objects.equals(this.servicesName, websiteRow.servicesName) &&
        Objects.equals(this.websiteComment, websiteRow.websiteComment);
  }

  @Override
  public int hashCode() {
    return Objects.hash(websiteId, websiteHostname, repeatInvoicesCost, websiteStatus, servicesName, websiteComment);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class WebsiteRow {\n");
    
    sb.append("    websiteId: ").append(toIndentedString(websiteId)).append("\n");
    sb.append("    websiteHostname: ").append(toIndentedString(websiteHostname)).append("\n");
    sb.append("    repeatInvoicesCost: ").append(toIndentedString(repeatInvoicesCost)).append("\n");
    sb.append("    websiteStatus: ").append(toIndentedString(websiteStatus)).append("\n");
    sb.append("    servicesName: ").append(toIndentedString(servicesName)).append("\n");
    sb.append("    websiteComment: ").append(toIndentedString(websiteComment)).append("\n");
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
