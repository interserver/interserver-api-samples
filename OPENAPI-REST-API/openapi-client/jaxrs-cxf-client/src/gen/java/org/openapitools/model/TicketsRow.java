package org.openapitools.model;


import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Information about a single ticket.
 */
@ApiModel(description="Information about a single ticket.")

public class TicketsRow  {
  
  @ApiModelProperty(required = true, value = "")

  private String title;

  @ApiModelProperty(required = true, value = "")

  private String ticketmaskid;

  @ApiModelProperty(required = true, value = "")

  private String lastreplier;

  @ApiModelProperty(required = true, value = "")

  private String status;

  @ApiModelProperty(required = true, value = "")

  private String priority;

  @ApiModelProperty(required = true, value = "")

  private Integer totalReplies;

  @ApiModelProperty(required = true, value = "")

  private String lastactivity;

  @ApiModelProperty(required = true, value = "")

  private String departmenttitle;

  @ApiModelProperty(required = true, value = "")

  private Integer ticketid;

  @ApiModelProperty(required = true, value = "")

  private String canClose;

  @ApiModelProperty(required = true, value = "")

  private Object attachments = null;

  @ApiModelProperty(required = true, value = "")

  private String statusText;

  @ApiModelProperty(required = true, value = "")

  private Boolean checked;
 /**
   * Get title
   * @return title
  **/
  @JsonProperty("title")
  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public TicketsRow title(String title) {
    this.title = title;
    return this;
  }

 /**
   * Get ticketmaskid
   * @return ticketmaskid
  **/
  @JsonProperty("ticketmaskid")
  public String getTicketmaskid() {
    return ticketmaskid;
  }

  public void setTicketmaskid(String ticketmaskid) {
    this.ticketmaskid = ticketmaskid;
  }

  public TicketsRow ticketmaskid(String ticketmaskid) {
    this.ticketmaskid = ticketmaskid;
    return this;
  }

 /**
   * Get lastreplier
   * @return lastreplier
  **/
  @JsonProperty("lastreplier")
  public String getLastreplier() {
    return lastreplier;
  }

  public void setLastreplier(String lastreplier) {
    this.lastreplier = lastreplier;
  }

  public TicketsRow lastreplier(String lastreplier) {
    this.lastreplier = lastreplier;
    return this;
  }

 /**
   * Get status
   * @return status
  **/
  @JsonProperty("status")
  public String getStatus() {
    return status;
  }

  public void setStatus(String status) {
    this.status = status;
  }

  public TicketsRow status(String status) {
    this.status = status;
    return this;
  }

 /**
   * Get priority
   * @return priority
  **/
  @JsonProperty("priority")
  public String getPriority() {
    return priority;
  }

  public void setPriority(String priority) {
    this.priority = priority;
  }

  public TicketsRow priority(String priority) {
    this.priority = priority;
    return this;
  }

 /**
   * Get totalReplies
   * @return totalReplies
  **/
  @JsonProperty("total_replies")
  public Integer getTotalReplies() {
    return totalReplies;
  }

  public void setTotalReplies(Integer totalReplies) {
    this.totalReplies = totalReplies;
  }

  public TicketsRow totalReplies(Integer totalReplies) {
    this.totalReplies = totalReplies;
    return this;
  }

 /**
   * Get lastactivity
   * @return lastactivity
  **/
  @JsonProperty("lastactivity")
  public String getLastactivity() {
    return lastactivity;
  }

  public void setLastactivity(String lastactivity) {
    this.lastactivity = lastactivity;
  }

  public TicketsRow lastactivity(String lastactivity) {
    this.lastactivity = lastactivity;
    return this;
  }

 /**
   * Get departmenttitle
   * @return departmenttitle
  **/
  @JsonProperty("departmenttitle")
  public String getDepartmenttitle() {
    return departmenttitle;
  }

  public void setDepartmenttitle(String departmenttitle) {
    this.departmenttitle = departmenttitle;
  }

  public TicketsRow departmenttitle(String departmenttitle) {
    this.departmenttitle = departmenttitle;
    return this;
  }

 /**
   * Get ticketid
   * @return ticketid
  **/
  @JsonProperty("ticketid")
  public Integer getTicketid() {
    return ticketid;
  }

  public void setTicketid(Integer ticketid) {
    this.ticketid = ticketid;
  }

  public TicketsRow ticketid(Integer ticketid) {
    this.ticketid = ticketid;
    return this;
  }

 /**
   * Get canClose
   * @return canClose
  **/
  @JsonProperty("can_close")
  public String getCanClose() {
    return canClose;
  }

  public void setCanClose(String canClose) {
    this.canClose = canClose;
  }

  public TicketsRow canClose(String canClose) {
    this.canClose = canClose;
    return this;
  }

 /**
   * Get attachments
   * @return attachments
  **/
  @JsonProperty("attachments")
  public Object getAttachments() {
    return attachments;
  }

  public void setAttachments(Object attachments) {
    this.attachments = attachments;
  }

  public TicketsRow attachments(Object attachments) {
    this.attachments = attachments;
    return this;
  }

 /**
   * Get statusText
   * @return statusText
  **/
  @JsonProperty("status_text")
  public String getStatusText() {
    return statusText;
  }

  public void setStatusText(String statusText) {
    this.statusText = statusText;
  }

  public TicketsRow statusText(String statusText) {
    this.statusText = statusText;
    return this;
  }

 /**
   * Get checked
   * @return checked
  **/
  @JsonProperty("checked")
  public Boolean isChecked() {
    return checked;
  }

  public void setChecked(Boolean checked) {
    this.checked = checked;
  }

  public TicketsRow checked(Boolean checked) {
    this.checked = checked;
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
  private static String toIndentedString(Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}

