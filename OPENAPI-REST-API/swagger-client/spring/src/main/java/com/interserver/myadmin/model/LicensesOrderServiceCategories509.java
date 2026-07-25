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
 * LicensesOrderServiceCategories509
 */
@Validated
@NotUndefined



public class LicensesOrderServiceCategories509   {
  @JsonProperty("category_id")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String categoryId = null;

  @JsonProperty("category_name")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String categoryName = null;

  @JsonProperty("category_tag")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String categoryTag = null;

  @JsonProperty("category_module")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String categoryModule = null;


  public LicensesOrderServiceCategories509 categoryId(String categoryId) { 

    this.categoryId = categoryId;
    return this;
  }

  /**
   * Category ID
   * @return categoryId
   **/
  
  @Schema(example = "509", description = "Category ID")
  
  public String getCategoryId() {  
    return categoryId;
  }



  public void setCategoryId(String categoryId) { 
    this.categoryId = categoryId;
  }

  public LicensesOrderServiceCategories509 categoryName(String categoryName) { 

    this.categoryName = categoryName;
    return this;
  }

  /**
   * Category Name
   * @return categoryName
   **/
  
  @Schema(example = "Webuzo", description = "Category Name")
  
  public String getCategoryName() {  
    return categoryName;
  }



  public void setCategoryName(String categoryName) { 
    this.categoryName = categoryName;
  }

  public LicensesOrderServiceCategories509 categoryTag(String categoryTag) { 

    this.categoryTag = categoryTag;
    return this;
  }

  /**
   * Category Tag
   * @return categoryTag
   **/
  
  @Schema(example = "webuzo", description = "Category Tag")
  
  public String getCategoryTag() {  
    return categoryTag;
  }



  public void setCategoryTag(String categoryTag) { 
    this.categoryTag = categoryTag;
  }

  public LicensesOrderServiceCategories509 categoryModule(String categoryModule) { 

    this.categoryModule = categoryModule;
    return this;
  }

  /**
   * Category Module
   * @return categoryModule
   **/
  
  @Schema(example = "licenses", description = "Category Module")
  
  public String getCategoryModule() {  
    return categoryModule;
  }



  public void setCategoryModule(String categoryModule) { 
    this.categoryModule = categoryModule;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    LicensesOrderServiceCategories509 licensesOrderServiceCategories509 = (LicensesOrderServiceCategories509) o;
    return Objects.equals(this.categoryId, licensesOrderServiceCategories509.categoryId) &&
        Objects.equals(this.categoryName, licensesOrderServiceCategories509.categoryName) &&
        Objects.equals(this.categoryTag, licensesOrderServiceCategories509.categoryTag) &&
        Objects.equals(this.categoryModule, licensesOrderServiceCategories509.categoryModule);
  }

  @Override
  public int hashCode() {
    return Objects.hash(categoryId, categoryName, categoryTag, categoryModule);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class LicensesOrderServiceCategories509 {\n");
    
    sb.append("    categoryId: ").append(toIndentedString(categoryId)).append("\n");
    sb.append("    categoryName: ").append(toIndentedString(categoryName)).append("\n");
    sb.append("    categoryTag: ").append(toIndentedString(categoryTag)).append("\n");
    sb.append("    categoryModule: ").append(toIndentedString(categoryModule)).append("\n");
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
