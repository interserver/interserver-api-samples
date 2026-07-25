//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class WebsitesOrderPackges {
  /// Returns a new [WebsitesOrderPackges] instance.
  WebsitesOrderPackges({
    required this.n11440,
  });

  WebsitesOrderPackagesInfo n11440;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebsitesOrderPackges &&
    other.n11440 == n11440;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (n11440.hashCode);

  @override
  String toString() => 'WebsitesOrderPackges[n11440=$n11440]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'11440'] = this.n11440;
    return json;
  }

  /// Returns a new [WebsitesOrderPackges] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebsitesOrderPackges? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'11440'), 'Required key "WebsitesOrderPackges[11440]" is missing from JSON.');
        assert(json[r'11440'] != null, 'Required key "WebsitesOrderPackges[11440]" has a null value in JSON.');
        return true;
      }());

      return WebsitesOrderPackges(
        n11440: WebsitesOrderPackagesInfo.fromJson(json[r'11440'])!,
      );
    }
    return null;
  }

  static List<WebsitesOrderPackges> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebsitesOrderPackges>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebsitesOrderPackges.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebsitesOrderPackges> mapFromJson(dynamic json) {
    final map = <String, WebsitesOrderPackges>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebsitesOrderPackges.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebsitesOrderPackges-objects as value to a dart map
  static Map<String, List<WebsitesOrderPackges>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebsitesOrderPackges>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebsitesOrderPackges.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    '11440',
  };
}

