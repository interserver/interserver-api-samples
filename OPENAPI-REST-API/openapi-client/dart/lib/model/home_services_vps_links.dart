//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class HomeServicesVpsLinks {
  /// Returns a new [HomeServicesVpsLinks] instance.
  HomeServicesVpsLinks({
    this.n465503,
    this.n2500081,
    this.n2578866,
  });

  /// Link to a VPS.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? n465503;

  /// Link to a VPS.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? n2500081;

  /// Link to a VPS.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? n2578866;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HomeServicesVpsLinks &&
    other.n465503 == n465503 &&
    other.n2500081 == n2500081 &&
    other.n2578866 == n2578866;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (n465503 == null ? 0 : n465503!.hashCode) +
    (n2500081 == null ? 0 : n2500081!.hashCode) +
    (n2578866 == null ? 0 : n2578866!.hashCode);

  @override
  String toString() => 'HomeServicesVpsLinks[n465503=$n465503, n2500081=$n2500081, n2578866=$n2578866]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.n465503 != null) {
      json[r'465503'] = this.n465503;
    } else {
      json[r'465503'] = null;
    }
    if (this.n2500081 != null) {
      json[r'2500081'] = this.n2500081;
    } else {
      json[r'2500081'] = null;
    }
    if (this.n2578866 != null) {
      json[r'2578866'] = this.n2578866;
    } else {
      json[r'2578866'] = null;
    }
    return json;
  }

  /// Returns a new [HomeServicesVpsLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HomeServicesVpsLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return HomeServicesVpsLinks(
        n465503: mapValueOfType<String>(json, r'465503'),
        n2500081: mapValueOfType<String>(json, r'2500081'),
        n2578866: mapValueOfType<String>(json, r'2578866'),
      );
    }
    return null;
  }

  static List<HomeServicesVpsLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HomeServicesVpsLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HomeServicesVpsLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HomeServicesVpsLinks> mapFromJson(dynamic json) {
    final map = <String, HomeServicesVpsLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HomeServicesVpsLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HomeServicesVpsLinks-objects as value to a dart map
  static Map<String, List<HomeServicesVpsLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HomeServicesVpsLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HomeServicesVpsLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

