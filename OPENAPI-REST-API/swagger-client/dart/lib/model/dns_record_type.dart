part of swagger.api;

class DnsRecordType {
  /// The underlying value of this enum member.
  String value;

  DnsRecordType._internal(this.value);

  /// Type of DNS Record
  static DnsRecordType a_ = DnsRecordType._internal("A");
  /// Type of DNS Record
  static DnsRecordType a6_ = DnsRecordType._internal("A6");
  /// Type of DNS Record
  static DnsRecordType aAAA_ = DnsRecordType._internal("AAAA");
  /// Type of DNS Record
  static DnsRecordType aFSDB_ = DnsRecordType._internal("AFSDB");
  /// Type of DNS Record
  static DnsRecordType aLIAS_ = DnsRecordType._internal("ALIAS");
  /// Type of DNS Record
  static DnsRecordType cAA_ = DnsRecordType._internal("CAA");
  /// Type of DNS Record
  static DnsRecordType cDNSKEY_ = DnsRecordType._internal("CDNSKEY");
  /// Type of DNS Record
  static DnsRecordType cDS_ = DnsRecordType._internal("CDS");
  /// Type of DNS Record
  static DnsRecordType cERT_ = DnsRecordType._internal("CERT");
  /// Type of DNS Record
  static DnsRecordType cNAME_ = DnsRecordType._internal("CNAME");
  /// Type of DNS Record
  static DnsRecordType dHCID_ = DnsRecordType._internal("DHCID");
  /// Type of DNS Record
  static DnsRecordType dLV_ = DnsRecordType._internal("DLV");
  /// Type of DNS Record
  static DnsRecordType dNSKEY_ = DnsRecordType._internal("DNSKEY");
  /// Type of DNS Record
  static DnsRecordType dNAME_ = DnsRecordType._internal("DNAME");
  /// Type of DNS Record
  static DnsRecordType dS_ = DnsRecordType._internal("DS");
  /// Type of DNS Record
  static DnsRecordType eUI48_ = DnsRecordType._internal("EUI48");
  /// Type of DNS Record
  static DnsRecordType eUI64_ = DnsRecordType._internal("EUI64");
  /// Type of DNS Record
  static DnsRecordType hINFO_ = DnsRecordType._internal("HINFO");
  /// Type of DNS Record
  static DnsRecordType iPSECKEY_ = DnsRecordType._internal("IPSECKEY");
  /// Type of DNS Record
  static DnsRecordType kEY_ = DnsRecordType._internal("KEY");
  /// Type of DNS Record
  static DnsRecordType kX_ = DnsRecordType._internal("KX");
  /// Type of DNS Record
  static DnsRecordType lOC_ = DnsRecordType._internal("LOC");
  /// Type of DNS Record
  static DnsRecordType mAILA_ = DnsRecordType._internal("MAILA");
  /// Type of DNS Record
  static DnsRecordType mAILB_ = DnsRecordType._internal("MAILB");
  /// Type of DNS Record
  static DnsRecordType mINFO_ = DnsRecordType._internal("MINFO");
  /// Type of DNS Record
  static DnsRecordType mR_ = DnsRecordType._internal("MR");
  /// Type of DNS Record
  static DnsRecordType mX_ = DnsRecordType._internal("MX");
  /// Type of DNS Record
  static DnsRecordType nAPTR_ = DnsRecordType._internal("NAPTR");
  /// Type of DNS Record
  static DnsRecordType nS_ = DnsRecordType._internal("NS");
  /// Type of DNS Record
  static DnsRecordType nSEC_ = DnsRecordType._internal("NSEC");
  /// Type of DNS Record
  static DnsRecordType nSEC3_ = DnsRecordType._internal("NSEC3");
  /// Type of DNS Record
  static DnsRecordType nSEC3PARAM_ = DnsRecordType._internal("NSEC3PARAM");
  /// Type of DNS Record
  static DnsRecordType oPENPGPKEY_ = DnsRecordType._internal("OPENPGPKEY");
  /// Type of DNS Record
  static DnsRecordType oPT_ = DnsRecordType._internal("OPT");
  /// Type of DNS Record
  static DnsRecordType pTR_ = DnsRecordType._internal("PTR");
  /// Type of DNS Record
  static DnsRecordType rKEY_ = DnsRecordType._internal("RKEY");
  /// Type of DNS Record
  static DnsRecordType rP_ = DnsRecordType._internal("RP");
  /// Type of DNS Record
  static DnsRecordType rRSIG_ = DnsRecordType._internal("RRSIG");
  /// Type of DNS Record
  static DnsRecordType sIG_ = DnsRecordType._internal("SIG");
  /// Type of DNS Record
  static DnsRecordType sOA_ = DnsRecordType._internal("SOA");
  /// Type of DNS Record
  static DnsRecordType sPF_ = DnsRecordType._internal("SPF");
  /// Type of DNS Record
  static DnsRecordType sRV_ = DnsRecordType._internal("SRV");
  /// Type of DNS Record
  static DnsRecordType sSHFP_ = DnsRecordType._internal("SSHFP");
  /// Type of DNS Record
  static DnsRecordType tLSA_ = DnsRecordType._internal("TLSA");
  /// Type of DNS Record
  static DnsRecordType tKEY_ = DnsRecordType._internal("TKEY");
  /// Type of DNS Record
  static DnsRecordType tSIG_ = DnsRecordType._internal("TSIG");
  /// Type of DNS Record
  static DnsRecordType tXT_ = DnsRecordType._internal("TXT");
  /// Type of DNS Record
  static DnsRecordType wKS_ = DnsRecordType._internal("WKS");
  /// Type of DNS Record
  static DnsRecordType uRI__ = DnsRecordType._internal("URI⏎");

  DnsRecordType.fromJson(dynamic data) {
    switch (data) {
          case "A": value = data; break;
          case "A6": value = data; break;
          case "AAAA": value = data; break;
          case "AFSDB": value = data; break;
          case "ALIAS": value = data; break;
          case "CAA": value = data; break;
          case "CDNSKEY": value = data; break;
          case "CDS": value = data; break;
          case "CERT": value = data; break;
          case "CNAME": value = data; break;
          case "DHCID": value = data; break;
          case "DLV": value = data; break;
          case "DNSKEY": value = data; break;
          case "DNAME": value = data; break;
          case "DS": value = data; break;
          case "EUI48": value = data; break;
          case "EUI64": value = data; break;
          case "HINFO": value = data; break;
          case "IPSECKEY": value = data; break;
          case "KEY": value = data; break;
          case "KX": value = data; break;
          case "LOC": value = data; break;
          case "MAILA": value = data; break;
          case "MAILB": value = data; break;
          case "MINFO": value = data; break;
          case "MR": value = data; break;
          case "MX": value = data; break;
          case "NAPTR": value = data; break;
          case "NS": value = data; break;
          case "NSEC": value = data; break;
          case "NSEC3": value = data; break;
          case "NSEC3PARAM": value = data; break;
          case "OPENPGPKEY": value = data; break;
          case "OPT": value = data; break;
          case "PTR": value = data; break;
          case "RKEY": value = data; break;
          case "RP": value = data; break;
          case "RRSIG": value = data; break;
          case "SIG": value = data; break;
          case "SOA": value = data; break;
          case "SPF": value = data; break;
          case "SRV": value = data; break;
          case "SSHFP": value = data; break;
          case "TLSA": value = data; break;
          case "TKEY": value = data; break;
          case "TSIG": value = data; break;
          case "TXT": value = data; break;
          case "WKS": value = data; break;
          case "URI⏎": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(DnsRecordType data) {
    return data.value;
  }
}