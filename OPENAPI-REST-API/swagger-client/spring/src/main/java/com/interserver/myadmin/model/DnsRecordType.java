package com.interserver.myadmin.model;

import java.util.Objects;
import io.swagger.v3.oas.annotations.media.Schema;
import com.fasterxml.jackson.annotation.JsonValue;
import org.springframework.validation.annotation.Validated;
import org.openapitools.jackson.nullable.JsonNullable;
import io.swagger.configuration.NotUndefined;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.Nulls;
import javax.validation.Valid;
import javax.validation.constraints.*;

import com.fasterxml.jackson.annotation.JsonCreator;

/**
 * Type of DNS Record
 */
public enum DnsRecordType {
  A("A"),
    A6("A6"),
    AAAA("AAAA"),
    AFSDB("AFSDB"),
    ALIAS("ALIAS"),
    CAA("CAA"),
    CDNSKEY("CDNSKEY"),
    CDS("CDS"),
    CERT("CERT"),
    CNAME("CNAME"),
    DHCID("DHCID"),
    DLV("DLV"),
    DNSKEY("DNSKEY"),
    DNAME("DNAME"),
    DS("DS"),
    EUI48("EUI48"),
    EUI64("EUI64"),
    HINFO("HINFO"),
    IPSECKEY("IPSECKEY"),
    KEY("KEY"),
    KX("KX"),
    LOC("LOC"),
    MAILA("MAILA"),
    MAILB("MAILB"),
    MINFO("MINFO"),
    MR("MR"),
    MX("MX"),
    NAPTR("NAPTR"),
    NS("NS"),
    NSEC("NSEC"),
    NSEC3("NSEC3"),
    NSEC3PARAM("NSEC3PARAM"),
    OPENPGPKEY("OPENPGPKEY"),
    OPT("OPT"),
    PTR("PTR"),
    RKEY("RKEY"),
    RP("RP"),
    RRSIG("RRSIG"),
    SIG("SIG"),
    SOA("SOA"),
    SPF("SPF"),
    SRV("SRV"),
    SSHFP("SSHFP"),
    TLSA("TLSA"),
    TKEY("TKEY"),
    TSIG("TSIG"),
    TXT("TXT"),
    WKS("WKS"),
    URI_("URI⏎");

  private String value;

  DnsRecordType(String value) {
    this.value = value;
  }

  @Override
  @JsonValue
  public String toString() {
    return String.valueOf(value);
  }

  @JsonCreator
  public static DnsRecordType fromValue(String text) {
    for (DnsRecordType b : DnsRecordType.values()) {
      if (String.valueOf(b.value).equals(text)) {
        return b;
      }
    }
    return null;
  }
}
