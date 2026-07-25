package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
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
 * TicketPostDetailsInner
 */
@Validated
@NotUndefined



public class TicketPostDetailsInner   {
  @JsonProperty("post_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer postId = null;

  @JsonProperty("date")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String date = null;

  @JsonProperty("contents")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String contents = null;

  /**
   * Gets or Sets creator
   */
  public enum CreatorEnum {
    USER("User"),
    
    STAFF("Staff");

    private String value;

    CreatorEnum(String value) {
      this.value = value;
    }

    @Override
    @JsonValue
    public String toString() {
      return String.valueOf(value);
    }

    @JsonCreator
    public static CreatorEnum fromValue(String text) {
      for (CreatorEnum b : CreatorEnum.values()) {
        if (String.valueOf(b.value).equals(text)) {
          return b;
        }
      }
      return null;
    }
  }
  @JsonProperty("creator")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private CreatorEnum creator = null;

  @JsonProperty("creator_email")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String creatorEmail = null;

  @JsonProperty("creator_name")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String creatorName = null;

  @JsonProperty("hasattachments")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer hasattachments = null;

  @JsonProperty("attachment_download")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String attachmentDownload = null;


  public TicketPostDetailsInner postId(Integer postId) { 

    this.postId = postId;
    return this;
  }

  /**
   * Get postId
   * @return postId
   **/
  
  @Schema(description = "")
  
  public Integer getPostId() {  
    return postId;
  }



  public void setPostId(Integer postId) { 
    this.postId = postId;
  }

  public TicketPostDetailsInner date(String date) { 

    this.date = date;
    return this;
  }

  /**
   * Get date
   * @return date
   **/
  
  @Schema(description = "")
  
  public String getDate() {  
    return date;
  }



  public void setDate(String date) { 
    this.date = date;
  }

  public TicketPostDetailsInner contents(String contents) { 

    this.contents = contents;
    return this;
  }

  /**
   * Get contents
   * @return contents
   **/
  
  @Schema(description = "")
  
  public String getContents() {  
    return contents;
  }



  public void setContents(String contents) { 
    this.contents = contents;
  }

  public TicketPostDetailsInner creator(CreatorEnum creator) { 

    this.creator = creator;
    return this;
  }

  /**
   * Get creator
   * @return creator
   **/
  
  @Schema(description = "")
  
  public CreatorEnum getCreator() {  
    return creator;
  }



  public void setCreator(CreatorEnum creator) { 
    this.creator = creator;
  }

  public TicketPostDetailsInner creatorEmail(String creatorEmail) { 

    this.creatorEmail = creatorEmail;
    return this;
  }

  /**
   * Get creatorEmail
   * @return creatorEmail
   **/
  
  @Schema(description = "")
  
  public String getCreatorEmail() {  
    return creatorEmail;
  }



  public void setCreatorEmail(String creatorEmail) { 
    this.creatorEmail = creatorEmail;
  }

  public TicketPostDetailsInner creatorName(String creatorName) { 

    this.creatorName = creatorName;
    return this;
  }

  /**
   * Get creatorName
   * @return creatorName
   **/
  
  @Schema(description = "")
  
  public String getCreatorName() {  
    return creatorName;
  }



  public void setCreatorName(String creatorName) { 
    this.creatorName = creatorName;
  }

  public TicketPostDetailsInner hasattachments(Integer hasattachments) { 

    this.hasattachments = hasattachments;
    return this;
  }

  /**
   * Get hasattachments
   * @return hasattachments
   **/
  
  @Schema(description = "")
  
  public Integer getHasattachments() {  
    return hasattachments;
  }



  public void setHasattachments(Integer hasattachments) { 
    this.hasattachments = hasattachments;
  }

  public TicketPostDetailsInner attachmentDownload(String attachmentDownload) { 

    this.attachmentDownload = attachmentDownload;
    return this;
  }

  /**
   * Get attachmentDownload
   * @return attachmentDownload
   **/
  
  @Schema(description = "")
  
  public String getAttachmentDownload() {  
    return attachmentDownload;
  }



  public void setAttachmentDownload(String attachmentDownload) { 
    this.attachmentDownload = attachmentDownload;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    TicketPostDetailsInner ticketPostDetailsInner = (TicketPostDetailsInner) o;
    return Objects.equals(this.postId, ticketPostDetailsInner.postId) &&
        Objects.equals(this.date, ticketPostDetailsInner.date) &&
        Objects.equals(this.contents, ticketPostDetailsInner.contents) &&
        Objects.equals(this.creator, ticketPostDetailsInner.creator) &&
        Objects.equals(this.creatorEmail, ticketPostDetailsInner.creatorEmail) &&
        Objects.equals(this.creatorName, ticketPostDetailsInner.creatorName) &&
        Objects.equals(this.hasattachments, ticketPostDetailsInner.hasattachments) &&
        Objects.equals(this.attachmentDownload, ticketPostDetailsInner.attachmentDownload);
  }

  @Override
  public int hashCode() {
    return Objects.hash(postId, date, contents, creator, creatorEmail, creatorName, hasattachments, attachmentDownload);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class TicketPostDetailsInner {\n");
    
    sb.append("    postId: ").append(toIndentedString(postId)).append("\n");
    sb.append("    date: ").append(toIndentedString(date)).append("\n");
    sb.append("    contents: ").append(toIndentedString(contents)).append("\n");
    sb.append("    creator: ").append(toIndentedString(creator)).append("\n");
    sb.append("    creatorEmail: ").append(toIndentedString(creatorEmail)).append("\n");
    sb.append("    creatorName: ").append(toIndentedString(creatorName)).append("\n");
    sb.append("    hasattachments: ").append(toIndentedString(hasattachments)).append("\n");
    sb.append("    attachmentDownload: ").append(toIndentedString(attachmentDownload)).append("\n");
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
