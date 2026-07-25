//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class WebsitesOrderServiceOffers {
  /// Returns a new [WebsitesOrderServiceOffers] instance.
  WebsitesOrderServiceOffers({
    this.n1026 = const [],
  });

  List<WebsitesOrderServiceOffer> n1026;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebsitesOrderServiceOffers &&
    _deepEquality.equals(other.n1026, n1026);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (n1026.hashCode);

  @override
  String toString() => 'WebsitesOrderServiceOffers[n1026=$n1026]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'1026'] = this.n1026;
    return json;
  }

  /// Returns a new [WebsitesOrderServiceOffers] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebsitesOrderServiceOffers? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'1026'), 'Required key "WebsitesOrderServiceOffers[1026]" is missing from JSON.');
        assert(json[r'1026'] != null, 'Required key "WebsitesOrderServiceOffers[1026]" has a null value in JSON.');
        return true;
      }());

      return WebsitesOrderServiceOffers(
        n1026: WebsitesOrderServiceOffer.listFromJson(json[r'1026']),
      );
    }
    return null;
  }

  static List<WebsitesOrderServiceOffers> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebsitesOrderServiceOffers>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebsitesOrderServiceOffers.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebsitesOrderServiceOffers> mapFromJson(dynamic json) {
    final map = <String, WebsitesOrderServiceOffers>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebsitesOrderServiceOffers.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebsitesOrderServiceOffers-objects as value to a dart map
  static Map<String, List<WebsitesOrderServiceOffers>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebsitesOrderServiceOffers>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebsitesOrderServiceOffers.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    '1026',
  };
}

