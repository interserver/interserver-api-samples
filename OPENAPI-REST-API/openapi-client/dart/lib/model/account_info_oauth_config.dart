//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class AccountInfoOauthConfig {
  /// Returns a new [AccountInfoOauthConfig] instance.
  AccountInfoOauthConfig({
    required this.callback,
    required this.providers,
  });

  String callback;

  AccountInfoOauthConfigProviders providers;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccountInfoOauthConfig &&
    other.callback == callback &&
    other.providers == providers;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (callback.hashCode) +
    (providers.hashCode);

  @override
  String toString() => 'AccountInfoOauthConfig[callback=$callback, providers=$providers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'callback'] = this.callback;
      json[r'providers'] = this.providers;
    return json;
  }

  /// Returns a new [AccountInfoOauthConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccountInfoOauthConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'callback'), 'Required key "AccountInfoOauthConfig[callback]" is missing from JSON.');
        assert(json[r'callback'] != null, 'Required key "AccountInfoOauthConfig[callback]" has a null value in JSON.');
        assert(json.containsKey(r'providers'), 'Required key "AccountInfoOauthConfig[providers]" is missing from JSON.');
        assert(json[r'providers'] != null, 'Required key "AccountInfoOauthConfig[providers]" has a null value in JSON.');
        return true;
      }());

      return AccountInfoOauthConfig(
        callback: mapValueOfType<String>(json, r'callback')!,
        providers: AccountInfoOauthConfigProviders.fromJson(json[r'providers'])!,
      );
    }
    return null;
  }

  static List<AccountInfoOauthConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AccountInfoOauthConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccountInfoOauthConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AccountInfoOauthConfig> mapFromJson(dynamic json) {
    final map = <String, AccountInfoOauthConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AccountInfoOauthConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AccountInfoOauthConfig-objects as value to a dart map
  static Map<String, List<AccountInfoOauthConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AccountInfoOauthConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AccountInfoOauthConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'callback',
    'providers',
  };
}

