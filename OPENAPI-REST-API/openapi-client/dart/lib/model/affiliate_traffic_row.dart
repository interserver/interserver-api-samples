//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class AffiliateTrafficRow {
  /// Returns a new [AffiliateTrafficRow] instance.
  AffiliateTrafficRow({
    this.trafficId,
    this.trafficIp,
    this.trafficUrl,
    this.trafficAffiliate,
    this.trafficReferrer,
    this.trafficTimestamp,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? trafficId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? trafficIp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? trafficUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? trafficAffiliate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? trafficReferrer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? trafficTimestamp;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AffiliateTrafficRow &&
    other.trafficId == trafficId &&
    other.trafficIp == trafficIp &&
    other.trafficUrl == trafficUrl &&
    other.trafficAffiliate == trafficAffiliate &&
    other.trafficReferrer == trafficReferrer &&
    other.trafficTimestamp == trafficTimestamp;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (trafficId == null ? 0 : trafficId!.hashCode) +
    (trafficIp == null ? 0 : trafficIp!.hashCode) +
    (trafficUrl == null ? 0 : trafficUrl!.hashCode) +
    (trafficAffiliate == null ? 0 : trafficAffiliate!.hashCode) +
    (trafficReferrer == null ? 0 : trafficReferrer!.hashCode) +
    (trafficTimestamp == null ? 0 : trafficTimestamp!.hashCode);

  @override
  String toString() => 'AffiliateTrafficRow[trafficId=$trafficId, trafficIp=$trafficIp, trafficUrl=$trafficUrl, trafficAffiliate=$trafficAffiliate, trafficReferrer=$trafficReferrer, trafficTimestamp=$trafficTimestamp]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.trafficId != null) {
      json[r'traffic_id'] = this.trafficId;
    } else {
      json[r'traffic_id'] = null;
    }
    if (this.trafficIp != null) {
      json[r'traffic_ip'] = this.trafficIp;
    } else {
      json[r'traffic_ip'] = null;
    }
    if (this.trafficUrl != null) {
      json[r'traffic_url'] = this.trafficUrl;
    } else {
      json[r'traffic_url'] = null;
    }
    if (this.trafficAffiliate != null) {
      json[r'traffic_affiliate'] = this.trafficAffiliate;
    } else {
      json[r'traffic_affiliate'] = null;
    }
    if (this.trafficReferrer != null) {
      json[r'traffic_referrer'] = this.trafficReferrer;
    } else {
      json[r'traffic_referrer'] = null;
    }
    if (this.trafficTimestamp != null) {
      json[r'traffic_timestamp'] = this.trafficTimestamp;
    } else {
      json[r'traffic_timestamp'] = null;
    }
    return json;
  }

  /// Returns a new [AffiliateTrafficRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AffiliateTrafficRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return AffiliateTrafficRow(
        trafficId: mapValueOfType<String>(json, r'traffic_id'),
        trafficIp: mapValueOfType<String>(json, r'traffic_ip'),
        trafficUrl: mapValueOfType<String>(json, r'traffic_url'),
        trafficAffiliate: mapValueOfType<String>(json, r'traffic_affiliate'),
        trafficReferrer: mapValueOfType<String>(json, r'traffic_referrer'),
        trafficTimestamp: mapValueOfType<String>(json, r'traffic_timestamp'),
      );
    }
    return null;
  }

  static List<AffiliateTrafficRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AffiliateTrafficRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AffiliateTrafficRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AffiliateTrafficRow> mapFromJson(dynamic json) {
    final map = <String, AffiliateTrafficRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AffiliateTrafficRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AffiliateTrafficRow-objects as value to a dart map
  static Map<String, List<AffiliateTrafficRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AffiliateTrafficRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AffiliateTrafficRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

