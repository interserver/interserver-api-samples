//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class BuyItNowServerOrder200Response {
  /// Returns a new [BuyItNowServerOrder200Response] instance.
  BuyItNowServerOrder200Response({
    this.bandwidth = const [],
    this.ips = const [],
    this.os = const [],
    this.cp = const [],
    this.raid = const [],
  });

  List<BuyItNowServerOrder200ResponseBandwidthInner> bandwidth;

  List<BuyItNowServerOrder200ResponseIpsInner> ips;

  List<BuyItNowServerOrder200ResponseOsInner> os;

  List<BuyItNowServerOrder200ResponseCpInner> cp;

  List<BuyItNowServerOrder200ResponseRaidInner> raid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BuyItNowServerOrder200Response &&
    _deepEquality.equals(other.bandwidth, bandwidth) &&
    _deepEquality.equals(other.ips, ips) &&
    _deepEquality.equals(other.os, os) &&
    _deepEquality.equals(other.cp, cp) &&
    _deepEquality.equals(other.raid, raid);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bandwidth.hashCode) +
    (ips.hashCode) +
    (os.hashCode) +
    (cp.hashCode) +
    (raid.hashCode);

  @override
  String toString() => 'BuyItNowServerOrder200Response[bandwidth=$bandwidth, ips=$ips, os=$os, cp=$cp, raid=$raid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'bandwidth'] = this.bandwidth;
      json[r'ips'] = this.ips;
      json[r'os'] = this.os;
      json[r'cp'] = this.cp;
      json[r'raid'] = this.raid;
    return json;
  }

  /// Returns a new [BuyItNowServerOrder200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BuyItNowServerOrder200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return BuyItNowServerOrder200Response(
        bandwidth: BuyItNowServerOrder200ResponseBandwidthInner.listFromJson(json[r'bandwidth']),
        ips: BuyItNowServerOrder200ResponseIpsInner.listFromJson(json[r'ips']),
        os: BuyItNowServerOrder200ResponseOsInner.listFromJson(json[r'os']),
        cp: BuyItNowServerOrder200ResponseCpInner.listFromJson(json[r'cp']),
        raid: BuyItNowServerOrder200ResponseRaidInner.listFromJson(json[r'raid']),
      );
    }
    return null;
  }

  static List<BuyItNowServerOrder200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BuyItNowServerOrder200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BuyItNowServerOrder200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BuyItNowServerOrder200Response> mapFromJson(dynamic json) {
    final map = <String, BuyItNowServerOrder200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BuyItNowServerOrder200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BuyItNowServerOrder200Response-objects as value to a dart map
  static Map<String, List<BuyItNowServerOrder200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BuyItNowServerOrder200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BuyItNowServerOrder200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

