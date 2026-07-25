package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.EmailAddressName;
import com.interserver.myadmin.model.MailAttachment;
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
 * Details for an Email
 */
@Schema(description = "Details for an Email")
@Validated
@NotUndefined



public class SendMailAdv   {
  @JsonProperty("subject")

  private String subject = null;

  @JsonProperty("body")

  private String body = null;

  @JsonProperty("from")

  private EmailAddressName from = null;

  @JsonProperty("to")
  @Valid
  private List<EmailAddressName> to = new ArrayList<>();
  @JsonProperty("replyto")
  @Valid
  private List<EmailAddressName> replyto = null;
  @JsonProperty("cc")
  @Valid
  private List<EmailAddressName> cc = null;
  @JsonProperty("bcc")
  @Valid
  private List<EmailAddressName> bcc = null;
  @JsonProperty("attachments")
  @Valid
  private List<MailAttachment> attachments = null;
  @JsonProperty("id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Long id = null;


  public SendMailAdv subject(String subject) { 

    this.subject = subject;
    return this;
  }

  /**
   * The subject or title of the email
   * @return subject
   **/
  
  @Schema(example = "Your Package has been Delivered!", required = true, description = "The subject or title of the email")
  
  @NotNull
  public String getSubject() {  
    return subject;
  }



  public void setSubject(String subject) { 

    this.subject = subject;
  }

  public SendMailAdv body(String body) { 

    this.body = body;
    return this;
  }

  /**
   * The main email contents.
   * @return body
   **/
  
  @Schema(example = "The package you ordered on 2021-01-23 has been delivered. If the package is broken into many pieces, please blaim someone else.", required = true, description = "The main email contents.")
  
  @NotNull
  public String getBody() {  
    return body;
  }



  public void setBody(String body) { 

    this.body = body;
  }

  public SendMailAdv from(EmailAddressName from) { 

    this.from = from;
    return this;
  }

  /**
   * Get from
   * @return from
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public EmailAddressName getFrom() {  
    return from;
  }



  public void setFrom(EmailAddressName from) { 

    this.from = from;
  }

  public SendMailAdv to(List<EmailAddressName> to) { 

    this.to = to;
    return this;
  }

  public SendMailAdv addToItem(EmailAddressName toItem) {
    this.to.add(toItem);
    return this;
  }

  /**
   * A list of destionation email addresses to send this to
   * @return to
   **/
  
  @Schema(example = "[{\"email\":\"user@domain.com\",\"name\":\"John Smith\"}]", required = true, description = "A list of destionation email addresses to send this to")
  
@Valid
  @NotNull
  public List<EmailAddressName> getTo() {  
    return to;
  }



  public void setTo(List<EmailAddressName> to) { 

    this.to = to;
  }

  public SendMailAdv replyto(List<EmailAddressName> replyto) { 

    this.replyto = replyto;
    return this;
  }

  public SendMailAdv addReplytoItem(EmailAddressName replytoItem) {
    if (this.replyto == null) {
      this.replyto = new ArrayList<>();
    }
    this.replyto.add(replytoItem);
    return this;
  }

  /**
   * (optional) A list of email addresses that specify where replies to the email should be sent instead of the _from_ address.
   * @return replyto
   **/
  
  @Schema(example = "[{\"email\":\"user@domain.com\",\"name\":\"John Smith\"}]", description = "(optional) A list of email addresses that specify where replies to the email should be sent instead of the _from_ address.")
  @Valid
  public List<EmailAddressName> getReplyto() {  
    return replyto;
  }



  public void setReplyto(List<EmailAddressName> replyto) { 
    this.replyto = replyto;
  }

  public SendMailAdv cc(List<EmailAddressName> cc) { 

    this.cc = cc;
    return this;
  }

  public SendMailAdv addCcItem(EmailAddressName ccItem) {
    if (this.cc == null) {
      this.cc = new ArrayList<>();
    }
    this.cc.add(ccItem);
    return this;
  }

  /**
   * (optional) A list of email addresses to carbon copy this message to.  They are listed on the email and anyone getting the email can see this full list of Contacts who received the email as well.
   * @return cc
   **/
  
  @Schema(example = "[{\"email\":\"user@domain.com\",\"name\":\"John Smith\"}]", description = "(optional) A list of email addresses to carbon copy this message to.  They are listed on the email and anyone getting the email can see this full list of Contacts who received the email as well.")
  @Valid
  public List<EmailAddressName> getCc() {  
    return cc;
  }



  public void setCc(List<EmailAddressName> cc) { 
    this.cc = cc;
  }

  public SendMailAdv bcc(List<EmailAddressName> bcc) { 

    this.bcc = bcc;
    return this;
  }

  public SendMailAdv addBccItem(EmailAddressName bccItem) {
    if (this.bcc == null) {
      this.bcc = new ArrayList<>();
    }
    this.bcc.add(bccItem);
    return this;
  }

  /**
   * (optional) list of email addresses that should receive copies of the email.  They are hidden on the email and anyone gettitng the email would not see the other people getting the email in this list.
   * @return bcc
   **/
  
  @Schema(example = "[{\"email\":\"user@domain.com\",\"name\":\"John Smith\"}]", description = "(optional) list of email addresses that should receive copies of the email.  They are hidden on the email and anyone gettitng the email would not see the other people getting the email in this list.")
  @Valid
  public List<EmailAddressName> getBcc() {  
    return bcc;
  }



  public void setBcc(List<EmailAddressName> bcc) { 
    this.bcc = bcc;
  }

  public SendMailAdv attachments(List<MailAttachment> attachments) { 

    this.attachments = attachments;
    return this;
  }

  public SendMailAdv addAttachmentsItem(MailAttachment attachmentsItem) {
    if (this.attachments == null) {
      this.attachments = new ArrayList<>();
    }
    this.attachments.add(attachmentsItem);
    return this;
  }

  /**
   * (optional) File attachments to include in the email.  The file contents must be base64 encoded!
   * @return attachments
   **/
  
  @Schema(example = "[{\"filename\":\"text.txt\",\"data\":\"base64_encoded_contents\"}]", description = "(optional) File attachments to include in the email.  The file contents must be base64 encoded!")
  @Valid
  public List<MailAttachment> getAttachments() {  
    return attachments;
  }



  public void setAttachments(List<MailAttachment> attachments) { 
    this.attachments = attachments;
  }

  public SendMailAdv id(Long id) { 

    this.id = id;
    return this;
  }

  /**
   * (optional)  ID of the Mail order within our system to use as the Mail Account.
   * @return id
   **/
  
  @Schema(example = "5000", description = "(optional)  ID of the Mail order within our system to use as the Mail Account.")
  
  public Long getId() {  
    return id;
  }



  public void setId(Long id) { 
    this.id = id;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SendMailAdv sendMailAdv = (SendMailAdv) o;
    return Objects.equals(this.subject, sendMailAdv.subject) &&
        Objects.equals(this.body, sendMailAdv.body) &&
        Objects.equals(this.from, sendMailAdv.from) &&
        Objects.equals(this.to, sendMailAdv.to) &&
        Objects.equals(this.replyto, sendMailAdv.replyto) &&
        Objects.equals(this.cc, sendMailAdv.cc) &&
        Objects.equals(this.bcc, sendMailAdv.bcc) &&
        Objects.equals(this.attachments, sendMailAdv.attachments) &&
        Objects.equals(this.id, sendMailAdv.id);
  }

  @Override
  public int hashCode() {
    return Objects.hash(subject, body, from, to, replyto, cc, bcc, attachments, id);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SendMailAdv {\n");
    
    sb.append("    subject: ").append(toIndentedString(subject)).append("\n");
    sb.append("    body: ").append(toIndentedString(body)).append("\n");
    sb.append("    from: ").append(toIndentedString(from)).append("\n");
    sb.append("    to: ").append(toIndentedString(to)).append("\n");
    sb.append("    replyto: ").append(toIndentedString(replyto)).append("\n");
    sb.append("    cc: ").append(toIndentedString(cc)).append("\n");
    sb.append("    bcc: ").append(toIndentedString(bcc)).append("\n");
    sb.append("    attachments: ").append(toIndentedString(attachments)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
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
