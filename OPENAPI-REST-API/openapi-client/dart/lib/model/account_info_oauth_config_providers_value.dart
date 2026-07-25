//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class AccountInfoOauthConfigProvidersValue {
  /// Returns a new [AccountInfoOauthConfigProvidersValue] instance.
  AccountInfoOauthConfigProvidersValue({
    this.enabled,
    this.linked,
    this.account,
    this.url,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? linked;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? account;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccountInfoOauthConfigProvidersValue &&
    other.enabled == enabled &&
    other.linked == linked &&
    other.account == account &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enabled == null ? 0 : enabled!.hashCode) +
    (linked == null ? 0 : linked!.hashCode) +
    (account == null ? 0 : account!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'AccountInfoOauthConfigProvidersValue[enabled=$enabled, linked=$linked, account=$account, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    if (this.linked != null) {
      json[r'linked'] = this.linked;
    } else {
      json[r'linked'] = null;
    }
    if (this.account != null) {
      json[r'account'] = this.account;
    } else {
      json[r'account'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [AccountInfoOauthConfigProvidersValue] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccountInfoOauthConfigProvidersValue? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return AccountInfoOauthConfigProvidersValue(
        enabled: mapValueOfType<bool>(json, r'enabled'),
        linked: mapValueOfType<bool>(json, r'linked'),
        account: mapValueOfType<String>(json, r'account'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<AccountInfoOauthConfigProvidersValue> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AccountInfoOauthConfigProvidersValue>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccountInfoOauthConfigProvidersValue.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AccountInfoOauthConfigProvidersValue> mapFromJson(dynamic json) {
    final map = <String, AccountInfoOauthConfigProvidersValue>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AccountInfoOauthConfigProvidersValue.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AccountInfoOauthConfigProvidersValue-objects as value to a dart map
  static Map<String, List<AccountInfoOauthConfigProvidersValue>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AccountInfoOauthConfigProvidersValue>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AccountInfoOauthConfigProvidersValue.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

