package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class TicketPostDetailsInner  {
  
  @ApiModelProperty(value = "")

  private Integer postId;

  @ApiModelProperty(value = "")

  private String date;

  @ApiModelProperty(value = "")

  private String contents;

public enum CreatorEnum {

USER(String.valueOf("User")), STAFF(String.valueOf("Staff")), UNKNOWN_DEFAULT_OPEN_API(String.valueOf("unknown_default_open_api"));


    private String value;

    CreatorEnum (String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    @Override
    public String toString() {
        return String.valueOf(value);
    }

    public static CreatorEnum fromValue(String value) {
        for (CreatorEnum b : CreatorEnum.values()) {
            if (b.value.equals(value)) {
                return b;
            }
        }
        throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }
}

  @ApiModelProperty(value = "")

  private CreatorEnum creator;

  @ApiModelProperty(value = "")

  private String creatorEmail;

  @ApiModelProperty(value = "")

  private String creatorName;

  @ApiModelProperty(value = "")

  private Integer hasattachments;

  @ApiModelProperty(value = "")

  private String attachmentDownload;
 /**
   * Get postId
   * @return postId
  **/
  @JsonProperty("post_id")
  public Integer getPostId() {
    return postId;
  }

  public void setPostId(Integer postId) {
    this.postId = postId;
  }

  public TicketPostDetailsInner postId(Integer postId) {
    this.postId = postId;
    return this;
  }

 /**
   * Get date
   * @return date
  **/
  @JsonProperty("date")
  public String getDate() {
    return date;
  }

  public void setDate(String date) {
    this.date = date;
  }

  public TicketPostDetailsInner date(String date) {
    this.date = date;
    return this;
  }

 /**
   * Get contents
   * @return contents
  **/
  @JsonProperty("contents")
  public String getContents() {
    return contents;
  }

  public void setContents(String contents) {
    this.contents = contents;
  }

  public TicketPostDetailsInner contents(String contents) {
    this.contents = contents;
    return this;
  }

 /**
   * Get creator
   * @return creator
  **/
  @JsonProperty("creator")
  public String getCreator() {
    if (creator == null) {
      return null;
    }
    return creator.value();
  }

  public void setCreator(CreatorEnum creator) {
    this.creator = creator;
  }

  public TicketPostDetailsInner creator(CreatorEnum creator) {
    this.creator = creator;
    return this;
  }

 /**
   * Get creatorEmail
   * @return creatorEmail
  **/
  @JsonProperty("creator_email")
  public String getCreatorEmail() {
    return creatorEmail;
  }

  public void setCreatorEmail(String creatorEmail) {
    this.creatorEmail = creatorEmail;
  }

  public TicketPostDetailsInner creatorEmail(String creatorEmail) {
    this.creatorEmail = creatorEmail;
    return this;
  }

 /**
   * Get creatorName
   * @return creatorName
  **/
  @JsonProperty("creator_name")
  public String getCreatorName() {
    return creatorName;
  }

  public void setCreatorName(String creatorName) {
    this.creatorName = creatorName;
  }

  public TicketPostDetailsInner creatorName(String creatorName) {
    this.creatorName = creatorName;
    return this;
  }

 /**
   * Get hasattachments
   * @return hasattachments
  **/
  @JsonProperty("hasattachments")
  public Integer getHasattachments() {
    return hasattachments;
  }

  public void setHasattachments(Integer hasattachments) {
    this.hasattachments = hasattachments;
  }

  public TicketPostDetailsInner hasattachments(Integer hasattachments) {
    this.hasattachments = hasattachments;
    return this;
  }

 /**
   * Get attachmentDownload
   * @return attachmentDownload
  **/
  @JsonProperty("attachment_download")
  public String getAttachmentDownload() {
    return attachmentDownload;
  }

  public void setAttachmentDownload(String attachmentDownload) {
    this.attachmentDownload = attachmentDownload;
  }

  public TicketPostDetailsInner attachmentDownload(String attachmentDownload) {
    this.attachmentDownload = attachmentDownload;
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
  private static String toIndentedString(Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}

