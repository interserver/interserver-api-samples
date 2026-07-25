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
 * DomainDnssecRecordsInner
 */
@Validated
@NotUndefined



public class DomainDnssecRecordsInner   {
  @JsonProperty("algorithm")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String algorithm = null;

  @JsonProperty("digest_type")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String digestType = null;

  @JsonProperty("digest")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String digest = null;

  @JsonProperty("key_tag")

  @JsonInclude(JsonInclude.Include.NON_ABSENT)  // Exclude from JSON if absent
  @JsonSetter(nulls = Nulls.FAIL)    // FAIL setting if the value is null
  private String keyTag = null;


  public DomainDnssecRecordsInner algorithm(String algorithm) { 

    this.algorithm = algorithm;
    return this;
  }

  /**
   * Get algorithm
   * @return algorithm
   **/
  
  @Schema(description = "")
  
  public String getAlgorithm() {  
    return algorithm;
  }



  public void setAlgorithm(String algorithm) { 
    this.algorithm = algorithm;
  }

  public DomainDnssecRecordsInner digestType(String digestType) { 

    this.digestType = digestType;
    return this;
  }

  /**
   * Get digestType
   * @return digestType
   **/
  
  @Schema(description = "")
  
  public String getDigestType() {  
    return digestType;
  }



  public void setDigestType(String digestType) { 
    this.digestType = digestType;
  }

  public DomainDnssecRecordsInner digest(String digest) { 

    this.digest = digest;
    return this;
  }

  /**
   * Get digest
   * @return digest
   **/
  
  @Schema(description = "")
  
  public String getDigest() {  
    return digest;
  }



  public void setDigest(String digest) { 
    this.digest = digest;
  }

  public DomainDnssecRecordsInner keyTag(String keyTag) { 

    this.keyTag = keyTag;
    return this;
  }

  /**
   * Get keyTag
   * @return keyTag
   **/
  
  @Schema(description = "")
  
  public String getKeyTag() {  
    return keyTag;
  }



  public void setKeyTag(String keyTag) { 
    this.keyTag = keyTag;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    DomainDnssecRecordsInner domainDnssecRecordsInner = (DomainDnssecRecordsInner) o;
    return Objects.equals(this.algorithm, domainDnssecRecordsInner.algorithm) &&
        Objects.equals(this.digestType, domainDnssecRecordsInner.digestType) &&
        Objects.equals(this.digest, domainDnssecRecordsInner.digest) &&
        Objects.equals(this.keyTag, domainDnssecRecordsInner.keyTag);
  }

  @Override
  public int hashCode() {
    return Objects.hash(algorithm, digestType, digest, keyTag);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DomainDnssecRecordsInner {\n");
    
    sb.append("    algorithm: ").append(toIndentedString(algorithm)).append("\n");
    sb.append("    digestType: ").append(toIndentedString(digestType)).append("\n");
    sb.append("    digest: ").append(toIndentedString(digest)).append("\n");
    sb.append("    keyTag: ").append(toIndentedString(keyTag)).append("\n");
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
