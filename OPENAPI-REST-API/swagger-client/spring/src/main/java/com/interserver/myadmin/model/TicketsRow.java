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
 * Information about a single ticket.
 */
@Schema(description = "Information about a single ticket.")
@Validated
@NotUndefined



public class TicketsRow   {
  @JsonProperty("title")

  private String title = null;

  @JsonProperty("ticketmaskid")

  private String ticketmaskid = null;

  @JsonProperty("lastreplier")

  private String lastreplier = null;

  @JsonProperty("status")

  private String status = null;

  @JsonProperty("priority")

  private String priority = null;

  @JsonProperty("total_replies")

  private Integer totalReplies = null;

  @JsonProperty("lastactivity")

  private String lastactivity = null;

  @JsonProperty("departmenttitle")

  private String departmenttitle = null;

  @JsonProperty("ticketid")

  private Integer ticketid = null;

  @JsonProperty("can_close")

  private String canClose = null;

  @JsonProperty("attachments")

  private Object attachments = null;

  @JsonProperty("status_text")

  private String statusText = null;

  @JsonProperty("checked")

  private Boolean checked = null;


  public TicketsRow title(String title) { 

    this.title = title;
    return this;
  }

  /**
   * Get title
   * @return title
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public String getTitle() {  
    return title;
  }



  public void setTitle(String title) { 

    this.title = title;
  }

  public TicketsRow ticketmaskid(String ticketmaskid) { 

    this.ticketmaskid = ticketmaskid;
    return this;
  }

  /**
   * Get ticketmaskid
   * @return ticketmaskid
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public String getTicketmaskid() {  
    return ticketmaskid;
  }



  public void setTicketmaskid(String ticketmaskid) { 

    this.ticketmaskid = ticketmaskid;
  }

  public TicketsRow lastreplier(String lastreplier) { 

    this.lastreplier = lastreplier;
    return this;
  }

  /**
   * Get lastreplier
   * @return lastreplier
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public String getLastreplier() {  
    return lastreplier;
  }



  public void setLastreplier(String lastreplier) { 

    this.lastreplier = lastreplier;
  }

  public TicketsRow status(String status) { 

    this.status = status;
    return this;
  }

  /**
   * Get status
   * @return status
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public String getStatus() {  
    return status;
  }



  public void setStatus(String status) { 

    this.status = status;
  }

  public TicketsRow priority(String priority) { 

    this.priority = priority;
    return this;
  }

  /**
   * Get priority
   * @return priority
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public String getPriority() {  
    return priority;
  }



  public void setPriority(String priority) { 

    this.priority = priority;
  }

  public TicketsRow totalReplies(Integer totalReplies) { 

    this.totalReplies = totalReplies;
    return this;
  }

  /**
   * Get totalReplies
   * @return totalReplies
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public Integer getTotalReplies() {  
    return totalReplies;
  }



  public void setTotalReplies(Integer totalReplies) { 

    this.totalReplies = totalReplies;
  }

  public TicketsRow lastactivity(String lastactivity) { 

    this.lastactivity = lastactivity;
    return this;
  }

  /**
   * Get lastactivity
   * @return lastactivity
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public String getLastactivity() {  
    return lastactivity;
  }



  public void setLastactivity(String lastactivity) { 

    this.lastactivity = lastactivity;
  }

  public TicketsRow departmenttitle(String departmenttitle) { 

    this.departmenttitle = departmenttitle;
    return this;
  }

  /**
   * Get departmenttitle
   * @return departmenttitle
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public String getDepartmenttitle() {  
    return departmenttitle;
  }



  public void setDepartmenttitle(String departmenttitle) { 

    this.departmenttitle = departmenttitle;
  }

  public TicketsRow ticketid(Integer ticketid) { 

    this.ticketid = ticketid;
    return this;
  }

  /**
   * Get ticketid
   * @return ticketid
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public Integer getTicketid() {  
    return ticketid;
  }



  public void setTicketid(Integer ticketid) { 

    this.ticketid = ticketid;
  }

  public TicketsRow canClose(String canClose) { 

    this.canClose = canClose;
    return this;
  }

  /**
   * Get canClose
   * @return canClose
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public String getCanClose() {  
    return canClose;
  }



  public void setCanClose(String canClose) { 

    this.canClose = canClose;
  }

  public TicketsRow attachments(Object attachments) { 

    this.attachments = attachments;
    return this;
  }

  /**
   * Get attachments
   * @return attachments
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public Object getAttachments() {  
    return attachments;
  }



  public void setAttachments(Object attachments) { 

    this.attachments = attachments;
  }

  public TicketsRow statusText(String statusText) { 

    this.statusText = statusText;
    return this;
  }

  /**
   * Get statusText
   * @return statusText
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public String getStatusText() {  
    return statusText;
  }



  public void setStatusText(String statusText) { 

    this.statusText = statusText;
  }

  public TicketsRow checked(Boolean checked) { 

    this.checked = checked;
    return this;
  }

  /**
   * Get checked
   * @return checked
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public Boolean isChecked() {  
    return checked;
  }



  public void setChecked(Boolean checked) { 

    this.checked = checked;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    TicketsRow ticketsRow = (TicketsRow) o;
    return Objects.equals(this.title, ticketsRow.title) &&
        Objects.equals(this.ticketmaskid, ticketsRow.ticketmaskid) &&
        Objects.equals(this.lastreplier, ticketsRow.lastreplier) &&
        Objects.equals(this.status, ticketsRow.status) &&
        Objects.equals(this.priority, ticketsRow.priority) &&
        Objects.equals(this.totalReplies, ticketsRow.totalReplies) &&
        Objects.equals(this.lastactivity, ticketsRow.lastactivity) &&
        Objects.equals(this.departmenttitle, ticketsRow.departmenttitle) &&
        Objects.equals(this.ticketid, ticketsRow.ticketid) &&
        Objects.equals(this.canClose, ticketsRow.canClose) &&
        Objects.equals(this.attachments, ticketsRow.attachments) &&
        Objects.equals(this.statusText, ticketsRow.statusText) &&
        Objects.equals(this.checked, ticketsRow.checked);
  }

  @Override
  public int hashCode() {
    return Objects.hash(title, ticketmaskid, lastreplier, status, priority, totalReplies, lastactivity, departmenttitle, ticketid, canClose, attachments, statusText, checked);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class TicketsRow {\n");
    
    sb.append("    title: ").append(toIndentedString(title)).append("\n");
    sb.append("    ticketmaskid: ").append(toIndentedString(ticketmaskid)).append("\n");
    sb.append("    lastreplier: ").append(toIndentedString(lastreplier)).append("\n");
    sb.append("    status: ").append(toIndentedString(status)).append("\n");
    sb.append("    priority: ").append(toIndentedString(priority)).append("\n");
    sb.append("    totalReplies: ").append(toIndentedString(totalReplies)).append("\n");
    sb.append("    lastactivity: ").append(toIndentedString(lastactivity)).append("\n");
    sb.append("    departmenttitle: ").append(toIndentedString(departmenttitle)).append("\n");
    sb.append("    ticketid: ").append(toIndentedString(ticketid)).append("\n");
    sb.append("    canClose: ").append(toIndentedString(canClose)).append("\n");
    sb.append("    attachments: ").append(toIndentedString(attachments)).append("\n");
    sb.append("    statusText: ").append(toIndentedString(statusText)).append("\n");
    sb.append("    checked: ").append(toIndentedString(checked)).append("\n");
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
