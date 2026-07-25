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
 * InlineResponse2012OrderDetailsCjParams
 */
@Validated
@NotUndefined



public class InlineResponse2012OrderDetailsCjParams   {
  @JsonProperty("containerTagId")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer containerTagId = null;

  @JsonProperty("CID")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer CID = null;

  @JsonProperty("OID")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String OID = null;

  @JsonProperty("TYPE")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer TYPE = null;

  @JsonProperty("ITEM1")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String itEM1 = null;

  @JsonProperty("AMT1")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer amT1 = null;

  @JsonProperty("QTY1")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer qtY1 = null;

  @JsonProperty("CURRENCY")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String CURRENCY = null;


  public InlineResponse2012OrderDetailsCjParams containerTagId(Integer containerTagId) { 

    this.containerTagId = containerTagId;
    return this;
  }

  /**
   * Get containerTagId
   * @return containerTagId
   **/
  
  @Schema(example = "1684", description = "")
  
  public Integer getContainerTagId() {  
    return containerTagId;
  }



  public void setContainerTagId(Integer containerTagId) { 
    this.containerTagId = containerTagId;
  }

  public InlineResponse2012OrderDetailsCjParams CID(Integer CID) { 

    this.CID = CID;
    return this;
  }

  /**
   * Get CID
   * @return CID
   **/
  
  @Schema(example = "2314", description = "")
  
  public Integer getCID() {  
    return CID;
  }



  public void setCID(Integer CID) { 
    this.CID = CID;
  }

  public InlineResponse2012OrderDetailsCjParams OID(String OID) { 

    this.OID = OID;
    return this;
  }

  /**
   * Get OID
   * @return OID
   **/
  
  @Schema(example = "scrub_ips12424", description = "")
  
  public String getOID() {  
    return OID;
  }



  public void setOID(String OID) { 
    this.OID = OID;
  }

  public InlineResponse2012OrderDetailsCjParams TYPE(Integer TYPE) { 

    this.TYPE = TYPE;
    return this;
  }

  /**
   * Get TYPE
   * @return TYPE
   **/
  
  @Schema(example = "2242343242", description = "")
  
  public Integer getTYPE() {  
    return TYPE;
  }



  public void setTYPE(Integer TYPE) { 
    this.TYPE = TYPE;
  }

  public InlineResponse2012OrderDetailsCjParams itEM1(String itEM1) { 

    this.itEM1 = itEM1;
    return this;
  }

  /**
   * Get itEM1
   * @return itEM1
   **/
  
  @Schema(example = "scrub_ips904", description = "")
  
  public String getItEM1() {  
    return itEM1;
  }



  public void setItEM1(String itEM1) { 
    this.itEM1 = itEM1;
  }

  public InlineResponse2012OrderDetailsCjParams amT1(Integer amT1) { 

    this.amT1 = amT1;
    return this;
  }

  /**
   * Get amT1
   * @return amT1
   **/
  
  @Schema(example = "5", description = "")
  
  public Integer getAmT1() {  
    return amT1;
  }



  public void setAmT1(Integer amT1) { 
    this.amT1 = amT1;
  }

  public InlineResponse2012OrderDetailsCjParams qtY1(Integer qtY1) { 

    this.qtY1 = qtY1;
    return this;
  }

  /**
   * Get qtY1
   * @return qtY1
   **/
  
  @Schema(example = "1", description = "")
  
  public Integer getQtY1() {  
    return qtY1;
  }



  public void setQtY1(Integer qtY1) { 
    this.qtY1 = qtY1;
  }

  public InlineResponse2012OrderDetailsCjParams CURRENCY(String CURRENCY) { 

    this.CURRENCY = CURRENCY;
    return this;
  }

  /**
   * Get CURRENCY
   * @return CURRENCY
   **/
  
  @Schema(example = "USD", description = "")
  
  public String getCURRENCY() {  
    return CURRENCY;
  }



  public void setCURRENCY(String CURRENCY) { 
    this.CURRENCY = CURRENCY;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse2012OrderDetailsCjParams inlineResponse2012OrderDetailsCjParams = (InlineResponse2012OrderDetailsCjParams) o;
    return Objects.equals(this.containerTagId, inlineResponse2012OrderDetailsCjParams.containerTagId) &&
        Objects.equals(this.CID, inlineResponse2012OrderDetailsCjParams.CID) &&
        Objects.equals(this.OID, inlineResponse2012OrderDetailsCjParams.OID) &&
        Objects.equals(this.TYPE, inlineResponse2012OrderDetailsCjParams.TYPE) &&
        Objects.equals(this.itEM1, inlineResponse2012OrderDetailsCjParams.itEM1) &&
        Objects.equals(this.amT1, inlineResponse2012OrderDetailsCjParams.amT1) &&
        Objects.equals(this.qtY1, inlineResponse2012OrderDetailsCjParams.qtY1) &&
        Objects.equals(this.CURRENCY, inlineResponse2012OrderDetailsCjParams.CURRENCY);
  }

  @Override
  public int hashCode() {
    return Objects.hash(containerTagId, CID, OID, TYPE, itEM1, amT1, qtY1, CURRENCY);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse2012OrderDetailsCjParams {\n");
    
    sb.append("    containerTagId: ").append(toIndentedString(containerTagId)).append("\n");
    sb.append("    CID: ").append(toIndentedString(CID)).append("\n");
    sb.append("    OID: ").append(toIndentedString(OID)).append("\n");
    sb.append("    TYPE: ").append(toIndentedString(TYPE)).append("\n");
    sb.append("    itEM1: ").append(toIndentedString(itEM1)).append("\n");
    sb.append("    amT1: ").append(toIndentedString(amT1)).append("\n");
    sb.append("    qtY1: ").append(toIndentedString(qtY1)).append("\n");
    sb.append("    CURRENCY: ").append(toIndentedString(CURRENCY)).append("\n");
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
