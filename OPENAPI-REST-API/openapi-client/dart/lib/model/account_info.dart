//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class AccountInfo {
  /// Returns a new [AccountInfo] instance.
  AccountInfo({
    this.custid,
    this.ima,
    this.data,
    this.ip,
    this.oauthproviders,
    this.oauthconfig,
    this.oauthadapters = const [],
    this.limits,
    this.language,
    this.countryCurrencies,
    this.enableLocales,
    this.enableCurrencies,
    this.gravatar,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? custid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ima;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AccountInfoData? data;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ip;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AccountInfoOauthproviders? oauthproviders;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AccountInfoOauthConfig? oauthconfig;

  List<String> oauthadapters;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AccountInfoLimits? limits;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? language;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AccountInfoCountryCurrencies? countryCurrencies;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableLocales;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableCurrencies;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gravatar;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccountInfo &&
    other.custid == custid &&
    other.ima == ima &&
    other.data == data &&
    other.ip == ip &&
    other.oauthproviders == oauthproviders &&
    other.oauthconfig == oauthconfig &&
    _deepEquality.equals(other.oauthadapters, oauthadapters) &&
    other.limits == limits &&
    other.language == language &&
    other.countryCurrencies == countryCurrencies &&
    other.enableLocales == enableLocales &&
    other.enableCurrencies == enableCurrencies &&
    other.gravatar == gravatar;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (custid == null ? 0 : custid!.hashCode) +
    (ima == null ? 0 : ima!.hashCode) +
    (data == null ? 0 : data!.hashCode) +
    (ip == null ? 0 : ip!.hashCode) +
    (oauthproviders == null ? 0 : oauthproviders!.hashCode) +
    (oauthconfig == null ? 0 : oauthconfig!.hashCode) +
    (oauthadapters.hashCode) +
    (limits == null ? 0 : limits!.hashCode) +
    (language == null ? 0 : language!.hashCode) +
    (countryCurrencies == null ? 0 : countryCurrencies!.hashCode) +
    (enableLocales == null ? 0 : enableLocales!.hashCode) +
    (enableCurrencies == null ? 0 : enableCurrencies!.hashCode) +
    (gravatar == null ? 0 : gravatar!.hashCode);

  @override
  String toString() => 'AccountInfo[custid=$custid, ima=$ima, data=$data, ip=$ip, oauthproviders=$oauthproviders, oauthconfig=$oauthconfig, oauthadapters=$oauthadapters, limits=$limits, language=$language, countryCurrencies=$countryCurrencies, enableLocales=$enableLocales, enableCurrencies=$enableCurrencies, gravatar=$gravatar]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.custid != null) {
      json[r'custid'] = this.custid;
    } else {
      json[r'custid'] = null;
    }
    if (this.ima != null) {
      json[r'ima'] = this.ima;
    } else {
      json[r'ima'] = null;
    }
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
    if (this.ip != null) {
      json[r'ip'] = this.ip;
    } else {
      json[r'ip'] = null;
    }
    if (this.oauthproviders != null) {
      json[r'oauthproviders'] = this.oauthproviders;
    } else {
      json[r'oauthproviders'] = null;
    }
    if (this.oauthconfig != null) {
      json[r'oauthconfig'] = this.oauthconfig;
    } else {
      json[r'oauthconfig'] = null;
    }
      json[r'oauthadapters'] = this.oauthadapters;
    if (this.limits != null) {
      json[r'limits'] = this.limits;
    } else {
      json[r'limits'] = null;
    }
    if (this.language != null) {
      json[r'language'] = this.language;
    } else {
      json[r'language'] = null;
    }
    if (this.countryCurrencies != null) {
      json[r'countryCurrencies'] = this.countryCurrencies;
    } else {
      json[r'countryCurrencies'] = null;
    }
    if (this.enableLocales != null) {
      json[r'enableLocales'] = this.enableLocales;
    } else {
      json[r'enableLocales'] = null;
    }
    if (this.enableCurrencies != null) {
      json[r'enableCurrencies'] = this.enableCurrencies;
    } else {
      json[r'enableCurrencies'] = null;
    }
    if (this.gravatar != null) {
      json[r'gravatar'] = this.gravatar;
    } else {
      json[r'gravatar'] = null;
    }
    return json;
  }

  /// Returns a new [AccountInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccountInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return AccountInfo(
        custid: mapValueOfType<String>(json, r'custid'),
        ima: mapValueOfType<String>(json, r'ima'),
        data: AccountInfoData.fromJson(json[r'data']),
        ip: mapValueOfType<String>(json, r'ip'),
        oauthproviders: AccountInfoOauthproviders.fromJson(json[r'oauthproviders']),
        oauthconfig: AccountInfoOauthConfig.fromJson(json[r'oauthconfig']),
        oauthadapters: json[r'oauthadapters'] is Iterable
            ? (json[r'oauthadapters'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        limits: AccountInfoLimits.fromJson(json[r'limits']),
        language: mapValueOfType<String>(json, r'language'),
        countryCurrencies: AccountInfoCountryCurrencies.fromJson(json[r'countryCurrencies']),
        enableLocales: mapValueOfType<bool>(json, r'enableLocales'),
        enableCurrencies: mapValueOfType<bool>(json, r'enableCurrencies'),
        gravatar: mapValueOfType<String>(json, r'gravatar'),
      );
    }
    return null;
  }

  static List<AccountInfo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AccountInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccountInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AccountInfo> mapFromJson(dynamic json) {
    final map = <String, AccountInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AccountInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AccountInfo-objects as value to a dart map
  static Map<String, List<AccountInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AccountInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AccountInfo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

