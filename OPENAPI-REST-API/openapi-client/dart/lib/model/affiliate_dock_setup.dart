//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class AffiliateDockSetup {
  /// Returns a new [AffiliateDockSetup] instance.
  AffiliateDockSetup({
    this.affiliateDockTitle,
    this.affiliateDockDescription,
    this.referrerCoupon,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? affiliateDockTitle;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? affiliateDockDescription;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? referrerCoupon;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AffiliateDockSetup &&
    other.affiliateDockTitle == affiliateDockTitle &&
    other.affiliateDockDescription == affiliateDockDescription &&
    other.referrerCoupon == referrerCoupon;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (affiliateDockTitle == null ? 0 : affiliateDockTitle!.hashCode) +
    (affiliateDockDescription == null ? 0 : affiliateDockDescription!.hashCode) +
    (referrerCoupon == null ? 0 : referrerCoupon!.hashCode);

  @override
  String toString() => 'AffiliateDockSetup[affiliateDockTitle=$affiliateDockTitle, affiliateDockDescription=$affiliateDockDescription, referrerCoupon=$referrerCoupon]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.affiliateDockTitle != null) {
      json[r'affiliate_dock_title'] = this.affiliateDockTitle;
    } else {
      json[r'affiliate_dock_title'] = null;
    }
    if (this.affiliateDockDescription != null) {
      json[r'affiliate_dock_description'] = this.affiliateDockDescription;
    } else {
      json[r'affiliate_dock_description'] = null;
    }
    if (this.referrerCoupon != null) {
      json[r'referrer_coupon'] = this.referrerCoupon;
    } else {
      json[r'referrer_coupon'] = null;
    }
    return json;
  }

  /// Returns a new [AffiliateDockSetup] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AffiliateDockSetup? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return AffiliateDockSetup(
        affiliateDockTitle: mapValueOfType<String>(json, r'affiliate_dock_title'),
        affiliateDockDescription: mapValueOfType<String>(json, r'affiliate_dock_description'),
        referrerCoupon: mapValueOfType<String>(json, r'referrer_coupon'),
      );
    }
    return null;
  }

  static List<AffiliateDockSetup> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AffiliateDockSetup>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AffiliateDockSetup.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AffiliateDockSetup> mapFromJson(dynamic json) {
    final map = <String, AffiliateDockSetup>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AffiliateDockSetup.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AffiliateDockSetup-objects as value to a dart map
  static Map<String, List<AffiliateDockSetup>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AffiliateDockSetup>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AffiliateDockSetup.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

