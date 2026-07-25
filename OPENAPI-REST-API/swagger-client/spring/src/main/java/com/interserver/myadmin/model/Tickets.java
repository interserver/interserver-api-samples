package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.TicketsCountArray;
import com.interserver.myadmin.model.TicketsRow;
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
 * A listing of support tickets.
 */
@Schema(description = "A listing of support tickets.")
@Validated
@NotUndefined



public class Tickets   {
  @JsonProperty("ima")

  private String ima = null;

  @JsonProperty("custid")

  private String custid = null;

  @JsonProperty("view")

  private String view = null;

  @JsonProperty("currentPage")

  private Integer currentPage = null;

  @JsonProperty("limit")

  private Integer limit = null;

  @JsonProperty("sortcol")

  private Integer sortcol = null;

  @JsonProperty("sortdir")

  private Integer sortdir = null;

  @JsonProperty("rowsOffset")

  private Integer rowsOffset = null;

  @JsonProperty("tickets")
  @Valid
  private List<TicketsRow> tickets = new ArrayList<>();
  @JsonProperty("pages")

  private Integer pages = null;

  @JsonProperty("rowsTotal")

  private Integer rowsTotal = null;

  @JsonProperty("inboxCount")

  private Integer inboxCount = null;

  @JsonProperty("countArray")

  private TicketsCountArray countArray = null;

  @JsonProperty("viewText")

  private String viewText = null;


  public Tickets ima(String ima) { 

    this.ima = ima;
    return this;
  }

  /**
   * Get ima
   * @return ima
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public String getIma() {  
    return ima;
  }



  public void setIma(String ima) { 

    this.ima = ima;
  }

  public Tickets custid(String custid) { 

    this.custid = custid;
    return this;
  }

  /**
   * Get custid
   * @return custid
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public String getCustid() {  
    return custid;
  }



  public void setCustid(String custid) { 

    this.custid = custid;
  }

  public Tickets view(String view) { 

    this.view = view;
    return this;
  }

  /**
   * Get view
   * @return view
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public String getView() {  
    return view;
  }



  public void setView(String view) { 

    this.view = view;
  }

  public Tickets currentPage(Integer currentPage) { 

    this.currentPage = currentPage;
    return this;
  }

  /**
   * Get currentPage
   * @return currentPage
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public Integer getCurrentPage() {  
    return currentPage;
  }



  public void setCurrentPage(Integer currentPage) { 

    this.currentPage = currentPage;
  }

  public Tickets limit(Integer limit) { 

    this.limit = limit;
    return this;
  }

  /**
   * Get limit
   * @return limit
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public Integer getLimit() {  
    return limit;
  }



  public void setLimit(Integer limit) { 

    this.limit = limit;
  }

  public Tickets sortcol(Integer sortcol) { 

    this.sortcol = sortcol;
    return this;
  }

  /**
   * Get sortcol
   * @return sortcol
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public Integer getSortcol() {  
    return sortcol;
  }



  public void setSortcol(Integer sortcol) { 

    this.sortcol = sortcol;
  }

  public Tickets sortdir(Integer sortdir) { 

    this.sortdir = sortdir;
    return this;
  }

  /**
   * Get sortdir
   * @return sortdir
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public Integer getSortdir() {  
    return sortdir;
  }



  public void setSortdir(Integer sortdir) { 

    this.sortdir = sortdir;
  }

  public Tickets rowsOffset(Integer rowsOffset) { 

    this.rowsOffset = rowsOffset;
    return this;
  }

  /**
   * Get rowsOffset
   * @return rowsOffset
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public Integer getRowsOffset() {  
    return rowsOffset;
  }



  public void setRowsOffset(Integer rowsOffset) { 

    this.rowsOffset = rowsOffset;
  }

  public Tickets tickets(List<TicketsRow> tickets) { 

    this.tickets = tickets;
    return this;
  }

  public Tickets addTicketsItem(TicketsRow ticketsItem) {
    this.tickets.add(ticketsItem);
    return this;
  }

  /**
   * Get tickets
   * @return tickets
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public List<TicketsRow> getTickets() {  
    return tickets;
  }



  public void setTickets(List<TicketsRow> tickets) { 

    this.tickets = tickets;
  }

  public Tickets pages(Integer pages) { 

    this.pages = pages;
    return this;
  }

  /**
   * Get pages
   * @return pages
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public Integer getPages() {  
    return pages;
  }



  public void setPages(Integer pages) { 

    this.pages = pages;
  }

  public Tickets rowsTotal(Integer rowsTotal) { 

    this.rowsTotal = rowsTotal;
    return this;
  }

  /**
   * Get rowsTotal
   * @return rowsTotal
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public Integer getRowsTotal() {  
    return rowsTotal;
  }



  public void setRowsTotal(Integer rowsTotal) { 

    this.rowsTotal = rowsTotal;
  }

  public Tickets inboxCount(Integer inboxCount) { 

    this.inboxCount = inboxCount;
    return this;
  }

  /**
   * Get inboxCount
   * @return inboxCount
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public Integer getInboxCount() {  
    return inboxCount;
  }



  public void setInboxCount(Integer inboxCount) { 

    this.inboxCount = inboxCount;
  }

  public Tickets countArray(TicketsCountArray countArray) { 

    this.countArray = countArray;
    return this;
  }

  /**
   * Get countArray
   * @return countArray
   **/
  
  @Schema(required = true, description = "")
  
@Valid
  @NotNull
  public TicketsCountArray getCountArray() {  
    return countArray;
  }



  public void setCountArray(TicketsCountArray countArray) { 

    this.countArray = countArray;
  }

  public Tickets viewText(String viewText) { 

    this.viewText = viewText;
    return this;
  }

  /**
   * Get viewText
   * @return viewText
   **/
  
  @Schema(required = true, description = "")
  
  @NotNull
  public String getViewText() {  
    return viewText;
  }



  public void setViewText(String viewText) { 

    this.viewText = viewText;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Tickets tickets = (Tickets) o;
    return Objects.equals(this.ima, tickets.ima) &&
        Objects.equals(this.custid, tickets.custid) &&
        Objects.equals(this.view, tickets.view) &&
        Objects.equals(this.currentPage, tickets.currentPage) &&
        Objects.equals(this.limit, tickets.limit) &&
        Objects.equals(this.sortcol, tickets.sortcol) &&
        Objects.equals(this.sortdir, tickets.sortdir) &&
        Objects.equals(this.rowsOffset, tickets.rowsOffset) &&
        Objects.equals(this.tickets, tickets.tickets) &&
        Objects.equals(this.pages, tickets.pages) &&
        Objects.equals(this.rowsTotal, tickets.rowsTotal) &&
        Objects.equals(this.inboxCount, tickets.inboxCount) &&
        Objects.equals(this.countArray, tickets.countArray) &&
        Objects.equals(this.viewText, tickets.viewText);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ima, custid, view, currentPage, limit, sortcol, sortdir, rowsOffset, tickets, pages, rowsTotal, inboxCount, countArray, viewText);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Tickets {\n");
    
    sb.append("    ima: ").append(toIndentedString(ima)).append("\n");
    sb.append("    custid: ").append(toIndentedString(custid)).append("\n");
    sb.append("    view: ").append(toIndentedString(view)).append("\n");
    sb.append("    currentPage: ").append(toIndentedString(currentPage)).append("\n");
    sb.append("    limit: ").append(toIndentedString(limit)).append("\n");
    sb.append("    sortcol: ").append(toIndentedString(sortcol)).append("\n");
    sb.append("    sortdir: ").append(toIndentedString(sortdir)).append("\n");
    sb.append("    rowsOffset: ").append(toIndentedString(rowsOffset)).append("\n");
    sb.append("    tickets: ").append(toIndentedString(tickets)).append("\n");
    sb.append("    pages: ").append(toIndentedString(pages)).append("\n");
    sb.append("    rowsTotal: ").append(toIndentedString(rowsTotal)).append("\n");
    sb.append("    inboxCount: ").append(toIndentedString(inboxCount)).append("\n");
    sb.append("    countArray: ").append(toIndentedString(countArray)).append("\n");
    sb.append("    viewText: ").append(toIndentedString(viewText)).append("\n");
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
