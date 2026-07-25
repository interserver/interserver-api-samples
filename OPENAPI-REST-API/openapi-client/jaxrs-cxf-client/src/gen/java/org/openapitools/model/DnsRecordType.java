package org.openapitools.model;



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
  
  NSEC3_PARAM("NSEC3PARAM"),
  
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
  
  URI_("URI⏎"),
  
  UNKNOWN_DEFAULT_OPEN_API("unknown_default_open_api");

  private String value;

  DnsRecordType(String value) {
    this.value = value;
  }

  @Override
  public String toString() {
    return String.valueOf(value);
  }

  public static DnsRecordType fromValue(String value) {
    for (DnsRecordType b : DnsRecordType.values()) {
      if (b.value.equals(value)) {
        return b;
      }
    }
    throw new IllegalArgumentException("Unexpected value '" + value + "'");
  }

}

