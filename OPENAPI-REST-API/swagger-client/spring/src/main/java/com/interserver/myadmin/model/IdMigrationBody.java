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
 * IdMigrationBody
 */
@Validated
@NotUndefined



public class IdMigrationBody   {
  @JsonProperty("custPortal")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String custPortal = null;

  @JsonProperty("regEmail")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String regEmail = null;

  @JsonProperty("password")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String password = null;

  @JsonProperty("ctrlPanel")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ctrlPanel = null;

  @JsonProperty("ftpUsername")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ftpUsername = null;

  @JsonProperty("ftpPassword")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String ftpPassword = null;

  @JsonProperty("siteBusyMig")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String siteBusyMig = null;

  @JsonProperty("splReqMig")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String splReqMig = null;

  @JsonProperty("domainReg")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String domainReg = null;

  @JsonProperty("dataMig")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String dataMig = null;

  @JsonProperty("domainRegPortal")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String domainRegPortal = null;

  @JsonProperty("domainRegEmail")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String domainRegEmail = null;

  @JsonProperty("domainRegPassword")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String domainRegPassword = null;


  public IdMigrationBody custPortal(String custPortal) { 

    this.custPortal = custPortal;
    return this;
  }

  /**
   * URL of the customer's current hosting portal.
   * @return custPortal
   **/
  
  @Schema(description = "URL of the customer's current hosting portal.")
  
  public String getCustPortal() {  
    return custPortal;
  }



  public void setCustPortal(String custPortal) { 
    this.custPortal = custPortal;
  }

  public IdMigrationBody regEmail(String regEmail) { 

    this.regEmail = regEmail;
    return this;
  }

  /**
   * Registered email address at the current host.
   * @return regEmail
   **/
  
  @Schema(description = "Registered email address at the current host.")
  
  public String getRegEmail() {  
    return regEmail;
  }



  public void setRegEmail(String regEmail) { 
    this.regEmail = regEmail;
  }

  public IdMigrationBody password(String password) { 

    this.password = password;
    return this;
  }

  /**
   * Password for the current hosting account.
   * @return password
   **/
  
  @Schema(description = "Password for the current hosting account.")
  
  public String getPassword() {  
    return password;
  }



  public void setPassword(String password) { 
    this.password = password;
  }

  public IdMigrationBody ctrlPanel(String ctrlPanel) { 

    this.ctrlPanel = ctrlPanel;
    return this;
  }

  /**
   * URL of the current control panel.
   * @return ctrlPanel
   **/
  
  @Schema(description = "URL of the current control panel.")
  
  public String getCtrlPanel() {  
    return ctrlPanel;
  }



  public void setCtrlPanel(String ctrlPanel) { 
    this.ctrlPanel = ctrlPanel;
  }

  public IdMigrationBody ftpUsername(String ftpUsername) { 

    this.ftpUsername = ftpUsername;
    return this;
  }

  /**
   * FTP username at the current host.
   * @return ftpUsername
   **/
  
  @Schema(description = "FTP username at the current host.")
  
  public String getFtpUsername() {  
    return ftpUsername;
  }



  public void setFtpUsername(String ftpUsername) { 
    this.ftpUsername = ftpUsername;
  }

  public IdMigrationBody ftpPassword(String ftpPassword) { 

    this.ftpPassword = ftpPassword;
    return this;
  }

  /**
   * FTP password at the current host.
   * @return ftpPassword
   **/
  
  @Schema(description = "FTP password at the current host.")
  
  public String getFtpPassword() {  
    return ftpPassword;
  }



  public void setFtpPassword(String ftpPassword) { 
    this.ftpPassword = ftpPassword;
  }

  public IdMigrationBody siteBusyMig(String siteBusyMig) { 

    this.siteBusyMig = siteBusyMig;
    return this;
  }

  /**
   * Information about site traffic during migration.
   * @return siteBusyMig
   **/
  
  @Schema(description = "Information about site traffic during migration.")
  
  public String getSiteBusyMig() {  
    return siteBusyMig;
  }



  public void setSiteBusyMig(String siteBusyMig) { 
    this.siteBusyMig = siteBusyMig;
  }

  public IdMigrationBody splReqMig(String splReqMig) { 

    this.splReqMig = splReqMig;
    return this;
  }

  /**
   * Special requirements for the migration.
   * @return splReqMig
   **/
  
  @Schema(description = "Special requirements for the migration.")
  
  public String getSplReqMig() {  
    return splReqMig;
  }



  public void setSplReqMig(String splReqMig) { 
    this.splReqMig = splReqMig;
  }

  public IdMigrationBody domainReg(String domainReg) { 

    this.domainReg = domainReg;
    return this;
  }

  /**
   * Whether domain registration assistance is needed.
   * @return domainReg
   **/
  
  @Schema(description = "Whether domain registration assistance is needed.")
  
  public String getDomainReg() {  
    return domainReg;
  }



  public void setDomainReg(String domainReg) { 
    this.domainReg = domainReg;
  }

  public IdMigrationBody dataMig(String dataMig) { 

    this.dataMig = dataMig;
    return this;
  }

  /**
   * Data migration timing preference.
   * @return dataMig
   **/
  
  @Schema(description = "Data migration timing preference.")
  
  public String getDataMig() {  
    return dataMig;
  }



  public void setDataMig(String dataMig) { 
    this.dataMig = dataMig;
  }

  public IdMigrationBody domainRegPortal(String domainRegPortal) { 

    this.domainRegPortal = domainRegPortal;
    return this;
  }

  /**
   * Domain registrar portal URL.
   * @return domainRegPortal
   **/
  
  @Schema(description = "Domain registrar portal URL.")
  
  public String getDomainRegPortal() {  
    return domainRegPortal;
  }



  public void setDomainRegPortal(String domainRegPortal) { 
    this.domainRegPortal = domainRegPortal;
  }

  public IdMigrationBody domainRegEmail(String domainRegEmail) { 

    this.domainRegEmail = domainRegEmail;
    return this;
  }

  /**
   * Email for the domain registrar account.
   * @return domainRegEmail
   **/
  
  @Schema(description = "Email for the domain registrar account.")
  
  public String getDomainRegEmail() {  
    return domainRegEmail;
  }



  public void setDomainRegEmail(String domainRegEmail) { 
    this.domainRegEmail = domainRegEmail;
  }

  public IdMigrationBody domainRegPassword(String domainRegPassword) { 

    this.domainRegPassword = domainRegPassword;
    return this;
  }

  /**
   * Password for the domain registrar account.
   * @return domainRegPassword
   **/
  
  @Schema(description = "Password for the domain registrar account.")
  
  public String getDomainRegPassword() {  
    return domainRegPassword;
  }



  public void setDomainRegPassword(String domainRegPassword) { 
    this.domainRegPassword = domainRegPassword;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    IdMigrationBody idMigrationBody = (IdMigrationBody) o;
    return Objects.equals(this.custPortal, idMigrationBody.custPortal) &&
        Objects.equals(this.regEmail, idMigrationBody.regEmail) &&
        Objects.equals(this.password, idMigrationBody.password) &&
        Objects.equals(this.ctrlPanel, idMigrationBody.ctrlPanel) &&
        Objects.equals(this.ftpUsername, idMigrationBody.ftpUsername) &&
        Objects.equals(this.ftpPassword, idMigrationBody.ftpPassword) &&
        Objects.equals(this.siteBusyMig, idMigrationBody.siteBusyMig) &&
        Objects.equals(this.splReqMig, idMigrationBody.splReqMig) &&
        Objects.equals(this.domainReg, idMigrationBody.domainReg) &&
        Objects.equals(this.dataMig, idMigrationBody.dataMig) &&
        Objects.equals(this.domainRegPortal, idMigrationBody.domainRegPortal) &&
        Objects.equals(this.domainRegEmail, idMigrationBody.domainRegEmail) &&
        Objects.equals(this.domainRegPassword, idMigrationBody.domainRegPassword);
  }

  @Override
  public int hashCode() {
    return Objects.hash(custPortal, regEmail, password, ctrlPanel, ftpUsername, ftpPassword, siteBusyMig, splReqMig, domainReg, dataMig, domainRegPortal, domainRegEmail, domainRegPassword);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class IdMigrationBody {\n");
    
    sb.append("    custPortal: ").append(toIndentedString(custPortal)).append("\n");
    sb.append("    regEmail: ").append(toIndentedString(regEmail)).append("\n");
    sb.append("    password: ").append(toIndentedString(password)).append("\n");
    sb.append("    ctrlPanel: ").append(toIndentedString(ctrlPanel)).append("\n");
    sb.append("    ftpUsername: ").append(toIndentedString(ftpUsername)).append("\n");
    sb.append("    ftpPassword: ").append(toIndentedString(ftpPassword)).append("\n");
    sb.append("    siteBusyMig: ").append(toIndentedString(siteBusyMig)).append("\n");
    sb.append("    splReqMig: ").append(toIndentedString(splReqMig)).append("\n");
    sb.append("    domainReg: ").append(toIndentedString(domainReg)).append("\n");
    sb.append("    dataMig: ").append(toIndentedString(dataMig)).append("\n");
    sb.append("    domainRegPortal: ").append(toIndentedString(domainRegPortal)).append("\n");
    sb.append("    domainRegEmail: ").append(toIndentedString(domainRegEmail)).append("\n");
    sb.append("    domainRegPassword: ").append(toIndentedString(domainRegPassword)).append("\n");
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
