//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class QuickserverExtraInfoTables {
  /// Returns a new [QuickserverExtraInfoTables] instance.
  QuickserverExtraInfoTables({
    this.ipInfo,
    this.addons,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  QuickserverIpInfo? ipInfo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  QuickserverAddons? addons;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QuickserverExtraInfoTables &&
    other.ipInfo == ipInfo &&
    other.addons == addons;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ipInfo == null ? 0 : ipInfo!.hashCode) +
    (addons == null ? 0 : addons!.hashCode);

  @override
  String toString() => 'QuickserverExtraInfoTables[ipInfo=$ipInfo, addons=$addons]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ipInfo != null) {
      json[r'ip_info'] = this.ipInfo;
    } else {
      json[r'ip_info'] = null;
    }
    if (this.addons != null) {
      json[r'addons'] = this.addons;
    } else {
      json[r'addons'] = null;
    }
    return json;
  }

  /// Returns a new [QuickserverExtraInfoTables] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QuickserverExtraInfoTables? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return QuickserverExtraInfoTables(
        ipInfo: QuickserverIpInfo.fromJson(json[r'ip_info']),
        addons: QuickserverAddons.fromJson(json[r'addons']),
      );
    }
    return null;
  }

  static List<QuickserverExtraInfoTables> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QuickserverExtraInfoTables>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QuickserverExtraInfoTables.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QuickserverExtraInfoTables> mapFromJson(dynamic json) {
    final map = <String, QuickserverExtraInfoTables>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QuickserverExtraInfoTables.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QuickserverExtraInfoTables-objects as value to a dart map
  static Map<String, List<QuickserverExtraInfoTables>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QuickserverExtraInfoTables>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QuickserverExtraInfoTables.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

