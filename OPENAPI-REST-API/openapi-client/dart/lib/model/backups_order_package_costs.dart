//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class BackupsOrderPackageCosts {
  /// Returns a new [BackupsOrderPackageCosts] instance.
  BackupsOrderPackageCosts({
    required this.n11006,
  });

  /// The cost associated with package 11006.
  int n11006;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BackupsOrderPackageCosts &&
    other.n11006 == n11006;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (n11006.hashCode);

  @override
  String toString() => 'BackupsOrderPackageCosts[n11006=$n11006]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'11006'] = this.n11006;
    return json;
  }

  /// Returns a new [BackupsOrderPackageCosts] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BackupsOrderPackageCosts? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'11006'), 'Required key "BackupsOrderPackageCosts[11006]" is missing from JSON.');
        assert(json[r'11006'] != null, 'Required key "BackupsOrderPackageCosts[11006]" has a null value in JSON.');
        return true;
      }());

      return BackupsOrderPackageCosts(
        n11006: mapValueOfType<int>(json, r'11006')!,
      );
    }
    return null;
  }

  static List<BackupsOrderPackageCosts> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BackupsOrderPackageCosts>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BackupsOrderPackageCosts.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BackupsOrderPackageCosts> mapFromJson(dynamic json) {
    final map = <String, BackupsOrderPackageCosts>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BackupsOrderPackageCosts.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BackupsOrderPackageCosts-objects as value to a dart map
  static Map<String, List<BackupsOrderPackageCosts>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BackupsOrderPackageCosts>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BackupsOrderPackageCosts.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    '11006',
  };
}

