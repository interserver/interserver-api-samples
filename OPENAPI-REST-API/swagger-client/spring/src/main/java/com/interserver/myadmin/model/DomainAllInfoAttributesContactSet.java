package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.interserver.myadmin.model.DomainAdminContact;
import com.interserver.myadmin.model.DomainOwnerContact;
import com.interserver.myadmin.model.DomainTechContact;
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
 * DomainAllInfoAttributesContactSet
 */
@Validated
@NotUndefined



public class DomainAllInfoAttributesContactSet   {
  @JsonProperty("owner")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private DomainOwnerContact owner = null;

  @JsonProperty("admin")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private DomainAdminContact admin = null;

  @JsonProperty("tech")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private DomainTechContact tech = null;


  public DomainAllInfoAttributesContactSet owner(DomainOwnerContact owner) { 

    this.owner = owner;
    return this;
  }

  /**
   * Get owner
   * @return owner
   **/
  
  @Schema(description = "")
  
@Valid
  public DomainOwnerContact getOwner() {  
    return owner;
  }



  public void setOwner(DomainOwnerContact owner) { 
    this.owner = owner;
  }

  public DomainAllInfoAttributesContactSet admin(DomainAdminContact admin) { 

    this.admin = admin;
    return this;
  }

  /**
   * Get admin
   * @return admin
   **/
  
  @Schema(description = "")
  
@Valid
  public DomainAdminContact getAdmin() {  
    return admin;
  }



  public void setAdmin(DomainAdminContact admin) { 
    this.admin = admin;
  }

  public DomainAllInfoAttributesContactSet tech(DomainTechContact tech) { 

    this.tech = tech;
    return this;
  }

  /**
   * Get tech
   * @return tech
   **/
  
  @Schema(description = "")
  
@Valid
  public DomainTechContact getTech() {  
    return tech;
  }



  public void setTech(DomainTechContact tech) { 
    this.tech = tech;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    DomainAllInfoAttributesContactSet domainAllInfoAttributesContactSet = (DomainAllInfoAttributesContactSet) o;
    return Objects.equals(this.owner, domainAllInfoAttributesContactSet.owner) &&
        Objects.equals(this.admin, domainAllInfoAttributesContactSet.admin) &&
        Objects.equals(this.tech, domainAllInfoAttributesContactSet.tech);
  }

  @Override
  public int hashCode() {
    return Objects.hash(owner, admin, tech);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DomainAllInfoAttributesContactSet {\n");
    
    sb.append("    owner: ").append(toIndentedString(owner)).append("\n");
    sb.append("    admin: ").append(toIndentedString(admin)).append("\n");
    sb.append("    tech: ").append(toIndentedString(tech)).append("\n");
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
