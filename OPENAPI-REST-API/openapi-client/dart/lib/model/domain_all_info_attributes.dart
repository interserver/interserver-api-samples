//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class DomainAllInfoAttributes {
  /// Returns a new [DomainAllInfoAttributes] instance.
  DomainAllInfoAttributes({
    this.contactSet,
    this.registryCreatedate,
    this.registryExpiredate,
    this.tldData,
    this.letExpire,
    this.autoRenew,
    this.sponsoringRsp,
    this.gdprConsentStatus,
    this.nameserverList = const [],
    this.registryUpdatedate,
    this.affiliateId,
    this.expiredate,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DomainAllInfoAttributesContactSet? contactSet;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? registryCreatedate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? registryExpiredate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tldData;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? letExpire;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? autoRenew;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sponsoringRsp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gdprConsentStatus;

  List<DomainNameServer> nameserverList;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? registryUpdatedate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? affiliateId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? expiredate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainAllInfoAttributes &&
    other.contactSet == contactSet &&
    other.registryCreatedate == registryCreatedate &&
    other.registryExpiredate == registryExpiredate &&
    other.tldData == tldData &&
    other.letExpire == letExpire &&
    other.autoRenew == autoRenew &&
    other.sponsoringRsp == sponsoringRsp &&
    other.gdprConsentStatus == gdprConsentStatus &&
    _deepEquality.equals(other.nameserverList, nameserverList) &&
    other.registryUpdatedate == registryUpdatedate &&
    other.affiliateId == affiliateId &&
    other.expiredate == expiredate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (contactSet == null ? 0 : contactSet!.hashCode) +
    (registryCreatedate == null ? 0 : registryCreatedate!.hashCode) +
    (registryExpiredate == null ? 0 : registryExpiredate!.hashCode) +
    (tldData == null ? 0 : tldData!.hashCode) +
    (letExpire == null ? 0 : letExpire!.hashCode) +
    (autoRenew == null ? 0 : autoRenew!.hashCode) +
    (sponsoringRsp == null ? 0 : sponsoringRsp!.hashCode) +
    (gdprConsentStatus == null ? 0 : gdprConsentStatus!.hashCode) +
    (nameserverList.hashCode) +
    (registryUpdatedate == null ? 0 : registryUpdatedate!.hashCode) +
    (affiliateId == null ? 0 : affiliateId!.hashCode) +
    (expiredate == null ? 0 : expiredate!.hashCode);

  @override
  String toString() => 'DomainAllInfoAttributes[contactSet=$contactSet, registryCreatedate=$registryCreatedate, registryExpiredate=$registryExpiredate, tldData=$tldData, letExpire=$letExpire, autoRenew=$autoRenew, sponsoringRsp=$sponsoringRsp, gdprConsentStatus=$gdprConsentStatus, nameserverList=$nameserverList, registryUpdatedate=$registryUpdatedate, affiliateId=$affiliateId, expiredate=$expiredate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.contactSet != null) {
      json[r'contact_set'] = this.contactSet;
    } else {
      json[r'contact_set'] = null;
    }
    if (this.registryCreatedate != null) {
      json[r'registry_createdate'] = this.registryCreatedate;
    } else {
      json[r'registry_createdate'] = null;
    }
    if (this.registryExpiredate != null) {
      json[r'registry_expiredate'] = this.registryExpiredate;
    } else {
      json[r'registry_expiredate'] = null;
    }
    if (this.tldData != null) {
      json[r'tld_data'] = this.tldData;
    } else {
      json[r'tld_data'] = null;
    }
    if (this.letExpire != null) {
      json[r'let_expire'] = this.letExpire;
    } else {
      json[r'let_expire'] = null;
    }
    if (this.autoRenew != null) {
      json[r'auto_renew'] = this.autoRenew;
    } else {
      json[r'auto_renew'] = null;
    }
    if (this.sponsoringRsp != null) {
      json[r'sponsoring_rsp'] = this.sponsoringRsp;
    } else {
      json[r'sponsoring_rsp'] = null;
    }
    if (this.gdprConsentStatus != null) {
      json[r'gdpr_consent_status'] = this.gdprConsentStatus;
    } else {
      json[r'gdpr_consent_status'] = null;
    }
      json[r'nameserver_list'] = this.nameserverList;
    if (this.registryUpdatedate != null) {
      json[r'registry_updatedate'] = this.registryUpdatedate;
    } else {
      json[r'registry_updatedate'] = null;
    }
    if (this.affiliateId != null) {
      json[r'affiliate_id'] = this.affiliateId;
    } else {
      json[r'affiliate_id'] = null;
    }
    if (this.expiredate != null) {
      json[r'expiredate'] = this.expiredate;
    } else {
      json[r'expiredate'] = null;
    }
    return json;
  }

  /// Returns a new [DomainAllInfoAttributes] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainAllInfoAttributes? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return DomainAllInfoAttributes(
        contactSet: DomainAllInfoAttributesContactSet.fromJson(json[r'contact_set']),
        registryCreatedate: mapValueOfType<String>(json, r'registry_createdate'),
        registryExpiredate: mapValueOfType<String>(json, r'registry_expiredate'),
        tldData: mapValueOfType<String>(json, r'tld_data'),
        letExpire: mapValueOfType<String>(json, r'let_expire'),
        autoRenew: mapValueOfType<String>(json, r'auto_renew'),
        sponsoringRsp: mapValueOfType<String>(json, r'sponsoring_rsp'),
        gdprConsentStatus: mapValueOfType<String>(json, r'gdpr_consent_status'),
        nameserverList: DomainNameServer.listFromJson(json[r'nameserver_list']),
        registryUpdatedate: mapValueOfType<String>(json, r'registry_updatedate'),
        affiliateId: mapValueOfType<String>(json, r'affiliate_id'),
        expiredate: mapValueOfType<String>(json, r'expiredate'),
      );
    }
    return null;
  }

  static List<DomainAllInfoAttributes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainAllInfoAttributes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainAllInfoAttributes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainAllInfoAttributes> mapFromJson(dynamic json) {
    final map = <String, DomainAllInfoAttributes>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainAllInfoAttributes.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainAllInfoAttributes-objects as value to a dart map
  static Map<String, List<DomainAllInfoAttributes>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainAllInfoAttributes>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainAllInfoAttributes.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

