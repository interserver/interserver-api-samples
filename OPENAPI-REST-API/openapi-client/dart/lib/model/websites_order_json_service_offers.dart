//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class WebsitesOrderJsonServiceOffers {
  /// Returns a new [WebsitesOrderJsonServiceOffers] instance.
  WebsitesOrderJsonServiceOffers({
    this.n1026 = const [],
  });

  /// Array of service offers
  List<WebsitesOrderJsonServiceOffersItem> n1026;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebsitesOrderJsonServiceOffers &&
    _deepEquality.equals(other.n1026, n1026);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (n1026.hashCode);

  @override
  String toString() => 'WebsitesOrderJsonServiceOffers[n1026=$n1026]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'1026'] = this.n1026;
    return json;
  }

  /// Returns a new [WebsitesOrderJsonServiceOffers] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebsitesOrderJsonServiceOffers? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'1026'), 'Required key "WebsitesOrderJsonServiceOffers[1026]" is missing from JSON.');
        assert(json[r'1026'] != null, 'Required key "WebsitesOrderJsonServiceOffers[1026]" has a null value in JSON.');
        return true;
      }());

      return WebsitesOrderJsonServiceOffers(
        n1026: WebsitesOrderJsonServiceOffersItem.listFromJson(json[r'1026']),
      );
    }
    return null;
  }

  static List<WebsitesOrderJsonServiceOffers> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebsitesOrderJsonServiceOffers>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebsitesOrderJsonServiceOffers.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebsitesOrderJsonServiceOffers> mapFromJson(dynamic json) {
    final map = <String, WebsitesOrderJsonServiceOffers>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebsitesOrderJsonServiceOffers.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebsitesOrderJsonServiceOffers-objects as value to a dart map
  static Map<String, List<WebsitesOrderJsonServiceOffers>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebsitesOrderJsonServiceOffers>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebsitesOrderJsonServiceOffers.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    '1026',
  };
}

