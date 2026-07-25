//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class WebsitesOrderJsonServices {
  /// Returns a new [WebsitesOrderJsonServices] instance.
  WebsitesOrderJsonServices({
    required this.n11447,
  });

  /// JSON services description
  String n11447;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebsitesOrderJsonServices &&
    other.n11447 == n11447;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (n11447.hashCode);

  @override
  String toString() => 'WebsitesOrderJsonServices[n11447=$n11447]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'11447'] = this.n11447;
    return json;
  }

  /// Returns a new [WebsitesOrderJsonServices] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebsitesOrderJsonServices? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'11447'), 'Required key "WebsitesOrderJsonServices[11447]" is missing from JSON.');
        assert(json[r'11447'] != null, 'Required key "WebsitesOrderJsonServices[11447]" has a null value in JSON.');
        return true;
      }());

      return WebsitesOrderJsonServices(
        n11447: mapValueOfType<String>(json, r'11447')!,
      );
    }
    return null;
  }

  static List<WebsitesOrderJsonServices> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebsitesOrderJsonServices>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebsitesOrderJsonServices.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebsitesOrderJsonServices> mapFromJson(dynamic json) {
    final map = <String, WebsitesOrderJsonServices>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebsitesOrderJsonServices.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebsitesOrderJsonServices-objects as value to a dart map
  static Map<String, List<WebsitesOrderJsonServices>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebsitesOrderJsonServices>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebsitesOrderJsonServices.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    '11447',
  };
}

