//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class HomeServicesWebhostingLinks {
  /// Returns a new [HomeServicesWebhostingLinks] instance.
  HomeServicesWebhostingLinks({
    this.n376359,
    this.n376473,
    this.n386218,
  });

  /// Link to a website.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? n376359;

  /// Link to a website.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? n376473;

  /// Link to a website.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? n386218;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HomeServicesWebhostingLinks &&
    other.n376359 == n376359 &&
    other.n376473 == n376473 &&
    other.n386218 == n386218;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (n376359 == null ? 0 : n376359!.hashCode) +
    (n376473 == null ? 0 : n376473!.hashCode) +
    (n386218 == null ? 0 : n386218!.hashCode);

  @override
  String toString() => 'HomeServicesWebhostingLinks[n376359=$n376359, n376473=$n376473, n386218=$n386218]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.n376359 != null) {
      json[r'376359'] = this.n376359;
    } else {
      json[r'376359'] = null;
    }
    if (this.n376473 != null) {
      json[r'376473'] = this.n376473;
    } else {
      json[r'376473'] = null;
    }
    if (this.n386218 != null) {
      json[r'386218'] = this.n386218;
    } else {
      json[r'386218'] = null;
    }
    return json;
  }

  /// Returns a new [HomeServicesWebhostingLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HomeServicesWebhostingLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return HomeServicesWebhostingLinks(
        n376359: mapValueOfType<String>(json, r'376359'),
        n376473: mapValueOfType<String>(json, r'376473'),
        n386218: mapValueOfType<String>(json, r'386218'),
      );
    }
    return null;
  }

  static List<HomeServicesWebhostingLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HomeServicesWebhostingLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HomeServicesWebhostingLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HomeServicesWebhostingLinks> mapFromJson(dynamic json) {
    final map = <String, HomeServicesWebhostingLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HomeServicesWebhostingLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HomeServicesWebhostingLinks-objects as value to a dart map
  static Map<String, List<HomeServicesWebhostingLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HomeServicesWebhostingLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HomeServicesWebhostingLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

