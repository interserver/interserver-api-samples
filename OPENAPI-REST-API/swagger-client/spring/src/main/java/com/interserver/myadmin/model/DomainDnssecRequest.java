package com.interserver.myadmin.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
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
 * Request payload for adding DNSSEC DS records to a domain.
 */
@Schema(description = "Request payload for adding DNSSEC DS records to a domain.")
@Validated
@NotUndefined



public class DomainDnssecRequest   {
  @JsonProperty("algorithm")
  @Valid
  private List<Integer> algorithm = null;
  @JsonProperty("digest_type")
  @Valid
  private List<Integer> digestType = null;
  @JsonProperty("digest")
  @Valid
  private List<String> digest = null;
  @JsonProperty("key_tag")
  @Valid
  private List<Integer> keyTag = null;

  public DomainDnssecRequest algorithm(List<Integer> algorithm) { 

    this.algorithm = algorithm;
    return this;
  }

  public DomainDnssecRequest addAlgorithmItem(Integer algorithmItem) {
    if (this.algorithm == null) {
      this.algorithm = new ArrayList<>();
    }
    this.algorithm.add(algorithmItem);
    return this;
  }

  /**
   * List of DNSSEC algorithm IDs for each record.
   * @return algorithm
   **/
  
  @Schema(description = "List of DNSSEC algorithm IDs for each record.")
  
  public List<Integer> getAlgorithm() {  
    return algorithm;
  }



  public void setAlgorithm(List<Integer> algorithm) { 
    this.algorithm = algorithm;
  }

  public DomainDnssecRequest digestType(List<Integer> digestType) { 

    this.digestType = digestType;
    return this;
  }

  public DomainDnssecRequest addDigestTypeItem(Integer digestTypeItem) {
    if (this.digestType == null) {
      this.digestType = new ArrayList<>();
    }
    this.digestType.add(digestTypeItem);
    return this;
  }

  /**
   * List of digest type IDs for each record.
   * @return digestType
   **/
  
  @Schema(description = "List of digest type IDs for each record.")
  
  public List<Integer> getDigestType() {  
    return digestType;
  }



  public void setDigestType(List<Integer> digestType) { 
    this.digestType = digestType;
  }

  public DomainDnssecRequest digest(List<String> digest) { 

    this.digest = digest;
    return this;
  }

  public DomainDnssecRequest addDigestItem(String digestItem) {
    if (this.digest == null) {
      this.digest = new ArrayList<>();
    }
    this.digest.add(digestItem);
    return this;
  }

  /**
   * List of hex digests for each record.
   * @return digest
   **/
  
  @Schema(description = "List of hex digests for each record.")
  
  public List<String> getDigest() {  
    return digest;
  }



  public void setDigest(List<String> digest) { 
    this.digest = digest;
  }

  public DomainDnssecRequest keyTag(List<Integer> keyTag) { 

    this.keyTag = keyTag;
    return this;
  }

  public DomainDnssecRequest addKeyTagItem(Integer keyTagItem) {
    if (this.keyTag == null) {
      this.keyTag = new ArrayList<>();
    }
    this.keyTag.add(keyTagItem);
    return this;
  }

  /**
   * List of key tag values corresponding to each record.
   * @return keyTag
   **/
  
  @Schema(description = "List of key tag values corresponding to each record.")
  
  public List<Integer> getKeyTag() {  
    return keyTag;
  }



  public void setKeyTag(List<Integer> keyTag) { 
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
    DomainDnssecRequest domainDnssecRequest = (DomainDnssecRequest) o;
    return Objects.equals(this.algorithm, domainDnssecRequest.algorithm) &&
        Objects.equals(this.digestType, domainDnssecRequest.digestType) &&
        Objects.equals(this.digest, domainDnssecRequest.digest) &&
        Objects.equals(this.keyTag, domainDnssecRequest.keyTag);
  }

  @Override
  public int hashCode() {
    return Objects.hash(algorithm, digestType, digest, keyTag);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DomainDnssecRequest {\n");
    
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
