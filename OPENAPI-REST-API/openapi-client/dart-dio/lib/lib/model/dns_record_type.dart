//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// Type of DNS Record
enum DnsRecordType {
          /// Type of DNS Record
      @JsonValue(r'A')
      A(r'A'),
          /// Type of DNS Record
      @JsonValue(r'A6')
      A6(r'A6'),
          /// Type of DNS Record
      @JsonValue(r'AAAA')
      AAAA(r'AAAA'),
          /// Type of DNS Record
      @JsonValue(r'AFSDB')
      AFSDB(r'AFSDB'),
          /// Type of DNS Record
      @JsonValue(r'ALIAS')
      ALIAS(r'ALIAS'),
          /// Type of DNS Record
      @JsonValue(r'CAA')
      CAA(r'CAA'),
          /// Type of DNS Record
      @JsonValue(r'CDNSKEY')
      CDNSKEY(r'CDNSKEY'),
          /// Type of DNS Record
      @JsonValue(r'CDS')
      CDS(r'CDS'),
          /// Type of DNS Record
      @JsonValue(r'CERT')
      CERT(r'CERT'),
          /// Type of DNS Record
      @JsonValue(r'CNAME')
      CNAME(r'CNAME'),
          /// Type of DNS Record
      @JsonValue(r'DHCID')
      DHCID(r'DHCID'),
          /// Type of DNS Record
      @JsonValue(r'DLV')
      DLV(r'DLV'),
          /// Type of DNS Record
      @JsonValue(r'DNSKEY')
      DNSKEY(r'DNSKEY'),
          /// Type of DNS Record
      @JsonValue(r'DNAME')
      DNAME(r'DNAME'),
          /// Type of DNS Record
      @JsonValue(r'DS')
      DS(r'DS'),
          /// Type of DNS Record
      @JsonValue(r'EUI48')
      EUI48(r'EUI48'),
          /// Type of DNS Record
      @JsonValue(r'EUI64')
      EUI64(r'EUI64'),
          /// Type of DNS Record
      @JsonValue(r'HINFO')
      HINFO(r'HINFO'),
          /// Type of DNS Record
      @JsonValue(r'IPSECKEY')
      IPSECKEY(r'IPSECKEY'),
          /// Type of DNS Record
      @JsonValue(r'KEY')
      KEY(r'KEY'),
          /// Type of DNS Record
      @JsonValue(r'KX')
      KX(r'KX'),
          /// Type of DNS Record
      @JsonValue(r'LOC')
      LOC(r'LOC'),
          /// Type of DNS Record
      @JsonValue(r'MAILA')
      MAILA(r'MAILA'),
          /// Type of DNS Record
      @JsonValue(r'MAILB')
      MAILB(r'MAILB'),
          /// Type of DNS Record
      @JsonValue(r'MINFO')
      MINFO(r'MINFO'),
          /// Type of DNS Record
      @JsonValue(r'MR')
      MR(r'MR'),
          /// Type of DNS Record
      @JsonValue(r'MX')
      MX(r'MX'),
          /// Type of DNS Record
      @JsonValue(r'NAPTR')
      NAPTR(r'NAPTR'),
          /// Type of DNS Record
      @JsonValue(r'NS')
      NS(r'NS'),
          /// Type of DNS Record
      @JsonValue(r'NSEC')
      NSEC(r'NSEC'),
          /// Type of DNS Record
      @JsonValue(r'NSEC3')
      NSEC3(r'NSEC3'),
          /// Type of DNS Record
      @JsonValue(r'NSEC3PARAM')
      NSEC3PARAM(r'NSEC3PARAM'),
          /// Type of DNS Record
      @JsonValue(r'OPENPGPKEY')
      OPENPGPKEY(r'OPENPGPKEY'),
          /// Type of DNS Record
      @JsonValue(r'OPT')
      OPT(r'OPT'),
          /// Type of DNS Record
      @JsonValue(r'PTR')
      PTR(r'PTR'),
          /// Type of DNS Record
      @JsonValue(r'RKEY')
      RKEY(r'RKEY'),
          /// Type of DNS Record
      @JsonValue(r'RP')
      RP(r'RP'),
          /// Type of DNS Record
      @JsonValue(r'RRSIG')
      RRSIG(r'RRSIG'),
          /// Type of DNS Record
      @JsonValue(r'SIG')
      SIG(r'SIG'),
          /// Type of DNS Record
      @JsonValue(r'SOA')
      SOA(r'SOA'),
          /// Type of DNS Record
      @JsonValue(r'SPF')
      SPF(r'SPF'),
          /// Type of DNS Record
      @JsonValue(r'SRV')
      SRV(r'SRV'),
          /// Type of DNS Record
      @JsonValue(r'SSHFP')
      SSHFP(r'SSHFP'),
          /// Type of DNS Record
      @JsonValue(r'TLSA')
      TLSA(r'TLSA'),
          /// Type of DNS Record
      @JsonValue(r'TKEY')
      TKEY(r'TKEY'),
          /// Type of DNS Record
      @JsonValue(r'TSIG')
      TSIG(r'TSIG'),
          /// Type of DNS Record
      @JsonValue(r'TXT')
      TXT(r'TXT'),
          /// Type of DNS Record
      @JsonValue(r'WKS')
      WKS(r'WKS'),
          /// Type of DNS Record
      @JsonValue(r'URI⏎')
      uRI(r'URI⏎'),
          /// Type of DNS Record
      @JsonValue(r'unknown_default_open_api')
      unknownDefaultOpenApi(r'unknown_default_open_api');

  const DnsRecordType(this.value);

  final String value;

  @override
  String toString() => value;
}
