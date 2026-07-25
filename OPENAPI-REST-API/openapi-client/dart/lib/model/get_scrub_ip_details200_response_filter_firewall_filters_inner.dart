//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class GetScrubIpDetails200ResponseFilterFirewallFiltersInner {
  /// Returns a new [GetScrubIpDetails200ResponseFilterFirewallFiltersInner] instance.
  GetScrubIpDetails200ResponseFilterFirewallFiltersInner({
    this.daddr,
    this.dest,
    this.filterName,
    this.destinationIp,
    this.filter,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? daddr;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dest;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? filterName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? destinationIp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? filter;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetScrubIpDetails200ResponseFilterFirewallFiltersInner &&
    other.daddr == daddr &&
    other.dest == dest &&
    other.filterName == filterName &&
    other.destinationIp == destinationIp &&
    other.filter == filter;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (daddr == null ? 0 : daddr!.hashCode) +
    (dest == null ? 0 : dest!.hashCode) +
    (filterName == null ? 0 : filterName!.hashCode) +
    (destinationIp == null ? 0 : destinationIp!.hashCode) +
    (filter == null ? 0 : filter!.hashCode);

  @override
  String toString() => 'GetScrubIpDetails200ResponseFilterFirewallFiltersInner[daddr=$daddr, dest=$dest, filterName=$filterName, destinationIp=$destinationIp, filter=$filter]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.daddr != null) {
      json[r'daddr'] = this.daddr;
    } else {
      json[r'daddr'] = null;
    }
    if (this.dest != null) {
      json[r'dest'] = this.dest;
    } else {
      json[r'dest'] = null;
    }
    if (this.filterName != null) {
      json[r'filter_name'] = this.filterName;
    } else {
      json[r'filter_name'] = null;
    }
    if (this.destinationIp != null) {
      json[r'destination_ip'] = this.destinationIp;
    } else {
      json[r'destination_ip'] = null;
    }
    if (this.filter != null) {
      json[r'filter'] = this.filter;
    } else {
      json[r'filter'] = null;
    }
    return json;
  }

  /// Returns a new [GetScrubIpDetails200ResponseFilterFirewallFiltersInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetScrubIpDetails200ResponseFilterFirewallFiltersInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return GetScrubIpDetails200ResponseFilterFirewallFiltersInner(
        daddr: mapValueOfType<String>(json, r'daddr'),
        dest: mapValueOfType<String>(json, r'dest'),
        filterName: mapValueOfType<String>(json, r'filter_name'),
        destinationIp: mapValueOfType<String>(json, r'destination_ip'),
        filter: mapValueOfType<String>(json, r'filter'),
      );
    }
    return null;
  }

  static List<GetScrubIpDetails200ResponseFilterFirewallFiltersInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetScrubIpDetails200ResponseFilterFirewallFiltersInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetScrubIpDetails200ResponseFilterFirewallFiltersInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetScrubIpDetails200ResponseFilterFirewallFiltersInner> mapFromJson(dynamic json) {
    final map = <String, GetScrubIpDetails200ResponseFilterFirewallFiltersInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetScrubIpDetails200ResponseFilterFirewallFiltersInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetScrubIpDetails200ResponseFilterFirewallFiltersInner-objects as value to a dart map
  static Map<String, List<GetScrubIpDetails200ResponseFilterFirewallFiltersInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetScrubIpDetails200ResponseFilterFirewallFiltersInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetScrubIpDetails200ResponseFilterFirewallFiltersInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

