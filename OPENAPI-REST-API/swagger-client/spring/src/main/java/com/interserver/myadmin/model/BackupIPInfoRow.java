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
 * A single row in the backup IP information table.
 */
@Schema(description = "A single row in the backup IP information table.")
@Validated
@NotUndefined



public class BackupIPInfoRow   {
  @JsonProperty("desc")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String desc = null;

  @JsonProperty("value")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String value = null;


  public BackupIPInfoRow desc(String desc) { 

    this.desc = desc;
    return this;
  }

  /**
   * Description of the IP information.
   * @return desc
   **/
  
  @Schema(example = "Netmask", description = "Description of the IP information.")
  
  public String getDesc() {  
    return desc;
  }



  public void setDesc(String desc) { 
    this.desc = desc;
  }

  public BackupIPInfoRow value(String value) { 

    this.value = value;
    return this;
  }

  /**
   * Value of the IP information.
   * @return value
   **/
  
  @Schema(example = "255.255.255.248", description = "Value of the IP information.")
  
  public String getValue() {  
    return value;
  }



  public void setValue(String value) { 
    this.value = value;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    BackupIPInfoRow backupIPInfoRow = (BackupIPInfoRow) o;
    return Objects.equals(this.desc, backupIPInfoRow.desc) &&
        Objects.equals(this.value, backupIPInfoRow.value);
  }

  @Override
  public int hashCode() {
    return Objects.hash(desc, value);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class BackupIPInfoRow {\n");
    
    sb.append("    desc: ").append(toIndentedString(desc)).append("\n");
    sb.append("    value: ").append(toIndentedString(value)).append("\n");
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
