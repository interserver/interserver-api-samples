//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class GetScrubIpDetails200ResponseFilterFirewall {
  /// Returns a new [GetScrubIpDetails200ResponseFilterFirewall] instance.
  GetScrubIpDetails200ResponseFilterFirewall({
    this.rules = const [],
    this.filters = const [],
    this.scrubEnabled,
  });

  List<GetScrubIpDetails200ResponseFilterFirewallRulesInner> rules;

  List<GetScrubIpDetails200ResponseFilterFirewallFiltersInner> filters;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? scrubEnabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetScrubIpDetails200ResponseFilterFirewall &&
    _deepEquality.equals(other.rules, rules) &&
    _deepEquality.equals(other.filters, filters) &&
    other.scrubEnabled == scrubEnabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (rules.hashCode) +
    (filters.hashCode) +
    (scrubEnabled == null ? 0 : scrubEnabled!.hashCode);

  @override
  String toString() => 'GetScrubIpDetails200ResponseFilterFirewall[rules=$rules, filters=$filters, scrubEnabled=$scrubEnabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'rules'] = this.rules;
      json[r'filters'] = this.filters;
    if (this.scrubEnabled != null) {
      json[r'scrub_enabled'] = this.scrubEnabled;
    } else {
      json[r'scrub_enabled'] = null;
    }
    return json;
  }

  /// Returns a new [GetScrubIpDetails200ResponseFilterFirewall] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetScrubIpDetails200ResponseFilterFirewall? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return GetScrubIpDetails200ResponseFilterFirewall(
        rules: GetScrubIpDetails200ResponseFilterFirewallRulesInner.listFromJson(json[r'rules']),
        filters: GetScrubIpDetails200ResponseFilterFirewallFiltersInner.listFromJson(json[r'filters']),
        scrubEnabled: mapValueOfType<int>(json, r'scrub_enabled'),
      );
    }
    return null;
  }

  static List<GetScrubIpDetails200ResponseFilterFirewall> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetScrubIpDetails200ResponseFilterFirewall>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetScrubIpDetails200ResponseFilterFirewall.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetScrubIpDetails200ResponseFilterFirewall> mapFromJson(dynamic json) {
    final map = <String, GetScrubIpDetails200ResponseFilterFirewall>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetScrubIpDetails200ResponseFilterFirewall.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetScrubIpDetails200ResponseFilterFirewall-objects as value to a dart map
  static Map<String, List<GetScrubIpDetails200ResponseFilterFirewall>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetScrubIpDetails200ResponseFilterFirewall>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetScrubIpDetails200ResponseFilterFirewall.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

