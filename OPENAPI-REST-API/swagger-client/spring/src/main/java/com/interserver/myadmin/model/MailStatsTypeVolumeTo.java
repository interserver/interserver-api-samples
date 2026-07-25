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
 * MailStatsTypeVolumeTo
 */
@Validated
@NotUndefined



public class MailStatsTypeVolumeTo   {
  @JsonProperty("client@domain.com")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer clientAtDomainCom = null;

  @JsonProperty("user@site.net")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer userAtSiteNet = null;

  @JsonProperty("sales@company.com")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer salesAtCompanyCom = null;

  @JsonProperty("client@anothersite.com")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private Integer clientAtAnothersiteCom = null;


  public MailStatsTypeVolumeTo clientAtDomainCom(Integer clientAtDomainCom) { 

    this.clientAtDomainCom = clientAtDomainCom;
    return this;
  }

  /**
   * Get clientAtDomainCom
   * @return clientAtDomainCom
   **/
  
  @Schema(description = "")
  
  public Integer getClientAtDomainCom() {  
    return clientAtDomainCom;
  }



  public void setClientAtDomainCom(Integer clientAtDomainCom) { 
    this.clientAtDomainCom = clientAtDomainCom;
  }

  public MailStatsTypeVolumeTo userAtSiteNet(Integer userAtSiteNet) { 

    this.userAtSiteNet = userAtSiteNet;
    return this;
  }

  /**
   * Get userAtSiteNet
   * @return userAtSiteNet
   **/
  
  @Schema(description = "")
  
  public Integer getUserAtSiteNet() {  
    return userAtSiteNet;
  }



  public void setUserAtSiteNet(Integer userAtSiteNet) { 
    this.userAtSiteNet = userAtSiteNet;
  }

  public MailStatsTypeVolumeTo salesAtCompanyCom(Integer salesAtCompanyCom) { 

    this.salesAtCompanyCom = salesAtCompanyCom;
    return this;
  }

  /**
   * Get salesAtCompanyCom
   * @return salesAtCompanyCom
   **/
  
  @Schema(description = "")
  
  public Integer getSalesAtCompanyCom() {  
    return salesAtCompanyCom;
  }



  public void setSalesAtCompanyCom(Integer salesAtCompanyCom) { 
    this.salesAtCompanyCom = salesAtCompanyCom;
  }

  public MailStatsTypeVolumeTo clientAtAnothersiteCom(Integer clientAtAnothersiteCom) { 

    this.clientAtAnothersiteCom = clientAtAnothersiteCom;
    return this;
  }

  /**
   * Get clientAtAnothersiteCom
   * @return clientAtAnothersiteCom
   **/
  
  @Schema(description = "")
  
  public Integer getClientAtAnothersiteCom() {  
    return clientAtAnothersiteCom;
  }



  public void setClientAtAnothersiteCom(Integer clientAtAnothersiteCom) { 
    this.clientAtAnothersiteCom = clientAtAnothersiteCom;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    MailStatsTypeVolumeTo mailStatsTypeVolumeTo = (MailStatsTypeVolumeTo) o;
    return Objects.equals(this.clientAtDomainCom, mailStatsTypeVolumeTo.clientAtDomainCom) &&
        Objects.equals(this.userAtSiteNet, mailStatsTypeVolumeTo.userAtSiteNet) &&
        Objects.equals(this.salesAtCompanyCom, mailStatsTypeVolumeTo.salesAtCompanyCom) &&
        Objects.equals(this.clientAtAnothersiteCom, mailStatsTypeVolumeTo.clientAtAnothersiteCom);
  }

  @Override
  public int hashCode() {
    return Objects.hash(clientAtDomainCom, userAtSiteNet, salesAtCompanyCom, clientAtAnothersiteCom);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class MailStatsTypeVolumeTo {\n");
    
    sb.append("    clientAtDomainCom: ").append(toIndentedString(clientAtDomainCom)).append("\n");
    sb.append("    userAtSiteNet: ").append(toIndentedString(userAtSiteNet)).append("\n");
    sb.append("    salesAtCompanyCom: ").append(toIndentedString(salesAtCompanyCom)).append("\n");
    sb.append("    clientAtAnothersiteCom: ").append(toIndentedString(clientAtAnothersiteCom)).append("\n");
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
