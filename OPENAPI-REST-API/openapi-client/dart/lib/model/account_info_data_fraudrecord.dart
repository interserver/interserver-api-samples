//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class AccountInfoDataFraudrecord {
  /// Returns a new [AccountInfoDataFraudrecord] instance.
  AccountInfoDataFraudrecord({
    this.score,
    this.count,
    this.reliability,
    this.code,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? score;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? count;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reliability;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccountInfoDataFraudrecord &&
    other.score == score &&
    other.count == count &&
    other.reliability == reliability &&
    other.code == code;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (score == null ? 0 : score!.hashCode) +
    (count == null ? 0 : count!.hashCode) +
    (reliability == null ? 0 : reliability!.hashCode) +
    (code == null ? 0 : code!.hashCode);

  @override
  String toString() => 'AccountInfoDataFraudrecord[score=$score, count=$count, reliability=$reliability, code=$code]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.score != null) {
      json[r'score'] = this.score;
    } else {
      json[r'score'] = null;
    }
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    if (this.reliability != null) {
      json[r'reliability'] = this.reliability;
    } else {
      json[r'reliability'] = null;
    }
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
    return json;
  }

  /// Returns a new [AccountInfoDataFraudrecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccountInfoDataFraudrecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return AccountInfoDataFraudrecord(
        score: mapValueOfType<String>(json, r'score'),
        count: mapValueOfType<String>(json, r'count'),
        reliability: mapValueOfType<String>(json, r'reliability'),
        code: mapValueOfType<String>(json, r'code'),
      );
    }
    return null;
  }

  static List<AccountInfoDataFraudrecord> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AccountInfoDataFraudrecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccountInfoDataFraudrecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AccountInfoDataFraudrecord> mapFromJson(dynamic json) {
    final map = <String, AccountInfoDataFraudrecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AccountInfoDataFraudrecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AccountInfoDataFraudrecord-objects as value to a dart map
  static Map<String, List<AccountInfoDataFraudrecord>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AccountInfoDataFraudrecord>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AccountInfoDataFraudrecord.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

