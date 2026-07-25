//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class DomainOrder {
  /// Returns a new [DomainOrder] instance.
  DomainOrder({
    this.whoisPrivacyCost,
    this.services,
    this.tldServices,
  });

  /// Cost of Whois Privacy
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? whoisPrivacyCost;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DomainOrderServices? services;

  /// Map of TLDs to domain service IDs.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? tldServices;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainOrder &&
    other.whoisPrivacyCost == whoisPrivacyCost &&
    other.services == services &&
    other.tldServices == tldServices;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (whoisPrivacyCost == null ? 0 : whoisPrivacyCost!.hashCode) +
    (services == null ? 0 : services!.hashCode) +
    (tldServices == null ? 0 : tldServices!.hashCode);

  @override
  String toString() => 'DomainOrder[whoisPrivacyCost=$whoisPrivacyCost, services=$services, tldServices=$tldServices]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.whoisPrivacyCost != null) {
      json[r'whoisPrivacyCost'] = this.whoisPrivacyCost;
    } else {
      json[r'whoisPrivacyCost'] = null;
    }
    if (this.services != null) {
      json[r'services'] = this.services;
    } else {
      json[r'services'] = null;
    }
    if (this.tldServices != null) {
      json[r'tldServices'] = this.tldServices;
    } else {
      json[r'tldServices'] = null;
    }
    return json;
  }

  /// Returns a new [DomainOrder] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainOrder? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return DomainOrder(
        whoisPrivacyCost: mapValueOfType<String>(json, r'whoisPrivacyCost'),
        services: DomainOrderServices.fromJson(json[r'services']),
        tldServices: mapValueOfType<Object>(json, r'tldServices'),
      );
    }
    return null;
  }

  static List<DomainOrder> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainOrder>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainOrder.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainOrder> mapFromJson(dynamic json) {
    final map = <String, DomainOrder>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainOrder.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainOrder-objects as value to a dart map
  static Map<String, List<DomainOrder>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainOrder>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainOrder.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

