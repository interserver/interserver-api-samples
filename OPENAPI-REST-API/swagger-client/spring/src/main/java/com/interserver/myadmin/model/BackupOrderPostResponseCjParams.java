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
 * BackupOrderPostResponseCjParams
 */
@Validated
@NotUndefined



public class BackupOrderPostResponseCjParams   {
  @JsonProperty("containerTagId")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String containerTagId = null;

  @JsonProperty("CID")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String CID = null;

  @JsonProperty("OID")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String OID = null;

  @JsonProperty("TYPE")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String TYPE = null;

  @JsonProperty("ITEM1")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String itEM1 = null;

  @JsonProperty("AMT1")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String amT1 = null;

  @JsonProperty("QTY1")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer qtY1 = null;

  @JsonProperty("CURRENCY")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String CURRENCY = null;


  public BackupOrderPostResponseCjParams containerTagId(String containerTagId) { 

    this.containerTagId = containerTagId;
    return this;
  }

  /**
   * Get containerTagId
   * @return containerTagId
   **/
  
  @Schema(description = "")
  
  public String getContainerTagId() {  
    return containerTagId;
  }



  public void setContainerTagId(String containerTagId) { 
    this.containerTagId = containerTagId;
  }

  public BackupOrderPostResponseCjParams CID(String CID) { 

    this.CID = CID;
    return this;
  }

  /**
   * Get CID
   * @return CID
   **/
  
  @Schema(description = "")
  
  public String getCID() {  
    return CID;
  }



  public void setCID(String CID) { 
    this.CID = CID;
  }

  public BackupOrderPostResponseCjParams OID(String OID) { 

    this.OID = OID;
    return this;
  }

  /**
   * Get OID
   * @return OID
   **/
  
  @Schema(description = "")
  
  public String getOID() {  
    return OID;
  }



  public void setOID(String OID) { 
    this.OID = OID;
  }

  public BackupOrderPostResponseCjParams TYPE(String TYPE) { 

    this.TYPE = TYPE;
    return this;
  }

  /**
   * Get TYPE
   * @return TYPE
   **/
  
  @Schema(description = "")
  
  public String getTYPE() {  
    return TYPE;
  }



  public void setTYPE(String TYPE) { 
    this.TYPE = TYPE;
  }

  public BackupOrderPostResponseCjParams itEM1(String itEM1) { 

    this.itEM1 = itEM1;
    return this;
  }

  /**
   * Get itEM1
   * @return itEM1
   **/
  
  @Schema(description = "")
  
  public String getItEM1() {  
    return itEM1;
  }



  public void setItEM1(String itEM1) { 
    this.itEM1 = itEM1;
  }

  public BackupOrderPostResponseCjParams amT1(String amT1) { 

    this.amT1 = amT1;
    return this;
  }

  /**
   * Get amT1
   * @return amT1
   **/
  
  @Schema(description = "")
  
  public String getAmT1() {  
    return amT1;
  }



  public void setAmT1(String amT1) { 
    this.amT1 = amT1;
  }

  public BackupOrderPostResponseCjParams qtY1(Integer qtY1) { 

    this.qtY1 = qtY1;
    return this;
  }

  /**
   * Get qtY1
   * @return qtY1
   **/
  
  @Schema(description = "")
  
  public Integer getQtY1() {  
    return qtY1;
  }



  public void setQtY1(Integer qtY1) { 
    this.qtY1 = qtY1;
  }

  public BackupOrderPostResponseCjParams CURRENCY(String CURRENCY) { 

    this.CURRENCY = CURRENCY;
    return this;
  }

  /**
   * Get CURRENCY
   * @return CURRENCY
   **/
  
  @Schema(description = "")
  
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
    BackupOrderPostResponseCjParams backupOrderPostResponseCjParams = (BackupOrderPostResponseCjParams) o;
    return Objects.equals(this.containerTagId, backupOrderPostResponseCjParams.containerTagId) &&
        Objects.equals(this.CID, backupOrderPostResponseCjParams.CID) &&
        Objects.equals(this.OID, backupOrderPostResponseCjParams.OID) &&
        Objects.equals(this.TYPE, backupOrderPostResponseCjParams.TYPE) &&
        Objects.equals(this.itEM1, backupOrderPostResponseCjParams.itEM1) &&
        Objects.equals(this.amT1, backupOrderPostResponseCjParams.amT1) &&
        Objects.equals(this.qtY1, backupOrderPostResponseCjParams.qtY1) &&
        Objects.equals(this.CURRENCY, backupOrderPostResponseCjParams.CURRENCY);
  }

  @Override
  public int hashCode() {
    return Objects.hash(containerTagId, CID, OID, TYPE, itEM1, amT1, qtY1, CURRENCY);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class BackupOrderPostResponseCjParams {\n");
    
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
