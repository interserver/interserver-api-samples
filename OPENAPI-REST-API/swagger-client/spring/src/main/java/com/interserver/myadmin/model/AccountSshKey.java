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
 * SSH Keys
 */
@Schema(description = "SSH Keys")
@Validated
@NotUndefined



public class AccountSshKey   {
  @JsonProperty("ssh_key")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String sshKey = null;


  public AccountSshKey sshKey(String sshKey) { 

    this.sshKey = sshKey;
    return this;
  }

  /**
   * Get sshKey
   * @return sshKey
   **/
  
  @Schema(description = "")
  
  public String getSshKey() {  
    return sshKey;
  }



  public void setSshKey(String sshKey) { 
    this.sshKey = sshKey;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    AccountSshKey accountSshKey = (AccountSshKey) o;
    return Objects.equals(this.sshKey, accountSshKey.sshKey);
  }

  @Override
  public int hashCode() {
    return Objects.hash(sshKey);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AccountSshKey {\n");
    
    sb.append("    sshKey: ").append(toIndentedString(sshKey)).append("\n");
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
