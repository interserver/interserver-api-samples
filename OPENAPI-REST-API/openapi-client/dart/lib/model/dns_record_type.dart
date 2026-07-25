//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

/// Type of DNS Record
enum DnsRecordType {
  A._(r'A'),
  A6._(r'A6'),
  AAAA._(r'AAAA'),
  AFSDB._(r'AFSDB'),
  ALIAS._(r'ALIAS'),
  CAA._(r'CAA'),
  CDNSKEY._(r'CDNSKEY'),
  CDS._(r'CDS'),
  CERT._(r'CERT'),
  CNAME._(r'CNAME'),
  DHCID._(r'DHCID'),
  DLV._(r'DLV'),
  DNSKEY._(r'DNSKEY'),
  DNAME._(r'DNAME'),
  DS._(r'DS'),
  EUI48._(r'EUI48'),
  EUI64._(r'EUI64'),
  HINFO._(r'HINFO'),
  IPSECKEY._(r'IPSECKEY'),
  KEY._(r'KEY'),
  KX._(r'KX'),
  LOC._(r'LOC'),
  MAILA._(r'MAILA'),
  MAILB._(r'MAILB'),
  MINFO._(r'MINFO'),
  MR._(r'MR'),
  MX._(r'MX'),
  NAPTR._(r'NAPTR'),
  NS._(r'NS'),
  NSEC._(r'NSEC'),
  NSEC3._(r'NSEC3'),
  NSEC3PARAM._(r'NSEC3PARAM'),
  OPENPGPKEY._(r'OPENPGPKEY'),
  OPT._(r'OPT'),
  PTR._(r'PTR'),
  RKEY._(r'RKEY'),
  RP._(r'RP'),
  RRSIG._(r'RRSIG'),
  SIG._(r'SIG'),
  SOA._(r'SOA'),
  SPF._(r'SPF'),
  SRV._(r'SRV'),
  SSHFP._(r'SSHFP'),
  TLSA._(r'TLSA'),
  TKEY._(r'TKEY'),
  TSIG._(r'TSIG'),
  TXT._(r'TXT'),
  WKS._(r'WKS'),
  uRI._(r'URI⏎'),
  unknownDefaultOpenApi._(r'unknown_default_open_api'),
  ;

  /// Instantiate a new enum with the provided value.
  const DnsRecordType._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [DnsRecordType] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static DnsRecordType? fromJson(dynamic value) => DnsRecordTypeTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [DnsRecordType]
  /// that were successfully decoded from the passed [JSON][json].
  static List<DnsRecordType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DnsRecordType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DnsRecordType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DnsRecordType] to String,
/// and [decode] dynamic data back to [DnsRecordType].
class DnsRecordTypeTypeTransformer {
  factory DnsRecordTypeTypeTransformer() => _instance ??= const DnsRecordTypeTypeTransformer._();

  const DnsRecordTypeTypeTransformer._();

  /// Encodes this enum as a value suitable for JSON.
  String encode(DnsRecordType data) => data._value;

  /// Returns the instance of [DnsRecordType] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DnsRecordType? decode(dynamic data, {bool allowNull = true}) {
    if (data is DnsRecordType) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'A': return DnsRecordType.A;
        case r'A6': return DnsRecordType.A6;
        case r'AAAA': return DnsRecordType.AAAA;
        case r'AFSDB': return DnsRecordType.AFSDB;
        case r'ALIAS': return DnsRecordType.ALIAS;
        case r'CAA': return DnsRecordType.CAA;
        case r'CDNSKEY': return DnsRecordType.CDNSKEY;
        case r'CDS': return DnsRecordType.CDS;
        case r'CERT': return DnsRecordType.CERT;
        case r'CNAME': return DnsRecordType.CNAME;
        case r'DHCID': return DnsRecordType.DHCID;
        case r'DLV': return DnsRecordType.DLV;
        case r'DNSKEY': return DnsRecordType.DNSKEY;
        case r'DNAME': return DnsRecordType.DNAME;
        case r'DS': return DnsRecordType.DS;
        case r'EUI48': return DnsRecordType.EUI48;
        case r'EUI64': return DnsRecordType.EUI64;
        case r'HINFO': return DnsRecordType.HINFO;
        case r'IPSECKEY': return DnsRecordType.IPSECKEY;
        case r'KEY': return DnsRecordType.KEY;
        case r'KX': return DnsRecordType.KX;
        case r'LOC': return DnsRecordType.LOC;
        case r'MAILA': return DnsRecordType.MAILA;
        case r'MAILB': return DnsRecordType.MAILB;
        case r'MINFO': return DnsRecordType.MINFO;
        case r'MR': return DnsRecordType.MR;
        case r'MX': return DnsRecordType.MX;
        case r'NAPTR': return DnsRecordType.NAPTR;
        case r'NS': return DnsRecordType.NS;
        case r'NSEC': return DnsRecordType.NSEC;
        case r'NSEC3': return DnsRecordType.NSEC3;
        case r'NSEC3PARAM': return DnsRecordType.NSEC3PARAM;
        case r'OPENPGPKEY': return DnsRecordType.OPENPGPKEY;
        case r'OPT': return DnsRecordType.OPT;
        case r'PTR': return DnsRecordType.PTR;
        case r'RKEY': return DnsRecordType.RKEY;
        case r'RP': return DnsRecordType.RP;
        case r'RRSIG': return DnsRecordType.RRSIG;
        case r'SIG': return DnsRecordType.SIG;
        case r'SOA': return DnsRecordType.SOA;
        case r'SPF': return DnsRecordType.SPF;
        case r'SRV': return DnsRecordType.SRV;
        case r'SSHFP': return DnsRecordType.SSHFP;
        case r'TLSA': return DnsRecordType.TLSA;
        case r'TKEY': return DnsRecordType.TKEY;
        case r'TSIG': return DnsRecordType.TSIG;
        case r'TXT': return DnsRecordType.TXT;
        case r'WKS': return DnsRecordType.WKS;
        case r'URI⏎': return DnsRecordType.uRI;
        case r'unknown_default_open_api': return DnsRecordType.unknownDefaultOpenApi;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static DnsRecordTypeTypeTransformer? _instance;
}

