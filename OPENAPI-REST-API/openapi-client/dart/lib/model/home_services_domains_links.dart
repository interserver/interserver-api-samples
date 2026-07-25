//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class HomeServicesDomainsLinks {
  /// Returns a new [HomeServicesDomainsLinks] instance.
  HomeServicesDomainsLinks({
    this.n376114,
    this.n376503,
    this.n592337,
  });

  /// Link to a domain.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? n376114;

  /// Link to a domain.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? n376503;

  /// Link to a domain.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? n592337;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HomeServicesDomainsLinks &&
    other.n376114 == n376114 &&
    other.n376503 == n376503 &&
    other.n592337 == n592337;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (n376114 == null ? 0 : n376114!.hashCode) +
    (n376503 == null ? 0 : n376503!.hashCode) +
    (n592337 == null ? 0 : n592337!.hashCode);

  @override
  String toString() => 'HomeServicesDomainsLinks[n376114=$n376114, n376503=$n376503, n592337=$n592337]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.n376114 != null) {
      json[r'376114'] = this.n376114;
    } else {
      json[r'376114'] = null;
    }
    if (this.n376503 != null) {
      json[r'376503'] = this.n376503;
    } else {
      json[r'376503'] = null;
    }
    if (this.n592337 != null) {
      json[r'592337'] = this.n592337;
    } else {
      json[r'592337'] = null;
    }
    return json;
  }

  /// Returns a new [HomeServicesDomainsLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HomeServicesDomainsLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return HomeServicesDomainsLinks(
        n376114: mapValueOfType<String>(json, r'376114'),
        n376503: mapValueOfType<String>(json, r'376503'),
        n592337: mapValueOfType<String>(json, r'592337'),
      );
    }
    return null;
  }

  static List<HomeServicesDomainsLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HomeServicesDomainsLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HomeServicesDomainsLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HomeServicesDomainsLinks> mapFromJson(dynamic json) {
    final map = <String, HomeServicesDomainsLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HomeServicesDomainsLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HomeServicesDomainsLinks-objects as value to a dart map
  static Map<String, List<HomeServicesDomainsLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HomeServicesDomainsLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HomeServicesDomainsLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

